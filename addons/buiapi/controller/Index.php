<?php

namespace addons\buiapi\controller;

use think\addons\Controller;
use think\Db;
use fast\Http;
use think\Request;
use fast\Random;
use app\common\library\Token;

class Index extends Controller
{


    protected $noNeedLogin = ['index','apidoc'];
    protected $noNeedRight = ['*'];
	
	protected $table_list = [];
	protected $field_list = [];
	
	
	protected $table_info = []; //表信息
	
	
	protected $command_field = [];
	protected $command_table = [];
	
	protected $command_line  = []; //命令行
	protected $command_list  = []; //命令行 数组
	protected $command_keys  = 2;
	
	
	protected $index_list = []; //接口列表
	protected $index_info = []; //参数列表
	
	protected $view_info = [];
	protected $edit_info = [];
	protected $docs_info = [];
	
	protected $data_list = [];
	protected $data_navs = [];
	
	protected $func_list = [];
	protected $func_navs = [];
	protected $token = '';
	

    public function index()
    {
        $this->error("当前插件暂无前台页面");
    }
	
	
	public function apidoc(){
		$config = get_addon_config('buiapi');
		if(empty($config['isshow_apidoc'])){
			$this->error("后台未开启接口文档");
		}
		if(isset($_COOKIE['token']) && !empty($_COOKIE['token'])){
			$this->token = trim($_COOKIE['token']);
		}
		
		$table_list = db("buiapi_table")->where("command !=''")->select();
		foreach($table_list as $ukey=>$command){
			$this->command_line = $command;
			//处理表信息
			$this->__handle_command_table__();
			//处理数据表信息
			$this->__handle_command_table_info__();
			//处理命令方法
			$this->__handle_command_func__();
		}
		$this->view->assign("token",$this->token);
		$this->view->assign("data_list", $this->data_list);
		return $this->view->fetch();
	}
	
	/**
	 * 处理命令方法
	 */
	protected function __handle_command_func__(){
		if(empty($this->command_list['func'])){
			return false;
		}
		
		foreach($this->command_list['func'] as $fkey=>$fval){
			$func = sprintf("doc_%s",trim($fval));
			if(method_exists(__CLASS__,$func)){
				$this->$func();
			}
		}
		
		if(!empty($this->func_navs)){
			$api_list['name']  = sprintf("%s接口",$this->command_list['table_name']);
			$api_list['navs']  = $this->func_navs;
			$api_list['list']  = $this->func_list;
			$this->data_list[] = $api_list;
			$this->func_navs   = [];
			$this->func_list   = [];
		}
	}
	
	/**
	 * 1、处理参数表的信息
	 */
	protected function __handle_command_table__(){
		$current_table = null;
		$command_list  = explode('--',$this->command_line['command']);
		//循环处理表信息
		foreach($command_list as $tkey=>$tval){
			if(empty($tval)){
				continue;
			}
			list($field_key,$field_val) = explode("=",$tval);
			if(in_array($field_key,['table','relation'])){
				$current_table = str_replace('_','',trim($field_val));
				$this->table_info[$current_table]['name'] = trim($field_val);
			}elseif(in_array($field_key,['fields','relationfields'])){
				$this->table_info[$current_table]['field'] = $field_val;
				$current_table = null;				
			}
			if(in_array($field_key,['searchfields','func','fields'])){
				$this->command_list[$field_key] = explode(",",$field_val);
			}elseif(in_array($field_key,['vlogin'])){
				$this->command_list[$field_key] = $field_val;
			}elseif(in_array($field_key,['table'])){
				$this->command_list[$field_key] = $field_val;
				$this->command_list['table_name'] = str_replace('表','',$this->command_line['desc']);
			}
		}
		
		if(!empty($this->command_list['table'])){
			$this->command_list['stable'] = str_replace("_","",strtolower(trim($this->command_list['table'])));
			$this->command_list['ctable'] = '';
			if(strpos($this->command_list['table'],"_") == true){
				foreach(explode("_",$this->command_list['table']) as $tval){
					$this->command_list['ctable'] .= ucfirst(trim($tval));
				}
			}else{
				$this->command_list['ctable'] = ucfirst(trim($this->command_list['table']));
			}
		}


	}
	
	/**
	 * 2、处理命令数据库信息
	 */
	protected function __handle_command_table_info__(){
		foreach($this->table_info as $tkey=>$tval){
			$show_field = ['id','table','title','field','type','default','field_json','rule_add','rule_edit','is_byadd','is_byedit'];
			$field_list = db("buiapi_field")->field($show_field)->where(['table'=>trim($tval['name'])])->select();
			foreach($field_list as $fkey=>$fval){
				$this->table_info[$tkey]['field_list'][$fval['field']] = $fval;
			}
		}

	}
	
	
	
