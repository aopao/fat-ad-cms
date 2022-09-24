<?php
namespace addons\department;

use app\common\library\Menu;
use think\Addons;
use think\Lang;
use think\Loader;

/**
 * 插件
 */
class Department extends Addons
{

    /**
     * 插件安装方法
     * @return bool
     */
    public function install()
    {
        $menu=[];
        $config_file= ADDON_PATH ."department" . DS.'config'.DS. "menu.php";
        if (is_file($config_file)) {
            $menu = include $config_file;
        }
        if($menu){
            Menu::create($menu);
        }
        return true;
    }

    /**
     * 插件卸载方法
     * @return bool
     */
    public function uninstall()
    {
        $info=get_addon_info('department');
        Menu::delete(isset($info['first_menu'])?$info['first_menu']:'department');
        return true;
    }

    /**
     * 插件启用方法
     */
    public function enable()
    {
        $info=get_addon_info('department');
        Menu::enable(isset($info['first_menu'])?$info['first_menu']:'department');
    }

    /**
     * 插件禁用方法
     */
    public function disable()
    {
        $info=get_addon_info('department');
        Menu::disable(isset($info['first_menu'])?$info['first_menu']:'department');
    }
      /**
     * 插件升级方法
     */
    public function upgrade()
    {

    }
    /**
     * 添加语言包
     */
    public function appBegin()
    {
        $lang=\request()->langset();
        $lang=preg_match("/^([a-zA-Z\-_]{2,10})\$/i",$lang)?$lang:'zh-cn';
        //添加语言包
        Lang::load(ADDON_PATH . '/department/lang/' . $lang . '/' . $lang . '.php');

    }
}
