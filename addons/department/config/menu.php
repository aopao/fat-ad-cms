<?php
/**
 * 菜单配置文件
 */

return array (
  0 => 
  array (
    'type' => 'file',
    'name' => 'department',
    'title' => 'Organizational',
    'icon' => 'fa fa-sitemap',
    'url' => '',
    'condition' => '',
    'remark' => '',
    'ismenu' => 1,
    'menutype' => 'addtabs',
    'extend' => '',
    'py' => 'zzjg',
    'pinyin' => 'zuzhijiagou',
    'weigh' => 8,
    'sublist' => 
    array (
      0 => 
      array (
        'type' => 'file',
        'name' => 'department/admin',
        'title' => 'Employee',
        'icon' => 'fa fa-users',
        'url' => '',
        'condition' => '',
        'remark' => '',
        'ismenu' => 1,
        'menutype' => NULL,
        'extend' => '',
        'py' => 'bmcy',
        'pinyin' => 'bumenchengyuan',
        'weigh' => 0,
        'sublist' => 
        array (
          0 => 
          array (
            'type' => 'file',
            'name' => 'department/admin/index',
            'title' => 'View',
            'icon' => 'fa fa-users',
            'url' => '',
            'condition' => '',
            'remark' => '',
            'ismenu' => 0,
            'menutype' => NULL,
            'extend' => '',
            'py' => 'zk',
            'pinyin' => 'zhakan',
            'weigh' => 0,
          ),
          1 => 
          array (
            'type' => 'file',
            'name' => 'department/admin/add',
            'title' => 'Add',
            'icon' => 'fa fa-circle-o',
            'url' => '',
            'condition' => '',
            'remark' => '',
            'ismenu' => 0,
            'menutype' => NULL,
            'extend' => '',
            'py' => 'tj',
            'pinyin' => 'tianjia',
            'weigh' => 0,
          ),
          2 => 
          array (
            'type' => 'file',
            'name' => 'department/admin/edit',
            'title' => 'Edit',
            'icon' => 'fa fa-circle-o',
            'url' => '',
            'condition' => '',
            'remark' => '',
            'ismenu' => 0,
            'menutype' => NULL,
            'extend' => '',
            'py' => 'bj',
            'pinyin' => 'bianji',
            'weigh' => 0,
          ),
          3 => 
          array (
            'type' => 'file',
            'name' => 'department/admin/del',
            'title' => 'Del',
            'icon' => 'fa fa-circle-o',
            'url' => '',
            'condition' => '',
            'remark' => '',
            'ismenu' => 0,
            'menutype' => NULL,
            'extend' => '',
            'py' => 'sc',
            'pinyin' => 'shanchu',
            'weigh' => 0,
          ),
          4 => 
          array (
            'type' => 'file',
            'name' => 'department/admin/multi',
            'title' => 'Multi',
            'icon' => 'fa fa-circle-o',
            'url' => '',
            'condition' => '',
            'remark' => '',
            'ismenu' => 0,
            'menutype' => NULL,
            'extend' => '',
            'py' => 'plgx',
            'pinyin' => 'pilianggengxin',
            'weigh' => 0,
          ),
          5 => 
          array (
            'type' => 'file',
            'name' => 'department/admin/principal',
            'title' => 'Principal set',
            'icon' => 'fa fa-circle-o',
            'url' => '',
            'condition' => '',
            'remark' => '',
            'ismenu' => 0,
            'menutype' => NULL,
            'extend' => '',
            'py' => 'szfzr',
            'pinyin' => 'shezhifuzeren',
            'weigh' => 0,
          ),
        ),
      ),
      1 => 
      array (
        'type' => 'file',
        'name' => 'department/index',
        'title' => 'Department list',
        'icon' => 'fa fa-sliders',
        'url' => '',
        'condition' => '',
        'remark' => '',
        'ismenu' => 1,
        'menutype' => NULL,
        'extend' => '',
        'py' => '',
        'pinyin' => 'bumenguanli',
        'weigh' => 0,
        'sublist' => 
        array (
          0 => 
          array (
            'type' => 'file',
            'name' => 'department/index/index',
            'title' => 'View',
            'icon' => 'fa fa-circle-o',
            'url' => '',
            'condition' => '',
            'remark' => '',
            'ismenu' => 0,
            'menutype' => NULL,
            'extend' => '',
            'py' => 'zk',
            'pinyin' => 'zhakan',
            'weigh' => 0,
          ),
          1 => 
          array (
            'type' => 'file',
            'name' => 'department/index/add',
            'title' => 'Add',
            'icon' => 'fa fa-circle-o',
            'url' => '',
            'condition' => '',
            'remark' => '',
            'ismenu' => 0,
            'menutype' => NULL,
            'extend' => '',
            'py' => 'tj',
            'pinyin' => 'tianjia',
            'weigh' => 0,
          ),
          2 => 
          array (
            'type' => 'file',
            'name' => 'department/index/edit',
            'title' => 'Edit',
            'icon' => 'fa fa-circle-o',
            'url' => '',
            'condition' => '',
            'remark' => '',
            'ismenu' => 0,
            'menutype' => NULL,
            'extend' => '',
            'py' => 'bj',
            'pinyin' => 'bianji',
            'weigh' => 0,
          ),
          3 => 
          array (
            'type' => 'file',
            'name' => 'department/index/del',
            'title' => 'Del',
            'icon' => 'fa fa-circle-o',
            'url' => '',
            'condition' => '',
            'remark' => '',
            'ismenu' => 0,
            'menutype' => NULL,
            'extend' => '',
            'py' => 'sc',
            'pinyin' => 'shanchu',
            'weigh' => 0,
          ),
          4 => 
          array (
            'type' => 'file',
            'name' => 'department/index/multi',
            'title' => 'Multi',
            'icon' => 'fa fa-circle-o',
            'url' => '',
            'condition' => '',
            'remark' => '',
            'ismenu' => 0,
            'menutype' => NULL,
            'extend' => '',
            'py' => 'plgx',
            'pinyin' => 'pilianggengxin',
            'weigh' => 0,
          ),
        ),
      ),
    ),
  ),
);