	/**
	 * 处理首页文档类
	 */
	protected function doc_index(){
		
		$relist = [];
		$domain = Request::instance()->domain();
		$table  = trim($this->command_list['table']);
		$ctable = $this->command_list['ctable'];
		$stable = $this->command_list['stable'];
		
		$fields = !empty($this->command_list['fields']) ? $this->command_list['fields'] : [];
		$apiurl = sprintf("%s/index.php/api/%s/index?limit=1&token=%s",$domain,$table,$this->token);
		$result = Http::get($apiurl);
		
		
		if(!empty($result)){
			$redata = json_decode($result,true);
			if(isset($redata['data']['rows'][0]) && is_array($redata['data']['rows'][0])){
				$relist = $redata['data']['rows'][0];
			}
		}
		
		foreach($relist as $rkey=>$rval){
			$curr_table_info = [];
			if(empty($this->table_info[$stable]['field_list'])){
				continue;
			}
			$curr_table_list = $this->table_info[$stable]['field_list'];
			if(!is_array($rval)){
				if(!empty($curr_table_list[$rkey])){
					$curr_table_info['depth'] = 1;
					$curr_table_info['table'] = $curr_table_list[$rkey]['table'];
					$curr_table_info['title'] = $curr_table_list[$rkey]['title'];
					$curr_table_info['field'] = $curr_table_list[$rkey]['field'];
					$curr_table_info['type'] = $curr_table_list[$rkey]['type'];
					$curr_table_info['default'] = $curr_table_list[$rkey]['default'];
					$curr_table_info['field_json'] = $curr_table_list[$rkey]['field_json'];
					$this->docs_info[] = $curr_table_info;
				}
			}else{
				if(array_key_exists($rkey,$this->table_info)){
					$this->__doc_show_field__($rkey,$this->table_info[$rkey]['field_list'],$rval,2);
				}
			}
		}


		$this->index_list 		  = [];
		$this->index_list['key']  = $this->command_keys++;

		$this->index_list['url']  = sprintf("/api/%s/index",$ctable);
		$this->index_list['name'] = "首页接口"; 
		$this->index_list['json'] = json_encode($redata,JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);
		$this->index_list['form'] = [
			['input'=>'text','name'=>'op','label'=>'条件类型（搜索条件规则）','placeholder'=>'条件类型：{"id":"="}','require'=>0,'default'=>''],
			['input'=>'text','name'=>'filter','label'=>'条件值（字段生成接口时设置）','placeholder'=>'条件值：{"id":"1"}','require'=>0,'default'=>''],
			['input'=>'text','name'=>'search','label'=>'搜索','placeholder'=>'搜索','require'=>0,'default'=>''],
			['input'=>'text','name'=>'page','label'=>'页码','placeholder'=>'页码','require'=>0,'default'=>'1'],
			['input'=>'text','name'=>'limit','label'=>'条数','placeholder'=>'条数','require'=>0,'default'=>'20'],
			['input'=>'text','name'=>'sort','label'=>'排序','placeholder'=>'排序','require'=>0,'default'=>'id'],
			['input'=>'text','name'=>'order','label'=>'排序顺序','placeholder'=>'排序顺序：asc | desc','require'=>0,'default'=>'desc'],
		];
		
		$this->index_list['body'] = [
			['input'=>'JSON','name'=>'op','desc'=>'条件类型（搜索条件规则）','sample'=>'{"id":"="}','require'=>0],
			['input'=>'JSON','name'=>'filter','desc'=>'条件值（字段生成接口时设置）','sample'=>'{"id":"1"}','require'=>0],
			['input'=>'String','name'=>'search','desc'=>'搜索','sample'=>rand(1000,9999),'require'=>0],
			['input'=>'String','name'=>'page','desc'=>'页码','sample'=>'1','require'=>0],
			['input'=>'String','name'=>'limit','desc'=>'条数','sample'=>'1','require'=>0],
			['input'=>'String','name'=>'sort','desc'=>'排序','sample'=>'id','require'=>0],
			['input'=>'String','name'=>'order','desc'=>'排序顺序','sample'=>'desc','require'=>0],
		];
		$this->index_list['info'] = $this->docs_info;
		$this->docs_info 		  = [];
		
		$this->func_list[] = $this->index_list;
		$this->func_navs[] = ['key' => $this->index_list['key'],'url'=>$this->index_list['url'],'name'=>$this->index_list['name']];
	}
	
