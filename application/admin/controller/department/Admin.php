<?php

namespace app\admin\controller\department;

use app\admin\model\department\Department;
use app\admin\model\department\Department as DepartmentModel;
use app\common\controller\Backend;
use \app\admin\model\department\Admin as DepartmentAdminModel;
use \app\admin\model\department\AuthAdmin as AdminModel;
use fast\Random;
use fast\Tree;
use think\Db;
use think\Validate;


/**
 * 部门成员
 */
class Admin extends Backend
{

    protected $tree = null;
    /**
     * 部门人员对象
     * @var null
     */
    protected $dadminModel = null;
    protected $childrenGroupIds = [];//权限组
    /**
     * 部门所有
     * @var array
     */
    protected $allDepartment = [];//


    public function _initialize()
    {
        parent::_initialize();
        $this->childrenGroupIds = $this->auth->getChildrenGroupIds($this->auth->isSuperAdmin());

        $this->dadminModel = new DepartmentAdminModel;
        $departmentList = [];
        $this->allDepartment = collection(DepartmentModel::allDepartment())->toArray();
        $departmentdata = [];
        foreach ($this->allDepartment as $k => $v) {
            $state = ['opened' => true];
            $departmentList[] = [
                'id' => $v['id'],
                'parent' => $v['parent_id'] ? $v['parent_id'] : '#',
                'text' => __($v['name']),
                'state' => $state
            ];
        }
        $tree = Tree::instance()->init($this->allDepartment, 'parent_id');
        $departmentOptions = $tree->getTree(0, "<option model='@model_id' value=@id @selected @disabled>@spacer@name</option>");

        $this->view->assign('departmentOptions', $departmentOptions);
        $this->assignconfig('departmentList', $departmentList);

        $result = Tree::instance()->getTreeList(Tree::instance()->getTreeArray(0));
        foreach ($result as $k => $v) {
            $departmentdata[$v['id']] = $v['name'];
        }
        $this->view->assign('departmentdata', $departmentdata);

        //兼容旧版本没有手机号
        $database=config('database');
        $exits_mobile=\think\Db::query("SELECT 1 FROM  information_schema.COLUMNS WHERE  table_name='{$database['prefix']}admin' AND COLUMN_NAME='mobile' limit 1");
        $this->view->assign('exits_mobile', $exits_mobile?1:0);
        $this->assignconfig('exits_mobile', $exits_mobile?1:0);
    }

    /**
     * 成员列表
     */
    public function index()
    {

        //测试
        //设置过滤方法
        $this->request->filter(['strip_tags']);
        $department_id = $this->request->request("department_id");
        if ($this->request->isAjax()) {
            $this->model = new \app\admin\model\department\AuthAdmin();
            $filter = $this->request->get("filter", '');
            $filter = (array)json_decode($filter, true);
            $filter_w = [];

            if (isset($filter['department_id'])) {
                $department_id = $filter['department_id'];
                unset($filter['department_id']);
                $this->request->get(['filter' => json_encode($filter)]);
            }
            if ($department_id) {
                $admin_ids = $this->dadminModel->where('department_id', 'in', $department_id)->column('admin_id');
                $filter_w['id'] = ['in', $admin_ids];
            }


            list($where, $sort, $order, $offset, $limit) = $this->buildparams();
            $total = $this->model
                ->where($where)
                ->where($filter_w)
                ->order($sort, $order)->fetchSql(false)
                ->count();
            $list = $this->model
                ->where($where)
                ->with(['dadmin.department'])
                ->with(['groups.getGroup'])
                ->where($filter_w)
                ->order($sort, $order)
                ->limit($offset, $limit)->fetchSql(false)
                ->select();


            $result = array("total" => $total, "rows" => $list);

            return json($result);
        }
        return $this->view->fetch();
    }

