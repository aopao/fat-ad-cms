<?php
/*
 * @Description: 区域插件
 * @Author: xiaoyu5062
 * @QQ: 170515071
 * @E-mail: xiaoyu5062@qq.com
 * @Date: 2020-12-23 18:19:22
 * @Remark:
 * 【自定义数据源使用方法】
 * 1、在前台html元素中增加 自定义属性data-datasource
 * 2、在该控制器中的datasource方法中根据前台设置的属性值判断(107行)返回遵循示例数据源格式(46行)的数据
 */

namespace addons\areapicker\controller;

use think\addons\Controller;

class Index extends Controller
{


    public function index()
    {
        $val = $this->request->get('val', 100001);
        $iscustomer = $this->request->get('iscustomer', 'false');
        if ($iscustomer == 'true') {
            $func = $this->request->get('ds', false);
            $this->view->assign('data', $this->datasource($func));
        }
        $this->view->assign('val', $val);
        return $this->view->fetch();
    }

    /**
     * 自定义数据源
     * 当元素data-iscustomer='true'时，将会使用此数据源
     * 请根据自身数据按照固定结构生成数据源
     * 请根据传入的参数source，自定义相应数据源
     * @return void
     */
    protected function datasource($source = false)
    {
        // 如果没有指定数据源，则使用示例数据源
        if ($source == false) {
            //示例数据源格式
            $data = [ //第一级
                [
                    'id' => '1000001',
                    'name' => '华北',
                    'children' => [ //第二级
                        [
                            'id' => '16842752',
                            'name' => '北京',
                            'children' => [] //第三级
                        ],
                        [
                            'id' => '16908288',
                            'name' => '天津',
                            'children' => []
                        ]
                    ]
                ],
                [
                    'id' => '1000002',
                    'name' => '华东',
                    'children' => [
                        [
                            'id' => '17432576',
                            'name' => '江苏',
                            'children' => [
                                [
                                    'id' => '17432832',
                                    'name' => '南京'
                                ],
                                [
                                    'id' => '17434112',
                                    'name' => '盐城'
                                ]
                            ]
                        ]
                    ]
                ]
            ];
            for ($i = 2; $i < 10; $i++) {
                $data[$i] = [
                    'id' => 'id_' . $i,
                    'name' => 'name_' . $i,
                    'children' => []
                ];
                for ($j = 0; $j < 10; $j++) {
                    $data[$i]['children'][$j] = [
                        'id' => 'id_' . $i . '_' . $j,
                        'name' => 'name_' . $i . '_' . $j,
                        'children' => []
                    ];
                    for ($k = 0; $k < 20; $k++) {
                        $data[$i]['children'][$j]['children'][$k] = [
                            'id' => 'id_' . $i . '_' . $j . '_' . $k,
                            'name' => 'name_' . $i . '_' . $j . '_' . $k,
                            'children' => []
                        ];
                    }
                }
            }
            return $data;
        } else {
            // TODO: 请在此处根据source传入参数返回对应数据源
            if ($source == "mysource") {
                return [];
            }
        }
        return [];
    }
}
