<?php

namespace addons\tablemake;

use app\common\library\Menu;
use think\Addons;
use think\Config;
use think\Db;
use think\Exception;

/**
 * 自建表管理插件
 */
class Tablemake extends Addons {

    /**
     * 插件安装方法
     * @return bool
     */
    public function install() {
        $menu = [
            [
                'name' => 'tablemake',
                'title' => '自建表管理',
                'icon' => 'fa fa-cubes',
                'sublist' => [
                    ['name' => 'tablemake/index', 'title' => '查看列表'],
                    ['name' => 'tablemake/add', 'title' => '创建新表'],
                    ['name' => 'tablemake/edit', 'title' => '编辑表'],
                    ['name' => 'tablemake/del', 'title' => '删除模块'],
                    ['name' => 'tablemake/fields', 'title' => '字段管理'],
                    ['name' => 'tablemake/field_add', 'title' => '添加字段'],
                    ['name' => 'tablemake/field_del', 'title' => '删除字段'],
                ]
            ]
        ];
        Menu::create($menu);
        //$this->doUpgrade();
        return true;
    }

    /**
     * 插件卸载方法
     * @return bool
     */
    public function uninstall() {
        Menu::delete('tablemake');
        return true;
    }

    /**
     * 插件启用方法
     * @return bool
     */
    public function enable() {
        Menu::enable('tablemake');
		//$this->doUpgrade();
        return true;
    }

    /**
     * 插件禁用方法
     * @return bool
     */
    public function disable() {
        Menu::disable('tablemake');
        return true;
    }

    public function doUpgrade() {
        $prefix = Config::get('database.prefix');

        $haTable = Db::query('SHOW TABLES LIKE '."'{$prefix}tablemake_tables'");
        if(!$haTable){
            //数据表不存在，表示是安装动作，非升级动作
            return;
        }

        //<editor-fold desc="1.0.7版本更新数据表字段" defaultstate="collapsed">
        /**
         * 1.检测tablemake_tables表是否需要更新，如果需要则更新tablemake_tables表
         */
        $sql = "describe  `{$prefix}tablemake_tables`  `weigh`;";
        $has_weigh = Db::query($sql);
        if (!$has_weigh) {//tablemake_tables
            Db::startTrans();
            try {
                //1.新增weigh字段
                $sql = "ALTER TABLE `{$prefix}tablemake_tables` 
                    ADD COLUMN `weigh`  bigint(11) NOT NULL DEFAULT 0 COMMENT '排序权重' AFTER `desc`;";
                Db::execute($sql);
                //2.更新weigh字段的值为对应记录的ID值
                $sql = "UPDATE `{$prefix}tablemake_tables` SET `weigh`=`id`;";
                Db::execute($sql);
                //3.原有字段更新
                $sql = "ALTER TABLE `{$prefix}tablemake_tables`
                    MODIFY COLUMN `id`  bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'ID' FIRST ,
                    MODIFY COLUMN `name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '自建表名称' AFTER `id`,
                    MODIFY COLUMN `table`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '自建表表名' AFTER `name`,
                    MODIFY COLUMN `desc`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '自建表简介' AFTER `table`,
                    MODIFY COLUMN `createtime`  bigint(11) NOT NULL DEFAULT 0 COMMENT '创建时间' AFTER `weigh`,
                    MODIFY COLUMN `updatetime`  bigint(11) NOT NULL DEFAULT 0 COMMENT '更新时间' AFTER `createtime`;";
                Db::execute($sql);
                Db::commit();
            } catch (Exception $e) {
                \think\Log::write("更新{$prefix}tablemake_tables表字段失败，异常：" . $e->getTraceAsString());
                Db::rollback();
            }
        }
        /**
         * 2.检测tablemake_fields表是否需要更新，如果需要则更新tablemake_fields表
         */
        $sql = "describe  `{$prefix}tablemake_fields`  `weigh`;";
        $has_weigh = Db::query($sql);
        if (!$has_weigh) {//tablemake_fields
            Db::startTrans();
            try {
                //1.新增weigh字段
                $sql = "ALTER TABLE `{$prefix}tablemake_fields` 
                    ADD COLUMN `desc`  varchar(255) NOT NULL DEFAULT '' COMMENT '字段备注' AFTER `comment`,
                    ADD COLUMN `weigh`  bigint(11) NOT NULL DEFAULT 0 COMMENT '排序权重' AFTER `desc`;";
                Db::execute($sql);
                //2.更新weigh字段的值为对应记录的ID值
                $sql = "UPDATE `{$prefix}tablemake_fields` SET `weigh`=`id`;";
                Db::execute($sql);
                //3.原有字段更新
                $sql = "ALTER TABLE `{$prefix}tablemake_fields`
                    MODIFY COLUMN `id`  bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'ID' FIRST ,
                    MODIFY COLUMN `mid`  bigint(11) NOT NULL DEFAULT 0 COMMENT '所属自建表ID' AFTER `id`,
                    MODIFY COLUMN `length`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 0 COMMENT '字段长度' AFTER `type`,
                    MODIFY COLUMN `default`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '默认值' AFTER `length`,
                    MODIFY COLUMN `comment`  varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '字段备注' AFTER `default`,
                    MODIFY COLUMN `createtime`  bigint(11) NOT NULL DEFAULT 0 COMMENT '创建时间' AFTER `weigh`,
                    MODIFY COLUMN `updatetime`  bigint(11) NOT NULL DEFAULT 0 COMMENT '更新时间' AFTER `createtime`;";
                Db::execute($sql);
                Db::commit();
            } catch (Exception $e) {
                \think\Log::write("更新{$prefix}tablemake_fields表字段失败，异常：" . $e->getTraceAsString());
                Db::rollback();
            }
        }
        //</editor-fold>
    }

}