    /**
     * 添加
     * @return string|\think\response\Json
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function add()
    {
        $groupdata = DepartmentModel::getGroupdata(
            $this->childrenGroupIds,
            $this->auth->isSuperAdmin() ? null : $this->auth->getGroups()
        );

        if ($this->request->isPost()) {

            $adminModel = new AdminModel();
            $departmentModel = new DepartmentModel();

            $params = $this->request->post("row/a");
            if ($params) {
                Db::startTrans();
                try {
                    $department_id = $this->request->post("department_id/a");

                    //获取部门信息
                    if (!$department_id) {
                        exception(__("部门不能为空"));
                    }
                    $d_list = $departmentModel->where('id', 'in', $department_id)->select();

                    if (!$d_list) {
                        exception(__("部门不能为空"));
                    }

                    if (!Validate::is($params['password'], '\S{6,16}')) {
                        exception(__("Please input correct password"));
                    }
                    $params['salt'] = Random::alnum();
                    $params['password'] = md5(md5($params['password']) . $params['salt']);
                    $params['avatar'] = '/assets/img/avatar.png'; //设置新管理员默认头像。
                    $result = $adminModel->validate('Admin.add')->save($params);
                    if ($result === false) {
                        exception($adminModel->getError());
                    }

                    $admin_id = $adminModel->id;
                    $dadmin = array();
                    //添加部门信息
                    foreach ($d_list as $d_row) {
                        $dadmin[] = ['department_id' => $d_row->id, 'organise_id' => $d_row->organise_id ? $d_row->organise_id : $d_row->id, 'admin_id' => $admin_id];
                    }
                    $this->dadminModel->saveAll($dadmin);

                    $group = $this->request->post("group/a");
                    //过滤不允许的组别,避免越权
                    $group = array_intersect($this->childrenGroupIds, $group);

                    //添加权限默认第一个部门
                    if (!$group) {
                        exception(__('The parent group exceeds permission limit'));
                    }

                    $dataset = [];
                    foreach ($group as $value) {
                        $dataset[] = ['uid' => $admin_id, 'group_id' => $value];
                    }
                    model('AuthGroupAccess')->saveAll($dataset);


                    Db::commit();
                } catch (\Exception $e) {
                    Db::rollback();
                    $this->error($e->getMessage());
                }
                $this->success();
            }
            $this->error(__('Parameter %s can not be empty', ''));
        }
        $this->view->assign('groupdata', $groupdata);
        return $this->view->fetch();
    }

    /**
     * 修改
     * @param null $ids
     * @return string|\think\response\Json
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function edit($ids = null)
    {

        $this->model = new AdminModel();
        $departmentModel = new DepartmentModel();
        $row = $this->model->get($ids);
        if ($this->request->isPost()) {

            //判断是不是超级管理员编辑
            if (!DepartmentAdminModel::isSuperAdmin($this->auth->id) && DepartmentAdminModel::isSuperAdmin($row->id)) {
                $this->error("您无权操作超级管理员");
            }

            $params = $this->request->post("row/a");

            if ($params) {
                Db::startTrans();
                try {
                    $department_id = $this->request->post("department_id/a");
                    //获取部门信息
                    if (!$department_id) {
                        exception(__("Department can't null"));
                    }
                    $d_list = $departmentModel->where('id', 'in', $department_id)->select();

                    if (!$d_list) {
                        exception(__("Department can't null"));
                    }

                    if ($params['password']) {
                        if (!Validate::is($params['password'], '\S{6,16}')) {
                            exception(__("Please input correct password"));
                        }
                        $params['salt'] = Random::alnum();
                        $params['password'] = md5(md5($params['password']) . $params['salt']);
                    } else {
                        unset($params['password'], $params['salt']);
                    }
                    //这里需要针对username和email做唯一验证
                    $adminValidate = \think\Loader::validate('Admin');
                    $adminValidate->rule([
                        'username' => 'require|regex:\w{3,12}|unique:admin,username,' . $row->id,
                        'email' => 'require|email|unique:admin,email,' . $row->id,
                        'password' => 'regex:\S{32}',
                    ]);
                    $result = $row->validate('Admin.edit')->save($params);
                    if ($result === false) {
                        exception($row->getError());
                    }
                    $exist_departmentids = $this->dadminModel->where('admin_id', $row->id)->column('department_id');
                    $dadmin = array();
                    $deleteids = array_diff($exist_departmentids, $department_id);
                    //添加部门信息
                    foreach ($d_list as $d_row) {
                        if (!in_array($d_row->id, $exist_departmentids)) {
                            $dadmin[] = ['department_id' => $d_row->id, 'organise_id' => $d_row->organise_id ? $d_row->organise_id : $d_row->id, 'admin_id' => $row->id];
                        }
                    }
                    if ($deleteids) {
                        $this->dadminModel->where('admin_id', $row->id)->where('department_id', 'in', $deleteids)->delete();
                    }
                    if (count($dadmin) > 0) {
                        $this->dadminModel->saveAll($dadmin);
                    }


                    // 先移除所有权限
                    model('AuthGroupAccess')->where('uid', $row->id)->delete();

                    $group = $this->request->post("group/a");
                    // 过滤不允许的组别,避免越权
                    $group = array_intersect($this->childrenGroupIds, $group);
                    if (!$group) {
                        exception(__('The parent group exceeds permission limit'));
                    }

                    $dataset = [];
                    foreach ($group as $value) {
                        $dataset[] = ['uid' => $row->id, 'group_id' => $value];
                    }
                    model('AuthGroupAccess')->saveAll($dataset);

                    Db::commit();
                } catch (\Exception $e) {
                    Db::rollback();
                    $this->error($e->getMessage());
                }
                $this->success();
            }
            $this->error(__('Parameter %s can not be empty', ''));
        }
        $groupdata = DepartmentModel::getGroupdata(
            $this->childrenGroupIds,
            $this->auth->isSuperAdmin() ? null : $this->auth->getGroups()
        );
        $grouplist = $this->auth->getGroups($row['id']);
        $groupids = [];
        foreach ($grouplist as $k => $v) {
            $groupids[] = $v['id'];
        }
        $this->view->assign("groupids", $groupids);

        $this->view->assign('row', $row);
        $this->view->assign('department_ids', $this->dadminModel->getDepartmentIds($ids));
        $this->view->assign('groupdata', $groupdata);
        return $this->view->fetch();
    }


    /**
     * 删除
     */
    public function del($ids = "")
    {
        if (!$this->request->isPost()) {
            $this->error(__("Invalid parameters"));
        }
        $this->childrenAdminIds = $this->auth->getChildrenAdminIds($this->auth->isSuperAdmin());
        $this->model = new AdminModel();

        $ids = $ids ? $ids : $this->request->post("ids");
        if ($ids) {
            $ids = array_intersect($this->childrenAdminIds, array_filter(explode(',', $ids)));
            // 避免越权删除管理员
            $childrenGroupIds = $this->childrenGroupIds;
            $adminList = $this->model->where('id', 'in', $ids)->where('id', 'in', function ($query) use ($childrenGroupIds) {
                $query->name('auth_group_access')->where('group_id', 'in', $childrenGroupIds)->field('uid');
            })->select();
            if ($adminList) {
                $deleteIds = [];
                foreach ($adminList as $k => $v) {
                    $deleteIds[] = $v->id;
                }
                $deleteIds = array_values(array_diff($deleteIds, [$this->auth->id]));
                if ($deleteIds) {
                    Db::startTrans();
                    try {
                        $this->model->destroy($deleteIds);
                        model('AuthGroupAccess')->where('uid', 'in', $deleteIds)->delete();
                        //删除部门员工信息
                        $this->dadminModel->where('admin_id', 'in', $deleteIds)->delete();;

                        Db::commit();
                    } catch (\Exception $e) {
                        Db::rollback();
                        $this->error($e->getMessage());
                    }
                    $this->success();
                }
                $this->error(__('No rows were deleted'));
            }
        }
        $this->error(__('You have no permission'));
    }