	/**
	 * 处理显示文档
	 */
	protected function __doc_show_field__($field,$field_list = [],$value_list = [],$depth = 2){

		foreach($value_list as $rkey=>$rval){
			if(!is_array($rval)){
				if(!empty($field_list[$rkey])){
					$curr_table_info = [];
					$curr_table_info['depth']      = $depth;
					$curr_table_info['table']      = $field_list[$rkey]['table'];
					$curr_table_info['title']      = $field_list[$rkey]['title'];
					$curr_table_info['field']      = $field_list[$rkey]['field'];
					$curr_table_info['type']       = $field_list[$rkey]['type'];
					$curr_table_info['default']    = $field_list[$rkey]['default'];
					$curr_table_info['field_json'] = $field_list[$rkey]['field_json'];
					$this->docs_info[] 			   = $curr_table_info;
				}
			}else{
				if(!array_key_exists($rkey,$this->table_info)){
					$this->__doc_show_field__($rkey,$this->table_info[$rkey]['field_list'],$rval,$depth+1);
				}
			}
		}
		
	}
	
	
	
	protected function doc_edit(){
		
		$relist    = [];
		$domain    = Request::instance()->domain();
		$table 	   = $this->command_list['table'];
		$ctable    = $this->command_list['ctable'];
		$stable    = $this->command_list['stable'];
		
		//保存编辑内容
		$edit_list 		  = [];
		$edit_list['key']  = $this->command_keys++;
		$edit_list['url']  = sprintf("/api/%s/edit",$ctable);
		$edit_list['name'] = "编辑接口"; 
		$sampleResult = ['code'=>1,'msg'=>'保存数据成功','time'=>time(),'data'=>['ids'=>rand(1,99)]];
		$edit_list['json'] = json_encode($sampleResult,JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);
		
		$edit_list['body'][] = ['input'=>'String','name'=>'ids','desc'=>'单主键ids为获取','sample'=>rand(1,9),'require'=>1];
		$edit_list['form'][] = ['input'=>"String",'name'=>"ids",'label'=>'主键ids','placeholder'=>"单主键ids为获取数据",'require'=>1,'default'=>''];
		
		if(!empty($this->table_info[$stable]['field_list'])){
			foreach($this->table_info[$stable]['field_list'] as $fkey=>$fval){
				if(!empty($fval['is_byedit'])){
					$require = (strpos($fval['rule_edit'],'require') !== false) ? 1 : 0;
					$edit_list['form'][] = ['input'=>$fval['type'],'name'=>$fval['field'],'label'=>$fval['title'],'placeholder'=>$fval['title'].$fval['field_json'],'require'=>$require,'default'=>''];
					$edit_list['body'][] = ['input'=>$fval['type'],'name'=>$fval['field'],'desc'=>$fval['title'],'sample'=>$fval['title'],'require'=>$require];
				}
			}
		}
		
		//返回说明
		$edit_list['info'] = [
			['depth'=>'1','field'=>'ids','type'=>'String','title'=>'主键ids','field_json'=>'','sample'=>rand(1,9)]
		];
		$this->func_list[] = $edit_list;
		$this->func_navs[] = ['key' => $edit_list['key'],'url'=>$edit_list['url'],'name'=>$edit_list['name']];
	}
	
	/**
	 * 处理删除文档类
	 */
	protected function doc_del(){

		$delete_list 		 = [];
		$delete_list['key']  = $this->command_keys++;
		$ctable 			 = $this->command_list['ctable'];

		$delete_list['url']  = sprintf("/api/%s/del",$ctable);
		$delete_list['name'] = "删除接口"; 
		$sampleResult = ['code'=>1,'msg'=>'删除数据成功','time'=>time(),'data'=>['ids'=>rand(1,99)]];
		$delete_list['json'] = json_encode($sampleResult,JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);
		$delete_list['form'] = [
			['input'=>'text','name'=>'ids','label'=>'删除ids','placeholder'=>'删除ids','require'=>1,'default'=>''],
		];
		
		$delete_list['body'] = [
			['input'=>'String','name'=>'ids','desc'=>'删除ids','sample'=>rand(1000,9999),'require'=>1],
		];
		$delete_list['info'] = [
			['depth'=>'1','field'=>'ids','type'=>'String','title'=>'删除ids','field_json'=>'','sample'=>rand(1000,9999)]
		];
		$this->func_list[] = $delete_list;
		$this->func_navs[] = ['key' => $delete_list['key'],'url'=>$delete_list['url'],'name'=>$delete_list['name']];

	}
	