    /**
     * 批量更新
     * @internal
     */
    public function multi($ids = "")
    {
        // 管理员禁止批量操作
        $this->error();
    }

    /**
     * 设置部门负责人
     */
    public function principal($ids = "")
    {

        $this->model = new AdminModel();
        $departmentModel = new DepartmentModel();
        $row = $this->model->get($ids);
        if ($this->request->isPost()) {

            //判断是不是超级管理员编辑
            if (!DepartmentAdminModel::isSuperAdmin($this->auth->id) && DepartmentAdminModel::isSuperAdmin($row->id)) {
                $this->error("您无权操作超级管理员");
            }

            $department_id = $this->request->post("department_id/a");
            if ($department_id && $department_id[0]) {
                Db::startTrans();
                try {
                    $d_list = $departmentModel->where('id', 'in', $department_id)->select();

                    if (!$d_list) {
                        exception(__("Department can't null"));
                    }
                    //先移除他所有负责的部门
                    $this->dadminModel->where('admin_id', $row->id)->update(['is_principal' => 0]);

                    //判断选择的部门是否存在，不存在就先把他加入
                    $p_departmentids = array_column($d_list, 'id');
                    $exist_departmentids = $this->dadminModel->where('admin_id', $row->id)->column('department_id');

                    $dadmin = array();
                    //添加部门信息
                    foreach ($d_list as $d_row) {
                        if (!in_array($d_row->id, $exist_departmentids)) {
                            $dadmin[] = ['department_id' => $d_row->id, 'organise_id' => $d_row->organise_id ? $d_row->organise_id : $d_row->id, 'admin_id' => $row->id];
                        }
                    }
                    if (count($dadmin) > 0) {
                        $this->dadminModel->saveAll($dadmin);
                    }
                    //更改为负责人
                    $this->dadminModel->where('admin_id', $row->id)->where('department_id', 'in', $p_departmentids)->update(['is_principal' => 1]);


                    Db::commit();
                } catch (\Exception $e) {
                    Db::rollback();
                    $this->error($e->getMessage());
                }

            } else {
                //移除他所有负责的部门
                $this->dadminModel->where('admin_id', $row->id)->update(['is_principal' => 0]);
            }
            $this->success();
        }


        $this->view->assign('row', $row);
        $this->view->assign('department_ids', $this->dadminModel::getPrincipalIds($ids));
        return $this->view->fetch();
    }


}