	protected function doc_view(){
		
		
		$relist    = [];
		$domain    = Request::instance()->domain();
		$table 	   = $this->command_list['table'];
		$ctable    = $this->command_list['ctable'];
		$stable    = $this->command_list['stable'];
		
		
		$view_list 			 = [];
		$view_list['key'] 	 = $this->command_keys++;
		$view_list['name']   = "详情接口";
		$view_list['url']    = sprintf("/api/%s/view",$ctable);
		
		$view_list['form'] = [
			['input'=>'text','name'=>'ids','label'=>'详情ids','placeholder'=>'详情ids','require'=>1,'default'=>''],
		];
		$view_list['body'] = [
			['input'=>'String','name'=>'ids','desc'=>'详情ids','sample'=>rand(1,9),'require'=>1],
		];
		
		$view_info = db("$table")->limit(1)->find();
		
		if(empty($view_info)){
			return false;
		}
		
		
		$apiurl = sprintf("%s/index.php/api/%s/view?ids=%s&token=%s",$domain,$ctable,$view_info['id'],$this->token);
		$result = Http::get($apiurl);
		
		if(!empty($result)){
			$redata = json_decode($result,true);
			if(isset($redata['data']) && is_array($redata['data'])){
				$relist = $redata['data'];
			}
		}

		foreach($relist as $rkey=>$rval){
			$curr_table_info = [];
			if(empty($this->table_info[$stable]['field_list'])){
				continue;
			}
			$curr_table_list = $this->table_info[$stable]['field_list'];
			if(!is_array($rval)){
				if(!empty($curr_table_list[$rkey])){
					$curr_table_info['depth'] = 1;
					$curr_table_info['table'] = $curr_table_list[$rkey]['table'];
					$curr_table_info['title'] = $curr_table_list[$rkey]['title'];
					$curr_table_info['field'] = $curr_table_list[$rkey]['field'];
					$curr_table_info['type'] = $curr_table_list[$rkey]['type'];
					$curr_table_info['default'] = $curr_table_list[$rkey]['default'];
					$curr_table_info['field_json'] = $curr_table_list[$rkey]['field_json'];
					$this->docs_info[] = $curr_table_info;
				}
			}else{
				if(array_key_exists($rkey,$this->table_info)){
					$this->__doc_show_field__($rkey,$this->table_info[$rkey]['field_list'],$rval,2);
				}
			}
		}
		
		$view_list['json'] = json_encode($redata,JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);
		$view_list['info'] = $this->docs_info;
		
		
		$this->func_list[] = $view_list;
		$this->func_navs[] = ['key' => $view_list['key'],'url'=>$view_list['url'],'name'=>$view_list['name']];
		$this->docs_info   = [];
	}
	
	
	protected function doc_add(){
		$add_list 		  = [];
		$add_list['key']  = $this->command_keys++;
		$ctable 	      = $this->command_list['ctable'];
		$stable 	      = $this->command_list['stable'];


		$add_list['url']  = sprintf("/api/%s/add",$ctable);
		$add_list['name'] = "添加接口"; 
		$sampleResult = ['code'=>1,'msg'=>'添加数据成功','time'=>time(),'data'=>['ids'=>rand(1,99)]];
		$add_list['json'] = json_encode($sampleResult,JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);
		
		
		if(!empty($this->table_info[$stable]['field_list'])){
			foreach($this->table_info[$stable]['field_list'] as $fkey=>$fval){
				if(!empty($fval['is_byadd'])){
					$require = (strpos($fval['rule_add'],'require') !== false) ? 1 : 0;
					$add_list['form'][] = ['input'=>$fval['type'],'name'=>$fval['field'],'label'=>$fval['title'],'placeholder'=>$fval['title'].$fval['field_json'],'require'=>$require,'default'=>''];
					$add_list['body'][] = ['input'=>$fval['type'],'name'=>$fval['field'],'desc'=>$fval['title'],'sample'=>$fval['title'],'require'=>$require];
				}
			}
		}

		//返回说明
		$add_list['info'] = [
			['depth'=>'1','field'=>'ids','type'=>'String','title'=>'插入ids','field_json'=>'','sample'=>rand(1,9)]
		];
		$this->func_list[] = $add_list;
		$this->func_navs[] = ['key' => $add_list['key'],'url'=>$add_list['url'],'name'=>$add_list['name']];
	}
	
	
	

}
