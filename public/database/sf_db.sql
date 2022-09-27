-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2022-09-27 19:30:51
-- 服务器版本： 5.7.39-log
-- PHP 版本： 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `sf_db`
--

-- --------------------------------------------------------

--
-- 表的结构 `sf_admin`
--

CREATE TABLE `sf_admin` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `username` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '昵称',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号码',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` bigint(16) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录IP',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员表';

--
-- 转存表中的数据 `sf_admin`
--

INSERT INTO `sf_admin` (`id`, `username`, `nickname`, `password`, `salt`, `avatar`, `email`, `mobile`, `loginfailure`, `logintime`, `loginip`, `createtime`, `updatetime`, `token`, `status`) VALUES
(1, 'admin', 'Admin', '434b867d5b6d4feb65c919026d086a0e', 'f4c39b', 'http://www.sf.com/assets/img/avatar.png', 'admin@admin.com', '', 0, 1663683258, '127.0.0.1', 1491635035, 1663683258, 'f6b77ce0-709f-4485-a531-11c2c5e4d9a7', 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `sf_admin_log`
--

CREATE TABLE `sf_admin_log` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '日志标题',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'User-Agent',
  `createtime` bigint(16) DEFAULT NULL COMMENT '操作时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员日志表';

--
-- 转存表中的数据 `sf_admin_log`
--

INSERT INTO `sf_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(1, 0, 'Unknown', '/YCuzghkBvA.php/index/login', '', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"vpaw\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671559),
(2, 1, 'admin', '/YCuzghkBvA.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"xfju\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671564),
(3, 1, 'admin', '/YCuzghkBvA.php/addon/install', '插件管理', '{\"name\":\"example\",\"force\":\"0\",\"uid\":\"676\",\"token\":\"***\",\"version\":\"1.1.1\",\"faversion\":\"1.3.4.20220530\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671598),
(4, 1, 'admin', '/YCuzghkBvA.php/addon/state', '插件管理 / 禁用启用', '{\"name\":\"example\",\"action\":\"enable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671598),
(5, 1, 'admin', '/YCuzghkBvA.php/addon/install', '插件管理', '{\"name\":\"command\",\"force\":\"0\",\"uid\":\"676\",\"token\":\"***\",\"version\":\"1.1.0\",\"faversion\":\"1.3.4.20220530\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671610),
(6, 1, 'admin', '/YCuzghkBvA.php/addon/state', '插件管理 / 禁用启用', '{\"name\":\"command\",\"action\":\"enable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671610),
(7, 1, 'admin', '/YCuzghkBvA.php/addon/install', '插件管理', '{\"name\":\"buiapi\",\"force\":\"0\",\"uid\":\"676\",\"token\":\"***\",\"version\":\"1.0.1\",\"faversion\":\"1.3.4.20220530\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671614),
(8, 1, 'admin', '/YCuzghkBvA.php/addon/state', '插件管理 / 禁用启用', '{\"name\":\"buiapi\",\"action\":\"enable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671614),
(9, 1, 'admin', '/YCuzghkBvA.php/addon/install', '插件管理', '{\"name\":\"areapicker\",\"force\":\"0\",\"uid\":\"676\",\"token\":\"***\",\"version\":\"1.2.0\",\"faversion\":\"1.3.4.20220530\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671629),
(10, 1, 'admin', '/YCuzghkBvA.php/addon/state', '插件管理 / 禁用启用', '{\"name\":\"areapicker\",\"action\":\"enable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671629),
(11, 1, 'admin', '/YCuzghkBvA.php/addon/install', '插件管理', '{\"name\":\"alisms\",\"force\":\"0\",\"uid\":\"676\",\"token\":\"***\",\"version\":\"1.0.10\",\"faversion\":\"1.3.4.20220530\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671646),
(12, 1, 'admin', '/YCuzghkBvA.php/addon/state', '插件管理 / 禁用启用', '{\"name\":\"alisms\",\"action\":\"enable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671646),
(13, 1, 'admin', '/YCuzghkBvA.php/addon/install', '插件管理', '{\"name\":\"log\",\"force\":\"0\",\"uid\":\"676\",\"token\":\"***\",\"version\":\"1.0.4\",\"faversion\":\"1.3.4.20220530\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671834),
(14, 1, 'admin', '/YCuzghkBvA.php/addon/state', '插件管理 / 禁用启用', '{\"name\":\"log\",\"action\":\"enable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671834),
(15, 1, 'admin', '/YCuzghkBvA.php/addon/install', '插件管理', '{\"name\":\"database\",\"force\":\"0\",\"uid\":\"676\",\"token\":\"***\",\"version\":\"1.0.12\",\"faversion\":\"1.3.4.20220530\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671848),
(16, 1, 'admin', '/YCuzghkBvA.php/addon/state', '插件管理 / 禁用启用', '{\"name\":\"database\",\"action\":\"enable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671848),
(17, 1, 'admin', '/YCuzghkBvA.php/addon/install', '插件管理', '{\"name\":\"department\",\"force\":\"0\",\"uid\":\"676\",\"token\":\"***\",\"version\":\"1.0.2\",\"faversion\":\"1.3.4.20220530\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671927),
(18, 1, 'admin', '/YCuzghkBvA.php/addon/state', '插件管理 / 禁用启用', '{\"name\":\"department\",\"action\":\"enable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663671927),
(19, 1, 'admin', '/YCuzghkBvA.php/addon/install', '插件管理', '{\"name\":\"tablemake\",\"force\":\"0\",\"uid\":\"676\",\"token\":\"***\",\"version\":\"1.0.7\",\"faversion\":\"1.3.4.20220530\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663672019),
(20, 1, 'admin', '/YCuzghkBvA.php/addon/state', '插件管理 / 禁用启用', '{\"name\":\"tablemake\",\"action\":\"enable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663672019),
(21, 1, 'admin', '/YCuzghkBvA.php/general/database/backup', '常规管理 / 数据库管理 / 备份', '{\"action\":\"backup\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS', 1663672047),
(22, 1, 'admin', '/YCuzghkBvA.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"pxlp\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1663683258),
(23, 1, 'admin', '/YCuzghkBvA.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"name\":\"商富小程序\",\"beian\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1663683553),
(24, 1, 'admin', '/YCuzghkBvA.php/addon/config?name=buiapi&dialog=1', '插件管理 / 配置', '{\"name\":\"buiapi\",\"dialog\":\"1\",\"row\":{\"isshow_apidoc\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1663683685),
(25, 1, 'admin', '/YCuzghkBvA.php/tablemake/add?dialog=1', '自建表管理 / 创建新表', '{\"dialog\":\"1\",\"row\":{\"name\":\"服务表\",\"table\":\"services\",\"desc\":\"服务表，记录可以提供的服务内容\"}}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1663821352),
(26, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/1?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"category\":\"1\",\"title\":\"服务名称\",\"name\":\"name\",\"special\":\"\",\"suffix\":\"text\",\"type\":\"\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"length\":\"200\",\"default\":\"\",\"desc\":\"\"},\"mid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1663821402),
(27, 1, 'admin', '/YCuzghkBvA.php/command/get_field_list', '在线命令管理', '{\"table\":\"sf_admin\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1663821746),
(28, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_edit/ids/1?dialog=1', '自建表管理', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"title\":\"服务名称\",\"name\":\"name1\",\"special\":\"\",\"suffix\":\"text\",\"type\":\"varchar\",\"comment\":\"\",\"length\":\"200\",\"default\":\"\",\"desc\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1663821992),
(29, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_edit/ids/1?dialog=1', '自建表管理', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"title\":\"服务名称\",\"name\":\"name1\",\"special\":\"\",\"suffix\":\"text\",\"type\":\"varchar\",\"comment\":\"\",\"length\":\"200\",\"default\":\"\",\"desc\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1663822019),
(30, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_del', '自建表管理 / 删除字段', '{\"action\":\"del\",\"ids\":\"1\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1663822038),
(31, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_edit/ids/1?dialog=1', '自建表管理', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"title\":\"服务名称\",\"name\":\"name\",\"special\":\"\",\"suffix\":\"text\",\"type\":\"varchar\",\"comment\":\"\",\"length\":\"200\",\"default\":\"\",\"desc\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1663822067),
(32, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_del', '自建表管理 / 删除字段', '{\"action\":\"del\",\"ids\":\"1\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1663822076),
(33, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/1?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"category\":\"2\",\"title\":\"服务名称\",\"name\":\"name\",\"special\":\"\",\"suffix\":\"\",\"type\":\"varchar\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"length\":\"200\",\"default\":\"\",\"desc\":\"服务名称\"},\"mid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1663822111),
(34, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/1?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"category\":\"2\",\"title\":\"服务名称\",\"name\":\"name\",\"special\":\"\",\"suffix\":\"\",\"type\":\"varchar\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"length\":\"200\",\"default\":\"\",\"desc\":\"\"},\"mid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1663843637),
(35, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/1?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"category\":\"1\",\"title\":\"主图\",\"name\":\"thumb\",\"special\":\"\",\"suffix\":\"image\",\"type\":\"\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"length\":\"\",\"default\":\"\",\"desc\":\"\"},\"mid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1663843726),
(36, 1, 'admin', '/YCuzghkBvA.php/ajax/weigh', '', '{\"ids\":\"2,3\",\"changeid\":\"2\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"tablemake_fields\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1663843736),
(37, 1, 'admin', '/YCuzghkBvA.php/tablemake/add?dialog=1', '自建表管理 / 创建新表', '{\"dialog\":\"1\",\"row\":{\"name\":\"服务分类表\",\"table\":\"catgory\",\"desc\":\"服务分类表\"}}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023530),
(38, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/2?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"2\",\"category\":\"2\",\"title\":\"分类名称\",\"name\":\"name\",\"special\":\"\",\"suffix\":\"\",\"type\":\"varchar\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"length\":\"200\",\"default\":\"\",\"desc\":\"\"},\"mid\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023556),
(39, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/2?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"2\",\"category\":\"1\",\"title\":\"分类图标\",\"name\":\"thumb\",\"special\":\"\",\"suffix\":\"images\",\"type\":\"\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"length\":\"\",\"default\":\"\",\"desc\":\"\"},\"mid\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023599),
(40, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/2?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"2\",\"category\":\"2\",\"title\":\"分类描述\",\"name\":\"describe\",\"special\":\"\",\"suffix\":\"\",\"type\":\"varchar\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"length\":\"255\",\"default\":\"\",\"desc\":\"\"},\"mid\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023635),
(41, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/1?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"category\":\"1\",\"title\":\"分类名称\",\"name\":\"catgory_id\",\"special\":\"\",\"suffix\":\"_id\",\"type\":\"\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"length\":\"11\",\"default\":\"\",\"desc\":\"\"},\"mid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023701),
(42, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_edit/ids/7?dialog=1', '自建表管理', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"title\":\"分类名称\",\"name\":\"catgory\",\"special\":\"\",\"suffix\":\"_id\",\"type\":\"\",\"comment\":\"\",\"length\":\"11\",\"default\":\"\",\"desc\":\"\"},\"ids\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023708),
(43, 1, 'admin', '/YCuzghkBvA.php/ajax/weigh', '', '{\"ids\":\"2,3,7\",\"changeid\":\"7\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"tablemake_fields\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023719),
(44, 1, 'admin', '/YCuzghkBvA.php/command/get_field_list', '在线命令管理', '{\"table\":\"sf_admin\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023844),
(45, 1, 'admin', '/YCuzghkBvA.php/command/get_field_list', '在线命令管理', '{\"table\":\"sf_catgory\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023853),
(46, 1, 'admin', '/YCuzghkBvA.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"sf_catgory\",\"controller\":\"Catgory\",\"model\":\"Catfory\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"tagsuffix\":\"\",\"jsonsuffix\":\"\",\"fixedcolumns\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023892),
(47, 1, 'admin', '/YCuzghkBvA.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"sf_catgory\",\"controller\":\"Catgory\",\"model\":\"Catfory\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"tagsuffix\":\"\",\"jsonsuffix\":\"\",\"fixedcolumns\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023893),
(48, 1, 'admin', '/YCuzghkBvA.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023900),
(49, 1, 'admin', '/YCuzghkBvA.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"cat\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"cat\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023907),
(50, 1, 'admin', '/YCuzghkBvA.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023909),
(51, 1, 'admin', '/YCuzghkBvA.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Catgory.php\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023917),
(52, 1, 'admin', '/YCuzghkBvA.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Catgory.php\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023919),
(53, 1, 'admin', '/YCuzghkBvA.php/catgory/add?dialog=1', '服务分类管理 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"地产服务\",\"thumbimages\":\"\\/assets\\/img\\/qrcode.png,\\/assets\\/img\\/qrcode.png\",\"describe\":\"地产服务\"}}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023969),
(54, 1, 'admin', '/YCuzghkBvA.php/command/get_field_list', '在线命令管理', '{\"table\":\"sf_admin\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664023983),
(55, 1, 'admin', '/YCuzghkBvA.php/buiapi/add?dialog=1', 'API接口生成器 / 同步数据库', '{\"dialog\":\"1\",\"row\":{\"tables\":[\"sf_catgory|服务分类表\"]}}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664024524),
(56, 1, 'admin', '/YCuzghkBvA.php/buiapi/get_field_list', 'API接口生成器 / 字段列表', '{\"table\":\"catgory\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664024582),
(57, 1, 'admin', '/YCuzghkBvA.php/buiapi/buildcommand', 'API接口生成器 / 生成命令', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"bu-add\":\"0\",\"bu-del\":\"1\",\"bu-edit\":\"0\",\"bu-list\":\"0\",\"bu-view\":\"0\",\"func\":[\"index\"],\"login\":\"nlogin\",\"table\":\"catgory\",\"controller\":\"\",\"model\":\"\",\"commond\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664024628),
(58, 1, 'admin', '/YCuzghkBvA.php/buiapi/execcommand', 'API接口生成器 / 执行命令', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"bu-add\":\"0\",\"bu-del\":\"1\",\"bu-edit\":\"0\",\"bu-list\":\"0\",\"bu-view\":\"0\",\"func\":[\"index\"],\"login\":\"nlogin\",\"table\":\"catgory\",\"controller\":\"\",\"model\":\"\",\"commond\":\"--table=catgory --func=index --vlogin=not\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664024635),
(59, 1, 'admin', '/YCuzghkBvA.php/addon/install', '插件管理', '{\"name\":\"cms\",\"force\":\"0\",\"uid\":\"676\",\"token\":\"***\",\"version\":\"1.5.18\",\"faversion\":\"1.3.4.20220530\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664035115),
(60, 1, 'admin', '/YCuzghkBvA.php/addon/state', '插件管理 / 禁用启用', '{\"name\":\"cms\",\"action\":\"enable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664035115),
(61, 1, 'admin', '/YCuzghkBvA.php/addon/testdata', '插件管理', '{\"name\":\"cms\",\"uid\":\"676\",\"token\":\"***\",\"version\":\"1.5.18\",\"faversion\":\"1.3.4.20220530\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664035117),
(62, 1, 'admin', '/YCuzghkBvA.php/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"channel.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"channel.html\",\"searchField\":[\"name\"],\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664035140),
(63, 1, 'admin', '/YCuzghkBvA.php/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"show.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"show.html\",\"searchField\":[\"name\"],\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664035140),
(64, 1, 'admin', '/YCuzghkBvA.php/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"list.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"list.html\",\"searchField\":[\"name\"],\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664035140),
(65, 1, 'admin', '/YCuzghkBvA.php/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"\",\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664035150),
(66, 1, 'admin', '/YCuzghkBvA.php/tablemake/add?dialog=1', '自建表管理 / 创建新表', '{\"dialog\":\"1\",\"row\":{\"name\":\"服务规格表\",\"table\":\"sku\",\"desc\":\"服务规格表\"}}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664035410),
(67, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/1?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"category\":\"1\",\"title\":\"服务规格\",\"name\":\"specifications\",\"special\":\"\",\"suffix\":\"json\",\"type\":\"\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"length\":\"\",\"default\":\"\",\"desc\":\"\"},\"mid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036038),
(68, 1, 'admin', '/YCuzghkBvA.php/ajax/weigh', '', '{\"ids\":\"2,3,7,8\",\"changeid\":\"8\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"tablemake_fields\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036045),
(69, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_edit/ids/3?dialog=1', '自建表管理', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"title\":\"显示图标\",\"name\":\"thumb\",\"special\":\"\",\"suffix\":\"image\",\"type\":\"varchar\",\"comment\":\"\",\"length\":\"255\",\"default\":\"\",\"desc\":\"\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036055),
(70, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/1?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"category\":\"2\",\"title\":\"服务内容\",\"name\":\"content\",\"special\":\"\",\"suffix\":\"\",\"type\":\"text\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"desc\":\"服务内容\"},\"mid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036173),
(71, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/1?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"category\":\"3\",\"title\":\"创建时间\",\"special\":\"createtime\",\"suffix\":\"\",\"type\":\"\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"desc\":\"\"},\"mid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036187),
(72, 1, 'admin', '/YCuzghkBvA.php/ajax/weigh', '', '{\"ids\":\"10,2,3,7,8,9\",\"changeid\":\"9\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"tablemake_fields\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036191),
(73, 1, 'admin', '/YCuzghkBvA.php/ajax/weigh', '', '{\"ids\":\"2,3,7,8,9,10\",\"changeid\":\"10\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"tablemake_fields\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036194),
(74, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/1?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"category\":\"3\",\"title\":\"更新时间\",\"special\":\"updatetime\",\"suffix\":\"\",\"type\":\"\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"desc\":\"\"},\"mid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036205),
(75, 1, 'admin', '/YCuzghkBvA.php/ajax/weigh', '', '{\"ids\":\"2,3,7,8,9,10,11\",\"changeid\":\"11\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"tablemake_fields\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036207),
(76, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/1?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"category\":\"2\",\"title\":\"客服电话\",\"name\":\"tel\",\"special\":\"\",\"suffix\":\"\",\"type\":\"varchar\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"length\":\"20\",\"default\":\"\",\"desc\":\"\"},\"mid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036231),
(77, 1, 'admin', '/YCuzghkBvA.php/ajax/weigh', '', '{\"ids\":\"2,12,3,7,8,9,10,11\",\"changeid\":\"12\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"tablemake_fields\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036244),
(78, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/1?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"category\":\"2\",\"title\":\"服务价格\",\"name\":\"price\",\"special\":\"\",\"suffix\":\"\",\"type\":\"float\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"length\":\"10,2\",\"default\":\"0\",\"desc\":\"服务价格\"},\"mid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036340),
(79, 1, 'admin', '/YCuzghkBvA.php/ajax/weigh', '', '{\"ids\":\"2,13,12,3,7,8,9,10,11\",\"changeid\":\"13\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"tablemake_fields\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036345),
(80, 1, 'admin', '/YCuzghkBvA.php/command/get_field_list', '在线命令管理', '{\"table\":\"sf_admin\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036376),
(81, 1, 'admin', '/YCuzghkBvA.php/command/get_field_list', '在线命令管理', '{\"table\":\"sf_services\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036388),
(82, 1, 'admin', '/YCuzghkBvA.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"sf_services\",\"controller\":\"Services\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"tagsuffix\":\"\",\"jsonsuffix\":\"\",\"fixedcolumns\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036409),
(83, 1, 'admin', '/YCuzghkBvA.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"sf_services\",\"controller\":\"Services\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"tagsuffix\":\"\",\"jsonsuffix\":\"\",\"fixedcolumns\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036415),
(84, 1, 'admin', '/YCuzghkBvA.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"sf_services\",\"controller\":\"Services\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"tagsuffix\":\"\",\"jsonsuffix\":\"\",\"fixedcolumns\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036417),
(85, 1, 'admin', '/YCuzghkBvA.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036423),
(86, 1, 'admin', '/YCuzghkBvA.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"Services\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"Services\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036427),
(87, 1, 'admin', '/YCuzghkBvA.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036428),
(88, 1, 'admin', '/YCuzghkBvA.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Services.php\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036433),
(89, 1, 'admin', '/YCuzghkBvA.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Services.php\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036435),
(90, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/1?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"category\":\"1\",\"title\":\"列表规格\",\"name\":\"list_hot\",\"special\":\"\",\"suffix\":\"json\",\"type\":\"\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"length\":\"\",\"default\":\"\",\"desc\":\"\"},\"mid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036581),
(91, 1, 'admin', '/YCuzghkBvA.php/ajax/weigh', '', '{\"ids\":\"4,6,5\",\"changeid\":\"4\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"tablemake_fields\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036649),
(92, 1, 'admin', '/YCuzghkBvA.php/ajax/weigh', '', '{\"ids\":\"4,5,6\",\"changeid\":\"5\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"tablemake_fields\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036652),
(93, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/2?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"2\",\"category\":\"3\",\"title\":\"创建时间\",\"special\":\"createtime\",\"suffix\":\"\",\"type\":\"\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"desc\":\"\"},\"mid\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036665),
(94, 1, 'admin', '/YCuzghkBvA.php/ajax/weigh', '', '{\"ids\":\"4,5,6,15\",\"changeid\":\"15\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"tablemake_fields\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036667),
(95, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/2?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"2\",\"category\":\"3\",\"title\":\"更新时间\",\"special\":\"updatetime\",\"suffix\":\"\",\"type\":\"\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"desc\":\"\"},\"mid\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036679),
(96, 1, 'admin', '/YCuzghkBvA.php/ajax/weigh', '', '{\"ids\":\"4,5,6,16,15\",\"changeid\":\"16\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"tablemake_fields\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036684),
(97, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_edit/ids/6?dialog=1', '自建表管理', '{\"dialog\":\"1\",\"row\":{\"mid\":\"2\",\"title\":\"分类描述\",\"name\":\"describe\",\"special\":\"\",\"suffix\":\"\",\"type\":\"varchar\",\"comment\":\"\",\"length\":\"2000\",\"default\":\"\",\"desc\":\"\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664036701),
(98, 1, 'admin', '/YCuzghkBvA.php/ajax/weigh', '', '{\"ids\":\"2,13,12,3,7,14,8,9,10,11\",\"changeid\":\"14\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"tablemake_fields\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664080466),
(99, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/1?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"category\":\"1\",\"title\":\"显示详情\",\"name\":\"is_details\",\"special\":\"\",\"suffix\":\"data-enum\",\"type\":\"\",\"comment\":\"{&quot;0&quot;:&quot;否&quot;,&quot;1&quot;:&quot;是&quot;}\",\"length\":\"\",\"default\":\"\",\"desc\":\"\"},\"mid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664080637),
(100, 1, 'admin', '/YCuzghkBvA.php/ajax/weigh', '', '{\"ids\":\"2,13,12,3,7,14,8,17,9,10,11\",\"changeid\":\"17\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"tablemake_fields\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664080644),
(101, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/1?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"category\":\"2\",\"title\":\"服务介绍\",\"name\":\"describe\",\"special\":\"\",\"suffix\":\"\",\"type\":\"text\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"desc\":\"\"},\"mid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664080709),
(102, 1, 'admin', '/YCuzghkBvA.php/ajax/weigh', '', '{\"ids\":\"2,13,12,3,18,7,14,8,17,9,10,11\",\"changeid\":\"18\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"tablemake_fields\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664080717),
(103, 1, 'admin', '/YCuzghkBvA.php/tablemake/field_add/mid/1?dialog=1', '自建表管理 / 添加字段', '{\"dialog\":\"1\",\"row\":{\"mid\":\"1\",\"category\":\"1\",\"title\":\"Banner\",\"name\":\"banner\",\"special\":\"\",\"suffix\":\"images\",\"type\":\"\",\"comment\":\"{&quot;option_01&quot;:&quot;选项一&quot;,&quot;option_02&quot;:&quot;选项2&quot;}\",\"length\":\"\",\"default\":\"\",\"desc\":\"\"},\"mid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664080758),
(104, 1, 'admin', '/YCuzghkBvA.php/ajax/weigh', '', '{\"ids\":\"2,13,12,19,3,18,7,14,8,17,9,10,11\",\"changeid\":\"19\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"tablemake_fields\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664080766),
(105, 1, 'admin', '/YCuzghkBvA.php/command/get_field_list', '在线命令管理', '{\"table\":\"sf_admin\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664080816),
(106, 1, 'admin', '/YCuzghkBvA.php/command/get_field_list', '在线命令管理', '{\"table\":\"sf_catgory\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664080827),
(107, 1, 'admin', '/YCuzghkBvA.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"sf_catgory\",\"controller\":\"Catgory\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"tagsuffix\":\"\",\"jsonsuffix\":\"\",\"fixedcolumns\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664080840),
(108, 1, 'admin', '/YCuzghkBvA.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"sf_catgory\",\"controller\":\"Catgory\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"tagsuffix\":\"\",\"jsonsuffix\":\"\",\"fixedcolumns\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664080842),
(109, 1, 'admin', '/YCuzghkBvA.php/command/get_field_list', '在线命令管理', '{\"table\":\"sf_admin\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664080892),
(110, 1, 'admin', '/YCuzghkBvA.php/command/get_field_list', '在线命令管理', '{\"table\":\"sf_services\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664080915),
(111, 1, 'admin', '/YCuzghkBvA.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"sf_services\",\"controller\":\"Services\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"tagsuffix\":\"\",\"jsonsuffix\":\"\",\"fixedcolumns\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664080923),
(112, 1, 'admin', '/YCuzghkBvA.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"sf_services\",\"controller\":\"Services\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"tagsuffix\":\"\",\"jsonsuffix\":\"\",\"fixedcolumns\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664080924),
(113, 1, 'admin', '/YCuzghkBvA.php/addon/install', '插件管理', '{\"name\":\"nkeditor\",\"force\":\"0\",\"uid\":\"676\",\"token\":\"***\",\"version\":\"1.1.1\",\"faversion\":\"1.3.4.20220530\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664081016),
(114, 1, 'admin', '/YCuzghkBvA.php/addon/isbuy', '插件管理', '{\"name\":\"nkeditor\",\"force\":\"0\",\"uid\":\"676\",\"token\":\"***\",\"version\":\"1.1.1\",\"faversion\":\"1.3.4.20220530\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664081027),
(115, 1, 'admin', '/YCuzghkBvA.php/addon/install', '插件管理', '{\"name\":\"tinymce\",\"force\":\"0\",\"uid\":\"676\",\"token\":\"***\",\"version\":\"1.0.6\",\"faversion\":\"1.3.4.20220530\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664081081),
(116, 1, 'admin', '/YCuzghkBvA.php/addon/state', '插件管理 / 禁用启用', '{\"name\":\"tinymce\",\"action\":\"enable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664081081),
(117, 1, 'admin', '/YCuzghkBvA.php/cms/archives/get_fields_html', 'CMS管理 / 内容管理', '{\"channel_id\":\"8\",\"archives_id\":\"109\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664082550),
(118, 1, 'admin', '/YCuzghkBvA.php/cms/archives/get_fields_html', 'CMS管理 / 内容管理', '{\"channel_id\":\"8\",\"archives_id\":\"109\"}', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1664082597);

-- --------------------------------------------------------

--
-- 表的结构 `sf_area`
--

CREATE TABLE `sf_area` (
  `id` int(10) NOT NULL COMMENT 'ID',
  `pid` int(10) DEFAULT NULL COMMENT '父id',
  `shortname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简称',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `mergename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '全称',
  `level` tinyint(4) DEFAULT NULL COMMENT '层级:1=省,2=市,3=区/县',
  `pinyin` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '拼音',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '长途区号',
  `zip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮编',
  `first` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '首字母',
  `lng` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经度',
  `lat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '纬度'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='地区表';

--
-- 转存表中的数据 `sf_area`
--

INSERT INTO `sf_area` (`id`, `pid`, `shortname`, `name`, `mergename`, `level`, `pinyin`, `code`, `zip`, `first`, `lng`, `lat`) VALUES
(1, 0, '北京', '北京', '中国,北京', 1, 'beijing', '', '', 'B', '116.405285', '39.904989'),
(2, 1, '北京', '北京市', '中国,北京,北京市', 2, 'beijing', '010', '100000', 'B', '116.405285', '39.904989'),
(3, 2, '东城', '东城区', '中国,北京,北京市,东城区', 3, 'dongcheng', '010', '100010', 'D', '116.41005', '39.93157'),
(4, 2, '西城', '西城区', '中国,北京,北京市,西城区', 3, 'xicheng', '010', '100032', 'X', '116.36003', '39.9305'),
(5, 2, '朝阳', '朝阳区', '中国,北京,北京市,朝阳区', 3, 'chaoyang', '010', '100020', 'C', '116.48548', '39.9484'),
(6, 2, '丰台', '丰台区', '中国,北京,北京市,丰台区', 3, 'fengtai', '010', '100071', 'F', '116.28625', '39.8585'),
(7, 2, '石景山', '石景山区', '中国,北京,北京市,石景山区', 3, 'shijingshan', '010', '100043', 'S', '116.2229', '39.90564'),
(8, 2, '海淀', '海淀区', '中国,北京,北京市,海淀区', 3, 'haidian', '010', '100089', 'H', '116.29812', '39.95931'),
(9, 2, '门头沟', '门头沟区', '中国,北京,北京市,门头沟区', 3, 'mentougou', '010', '102300', 'M', '116.10137', '39.94043'),
(10, 2, '房山', '房山区', '中国,北京,北京市,房山区', 3, 'fangshan', '010', '102488', 'F', '116.14257', '39.74786'),
(11, 2, '通州', '通州区', '中国,北京,北京市,通州区', 3, 'tongzhou', '010', '101149', 'T', '116.65716', '39.90966'),
(12, 2, '顺义', '顺义区', '中国,北京,北京市,顺义区', 3, 'shunyi', '010', '101300', 'S', '116.65417', '40.1302'),
(13, 2, '昌平', '昌平区', '中国,北京,北京市,昌平区', 3, 'changping', '010', '102200', 'C', '116.2312', '40.22072'),
(14, 2, '大兴', '大兴区', '中国,北京,北京市,大兴区', 3, 'daxing', '010', '102600', 'D', '116.34149', '39.72668'),
(15, 2, '怀柔', '怀柔区', '中国,北京,北京市,怀柔区', 3, 'huairou', '010', '101400', 'H', '116.63168', '40.31602'),
(16, 2, '平谷', '平谷区', '中国,北京,北京市,平谷区', 3, 'pinggu', '010', '101200', 'P', '117.12133', '40.14056'),
(17, 2, '密云', '密云县', '中国,北京,北京市,密云县', 3, 'miyun', '010', '101500', 'M', '116.84295', '40.37618'),
(18, 2, '延庆', '延庆县', '中国,北京,北京市,延庆县', 3, 'yanqing', '010', '102100', 'Y', '115.97494', '40.45672'),
(19, 0, '天津', '天津', '中国,天津', 1, 'tianjin', '', '', 'T', '117.190182', '39.125596'),
(20, 19, '天津', '天津市', '中国,天津,天津市', 2, 'tianjin', '022', '300000', 'T', '117.190182', '39.125596'),
(21, 20, '和平', '和平区', '中国,天津,天津市,和平区', 3, 'heping', '022', '300041', 'H', '117.21456', '39.11718'),
(22, 20, '河东', '河东区', '中国,天津,天津市,河东区', 3, 'hedong', '022', '300171', 'H', '117.22562', '39.12318'),
(23, 20, '河西', '河西区', '中国,天津,天津市,河西区', 3, 'hexi', '022', '300202', 'H', '117.22327', '39.10959'),
(24, 20, '南开', '南开区', '中国,天津,天津市,南开区', 3, 'nankai', '022', '300110', 'N', '117.15074', '39.13821'),
(25, 20, '河北', '河北区', '中国,天津,天津市,河北区', 3, 'hebei', '022', '300143', 'H', '117.19697', '39.14816'),
(26, 20, '红桥', '红桥区', '中国,天津,天津市,红桥区', 3, 'hongqiao', '022', '300131', 'H', '117.15145', '39.16715'),
(27, 20, '东丽', '东丽区', '中国,天津,天津市,东丽区', 3, 'dongli', '022', '300300', 'D', '117.31436', '39.0863'),
(28, 20, '西青', '西青区', '中国,天津,天津市,西青区', 3, 'xiqing', '022', '300380', 'X', '117.00927', '39.14123'),
(29, 20, '津南', '津南区', '中国,天津,天津市,津南区', 3, 'jinnan', '022', '300350', 'J', '117.38537', '38.99139'),
(30, 20, '北辰', '北辰区', '中国,天津,天津市,北辰区', 3, 'beichen', '022', '300400', 'B', '117.13217', '39.22131'),
(31, 20, '武清', '武清区', '中国,天津,天津市,武清区', 3, 'wuqing', '022', '301700', 'W', '117.04443', '39.38415'),
(32, 20, '宝坻', '宝坻区', '中国,天津,天津市,宝坻区', 3, 'baodi', '022', '301800', 'B', '117.3103', '39.71761'),
(33, 20, '滨海新区', '滨海新区', '中国,天津,天津市,滨海新区', 3, 'binhaixinqu', '022', '300451', 'B', '117.70162', '39.02668'),
(34, 20, '宁河', '宁河县', '中国,天津,天津市,宁河县', 3, 'ninghe', '022', '301500', 'N', '117.8255', '39.33048'),
(35, 20, '静海', '静海县', '中国,天津,天津市,静海县', 3, 'jinghai', '022', '301600', 'J', '116.97436', '38.94582'),
(36, 20, '蓟县', '蓟县', '中国,天津,天津市,蓟县', 3, 'jixian', '022', '301900', 'J', '117.40799', '40.04567'),
(37, 0, '河北', '河北省', '中国,河北省', 1, 'hebei', '', '', 'H', '114.502461', '38.045474'),
(38, 37, '石家庄', '石家庄市', '中国,河北省,石家庄市', 2, 'shijiazhuang', '0311', '050011', 'S', '114.502461', '38.045474'),
(39, 38, '长安', '长安区', '中国,河北省,石家庄市,长安区', 3, 'chang\'an', '0311', '050011', 'C', '114.53906', '38.03665'),
(40, 38, '桥西', '桥西区', '中国,河北省,石家庄市,桥西区', 3, 'qiaoxi', '0311', '050091', 'Q', '114.46977', '38.03221'),
(41, 38, '新华', '新华区', '中国,河北省,石家庄市,新华区', 3, 'xinhua', '0311', '050051', 'X', '114.46326', '38.05088'),
(42, 38, '井陉矿区', '井陉矿区', '中国,河北省,石家庄市,井陉矿区', 3, 'jingxingkuangqu', '0311', '050100', 'J', '114.06518', '38.06705'),
(43, 38, '裕华', '裕华区', '中国,河北省,石家庄市,裕华区', 3, 'yuhua', '0311', '050031', 'Y', '114.53115', '38.00604'),
(44, 38, '藁城', '藁城区', '中国,河北省,石家庄市,藁城区', 3, 'gaocheng', '0311', '052160', NULL, '114.84671', '38.02162'),
(45, 38, '鹿泉', '鹿泉区', '中国,河北省,石家庄市,鹿泉区', 3, 'luquan', '0311', '050200', 'L', '114.31347', '38.08782'),
(46, 38, '栾城', '栾城区', '中国,河北省,石家庄市,栾城区', 3, 'luancheng', '0311', '051430', NULL, '114.64834', '37.90022'),
(47, 38, '井陉', '井陉县', '中国,河北省,石家庄市,井陉县', 3, 'jingxing', '0311', '050300', 'J', '114.14257', '38.03688'),
(48, 38, '正定', '正定县', '中国,河北省,石家庄市,正定县', 3, 'zhengding', '0311', '050800', 'Z', '114.57296', '38.14445'),
(49, 38, '行唐', '行唐县', '中国,河北省,石家庄市,行唐县', 3, 'xingtang', '0311', '050600', 'X', '114.55316', '38.43654'),
(50, 38, '灵寿', '灵寿县', '中国,河北省,石家庄市,灵寿县', 3, 'lingshou', '0311', '050500', 'L', '114.38259', '38.30845'),
(51, 38, '高邑', '高邑县', '中国,河北省,石家庄市,高邑县', 3, 'gaoyi', '0311', '051330', 'G', '114.61142', '37.61556'),
(52, 38, '深泽', '深泽县', '中国,河北省,石家庄市,深泽县', 3, 'shenze', '0311', '052560', 'S', '115.20358', '38.18353'),
(53, 38, '赞皇', '赞皇县', '中国,河北省,石家庄市,赞皇县', 3, 'zanhuang', '0311', '051230', 'Z', '114.38775', '37.66135'),
(54, 38, '无极', '无极县', '中国,河北省,石家庄市,无极县', 3, 'wuji', '0311', '052460', 'W', '114.97509', '38.17653'),
(55, 38, '平山', '平山县', '中国,河北省,石家庄市,平山县', 3, 'pingshan', '0311', '050400', 'P', '114.186', '38.25994'),
(56, 38, '元氏', '元氏县', '中国,河北省,石家庄市,元氏县', 3, 'yuanshi', '0311', '051130', 'Y', '114.52539', '37.76668'),
(57, 38, '赵县', '赵县', '中国,河北省,石家庄市,赵县', 3, 'zhaoxian', '0311', '051530', 'Z', '114.77612', '37.75628'),
(58, 38, '辛集', '辛集市', '中国,河北省,石家庄市,辛集市', 3, 'xinji', '0311', '052360', 'X', '115.20626', '37.94079'),
(59, 38, '晋州', '晋州市', '中国,河北省,石家庄市,晋州市', 3, 'jinzhou', '0311', '052260', 'J', '115.04348', '38.03135'),
(60, 38, '新乐', '新乐市', '中国,河北省,石家庄市,新乐市', 3, 'xinle', '0311', '050700', 'X', '114.68985', '38.34417'),
(61, 37, '唐山', '唐山市', '中国,河北省,唐山市', 2, 'tangshan', '0315', '063000', 'T', '118.175393', '39.635113'),
(62, 61, '路南', '路南区', '中国,河北省,唐山市,路南区', 3, 'lunan', '0315', '063000', 'L', '118.15431', '39.62505'),
(63, 61, '路北', '路北区', '中国,河北省,唐山市,路北区', 3, 'lubei', '0315', '063000', 'L', '118.20079', '39.62436'),
(64, 61, '古冶', '古冶区', '中国,河北省,唐山市,古冶区', 3, 'guye', '0315', '063100', 'G', '118.45803', '39.71993'),
(65, 61, '开平', '开平区', '中国,河北省,唐山市,开平区', 3, 'kaiping', '0315', '063021', 'K', '118.26171', '39.67128'),
(66, 61, '丰南', '丰南区', '中国,河北省,唐山市,丰南区', 3, 'fengnan', '0315', '063300', 'F', '118.11282', '39.56483'),
(67, 61, '丰润', '丰润区', '中国,河北省,唐山市,丰润区', 3, 'fengrun', '0315', '064000', 'F', '118.12976', '39.8244'),
(68, 61, '曹妃甸', '曹妃甸区', '中国,河北省,唐山市,曹妃甸区', 3, 'caofeidian', '0315', '063200', 'C', '118.460379', '39.273070'),
(69, 61, '滦县', '滦县', '中国,河北省,唐山市,滦县', 3, 'luanxian', '0315', '063700', 'L', '118.70346', '39.74056'),
(70, 61, '滦南', '滦南县', '中国,河北省,唐山市,滦南县', 3, 'luannan', '0315', '063500', 'L', '118.6741', '39.5039'),
(71, 61, '乐亭', '乐亭县', '中国,河北省,唐山市,乐亭县', 3, 'laoting', '0315', '063600', 'L', '118.9125', '39.42561'),
(72, 61, '迁西', '迁西县', '中国,河北省,唐山市,迁西县', 3, 'qianxi', '0315', '064300', 'Q', '118.31616', '40.14587'),
(73, 61, '玉田', '玉田县', '中国,河北省,唐山市,玉田县', 3, 'yutian', '0315', '064100', 'Y', '117.7388', '39.90049'),
(74, 61, '遵化', '遵化市', '中国,河北省,唐山市,遵化市', 3, 'zunhua', '0315', '064200', 'Z', '117.96444', '40.18741'),
(75, 61, '迁安', '迁安市', '中国,河北省,唐山市,迁安市', 3, 'qian\'an', '0315', '064400', 'Q', '118.70068', '39.99833'),
(76, 37, '秦皇岛', '秦皇岛市', '中国,河北省,秦皇岛市', 2, 'qinhuangdao', '0335', '066000', 'Q', '119.586579', '39.942531'),
(77, 76, '海港', '海港区', '中国,河北省,秦皇岛市,海港区', 3, 'haigang', '0335', '066000', 'H', '119.61046', '39.9345'),
(78, 76, '山海关', '山海关区', '中国,河北省,秦皇岛市,山海关区', 3, 'shanhaiguan', '0335', '066200', 'S', '119.77563', '39.97869'),
(79, 76, '北戴河', '北戴河区', '中国,河北省,秦皇岛市,北戴河区', 3, 'beidaihe', '0335', '066100', 'B', '119.48388', '39.83408'),
(80, 76, '青龙', '青龙满族自治县', '中国,河北省,秦皇岛市,青龙满族自治县', 3, 'qinglong', '0335', '066500', 'Q', '118.95242', '40.40743'),
(81, 76, '昌黎', '昌黎县', '中国,河北省,秦皇岛市,昌黎县', 3, 'changli', '0335', '066600', 'C', '119.16595', '39.70884'),
(82, 76, '抚宁', '抚宁县', '中国,河北省,秦皇岛市,抚宁县', 3, 'funing', '0335', '066300', 'F', '119.24487', '39.87538'),
(83, 76, '卢龙', '卢龙县', '中国,河北省,秦皇岛市,卢龙县', 3, 'lulong', '0335', '066400', 'L', '118.89288', '39.89176'),
(84, 37, '邯郸', '邯郸市', '中国,河北省,邯郸市', 2, 'handan', '0310', '056002', 'H', '114.490686', '36.612273'),
(85, 84, '邯山', '邯山区', '中国,河北省,邯郸市,邯山区', 3, 'hanshan', '0310', '056001', 'H', '114.48375', '36.60006'),
(86, 84, '丛台', '丛台区', '中国,河北省,邯郸市,丛台区', 3, 'congtai', '0310', '056002', 'C', '114.49343', '36.61847'),
(87, 84, '复兴', '复兴区', '中国,河北省,邯郸市,复兴区', 3, 'fuxing', '0310', '056003', 'F', '114.45928', '36.61134'),
(88, 84, '峰峰矿区', '峰峰矿区', '中国,河北省,邯郸市,峰峰矿区', 3, 'fengfengkuangqu', '0310', '056200', 'F', '114.21148', '36.41937'),
(89, 84, '邯郸', '邯郸县', '中国,河北省,邯郸市,邯郸县', 3, 'handan', '0310', '056101', 'H', '114.53103', '36.59385'),
(90, 84, '临漳', '临漳县', '中国,河北省,邯郸市,临漳县', 3, 'linzhang', '0310', '056600', 'L', '114.6195', '36.33461'),
(91, 84, '成安', '成安县', '中国,河北省,邯郸市,成安县', 3, 'cheng\'an', '0310', '056700', 'C', '114.66995', '36.44411'),
(92, 84, '大名', '大名县', '中国,河北省,邯郸市,大名县', 3, 'daming', '0310', '056900', 'D', '115.15362', '36.27994'),
(93, 84, '涉县', '涉县', '中国,河北省,邯郸市,涉县', 3, 'shexian', '0310', '056400', 'S', '113.69183', '36.58072'),
(94, 84, '磁县', '磁县', '中国,河北省,邯郸市,磁县', 3, 'cixian', '0310', '056500', 'C', '114.37387', '36.37392'),
(95, 84, '肥乡', '肥乡县', '中国,河北省,邯郸市,肥乡县', 3, 'feixiang', '0310', '057550', 'F', '114.79998', '36.54807'),
(96, 84, '永年', '永年县', '中国,河北省,邯郸市,永年县', 3, 'yongnian', '0310', '057150', 'Y', '114.48925', '36.78356'),
(97, 84, '邱县', '邱县', '中国,河北省,邯郸市,邱县', 3, 'qiuxian', '0310', '057450', 'Q', '115.17407', '36.82082'),
(98, 84, '鸡泽', '鸡泽县', '中国,河北省,邯郸市,鸡泽县', 3, 'jize', '0310', '057350', 'J', '114.8742', '36.92374'),
(99, 84, '广平', '广平县', '中国,河北省,邯郸市,广平县', 3, 'guangping', '0310', '057650', 'G', '114.94653', '36.48046'),
(100, 84, '馆陶', '馆陶县', '中国,河北省,邯郸市,馆陶县', 3, 'guantao', '0310', '057750', 'G', '115.29913', '36.53719'),
(101, 84, '魏县', '魏县', '中国,河北省,邯郸市,魏县', 3, 'weixian', '0310', '056800', 'W', '114.93518', '36.36171'),
(102, 84, '曲周', '曲周县', '中国,河北省,邯郸市,曲周县', 3, 'quzhou', '0310', '057250', 'Q', '114.95196', '36.77671'),
(103, 84, '武安', '武安市', '中国,河北省,邯郸市,武安市', 3, 'wu\'an', '0310', '056300', 'W', '114.20153', '36.69281'),
(104, 37, '邢台', '邢台市', '中国,河北省,邢台市', 2, 'xingtai', '0319', '054001', 'X', '114.508851', '37.0682'),
(105, 104, '桥东', '桥东区', '中国,河北省,邢台市,桥东区', 3, 'qiaodong', '0319', '054001', 'Q', '114.50725', '37.06801'),
(106, 104, '桥西', '桥西区', '中国,河北省,邢台市,桥西区', 3, 'qiaoxi', '0319', '054000', 'Q', '114.46803', '37.05984'),
(107, 104, '邢台', '邢台县', '中国,河北省,邢台市,邢台县', 3, 'xingtai', '0319', '054001', 'X', '114.56575', '37.0456'),
(108, 104, '临城', '临城县', '中国,河北省,邢台市,临城县', 3, 'lincheng', '0319', '054300', 'L', '114.50387', '37.43977'),
(109, 104, '内丘', '内丘县', '中国,河北省,邢台市,内丘县', 3, 'neiqiu', '0319', '054200', 'N', '114.51212', '37.28671'),
(110, 104, '柏乡', '柏乡县', '中国,河北省,邢台市,柏乡县', 3, 'baixiang', '0319', '055450', 'B', '114.69332', '37.48242'),
(111, 104, '隆尧', '隆尧县', '中国,河北省,邢台市,隆尧县', 3, 'longyao', '0319', '055350', 'L', '114.77615', '37.35351'),
(112, 104, '任县', '任县', '中国,河北省,邢台市,任县', 3, 'renxian', '0319', '055150', 'R', '114.6842', '37.12575'),
(113, 104, '南和', '南和县', '中国,河北省,邢台市,南和县', 3, 'nanhe', '0319', '054400', 'N', '114.68371', '37.00488'),
(114, 104, '宁晋', '宁晋县', '中国,河北省,邢台市,宁晋县', 3, 'ningjin', '0319', '055550', 'N', '114.92117', '37.61696'),
(115, 104, '巨鹿', '巨鹿县', '中国,河北省,邢台市,巨鹿县', 3, 'julu', '0319', '055250', 'J', '115.03524', '37.21801'),
(116, 104, '新河', '新河县', '中国,河北省,邢台市,新河县', 3, 'xinhe', '0319', '055650', 'X', '115.24987', '37.52718'),
(117, 104, '广宗', '广宗县', '中国,河北省,邢台市,广宗县', 3, 'guangzong', '0319', '054600', 'G', '115.14254', '37.0746'),
(118, 104, '平乡', '平乡县', '中国,河北省,邢台市,平乡县', 3, 'pingxiang', '0319', '054500', 'P', '115.03002', '37.06317'),
(119, 104, '威县', '威县', '中国,河北省,邢台市,威县', 3, 'weixian', '0319', '054700', 'W', '115.2637', '36.9768'),
(120, 104, '清河', '清河县', '中国,河北省,邢台市,清河县', 3, 'qinghe', '0319', '054800', 'Q', '115.66479', '37.07122'),
(121, 104, '临西', '临西县', '中国,河北省,邢台市,临西县', 3, 'linxi', '0319', '054900', 'L', '115.50097', '36.87078'),
(122, 104, '南宫', '南宫市', '中国,河北省,邢台市,南宫市', 3, 'nangong', '0319', '055750', 'N', '115.39068', '37.35799'),
(123, 104, '沙河', '沙河市', '中国,河北省,邢台市,沙河市', 3, 'shahe', '0319', '054100', 'S', '114.4981', '36.8577'),
(124, 37, '保定', '保定市', '中国,河北省,保定市', 2, 'baoding', '0312', '071052', 'B', '115.482331', '38.867657'),
(125, 124, '新市', '新市区', '中国,河北省,保定市,新市区', 3, 'xinshi', '0312', '071051', 'X', '115.4587', '38.87751'),
(126, 124, '北市', '北市区', '中国,河北省,保定市,北市区', 3, 'beishi', '0312', '071000', 'B', '115.49715', '38.88322'),
(127, 124, '南市', '南市区', '中国,河北省,保定市,南市区', 3, 'nanshi', '0312', '071001', 'N', '115.52859', '38.85455'),
(128, 124, '满城', '满城县', '中国,河北省,保定市,满城县', 3, 'mancheng', '0312', '072150', 'M', '115.32296', '38.94972'),
(129, 124, '清苑', '清苑县', '中国,河北省,保定市,清苑县', 3, 'qingyuan', '0312', '071100', 'Q', '115.49267', '38.76709'),
(130, 124, '涞水', '涞水县', '中国,河北省,保定市,涞水县', 3, 'laishui', '0312', '074100', NULL, '115.71517', '39.39404'),
(131, 124, '阜平', '阜平县', '中国,河北省,保定市,阜平县', 3, 'fuping', '0312', '073200', 'F', '114.19683', '38.84763'),
(132, 124, '徐水', '徐水县', '中国,河北省,保定市,徐水县', 3, 'xushui', '0312', '072550', 'X', '115.65829', '39.02099'),
(133, 124, '定兴', '定兴县', '中国,河北省,保定市,定兴县', 3, 'dingxing', '0312', '072650', 'D', '115.80786', '39.26312'),
(134, 124, '唐县', '唐县', '中国,河北省,保定市,唐县', 3, 'tangxian', '0312', '072350', 'T', '114.98516', '38.74513'),
(135, 124, '高阳', '高阳县', '中国,河北省,保定市,高阳县', 3, 'gaoyang', '0312', '071500', 'G', '115.7788', '38.70003'),
(136, 124, '容城', '容城县', '中国,河北省,保定市,容城县', 3, 'rongcheng', '0312', '071700', 'R', '115.87158', '39.0535'),
(137, 124, '涞源', '涞源县', '中国,河北省,保定市,涞源县', 3, 'laiyuan', '0312', '074300', NULL, '114.69128', '39.35388'),
(138, 124, '望都', '望都县', '中国,河北省,保定市,望都县', 3, 'wangdu', '0312', '072450', 'W', '115.1567', '38.70996'),
(139, 124, '安新', '安新县', '中国,河北省,保定市,安新县', 3, 'anxin', '0312', '071600', 'A', '115.93557', '38.93532'),
(140, 124, '易县', '易县', '中国,河北省,保定市,易县', 3, 'yixian', '0312', '074200', 'Y', '115.4981', '39.34885'),
(141, 124, '曲阳', '曲阳县', '中国,河北省,保定市,曲阳县', 3, 'quyang', '0312', '073100', 'Q', '114.70123', '38.62154'),
(142, 124, '蠡县', '蠡县', '中国,河北省,保定市,蠡县', 3, 'lixian', '0312', '071400', NULL, '115.57717', '38.48974'),
(143, 124, '顺平', '顺平县', '中国,河北省,保定市,顺平县', 3, 'shunping', '0312', '072250', 'S', '115.1347', '38.83854'),
(144, 124, '博野', '博野县', '中国,河北省,保定市,博野县', 3, 'boye', '0312', '071300', 'B', '115.47033', '38.4564'),
(145, 124, '雄县', '雄县', '中国,河北省,保定市,雄县', 3, 'xiongxian', '0312', '071800', 'X', '116.10873', '38.99442'),
(146, 124, '涿州', '涿州市', '中国,河北省,保定市,涿州市', 3, 'zhuozhou', '0312', '072750', NULL, '115.98062', '39.48622'),
(147, 124, '定州', '定州市', '中国,河北省,保定市,定州市', 3, 'dingzhou', '0312', '073000', 'D', '114.9902', '38.51623'),
(148, 124, '安国', '安国市', '中国,河北省,保定市,安国市', 3, 'anguo', '0312', '071200', 'A', '115.32321', '38.41391'),
(149, 124, '高碑店', '高碑店市', '中国,河北省,保定市,高碑店市', 3, 'gaobeidian', '0312', '074000', 'G', '115.87368', '39.32655'),
(150, 37, '张家口', '张家口市', '中国,河北省,张家口市', 2, 'zhangjiakou', '0313', '075000', 'Z', '114.884091', '40.811901'),
(151, 150, '桥东', '桥东区', '中国,河北省,张家口市,桥东区', 3, 'qiaodong', '0313', '075000', 'Q', '114.8943', '40.78844'),
(152, 150, '桥西', '桥西区', '中国,河北省,张家口市,桥西区', 3, 'qiaoxi', '0313', '075061', 'Q', '114.86962', '40.81945'),
(153, 150, '宣化', '宣化区', '中国,河北省,张家口市,宣化区', 3, 'xuanhua', '0313', '075100', 'X', '115.06543', '40.60957'),
(154, 150, '下花园', '下花园区', '中国,河北省,张家口市,下花园区', 3, 'xiahuayuan', '0313', '075300', 'X', '115.28744', '40.50236'),
(155, 150, '宣化', '宣化县', '中国,河北省,张家口市,宣化县', 3, 'xuanhua', '0313', '075100', 'X', '115.15497', '40.56618'),
(156, 150, '张北', '张北县', '中国,河北省,张家口市,张北县', 3, 'zhangbei', '0313', '076450', 'Z', '114.71432', '41.15977'),
(157, 150, '康保', '康保县', '中国,河北省,张家口市,康保县', 3, 'kangbao', '0313', '076650', 'K', '114.60031', '41.85225'),
(158, 150, '沽源', '沽源县', '中国,河北省,张家口市,沽源县', 3, 'guyuan', '0313', '076550', 'G', '115.68859', '41.66959'),
(159, 150, '尚义', '尚义县', '中国,河北省,张家口市,尚义县', 3, 'shangyi', '0313', '076750', 'S', '113.97134', '41.07782'),
(160, 150, '蔚县', '蔚县', '中国,河北省,张家口市,蔚县', 3, 'yuxian', '0313', '075700', 'W', '114.58892', '39.84067'),
(161, 150, '阳原', '阳原县', '中国,河北省,张家口市,阳原县', 3, 'yangyuan', '0313', '075800', 'Y', '114.15051', '40.10361'),
(162, 150, '怀安', '怀安县', '中国,河北省,张家口市,怀安县', 3, 'huai\'an', '0313', '076150', 'H', '114.38559', '40.67425'),
(163, 150, '万全', '万全县', '中国,河北省,张家口市,万全县', 3, 'wanquan', '0313', '076250', 'W', '114.7405', '40.76694'),
(164, 150, '怀来', '怀来县', '中国,河北省,张家口市,怀来县', 3, 'huailai', '0313', '075400', 'H', '115.51773', '40.41536'),
(165, 150, '涿鹿', '涿鹿县', '中国,河北省,张家口市,涿鹿县', 3, 'zhuolu', '0313', '075600', NULL, '115.22403', '40.37636'),
(166, 150, '赤城', '赤城县', '中国,河北省,张家口市,赤城县', 3, 'chicheng', '0313', '075500', 'C', '115.83187', '40.91438'),
(167, 150, '崇礼', '崇礼县', '中国,河北省,张家口市,崇礼县', 3, 'chongli', '0313', '076350', 'C', '115.27993', '40.97519'),
(168, 37, '承德', '承德市', '中国,河北省,承德市', 2, 'chengde', '0314', '067000', 'C', '117.939152', '40.976204'),
(169, 168, '双桥', '双桥区', '中国,河北省,承德市,双桥区', 3, 'shuangqiao', '0314', '067000', 'S', '117.9432', '40.97466'),
(170, 168, '双滦', '双滦区', '中国,河北省,承德市,双滦区', 3, 'shuangluan', '0314', '067001', 'S', '117.74487', '40.95375'),
(171, 168, '鹰手营子矿区', '鹰手营子矿区', '中国,河北省,承德市,鹰手营子矿区', 3, 'yingshouyingzikuangqu', '0314', '067200', 'Y', '117.65985', '40.54744'),
(172, 168, '承德', '承德县', '中国,河北省,承德市,承德县', 3, 'chengde', '0314', '067400', 'C', '118.17639', '40.76985'),
(173, 168, '兴隆', '兴隆县', '中国,河北省,承德市,兴隆县', 3, 'xinglong', '0314', '067300', 'X', '117.50073', '40.41709'),
(174, 168, '平泉', '平泉县', '中国,河北省,承德市,平泉县', 3, 'pingquan', '0314', '067500', 'P', '118.70196', '41.01839'),
(175, 168, '滦平', '滦平县', '中国,河北省,承德市,滦平县', 3, 'luanping', '0314', '068250', 'L', '117.33276', '40.94148'),
(176, 168, '隆化', '隆化县', '中国,河北省,承德市,隆化县', 3, 'longhua', '0314', '068150', 'L', '117.7297', '41.31412'),
(177, 168, '丰宁', '丰宁满族自治县', '中国,河北省,承德市,丰宁满族自治县', 3, 'fengning', '0314', '068350', 'F', '116.6492', '41.20481'),
(178, 168, '宽城', '宽城满族自治县', '中国,河北省,承德市,宽城满族自治县', 3, 'kuancheng', '0314', '067600', 'K', '118.49176', '40.60829'),
(179, 168, '围场', '围场满族蒙古族自治县', '中国,河北省,承德市,围场满族蒙古族自治县', 3, 'weichang', '0314', '068450', 'W', '117.7601', '41.94368'),
(180, 37, '沧州', '沧州市', '中国,河北省,沧州市', 2, 'cangzhou', '0317', '061001', 'C', '116.857461', '38.310582'),
(181, 180, '新华', '新华区', '中国,河北省,沧州市,新华区', 3, 'xinhua', '0317', '061000', 'X', '116.86643', '38.31438'),
(182, 180, '运河', '运河区', '中国,河北省,沧州市,运河区', 3, 'yunhe', '0317', '061001', 'Y', '116.85706', '38.31352'),
(183, 180, '沧县', '沧县', '中国,河北省,沧州市,沧县', 3, 'cangxian', '0317', '061000', 'C', '116.87817', '38.29361'),
(184, 180, '青县', '青县', '中国,河北省,沧州市,青县', 3, 'qingxian', '0317', '062650', 'Q', '116.80316', '38.58345'),
(185, 180, '东光', '东光县', '中国,河北省,沧州市,东光县', 3, 'dongguang', '0317', '061600', 'D', '116.53668', '37.8857'),
(186, 180, '海兴', '海兴县', '中国,河北省,沧州市,海兴县', 3, 'haixing', '0317', '061200', 'H', '117.49758', '38.13958'),
(187, 180, '盐山', '盐山县', '中国,河北省,沧州市,盐山县', 3, 'yanshan', '0317', '061300', 'Y', '117.23092', '38.05647'),
(188, 180, '肃宁', '肃宁县', '中国,河北省,沧州市,肃宁县', 3, 'suning', '0317', '062350', 'S', '115.82971', '38.42272'),
(189, 180, '南皮', '南皮县', '中国,河北省,沧州市,南皮县', 3, 'nanpi', '0317', '061500', 'N', '116.70224', '38.04109'),
(190, 180, '吴桥', '吴桥县', '中国,河北省,沧州市,吴桥县', 3, 'wuqiao', '0317', '061800', 'W', '116.3847', '37.62546'),
(191, 180, '献县', '献县', '中国,河北省,沧州市,献县', 3, 'xianxian', '0317', '062250', 'X', '116.12695', '38.19228'),
(192, 180, '孟村', '孟村回族自治县', '中国,河北省,沧州市,孟村回族自治县', 3, 'mengcun', '0317', '061400', 'M', '117.10412', '38.05338'),
(193, 180, '泊头', '泊头市', '中国,河北省,沧州市,泊头市', 3, 'botou', '0317', '062150', 'B', '116.57824', '38.08359'),
(194, 180, '任丘', '任丘市', '中国,河北省,沧州市,任丘市', 3, 'renqiu', '0317', '062550', 'R', '116.1033', '38.71124'),
(195, 180, '黄骅', '黄骅市', '中国,河北省,沧州市,黄骅市', 3, 'huanghua', '0317', '061100', 'H', '117.33883', '38.3706'),
(196, 180, '河间', '河间市', '中国,河北省,沧州市,河间市', 3, 'hejian', '0317', '062450', 'H', '116.0993', '38.44549'),
(197, 37, '廊坊', '廊坊市', '中国,河北省,廊坊市', 2, 'langfang', '0316', '065000', 'L', '116.713873', '39.529244'),
(198, 197, '安次', '安次区', '中国,河北省,廊坊市,安次区', 3, 'anci', '0316', '065000', 'A', '116.70308', '39.52057'),
(199, 197, '广阳', '广阳区', '中国,河北省,廊坊市,广阳区', 3, 'guangyang', '0316', '065000', 'G', '116.71069', '39.52278'),
(200, 197, '固安', '固安县', '中国,河北省,廊坊市,固安县', 3, 'gu\'an', '0316', '065500', 'G', '116.29916', '39.43833'),
(201, 197, '永清', '永清县', '中国,河北省,廊坊市,永清县', 3, 'yongqing', '0316', '065600', 'Y', '116.50091', '39.32069'),
(202, 197, '香河', '香河县', '中国,河北省,廊坊市,香河县', 3, 'xianghe', '0316', '065400', 'X', '117.00634', '39.76133'),
(203, 197, '大城', '大城县', '中国,河北省,廊坊市,大城县', 3, 'daicheng', '0316', '065900', 'D', '116.65353', '38.70534'),
(204, 197, '文安', '文安县', '中国,河北省,廊坊市,文安县', 3, 'wen\'an', '0316', '065800', 'W', '116.45846', '38.87325'),
(205, 197, '大厂', '大厂回族自治县', '中国,河北省,廊坊市,大厂回族自治县', 3, 'dachang', '0316', '065300', 'D', '116.98916', '39.88649'),
(206, 197, '霸州', '霸州市', '中国,河北省,廊坊市,霸州市', 3, 'bazhou', '0316', '065700', 'B', '116.39154', '39.12569'),
(207, 197, '三河', '三河市', '中国,河北省,廊坊市,三河市', 3, 'sanhe', '0316', '065200', 'S', '117.07229', '39.98358'),
(208, 37, '衡水', '衡水市', '中国,河北省,衡水市', 2, 'hengshui', '0318', '053000', 'H', '115.665993', '37.735097'),
(209, 208, '桃城', '桃城区', '中国,河北省,衡水市,桃城区', 3, 'taocheng', '0318', '053000', 'T', '115.67529', '37.73499'),
(210, 208, '枣强', '枣强县', '中国,河北省,衡水市,枣强县', 3, 'zaoqiang', '0318', '053100', 'Z', '115.72576', '37.51027'),
(211, 208, '武邑', '武邑县', '中国,河北省,衡水市,武邑县', 3, 'wuyi', '0318', '053400', 'W', '115.88748', '37.80181'),
(212, 208, '武强', '武强县', '中国,河北省,衡水市,武强县', 3, 'wuqiang', '0318', '053300', 'W', '115.98226', '38.04138'),
(213, 208, '饶阳', '饶阳县', '中国,河北省,衡水市,饶阳县', 3, 'raoyang', '0318', '053900', 'R', '115.72558', '38.23529'),
(214, 208, '安平', '安平县', '中国,河北省,衡水市,安平县', 3, 'anping', '0318', '053600', 'A', '115.51876', '38.23388'),
(215, 208, '故城', '故城县', '中国,河北省,衡水市,故城县', 3, 'gucheng', '0318', '053800', 'G', '115.97076', '37.34773'),
(216, 208, '景县', '景县', '中国,河北省,衡水市,景县', 3, 'jingxian', '0318', '053500', 'J', '116.26904', '37.6926'),
(217, 208, '阜城', '阜城县', '中国,河北省,衡水市,阜城县', 3, 'fucheng', '0318', '053700', 'F', '116.14431', '37.86881'),
(218, 208, '冀州', '冀州市', '中国,河北省,衡水市,冀州市', 3, 'jizhou', '0318', '053200', 'J', '115.57934', '37.55082'),
(219, 208, '深州', '深州市', '中国,河北省,衡水市,深州市', 3, 'shenzhou', '0318', '053800', 'S', '115.55993', '38.00109'),
(220, 0, '山西', '山西省', '中国,山西省', 1, 'shanxi', '', '', 'S', '112.549248', '37.857014'),
(221, 220, '太原', '太原市', '中国,山西省,太原市', 2, 'taiyuan', '0351', '030082', 'T', '112.549248', '37.857014'),
(222, 221, '小店', '小店区', '中国,山西省,太原市,小店区', 3, 'xiaodian', '0351', '030032', 'X', '112.56878', '37.73565'),
(223, 221, '迎泽', '迎泽区', '中国,山西省,太原市,迎泽区', 3, 'yingze', '0351', '030002', 'Y', '112.56338', '37.86326'),
(224, 221, '杏花岭', '杏花岭区', '中国,山西省,太原市,杏花岭区', 3, 'xinghualing', '0351', '030009', 'X', '112.56237', '37.88429'),
(225, 221, '尖草坪', '尖草坪区', '中国,山西省,太原市,尖草坪区', 3, 'jiancaoping', '0351', '030023', 'J', '112.48709', '37.94193'),
(226, 221, '万柏林', '万柏林区', '中国,山西省,太原市,万柏林区', 3, 'wanbailin', '0351', '030024', 'W', '112.51553', '37.85923'),
(227, 221, '晋源', '晋源区', '中国,山西省,太原市,晋源区', 3, 'jinyuan', '0351', '030025', 'J', '112.47985', '37.72479'),
(228, 221, '清徐', '清徐县', '中国,山西省,太原市,清徐县', 3, 'qingxu', '0351', '030400', 'Q', '112.35888', '37.60758'),
(229, 221, '阳曲', '阳曲县', '中国,山西省,太原市,阳曲县', 3, 'yangqu', '0351', '030100', 'Y', '112.67861', '38.05989'),
(230, 221, '娄烦', '娄烦县', '中国,山西省,太原市,娄烦县', 3, 'loufan', '0351', '030300', 'L', '111.79473', '38.06689'),
(231, 221, '古交', '古交市', '中国,山西省,太原市,古交市', 3, 'gujiao', '0351', '030200', 'G', '112.16918', '37.90983'),
(232, 220, '大同', '大同市', '中国,山西省,大同市', 2, 'datong', '0352', '037008', 'D', '113.295259', '40.09031'),
(233, 232, '城区', '城区', '中国,山西省,大同市,城区', 3, 'chengqu', '0352', '037008', 'C', '113.298', '40.07566'),
(234, 232, '矿区', '矿区', '中国,山西省,大同市,矿区', 3, 'kuangqu', '0352', '037003', 'K', '113.1772', '40.03685'),
(235, 232, '南郊', '南郊区', '中国,山西省,大同市,南郊区', 3, 'nanjiao', '0352', '037001', 'N', '113.14947', '40.00539'),
(236, 232, '新荣', '新荣区', '中国,山西省,大同市,新荣区', 3, 'xinrong', '0352', '037002', 'X', '113.13504', '40.25618'),
(237, 232, '阳高', '阳高县', '中国,山西省,大同市,阳高县', 3, 'yanggao', '0352', '038100', 'Y', '113.75012', '40.36256'),
(238, 232, '天镇', '天镇县', '中国,山西省,大同市,天镇县', 3, 'tianzhen', '0352', '038200', 'T', '114.0931', '40.42299'),
(239, 232, '广灵', '广灵县', '中国,山西省,大同市,广灵县', 3, 'guangling', '0352', '037500', 'G', '114.28204', '39.76082'),
(240, 232, '灵丘', '灵丘县', '中国,山西省,大同市,灵丘县', 3, 'lingqiu', '0352', '034400', 'L', '114.23672', '39.44043'),
(241, 232, '浑源', '浑源县', '中国,山西省,大同市,浑源县', 3, 'hunyuan', '0352', '037400', 'H', '113.69552', '39.69962'),
(242, 232, '左云', '左云县', '中国,山西省,大同市,左云县', 3, 'zuoyun', '0352', '037100', 'Z', '112.70266', '40.01336'),
(243, 232, '大同', '大同县', '中国,山西省,大同市,大同县', 3, 'datong', '0352', '037300', 'D', '113.61212', '40.04012'),
(244, 220, '阳泉', '阳泉市', '中国,山西省,阳泉市', 2, 'yangquan', '0353', '045000', 'Y', '113.583285', '37.861188'),
(245, 244, '城区', '城区', '中国,山西省,阳泉市,城区', 3, 'chengqu', '0353', '045000', 'C', '113.60069', '37.8474'),
(246, 244, '矿区', '矿区', '中国,山西省,阳泉市,矿区', 3, 'kuangqu', '0353', '045000', 'K', '113.55677', '37.86895'),
(247, 244, '郊区', '郊区', '中国,山西省,阳泉市,郊区', 3, 'jiaoqu', '0353', '045011', 'J', '113.58539', '37.94139'),
(248, 244, '平定', '平定县', '中国,山西省,阳泉市,平定县', 3, 'pingding', '0353', '045200', 'P', '113.65789', '37.78601'),
(249, 244, '盂县', '盂县', '中国,山西省,阳泉市,盂县', 3, 'yuxian', '0353', '045100', 'Y', '113.41235', '38.08579'),
(250, 220, '长治', '长治市', '中国,山西省,长治市', 2, 'changzhi', '0355', '046000', 'C', '113.113556', '36.191112'),
(251, 250, '城区', '城区', '中国,山西省,长治市,城区', 3, 'chengqu', '0355', '046011', 'C', '113.12308', '36.20351'),
(252, 250, '郊区', '郊区', '中国,山西省,长治市,郊区', 3, 'jiaoqu', '0355', '046011', 'J', '113.12653', '36.19918'),
(253, 250, '长治', '长治县', '中国,山西省,长治市,长治县', 3, 'changzhi', '0355', '047100', 'C', '113.04791', '36.04722'),
(254, 250, '襄垣', '襄垣县', '中国,山西省,长治市,襄垣县', 3, 'xiangyuan', '0355', '046200', 'X', '113.05157', '36.53527'),
(255, 250, '屯留', '屯留县', '中国,山西省,长治市,屯留县', 3, 'tunliu', '0355', '046100', 'T', '112.89196', '36.31579'),
(256, 250, '平顺', '平顺县', '中国,山西省,长治市,平顺县', 3, 'pingshun', '0355', '047400', 'P', '113.43603', '36.20005'),
(257, 250, '黎城', '黎城县', '中国,山西省,长治市,黎城县', 3, 'licheng', '0355', '047600', 'L', '113.38766', '36.50301'),
(258, 250, '壶关', '壶关县', '中国,山西省,长治市,壶关县', 3, 'huguan', '0355', '047300', 'H', '113.207', '36.11301'),
(259, 250, '长子', '长子县', '中国,山西省,长治市,长子县', 3, 'zhangzi', '0355', '046600', 'C', '112.87731', '36.12125'),
(260, 250, '武乡', '武乡县', '中国,山西省,长治市,武乡县', 3, 'wuxiang', '0355', '046300', 'W', '112.86343', '36.83687'),
(261, 250, '沁县', '沁县', '中国,山西省,长治市,沁县', 3, 'qinxian', '0355', '046400', 'Q', '112.69863', '36.75628'),
(262, 250, '沁源', '沁源县', '中国,山西省,长治市,沁源县', 3, 'qinyuan', '0355', '046500', 'Q', '112.33758', '36.50008'),
(263, 250, '潞城', '潞城市', '中国,山西省,长治市,潞城市', 3, 'lucheng', '0355', '047500', 'L', '113.22888', '36.33414'),
(264, 220, '晋城', '晋城市', '中国,山西省,晋城市', 2, 'jincheng', '0356', '048000', 'J', '112.851274', '35.497553'),
(265, 264, '城区', '城区', '中国,山西省,晋城市,城区', 3, 'chengqu', '0356', '048000', 'C', '112.85319', '35.50175'),
(266, 264, '沁水', '沁水县', '中国,山西省,晋城市,沁水县', 3, 'qinshui', '0356', '048200', 'Q', '112.1871', '35.69102'),
(267, 264, '阳城', '阳城县', '中国,山西省,晋城市,阳城县', 3, 'yangcheng', '0356', '048100', 'Y', '112.41485', '35.48614'),
(268, 264, '陵川', '陵川县', '中国,山西省,晋城市,陵川县', 3, 'lingchuan', '0356', '048300', 'L', '113.2806', '35.77532'),
(269, 264, '泽州', '泽州县', '中国,山西省,晋城市,泽州县', 3, 'zezhou', '0356', '048012', 'Z', '112.83947', '35.50789'),
(270, 264, '高平', '高平市', '中国,山西省,晋城市,高平市', 3, 'gaoping', '0356', '048400', 'G', '112.92288', '35.79705'),
(271, 220, '朔州', '朔州市', '中国,山西省,朔州市', 2, 'shuozhou', '0349', '038500', 'S', '112.433387', '39.331261'),
(272, 271, '朔城', '朔城区', '中国,山西省,朔州市,朔城区', 3, 'shuocheng', '0349', '036000', 'S', '112.43189', '39.31982'),
(273, 271, '平鲁', '平鲁区', '中国,山西省,朔州市,平鲁区', 3, 'pinglu', '0349', '038600', 'P', '112.28833', '39.51155'),
(274, 271, '山阴', '山阴县', '中国,山西省,朔州市,山阴县', 3, 'shanyin', '0349', '036900', 'S', '112.81662', '39.52697'),
(275, 271, '应县', '应县', '中国,山西省,朔州市,应县', 3, 'yingxian', '0349', '037600', 'Y', '113.19052', '39.55279'),
(276, 271, '右玉', '右玉县', '中国,山西省,朔州市,右玉县', 3, 'youyu', '0349', '037200', 'Y', '112.46902', '39.99011'),
(277, 271, '怀仁', '怀仁县', '中国,山西省,朔州市,怀仁县', 3, 'huairen', '0349', '038300', 'H', '113.10009', '39.82806'),
(278, 220, '晋中', '晋中市', '中国,山西省,晋中市', 2, 'jinzhong', '0354', '030600', 'J', '112.736465', '37.696495'),
(279, 278, '榆次', '榆次区', '中国,山西省,晋中市,榆次区', 3, 'yuci', '0354', '030600', 'Y', '112.70788', '37.6978'),
(280, 278, '榆社', '榆社县', '中国,山西省,晋中市,榆社县', 3, 'yushe', '0354', '031800', 'Y', '112.97558', '37.0721'),
(281, 278, '左权', '左权县', '中国,山西省,晋中市,左权县', 3, 'zuoquan', '0354', '032600', 'Z', '113.37918', '37.08235'),
(282, 278, '和顺', '和顺县', '中国,山西省,晋中市,和顺县', 3, 'heshun', '0354', '032700', 'H', '113.56988', '37.32963'),
(283, 278, '昔阳', '昔阳县', '中国,山西省,晋中市,昔阳县', 3, 'xiyang', '0354', '045300', 'X', '113.70517', '37.61863'),
(284, 278, '寿阳', '寿阳县', '中国,山西省,晋中市,寿阳县', 3, 'shouyang', '0354', '045400', 'S', '113.17495', '37.88899'),
(285, 278, '太谷', '太谷县', '中国,山西省,晋中市,太谷县', 3, 'taigu', '0354', '030800', 'T', '112.55246', '37.42161'),
(286, 278, '祁县', '祁县', '中国,山西省,晋中市,祁县', 3, 'qixian', '0354', '030900', 'Q', '112.33358', '37.3579'),
(287, 278, '平遥', '平遥县', '中国,山西省,晋中市,平遥县', 3, 'pingyao', '0354', '031100', 'P', '112.17553', '37.1892'),
(288, 278, '灵石', '灵石县', '中国,山西省,晋中市,灵石县', 3, 'lingshi', '0354', '031300', 'L', '111.7774', '36.84814'),
(289, 278, '介休', '介休市', '中国,山西省,晋中市,介休市', 3, 'jiexiu', '0354', '032000', 'J', '111.91824', '37.02771'),
(290, 220, '运城', '运城市', '中国,山西省,运城市', 2, 'yuncheng', '0359', '044000', 'Y', '111.003957', '35.022778'),
(291, 290, '盐湖', '盐湖区', '中国,山西省,运城市,盐湖区', 3, 'yanhu', '0359', '044000', 'Y', '110.99827', '35.0151'),
(292, 290, '临猗', '临猗县', '中国,山西省,运城市,临猗县', 3, 'linyi', '0359', '044100', 'L', '110.77432', '35.14455'),
(293, 290, '万荣', '万荣县', '中国,山西省,运城市,万荣县', 3, 'wanrong', '0359', '044200', 'W', '110.83657', '35.41556'),
(294, 290, '闻喜', '闻喜县', '中国,山西省,运城市,闻喜县', 3, 'wenxi', '0359', '043800', 'W', '111.22265', '35.35553'),
(295, 290, '稷山', '稷山县', '中国,山西省,运城市,稷山县', 3, 'jishan', '0359', '043200', NULL, '110.97924', '35.59993'),
(296, 290, '新绛', '新绛县', '中国,山西省,运城市,新绛县', 3, 'xinjiang', '0359', '043100', 'X', '111.22509', '35.61566'),
(297, 290, '绛县', '绛县', '中国,山西省,运城市,绛县', 3, 'jiangxian', '0359', '043600', NULL, '111.56668', '35.49096'),
(298, 290, '垣曲', '垣曲县', '中国,山西省,运城市,垣曲县', 3, 'yuanqu', '0359', '043700', 'Y', '111.67166', '35.29923'),
(299, 290, '夏县', '夏县', '中国,山西省,运城市,夏县', 3, 'xiaxian', '0359', '044400', 'X', '111.21966', '35.14121'),
(300, 290, '平陆', '平陆县', '中国,山西省,运城市,平陆县', 3, 'pinglu', '0359', '044300', 'P', '111.21704', '34.83772'),
(301, 290, '芮城', '芮城县', '中国,山西省,运城市,芮城县', 3, 'ruicheng', '0359', '044600', NULL, '110.69455', '34.69384'),
(302, 290, '永济', '永济市', '中国,山西省,运城市,永济市', 3, 'yongji', '0359', '044500', 'Y', '110.44537', '34.86556'),
(303, 290, '河津', '河津市', '中国,山西省,运城市,河津市', 3, 'hejin', '0359', '043300', 'H', '110.7116', '35.59478'),
(304, 220, '忻州', '忻州市', '中国,山西省,忻州市', 2, 'xinzhou', '0350', '034000', 'X', '112.733538', '38.41769'),
(305, 304, '忻府', '忻府区', '中国,山西省,忻州市,忻府区', 3, 'xinfu', '0350', '034000', 'X', '112.74603', '38.40414'),
(306, 304, '定襄', '定襄县', '中国,山西省,忻州市,定襄县', 3, 'dingxiang', '0350', '035400', 'D', '112.95733', '38.47387'),
(307, 304, '五台', '五台县', '中国,山西省,忻州市,五台县', 3, 'wutai', '0350', '035500', 'W', '113.25256', '38.72774'),
(308, 304, '代县', '代县', '中国,山西省,忻州市,代县', 3, 'daixian', '0350', '034200', 'D', '112.95913', '39.06717'),
(309, 304, '繁峙', '繁峙县', '中国,山西省,忻州市,繁峙县', 3, 'fanshi', '0350', '034300', 'F', '113.26303', '39.18886'),
(310, 304, '宁武', '宁武县', '中国,山西省,忻州市,宁武县', 3, 'ningwu', '0350', '036700', 'N', '112.30423', '39.00211'),
(311, 304, '静乐', '静乐县', '中国,山西省,忻州市,静乐县', 3, 'jingle', '0350', '035100', 'J', '111.94158', '38.3602'),
(312, 304, '神池', '神池县', '中国,山西省,忻州市,神池县', 3, 'shenchi', '0350', '036100', 'S', '112.20541', '39.09'),
(313, 304, '五寨', '五寨县', '中国,山西省,忻州市,五寨县', 3, 'wuzhai', '0350', '036200', 'W', '111.8489', '38.90757'),
(314, 304, '岢岚', '岢岚县', '中国,山西省,忻州市,岢岚县', 3, 'kelan', '0350', '036300', NULL, '111.57388', '38.70452'),
(315, 304, '河曲', '河曲县', '中国,山西省,忻州市,河曲县', 3, 'hequ', '0350', '036500', 'H', '111.13821', '39.38439'),
(316, 304, '保德', '保德县', '中国,山西省,忻州市,保德县', 3, 'baode', '0350', '036600', 'B', '111.08656', '39.02248'),
(317, 304, '偏关', '偏关县', '中国,山西省,忻州市,偏关县', 3, 'pianguan', '0350', '036400', 'P', '111.50863', '39.43609'),
(318, 304, '原平', '原平市', '中国,山西省,忻州市,原平市', 3, 'yuanping', '0350', '034100', 'Y', '112.70584', '38.73181'),
(319, 220, '临汾', '临汾市', '中国,山西省,临汾市', 2, 'linfen', '0357', '041000', 'L', '111.517973', '36.08415'),
(320, 319, '尧都', '尧都区', '中国,山西省,临汾市,尧都区', 3, 'yaodu', '0357', '041000', 'Y', '111.5787', '36.08298'),
(321, 319, '曲沃', '曲沃县', '中国,山西省,临汾市,曲沃县', 3, 'quwo', '0357', '043400', 'Q', '111.47525', '35.64119'),
(322, 319, '翼城', '翼城县', '中国,山西省,临汾市,翼城县', 3, 'yicheng', '0357', '043500', 'Y', '111.7181', '35.73881'),
(323, 319, '襄汾', '襄汾县', '中国,山西省,临汾市,襄汾县', 3, 'xiangfen', '0357', '041500', 'X', '111.44204', '35.87711'),
(324, 319, '洪洞', '洪洞县', '中国,山西省,临汾市,洪洞县', 3, 'hongtong', '0357', '041600', 'H', '111.67501', '36.25425'),
(325, 319, '古县', '古县', '中国,山西省,临汾市,古县', 3, 'guxian', '0357', '042400', 'G', '111.92041', '36.26688'),
(326, 319, '安泽', '安泽县', '中国,山西省,临汾市,安泽县', 3, 'anze', '0357', '042500', 'A', '112.24981', '36.14803'),
(327, 319, '浮山', '浮山县', '中国,山西省,临汾市,浮山县', 3, 'fushan', '0357', '042600', 'F', '111.84744', '35.96854'),
(328, 319, '吉县', '吉县', '中国,山西省,临汾市,吉县', 3, 'jixian', '0357', '042200', 'J', '110.68148', '36.09873'),
(329, 319, '乡宁', '乡宁县', '中国,山西省,临汾市,乡宁县', 3, 'xiangning', '0357', '042100', 'X', '110.84652', '35.97072'),
(330, 319, '大宁', '大宁县', '中国,山西省,临汾市,大宁县', 3, 'daning', '0357', '042300', 'D', '110.75216', '36.46624'),
(331, 319, '隰县', '隰县', '中国,山西省,临汾市,隰县', 3, 'xixian', '0357', '041300', NULL, '110.93881', '36.69258'),
(332, 319, '永和', '永和县', '中国,山西省,临汾市,永和县', 3, 'yonghe', '0357', '041400', 'Y', '110.63168', '36.7584'),
(333, 319, '蒲县', '蒲县', '中国,山西省,临汾市,蒲县', 3, 'puxian', '0357', '041200', 'P', '111.09674', '36.41243'),
(334, 319, '汾西', '汾西县', '中国,山西省,临汾市,汾西县', 3, 'fenxi', '0357', '031500', 'F', '111.56811', '36.65063'),
(335, 319, '侯马', '侯马市', '中国,山西省,临汾市,侯马市', 3, 'houma', '0357', '043000', 'H', '111.37207', '35.61903'),
(336, 319, '霍州', '霍州市', '中国,山西省,临汾市,霍州市', 3, 'huozhou', '0357', '031400', 'H', '111.755', '36.5638'),
(337, 220, '吕梁', '吕梁市', '中国,山西省,吕梁市', 2, 'lvliang', '0358', '033000', 'L', '111.134335', '37.524366'),
(338, 337, '离石', '离石区', '中国,山西省,吕梁市,离石区', 3, 'lishi', '0358', '033000', 'L', '111.15059', '37.5177'),
(339, 337, '文水', '文水县', '中国,山西省,吕梁市,文水县', 3, 'wenshui', '0358', '032100', 'W', '112.02829', '37.43841'),
(340, 337, '交城', '交城县', '中国,山西省,吕梁市,交城县', 3, 'jiaocheng', '0358', '030500', 'J', '112.1585', '37.5512'),
(341, 337, '兴县', '兴县', '中国,山西省,吕梁市,兴县', 3, 'xingxian', '0358', '033600', 'X', '111.12692', '38.46321'),
(342, 337, '临县', '临县', '中国,山西省,吕梁市,临县', 3, 'linxian', '0358', '033200', 'L', '110.99282', '37.95271'),
(343, 337, '柳林', '柳林县', '中国,山西省,吕梁市,柳林县', 3, 'liulin', '0358', '033300', 'L', '110.88922', '37.42932'),
(344, 337, '石楼', '石楼县', '中国,山西省,吕梁市,石楼县', 3, 'shilou', '0358', '032500', 'S', '110.8352', '36.99731'),
(345, 337, '岚县', '岚县', '中国,山西省,吕梁市,岚县', 3, 'lanxian', '0358', '033500', NULL, '111.67627', '38.27874'),
(346, 337, '方山', '方山县', '中国,山西省,吕梁市,方山县', 3, 'fangshan', '0358', '033100', 'F', '111.24011', '37.88979'),
(347, 337, '中阳', '中阳县', '中国,山西省,吕梁市,中阳县', 3, 'zhongyang', '0358', '033400', 'Z', '111.1795', '37.35715'),
(348, 337, '交口', '交口县', '中国,山西省,吕梁市,交口县', 3, 'jiaokou', '0358', '032400', 'J', '111.18103', '36.98213'),
(349, 337, '孝义', '孝义市', '中国,山西省,吕梁市,孝义市', 3, 'xiaoyi', '0358', '032300', 'X', '111.77362', '37.14414'),
(350, 337, '汾阳', '汾阳市', '中国,山西省,吕梁市,汾阳市', 3, 'fenyang', '0358', '032200', 'F', '111.7882', '37.26605'),
(351, 0, '内蒙古', '内蒙古自治区', '中国,内蒙古自治区', 1, 'innermongolia', '', '', 'N', '111.670801', '40.818311'),
(352, 351, '呼和浩特', '呼和浩特市', '中国,内蒙古自治区,呼和浩特市', 2, 'hohhot', '0471', '010000', 'H', '111.670801', '40.818311'),
(353, 352, '新城', '新城区', '中国,内蒙古自治区,呼和浩特市,新城区', 3, 'xincheng', '0471', '010050', 'X', '111.66554', '40.85828'),
(354, 352, '回民', '回民区', '中国,内蒙古自治区,呼和浩特市,回民区', 3, 'huimin', '0471', '010030', 'H', '111.62402', '40.80827'),
(355, 352, '玉泉', '玉泉区', '中国,内蒙古自治区,呼和浩特市,玉泉区', 3, 'yuquan', '0471', '010020', 'Y', '111.67456', '40.75227'),
(356, 352, '赛罕', '赛罕区', '中国,内蒙古自治区,呼和浩特市,赛罕区', 3, 'saihan', '0471', '010020', 'S', '111.70224', '40.79207'),
(357, 352, '土默特左旗', '土默特左旗', '中国,内蒙古自治区,呼和浩特市,土默特左旗', 3, 'tumotezuoqi', '0471', '010100', 'T', '111.14898', '40.72229'),
(358, 352, '托克托', '托克托县', '中国,内蒙古自治区,呼和浩特市,托克托县', 3, 'tuoketuo', '0471', '010200', 'T', '111.19101', '40.27492'),
(359, 352, '和林格尔', '和林格尔县', '中国,内蒙古自治区,呼和浩特市,和林格尔县', 3, 'helingeer', '0471', '011500', 'H', '111.82205', '40.37892'),
(360, 352, '清水河', '清水河县', '中国,内蒙古自治区,呼和浩特市,清水河县', 3, 'qingshuihe', '0471', '011600', 'Q', '111.68316', '39.9097'),
(361, 352, '武川', '武川县', '中国,内蒙古自治区,呼和浩特市,武川县', 3, 'wuchuan', '0471', '011700', 'W', '111.45785', '41.09289'),
(362, 351, '包头', '包头市', '中国,内蒙古自治区,包头市', 2, 'baotou', '0472', '014025', 'B', '109.840405', '40.658168'),
(363, 362, '东河', '东河区', '中国,内蒙古自治区,包头市,东河区', 3, 'donghe', '0472', '014040', 'D', '110.0462', '40.58237'),
(364, 362, '昆都仑', '昆都仑区', '中国,内蒙古自治区,包头市,昆都仑区', 3, 'kundulun', '0472', '014010', 'K', '109.83862', '40.64175'),
(365, 362, '青山', '青山区', '中国,内蒙古自治区,包头市,青山区', 3, 'qingshan', '0472', '014030', 'Q', '109.90131', '40.64329'),
(366, 362, '石拐', '石拐区', '中国,内蒙古自治区,包头市,石拐区', 3, 'shiguai', '0472', '014070', 'S', '110.27322', '40.67297'),
(367, 362, '白云鄂博矿区', '白云鄂博矿区', '中国,内蒙古自治区,包头市,白云鄂博矿区', 3, 'baiyunebokuangqu', '0472', '014080', 'B', '109.97367', '41.76968'),
(368, 362, '九原', '九原区', '中国,内蒙古自治区,包头市,九原区', 3, 'jiuyuan', '0472', '014060', 'J', '109.96496', '40.60554'),
(369, 362, '土默特右旗', '土默特右旗', '中国,内蒙古自治区,包头市,土默特右旗', 3, 'tumoteyouqi', '0472', '014100', 'T', '110.52417', '40.5688'),
(370, 362, '固阳', '固阳县', '中国,内蒙古自治区,包头市,固阳县', 3, 'guyang', '0472', '014200', 'G', '110.06372', '41.01851'),
(371, 362, '达茂旗', '达尔罕茂明安联合旗', '中国,内蒙古自治区,包头市,达尔罕茂明安联合旗', 3, 'damaoqi', '0472', '014500', 'D', '110.43258', '41.69875'),
(372, 351, '乌海', '乌海市', '中国,内蒙古自治区,乌海市', 2, 'wuhai', '0473', '016000', 'W', '106.825563', '39.673734'),
(373, 372, '海勃湾', '海勃湾区', '中国,内蒙古自治区,乌海市,海勃湾区', 3, 'haibowan', '0473', '016000', 'H', '106.8222', '39.66955'),
(374, 372, '海南', '海南区', '中国,内蒙古自治区,乌海市,海南区', 3, 'hainan', '0473', '016030', 'H', '106.88656', '39.44128'),
(375, 372, '乌达', '乌达区', '中国,内蒙古自治区,乌海市,乌达区', 3, 'wuda', '0473', '016040', 'W', '106.72723', '39.505'),
(376, 351, '赤峰', '赤峰市', '中国,内蒙古自治区,赤峰市', 2, 'chifeng', '0476', '024000', 'C', '118.956806', '42.275317'),
(377, 376, '红山', '红山区', '中国,内蒙古自治区,赤峰市,红山区', 3, 'hongshan', '0476', '024020', 'H', '118.95755', '42.24312'),
(378, 376, '元宝山', '元宝山区', '中国,内蒙古自治区,赤峰市,元宝山区', 3, 'yuanbaoshan', '0476', '024076', 'Y', '119.28921', '42.04005'),
(379, 376, '松山', '松山区', '中国,内蒙古自治区,赤峰市,松山区', 3, 'songshan', '0476', '024005', 'S', '118.9328', '42.28613'),
(380, 376, '阿鲁科尔沁旗', '阿鲁科尔沁旗', '中国,内蒙古自治区,赤峰市,阿鲁科尔沁旗', 3, 'alukeerqinqi', '0476', '025550', 'A', '120.06527', '43.87988'),
(381, 376, '巴林左旗', '巴林左旗', '中国,内蒙古自治区,赤峰市,巴林左旗', 3, 'balinzuoqi', '0476', '025450', 'B', '119.38012', '43.97031'),
(382, 376, '巴林右旗', '巴林右旗', '中国,内蒙古自治区,赤峰市,巴林右旗', 3, 'balinyouqi', '0476', '025150', 'B', '118.66461', '43.53387'),
(383, 376, '林西', '林西县', '中国,内蒙古自治区,赤峰市,林西县', 3, 'linxi', '0476', '025250', 'L', '118.04733', '43.61165'),
(384, 376, '克什克腾旗', '克什克腾旗', '中国,内蒙古自治区,赤峰市,克什克腾旗', 3, 'keshiketengqi', '0476', '025350', 'K', '117.54562', '43.26501'),
(385, 376, '翁牛特旗', '翁牛特旗', '中国,内蒙古自治区,赤峰市,翁牛特旗', 3, 'wengniuteqi', '0476', '024500', 'W', '119.03042', '42.93147'),
(386, 376, '喀喇沁旗', '喀喇沁旗', '中国,内蒙古自治区,赤峰市,喀喇沁旗', 3, 'kalaqinqi', '0476', '024400', 'K', '118.70144', '41.92917'),
(387, 376, '宁城', '宁城县', '中国,内蒙古自治区,赤峰市,宁城县', 3, 'ningcheng', '0476', '024200', 'N', '119.34375', '41.59661'),
(388, 376, '敖汉旗', '敖汉旗', '中国,内蒙古自治区,赤峰市,敖汉旗', 3, 'aohanqi', '0476', '024300', 'A', '119.92163', '42.29071'),
(389, 351, '通辽', '通辽市', '中国,内蒙古自治区,通辽市', 2, 'tongliao', '0475', '028000', 'T', '122.263119', '43.617429'),
(390, 389, '科尔沁', '科尔沁区', '中国,内蒙古自治区,通辽市,科尔沁区', 3, 'keerqin', '0475', '028000', 'K', '122.25573', '43.62257'),
(391, 389, '科尔沁左翼中旗', '科尔沁左翼中旗', '中国,内蒙古自治区,通辽市,科尔沁左翼中旗', 3, 'keerqinzuoyizhongqi', '0475', '029300', 'K', '123.31912', '44.13014'),
(392, 389, '科尔沁左翼后旗', '科尔沁左翼后旗', '中国,内蒙古自治区,通辽市,科尔沁左翼后旗', 3, 'keerqinzuoyihouqi', '0475', '028100', 'K', '122.35745', '42.94897'),
(393, 389, '开鲁', '开鲁县', '中国,内蒙古自治区,通辽市,开鲁县', 3, 'kailu', '0475', '028400', 'K', '121.31884', '43.60003'),
(394, 389, '库伦旗', '库伦旗', '中国,内蒙古自治区,通辽市,库伦旗', 3, 'kulunqi', '0475', '028200', 'K', '121.776', '42.72998'),
(395, 389, '奈曼旗', '奈曼旗', '中国,内蒙古自治区,通辽市,奈曼旗', 3, 'naimanqi', '0475', '028300', 'N', '120.66348', '42.84527'),
(396, 389, '扎鲁特旗', '扎鲁特旗', '中国,内蒙古自治区,通辽市,扎鲁特旗', 3, 'zhaluteqi', '0475', '029100', 'Z', '120.91507', '44.55592'),
(397, 389, '霍林郭勒', '霍林郭勒市', '中国,内蒙古自治区,通辽市,霍林郭勒市', 3, 'huolinguole', '0475', '029200', 'H', '119.65429', '45.53454'),
(398, 351, '鄂尔多斯', '鄂尔多斯市', '中国,内蒙古自治区,鄂尔多斯市', 2, 'ordos', '0477', '017004', 'E', '109.99029', '39.817179'),
(399, 398, '东胜', '东胜区', '中国,内蒙古自治区,鄂尔多斯市,东胜区', 3, 'dongsheng', '0477', '017000', 'D', '109.96289', '39.82236'),
(400, 398, '达拉特旗', '达拉特旗', '中国,内蒙古自治区,鄂尔多斯市,达拉特旗', 3, 'dalateqi', '0477', '014300', 'D', '110.03317', '40.4001'),
(401, 398, '准格尔旗', '准格尔旗', '中国,内蒙古自治区,鄂尔多斯市,准格尔旗', 3, 'zhungeerqi', '0477', '017100', 'Z', '111.23645', '39.86783'),
(402, 398, '鄂托克前旗', '鄂托克前旗', '中国,内蒙古自治区,鄂尔多斯市,鄂托克前旗', 3, 'etuokeqianqi', '0477', '016200', 'E', '107.48403', '38.18396'),
(403, 398, '鄂托克旗', '鄂托克旗', '中国,内蒙古自治区,鄂尔多斯市,鄂托克旗', 3, 'etuokeqi', '0477', '016100', 'E', '107.98226', '39.09456'),
(404, 398, '杭锦旗', '杭锦旗', '中国,内蒙古自治区,鄂尔多斯市,杭锦旗', 3, 'hangjinqi', '0477', '017400', 'H', '108.72934', '39.84023'),
(405, 398, '乌审旗', '乌审旗', '中国,内蒙古自治区,鄂尔多斯市,乌审旗', 3, 'wushenqi', '0477', '017300', 'W', '108.8461', '38.59092'),
(406, 398, '伊金霍洛旗', '伊金霍洛旗', '中国,内蒙古自治区,鄂尔多斯市,伊金霍洛旗', 3, 'yijinhuoluoqi', '0477', '017200', 'Y', '109.74908', '39.57393'),
(407, 351, '呼伦贝尔', '呼伦贝尔市', '中国,内蒙古自治区,呼伦贝尔市', 2, 'hulunber', '0470', '021008', 'H', '119.758168', '49.215333'),
(408, 407, '海拉尔', '海拉尔区', '中国,内蒙古自治区,呼伦贝尔市,海拉尔区', 3, 'hailaer', '0470', '021000', 'H', '119.7364', '49.2122'),
(409, 407, '扎赉诺尔', '扎赉诺尔区', '中国,内蒙古自治区,呼伦贝尔市,扎赉诺尔区', 3, 'zhalainuoer', '0470', '021410', 'Z', '117.792702', '49.486943'),
(410, 407, '阿荣旗', '阿荣旗', '中国,内蒙古自治区,呼伦贝尔市,阿荣旗', 3, 'arongqi', '0470', '162750', 'A', '123.45941', '48.12581'),
(411, 407, '莫旗', '莫力达瓦达斡尔族自治旗', '中国,内蒙古自治区,呼伦贝尔市,莫力达瓦达斡尔族自治旗', 3, 'moqi', '0470', '162850', 'M', '124.51498', '48.48055'),
(412, 407, '鄂伦春', '鄂伦春自治旗', '中国,内蒙古自治区,呼伦贝尔市,鄂伦春自治旗', 3, 'elunchun', '0470', '165450', 'E', '123.72604', '50.59777'),
(413, 407, '鄂温', '鄂温克族自治旗', '中国,内蒙古自治区,呼伦贝尔市,鄂温克族自治旗', 3, 'ewen', '0470', '021100', 'E', '119.7565', '49.14284'),
(414, 407, '陈巴尔虎旗', '陈巴尔虎旗', '中国,内蒙古自治区,呼伦贝尔市,陈巴尔虎旗', 3, 'chenbaerhuqi', '0470', '021500', 'C', '119.42434', '49.32684'),
(415, 407, '新巴尔虎左旗', '新巴尔虎左旗', '中国,内蒙古自治区,呼伦贝尔市,新巴尔虎左旗', 3, 'xinbaerhuzuoqi', '0470', '021200', 'X', '118.26989', '48.21842'),
(416, 407, '新巴尔虎右旗', '新巴尔虎右旗', '中国,内蒙古自治区,呼伦贝尔市,新巴尔虎右旗', 3, 'xinbaerhuyouqi', '0470', '021300', 'X', '116.82366', '48.66473'),
(417, 407, '满洲里', '满洲里市', '中国,内蒙古自治区,呼伦贝尔市,满洲里市', 3, 'manzhouli', '0470', '021400', 'M', '117.47946', '49.58272'),
(418, 407, '牙克石', '牙克石市', '中国,内蒙古自治区,呼伦贝尔市,牙克石市', 3, 'yakeshi', '0470', '022150', 'Y', '120.7117', '49.2856'),
(419, 407, '扎兰屯', '扎兰屯市', '中国,内蒙古自治区,呼伦贝尔市,扎兰屯市', 3, 'zhalantun', '0470', '162650', 'Z', '122.73757', '48.01363'),
(420, 407, '额尔古纳', '额尔古纳市', '中国,内蒙古自治区,呼伦贝尔市,额尔古纳市', 3, 'eerguna', '0470', '022250', 'E', '120.19094', '50.24249'),
(421, 407, '根河', '根河市', '中国,内蒙古自治区,呼伦贝尔市,根河市', 3, 'genhe', '0470', '022350', 'G', '121.52197', '50.77996'),
(422, 351, '巴彦淖尔', '巴彦淖尔市', '中国,内蒙古自治区,巴彦淖尔市', 2, 'bayannur', '0478', '015001', 'B', '107.416959', '40.757402'),
(423, 422, '临河', '临河区', '中国,内蒙古自治区,巴彦淖尔市,临河区', 3, 'linhe', '0478', '015001', 'L', '107.42668', '40.75827'),
(424, 422, '五原', '五原县', '中国,内蒙古自治区,巴彦淖尔市,五原县', 3, 'wuyuan', '0478', '015100', 'W', '108.26916', '41.09631'),
(425, 422, '磴口', '磴口县', '中国,内蒙古自治区,巴彦淖尔市,磴口县', 3, 'dengkou', '0478', '015200', NULL, '107.00936', '40.33062'),
(426, 422, '乌拉特前旗', '乌拉特前旗', '中国,内蒙古自治区,巴彦淖尔市,乌拉特前旗', 3, 'wulateqianqi', '0478', '014400', 'W', '108.65219', '40.73649'),
(427, 422, '乌拉特中旗', '乌拉特中旗', '中国,内蒙古自治区,巴彦淖尔市,乌拉特中旗', 3, 'wulatezhongqi', '0478', '015300', 'W', '108.52587', '41.56789'),
(428, 422, '乌拉特后旗', '乌拉特后旗', '中国,内蒙古自治区,巴彦淖尔市,乌拉特后旗', 3, 'wulatehouqi', '0478', '015500', 'W', '106.98971', '41.43151'),
(429, 422, '杭锦后旗', '杭锦后旗', '中国,内蒙古自治区,巴彦淖尔市,杭锦后旗', 3, 'hangjinhouqi', '0478', '015400', 'H', '107.15133', '40.88627'),
(430, 351, '乌兰察布', '乌兰察布市', '中国,内蒙古自治区,乌兰察布市', 2, 'ulanqab', '0474', '012000', 'W', '113.114543', '41.034126'),
(431, 430, '集宁', '集宁区', '中国,内蒙古自治区,乌兰察布市,集宁区', 3, 'jining', '0474', '012000', 'J', '113.11452', '41.0353'),
(432, 430, '卓资', '卓资县', '中国,内蒙古自治区,乌兰察布市,卓资县', 3, 'zhuozi', '0474', '012300', 'Z', '112.57757', '40.89414'),
(433, 430, '化德', '化德县', '中国,内蒙古自治区,乌兰察布市,化德县', 3, 'huade', '0474', '013350', 'H', '114.01071', '41.90433'),
(434, 430, '商都', '商都县', '中国,内蒙古自治区,乌兰察布市,商都县', 3, 'shangdu', '0474', '013450', 'S', '113.57772', '41.56213'),
(435, 430, '兴和', '兴和县', '中国,内蒙古自治区,乌兰察布市,兴和县', 3, 'xinghe', '0474', '013650', 'X', '113.83395', '40.87186'),
(436, 430, '凉城', '凉城县', '中国,内蒙古自治区,乌兰察布市,凉城县', 3, 'liangcheng', '0474', '013750', 'L', '112.49569', '40.53346'),
(437, 430, '察右前旗', '察哈尔右翼前旗', '中国,内蒙古自治区,乌兰察布市,察哈尔右翼前旗', 3, 'chayouqianqi', '0474', '012200', 'C', '113.22131', '40.7788'),
(438, 430, '察右中旗', '察哈尔右翼中旗', '中国,内蒙古自治区,乌兰察布市,察哈尔右翼中旗', 3, 'chayouzhongqi', '0474', '013550', 'C', '112.63537', '41.27742'),
(439, 430, '察右后旗', '察哈尔右翼后旗', '中国,内蒙古自治区,乌兰察布市,察哈尔右翼后旗', 3, 'chayouhouqi', '0474', '012400', 'C', '113.19216', '41.43554'),
(440, 430, '四子王旗', '四子王旗', '中国,内蒙古自治区,乌兰察布市,四子王旗', 3, 'siziwangqi', '0474', '011800', 'S', '111.70654', '41.53312'),
(441, 430, '丰镇', '丰镇市', '中国,内蒙古自治区,乌兰察布市,丰镇市', 3, 'fengzhen', '0474', '012100', 'F', '113.10983', '40.4369'),
(442, 351, '兴安盟', '兴安盟', '中国,内蒙古自治区,兴安盟', 2, 'hinggan', '0482', '137401', 'X', '122.070317', '46.076268'),
(443, 442, '乌兰浩特', '乌兰浩特市', '中国,内蒙古自治区,兴安盟,乌兰浩特市', 3, 'wulanhaote', '0482', '137401', 'W', '122.06378', '46.06235'),
(444, 442, '阿尔山', '阿尔山市', '中国,内蒙古自治区,兴安盟,阿尔山市', 3, 'aershan', '0482', '137800', 'A', '119.94317', '47.17716'),
(445, 442, '科右前旗', '科尔沁右翼前旗', '中国,内蒙古自治区,兴安盟,科尔沁右翼前旗', 3, 'keyouqianqi', '0482', '137423', 'K', '121.95269', '46.0795'),
(446, 442, '科右中旗', '科尔沁右翼中旗', '中国,内蒙古自治区,兴安盟,科尔沁右翼中旗', 3, 'keyouzhongqi', '0482', '029400', 'K', '121.46807', '45.05605'),
(447, 442, '扎赉特旗', '扎赉特旗', '中国,内蒙古自治区,兴安盟,扎赉特旗', 3, 'zhalaiteqi', '0482', '137600', 'Z', '122.91229', '46.7267'),
(448, 442, '突泉', '突泉县', '中国,内蒙古自治区,兴安盟,突泉县', 3, 'tuquan', '0482', '137500', 'T', '121.59396', '45.38187'),
(449, 351, '锡林郭勒盟', '锡林郭勒盟', '中国,内蒙古自治区,锡林郭勒盟', 2, 'xilingol', '0479', '026000', 'X', '116.090996', '43.944018'),
(450, 449, '二连浩特', '二连浩特市', '中国,内蒙古自治区,锡林郭勒盟,二连浩特市', 3, 'erlianhaote', '0479', '011100', 'E', '111.98297', '43.65303'),
(451, 449, '锡林浩特', '锡林浩特市', '中国,内蒙古自治区,锡林郭勒盟,锡林浩特市', 3, 'xilinhaote', '0479', '026021', 'X', '116.08603', '43.93341'),
(452, 449, '阿巴嘎旗', '阿巴嘎旗', '中国,内蒙古自治区,锡林郭勒盟,阿巴嘎旗', 3, 'abagaqi', '0479', '011400', 'A', '114.96826', '44.02174'),
(453, 449, '苏尼特左旗', '苏尼特左旗', '中国,内蒙古自治区,锡林郭勒盟,苏尼特左旗', 3, 'sunitezuoqi', '0479', '011300', 'S', '113.6506', '43.85687'),
(454, 449, '苏尼特右旗', '苏尼特右旗', '中国,内蒙古自治区,锡林郭勒盟,苏尼特右旗', 3, 'suniteyouqi', '0479', '011200', 'S', '112.65741', '42.7469'),
(455, 449, '东乌旗', '东乌珠穆沁旗', '中国,内蒙古自治区,锡林郭勒盟,东乌珠穆沁旗', 3, 'dongwuqi', '0479', '026300', 'D', '116.97293', '45.51108'),
(456, 449, '西乌旗', '西乌珠穆沁旗', '中国,内蒙古自治区,锡林郭勒盟,西乌珠穆沁旗', 3, 'xiwuqi', '0479', '026200', 'X', '117.60983', '44.59623'),
(457, 449, '太仆寺旗', '太仆寺旗', '中国,内蒙古自治区,锡林郭勒盟,太仆寺旗', 3, 'taipusiqi', '0479', '027000', 'T', '115.28302', '41.87727'),
(458, 449, '镶黄旗', '镶黄旗', '中国,内蒙古自治区,锡林郭勒盟,镶黄旗', 3, 'xianghuangqi', '0479', '013250', 'X', '113.84472', '42.23927'),
(459, 449, '正镶白旗', '正镶白旗', '中国,内蒙古自治区,锡林郭勒盟,正镶白旗', 3, 'zhengxiangbaiqi', '0479', '013800', 'Z', '115.00067', '42.30712'),
(460, 449, '正蓝旗', '正蓝旗', '中国,内蒙古自治区,锡林郭勒盟,正蓝旗', 3, 'zhenglanqi', '0479', '027200', 'Z', '116.00363', '42.25229'),
(461, 449, '多伦', '多伦县', '中国,内蒙古自治区,锡林郭勒盟,多伦县', 3, 'duolun', '0479', '027300', 'D', '116.48565', '42.203'),
(462, 351, '阿拉善盟', '阿拉善盟', '中国,内蒙古自治区,阿拉善盟', 2, 'alxa', '0483', '750306', 'A', '105.706422', '38.844814'),
(463, 462, '阿拉善左旗', '阿拉善左旗', '中国,内蒙古自治区,阿拉善盟,阿拉善左旗', 3, 'alashanzuoqi', '0483', '750306', 'A', '105.67532', '38.8293'),
(464, 462, '阿拉善右旗', '阿拉善右旗', '中国,内蒙古自治区,阿拉善盟,阿拉善右旗', 3, 'alashanyouqi', '0483', '737300', 'A', '101.66705', '39.21533'),
(465, 462, '额济纳旗', '额济纳旗', '中国,内蒙古自治区,阿拉善盟,额济纳旗', 3, 'ejinaqi', '0483', '735400', 'E', '101.06887', '41.96755'),
(466, 0, '辽宁', '辽宁省', '中国,辽宁省', 1, 'liaoning', '', '', 'L', '123.429096', '41.796767'),
(467, 466, '沈阳', '沈阳市', '中国,辽宁省,沈阳市', 2, 'shenyang', '024', '110013', 'S', '123.429096', '41.796767'),
(468, 467, '和平', '和平区', '中国,辽宁省,沈阳市,和平区', 3, 'heping', '024', '110001', 'H', '123.4204', '41.78997'),
(469, 467, '沈河', '沈河区', '中国,辽宁省,沈阳市,沈河区', 3, 'shenhe', '024', '110011', 'S', '123.45871', '41.79625'),
(470, 467, '大东', '大东区', '中国,辽宁省,沈阳市,大东区', 3, 'dadong', '024', '110041', 'D', '123.46997', '41.80539'),
(471, 467, '皇姑', '皇姑区', '中国,辽宁省,沈阳市,皇姑区', 3, 'huanggu', '024', '110031', 'H', '123.42527', '41.82035'),
(472, 467, '铁西', '铁西区', '中国,辽宁省,沈阳市,铁西区', 3, 'tiexi', '024', '110021', 'T', '123.37675', '41.80269'),
(473, 467, '苏家屯', '苏家屯区', '中国,辽宁省,沈阳市,苏家屯区', 3, 'sujiatun', '024', '110101', 'S', '123.34405', '41.66475'),
(474, 467, '浑南', '浑南区', '中国,辽宁省,沈阳市,浑南区', 3, 'hunnan', '024', '110015', 'H', '123.457707', '41.719450'),
(475, 467, '沈北新区', '沈北新区', '中国,辽宁省,沈阳市,沈北新区', 3, 'shenbeixinqu', '024', '110121', 'S', '123.52658', '42.05297'),
(476, 467, '于洪', '于洪区', '中国,辽宁省,沈阳市,于洪区', 3, 'yuhong', '024', '110141', 'Y', '123.30807', '41.794'),
(477, 467, '辽中', '辽中县', '中国,辽宁省,沈阳市,辽中县', 3, 'liaozhong', '024', '110200', 'L', '122.72659', '41.51302');
INSERT INTO `sf_area` (`id`, `pid`, `shortname`, `name`, `mergename`, `level`, `pinyin`, `code`, `zip`, `first`, `lng`, `lat`) VALUES
(478, 467, '康平', '康平县', '中国,辽宁省,沈阳市,康平县', 3, 'kangping', '024', '110500', 'K', '123.35446', '42.75081'),
(479, 467, '法库', '法库县', '中国,辽宁省,沈阳市,法库县', 3, 'faku', '024', '110400', 'F', '123.41214', '42.50608'),
(480, 467, '新民', '新民市', '中国,辽宁省,沈阳市,新民市', 3, 'xinmin', '024', '110300', 'X', '122.82867', '41.99847'),
(481, 466, '大连', '大连市', '中国,辽宁省,大连市', 2, 'dalian', '0411', '116011', 'D', '121.618622', '38.91459'),
(482, 481, '中山', '中山区', '中国,辽宁省,大连市,中山区', 3, 'zhongshan', '0411', '116001', 'Z', '121.64465', '38.91859'),
(483, 481, '西岗', '西岗区', '中国,辽宁省,大连市,西岗区', 3, 'xigang', '0411', '116011', 'X', '121.61238', '38.91469'),
(484, 481, '沙河口', '沙河口区', '中国,辽宁省,大连市,沙河口区', 3, 'shahekou', '0411', '116021', 'S', '121.58017', '38.90536'),
(485, 481, '甘井子', '甘井子区', '中国,辽宁省,大连市,甘井子区', 3, 'ganjingzi', '0411', '116033', 'G', '121.56567', '38.95017'),
(486, 481, '旅顺口', '旅顺口区', '中国,辽宁省,大连市,旅顺口区', 3, 'lvshunkou', '0411', '116041', 'L', '121.26202', '38.85125'),
(487, 481, '金州', '金州区', '中国,辽宁省,大连市,金州区', 3, 'jinzhou', '0411', '116100', 'J', '121.71893', '39.1004'),
(488, 481, '长海', '长海县', '中国,辽宁省,大连市,长海县', 3, 'changhai', '0411', '116500', 'C', '122.58859', '39.27274'),
(489, 481, '瓦房店', '瓦房店市', '中国,辽宁省,大连市,瓦房店市', 3, 'wafangdian', '0411', '116300', 'W', '121.98104', '39.62843'),
(490, 481, '普兰店', '普兰店市', '中国,辽宁省,大连市,普兰店市', 3, 'pulandian', '0411', '116200', 'P', '121.96316', '39.39465'),
(491, 481, '庄河', '庄河市', '中国,辽宁省,大连市,庄河市', 3, 'zhuanghe', '0411', '116400', 'Z', '122.96725', '39.68815'),
(492, 466, '鞍山', '鞍山市', '中国,辽宁省,鞍山市', 2, 'anshan', '0412', '114001', 'A', '122.995632', '41.110626'),
(493, 492, '铁东', '铁东区', '中国,辽宁省,鞍山市,铁东区', 3, 'tiedong', '0412', '114001', 'T', '122.99085', '41.08975'),
(494, 492, '铁西', '铁西区', '中国,辽宁省,鞍山市,铁西区', 3, 'tiexi', '0413', '114013', 'T', '122.96967', '41.11977'),
(495, 492, '立山', '立山区', '中国,辽宁省,鞍山市,立山区', 3, 'lishan', '0414', '114031', 'L', '123.02948', '41.15008'),
(496, 492, '千山', '千山区', '中国,辽宁省,鞍山市,千山区', 3, 'qianshan', '0415', '114041', 'Q', '122.96048', '41.07507'),
(497, 492, '台安', '台安县', '中国,辽宁省,鞍山市,台安县', 3, 'tai\'an', '0417', '114100', 'T', '122.43585', '41.41265'),
(498, 492, '岫岩', '岫岩满族自治县', '中国,辽宁省,鞍山市,岫岩满族自治县', 3, 'xiuyan', '0418', '114300', NULL, '123.28875', '40.27996'),
(499, 492, '海城', '海城市', '中国,辽宁省,鞍山市,海城市', 3, 'haicheng', '0416', '114200', 'H', '122.68457', '40.88142'),
(500, 466, '抚顺', '抚顺市', '中国,辽宁省,抚顺市', 2, 'fushun', '024', '113008', 'F', '123.921109', '41.875956'),
(501, 500, '新抚', '新抚区', '中国,辽宁省,抚顺市,新抚区', 3, 'xinfu', '024', '113008', 'X', '123.91264', '41.86205'),
(502, 500, '东洲', '东洲区', '中国,辽宁省,抚顺市,东洲区', 3, 'dongzhou', '024', '113003', 'D', '124.03759', '41.8519'),
(503, 500, '望花', '望花区', '中国,辽宁省,抚顺市,望花区', 3, 'wanghua', '024', '113001', 'W', '123.78283', '41.85532'),
(504, 500, '顺城', '顺城区', '中国,辽宁省,抚顺市,顺城区', 3, 'shuncheng', '024', '113006', 'S', '123.94506', '41.88321'),
(505, 500, '抚顺', '抚顺县', '中国,辽宁省,抚顺市,抚顺县', 3, 'fushun', '024', '113006', 'F', '124.17755', '41.71217'),
(506, 500, '新宾', '新宾满族自治县', '中国,辽宁省,抚顺市,新宾满族自治县', 3, 'xinbin', '024', '113200', 'X', '125.04049', '41.73409'),
(507, 500, '清原', '清原满族自治县', '中国,辽宁省,抚顺市,清原满族自治县', 3, 'qingyuan', '024', '113300', 'Q', '124.92807', '42.10221'),
(508, 466, '本溪', '本溪市', '中国,辽宁省,本溪市', 2, 'benxi', '0414', '117000', 'B', '123.770519', '41.297909'),
(509, 508, '平山', '平山区', '中国,辽宁省,本溪市,平山区', 3, 'pingshan', '0414', '117000', 'P', '123.76892', '41.2997'),
(510, 508, '溪湖', '溪湖区', '中国,辽宁省,本溪市,溪湖区', 3, 'xihu', '0414', '117002', 'X', '123.76764', '41.32921'),
(511, 508, '明山', '明山区', '中国,辽宁省,本溪市,明山区', 3, 'mingshan', '0414', '117021', 'M', '123.81746', '41.30827'),
(512, 508, '南芬', '南芬区', '中国,辽宁省,本溪市,南芬区', 3, 'nanfen', '0414', '117014', 'N', '123.74523', '41.1006'),
(513, 508, '本溪', '本溪满族自治县', '中国,辽宁省,本溪市,本溪满族自治县', 3, 'benxi', '0414', '117100', 'B', '124.12741', '41.30059'),
(514, 508, '桓仁', '桓仁满族自治县', '中国,辽宁省,本溪市,桓仁满族自治县', 3, 'huanren', '0414', '117200', 'H', '125.36062', '41.26798'),
(515, 466, '丹东', '丹东市', '中国,辽宁省,丹东市', 2, 'dandong', '0415', '118000', 'D', '124.383044', '40.124296'),
(516, 515, '元宝', '元宝区', '中国,辽宁省,丹东市,元宝区', 3, 'yuanbao', '0415', '118000', 'Y', '124.39575', '40.13651'),
(517, 515, '振兴', '振兴区', '中国,辽宁省,丹东市,振兴区', 3, 'zhenxing', '0415', '118002', 'Z', '124.36035', '40.10489'),
(518, 515, '振安', '振安区', '中国,辽宁省,丹东市,振安区', 3, 'zhen\'an', '0415', '118001', 'Z', '124.42816', '40.15826'),
(519, 515, '宽甸', '宽甸满族自治县', '中国,辽宁省,丹东市,宽甸满族自治县', 3, 'kuandian', '0415', '118200', 'K', '124.78247', '40.73187'),
(520, 515, '东港', '东港市', '中国,辽宁省,丹东市,东港市', 3, 'donggang', '0415', '118300', 'D', '124.16287', '39.86256'),
(521, 515, '凤城', '凤城市', '中国,辽宁省,丹东市,凤城市', 3, 'fengcheng', '0415', '118100', 'F', '124.06671', '40.45302'),
(522, 466, '锦州', '锦州市', '中国,辽宁省,锦州市', 2, 'jinzhou', '0416', '121000', 'J', '121.135742', '41.119269'),
(523, 522, '古塔', '古塔区', '中国,辽宁省,锦州市,古塔区', 3, 'guta', '0416', '121001', 'G', '121.12832', '41.11725'),
(524, 522, '凌河', '凌河区', '中国,辽宁省,锦州市,凌河区', 3, 'linghe', '0416', '121000', 'L', '121.15089', '41.11496'),
(525, 522, '太和', '太和区', '中国,辽宁省,锦州市,太和区', 3, 'taihe', '0416', '121011', 'T', '121.10354', '41.10929'),
(526, 522, '黑山', '黑山县', '中国,辽宁省,锦州市,黑山县', 3, 'heishan', '0416', '121400', 'H', '122.12081', '41.69417'),
(527, 522, '义县', '义县', '中国,辽宁省,锦州市,义县', 3, 'yixian', '0416', '121100', 'Y', '121.24035', '41.53458'),
(528, 522, '凌海', '凌海市', '中国,辽宁省,锦州市,凌海市', 3, 'linghai', '0416', '121200', 'L', '121.35705', '41.1737'),
(529, 522, '北镇', '北镇市', '中国,辽宁省,锦州市,北镇市', 3, 'beizhen', '0416', '121300', 'B', '121.79858', '41.59537'),
(530, 466, '营口', '营口市', '中国,辽宁省,营口市', 2, 'yingkou', '0417', '115003', 'Y', '122.235151', '40.667432'),
(531, 530, '站前', '站前区', '中国,辽宁省,营口市,站前区', 3, 'zhanqian', '0417', '115002', 'Z', '122.25896', '40.67266'),
(532, 530, '西市', '西市区', '中国,辽宁省,营口市,西市区', 3, 'xishi', '0417', '115004', 'X', '122.20641', '40.6664'),
(533, 530, '鲅鱼圈', '鲅鱼圈区', '中国,辽宁省,营口市,鲅鱼圈区', 3, 'bayuquan', '0417', '115007', NULL, '122.13266', '40.26865'),
(534, 530, '老边', '老边区', '中国,辽宁省,营口市,老边区', 3, 'laobian', '0417', '115005', 'L', '122.37996', '40.6803'),
(535, 530, '盖州', '盖州市', '中国,辽宁省,营口市,盖州市', 3, 'gaizhou', '0417', '115200', 'G', '122.35464', '40.40446'),
(536, 530, '大石桥', '大石桥市', '中国,辽宁省,营口市,大石桥市', 3, 'dashiqiao', '0417', '115100', 'D', '122.50927', '40.64567'),
(537, 466, '阜新', '阜新市', '中国,辽宁省,阜新市', 2, 'fuxin', '0418', '123000', 'F', '121.648962', '42.011796'),
(538, 537, '海州', '海州区', '中国,辽宁省,阜新市,海州区', 3, 'haizhou', '0418', '123000', 'H', '121.65626', '42.01336'),
(539, 537, '新邱', '新邱区', '中国,辽宁省,阜新市,新邱区', 3, 'xinqiu', '0418', '123005', 'X', '121.79251', '42.09181'),
(540, 537, '太平', '太平区', '中国,辽宁省,阜新市,太平区', 3, 'taiping', '0418', '123003', 'T', '121.67865', '42.01065'),
(541, 537, '清河门', '清河门区', '中国,辽宁省,阜新市,清河门区', 3, 'qinghemen', '0418', '123006', 'Q', '121.4161', '41.78309'),
(542, 537, '细河', '细河区', '中国,辽宁省,阜新市,细河区', 3, 'xihe', '0418', '123000', 'X', '121.68013', '42.02533'),
(543, 537, '阜新', '阜新蒙古族自治县', '中国,辽宁省,阜新市,阜新蒙古族自治县', 3, 'fuxin', '0418', '123100', 'F', '121.75787', '42.0651'),
(544, 537, '彰武', '彰武县', '中国,辽宁省,阜新市,彰武县', 3, 'zhangwu', '0418', '123200', 'Z', '122.54022', '42.38625'),
(545, 466, '辽阳', '辽阳市', '中国,辽宁省,辽阳市', 2, 'liaoyang', '0419', '111000', 'L', '123.18152', '41.269402'),
(546, 545, '白塔', '白塔区', '中国,辽宁省,辽阳市,白塔区', 3, 'baita', '0419', '111000', 'B', '123.1747', '41.27025'),
(547, 545, '文圣', '文圣区', '中国,辽宁省,辽阳市,文圣区', 3, 'wensheng', '0419', '111000', 'W', '123.18521', '41.26267'),
(548, 545, '宏伟', '宏伟区', '中国,辽宁省,辽阳市,宏伟区', 3, 'hongwei', '0419', '111003', 'H', '123.1929', '41.21852'),
(549, 545, '弓长岭', '弓长岭区', '中国,辽宁省,辽阳市,弓长岭区', 3, 'gongchangling', '0419', '111008', 'G', '123.41963', '41.15181'),
(550, 545, '太子河', '太子河区', '中国,辽宁省,辽阳市,太子河区', 3, 'taizihe', '0419', '111000', 'T', '123.18182', '41.25337'),
(551, 545, '辽阳', '辽阳县', '中国,辽宁省,辽阳市,辽阳县', 3, 'liaoyang', '0419', '111200', 'L', '123.10574', '41.20542'),
(552, 545, '灯塔', '灯塔市', '中国,辽宁省,辽阳市,灯塔市', 3, 'dengta', '0419', '111300', 'D', '123.33926', '41.42612'),
(553, 466, '盘锦', '盘锦市', '中国,辽宁省,盘锦市', 2, 'panjin', '0427', '124010', 'P', '122.06957', '41.124484'),
(554, 553, '双台子', '双台子区', '中国,辽宁省,盘锦市,双台子区', 3, 'shuangtaizi', '0427', '124000', 'S', '122.06011', '41.1906'),
(555, 553, '兴隆台', '兴隆台区', '中国,辽宁省,盘锦市,兴隆台区', 3, 'xinglongtai', '0427', '124010', 'X', '122.07529', '41.12402'),
(556, 553, '大洼', '大洼县', '中国,辽宁省,盘锦市,大洼县', 3, 'dawa', '0427', '124200', 'D', '122.08239', '41.00244'),
(557, 553, '盘山', '盘山县', '中国,辽宁省,盘锦市,盘山县', 3, 'panshan', '0427', '124000', 'P', '121.99777', '41.23805'),
(558, 466, '铁岭', '铁岭市', '中国,辽宁省,铁岭市', 2, 'tieling', '024', '112000', 'T', '123.844279', '42.290585'),
(559, 558, '银州', '银州区', '中国,辽宁省,铁岭市,银州区', 3, 'yinzhou', '024', '112000', 'Y', '123.8573', '42.29507'),
(560, 558, '清河', '清河区', '中国,辽宁省,铁岭市,清河区', 3, 'qinghe', '024', '112003', 'Q', '124.15911', '42.54679'),
(561, 558, '铁岭', '铁岭县', '中国,辽宁省,铁岭市,铁岭县', 3, 'tieling', '024', '112000', 'T', '123.77325', '42.22498'),
(562, 558, '西丰', '西丰县', '中国,辽宁省,铁岭市,西丰县', 3, 'xifeng', '024', '112400', 'X', '124.7304', '42.73756'),
(563, 558, '昌图', '昌图县', '中国,辽宁省,铁岭市,昌图县', 3, 'changtu', '024', '112500', 'C', '124.11206', '42.78428'),
(564, 558, '调兵山', '调兵山市', '中国,辽宁省,铁岭市,调兵山市', 3, 'diaobingshan', '024', '112700', 'D', '123.56689', '42.4675'),
(565, 558, '开原', '开原市', '中国,辽宁省,铁岭市,开原市', 3, 'kaiyuan', '024', '112300', 'K', '124.03945', '42.54585'),
(566, 466, '朝阳', '朝阳市', '中国,辽宁省,朝阳市', 2, 'chaoyang', '0421', '122000', 'C', '120.451176', '41.576758'),
(567, 566, '双塔', '双塔区', '中国,辽宁省,朝阳市,双塔区', 3, 'shuangta', '0421', '122000', 'S', '120.45385', '41.566'),
(568, 566, '龙城', '龙城区', '中国,辽宁省,朝阳市,龙城区', 3, 'longcheng', '0421', '122000', 'L', '120.43719', '41.59264'),
(569, 566, '朝阳', '朝阳县', '中国,辽宁省,朝阳市,朝阳县', 3, 'chaoyang', '0421', '122000', 'C', '120.17401', '41.4324'),
(570, 566, '建平', '建平县', '中国,辽宁省,朝阳市,建平县', 3, 'jianping', '0421', '122400', 'J', '119.64392', '41.40315'),
(571, 566, '喀喇沁左翼', '喀喇沁左翼蒙古族自治县', '中国,辽宁省,朝阳市,喀喇沁左翼蒙古族自治县', 3, 'kalaqinzuoyi', '0421', '122300', 'K', '119.74185', '41.12801'),
(572, 566, '北票', '北票市', '中国,辽宁省,朝阳市,北票市', 3, 'beipiao', '0421', '122100', 'B', '120.76977', '41.80196'),
(573, 566, '凌源', '凌源市', '中国,辽宁省,朝阳市,凌源市', 3, 'lingyuan', '0421', '122500', 'L', '119.40148', '41.24558'),
(574, 466, '葫芦岛', '葫芦岛市', '中国,辽宁省,葫芦岛市', 2, 'huludao', '0429', '125000', 'H', '120.856394', '40.755572'),
(575, 574, '连山', '连山区', '中国,辽宁省,葫芦岛市,连山区', 3, 'lianshan', '0429', '125001', 'L', '120.86393', '40.75554'),
(576, 574, '龙港', '龙港区', '中国,辽宁省,葫芦岛市,龙港区', 3, 'longgang', '0429', '125003', 'L', '120.94866', '40.71919'),
(577, 574, '南票', '南票区', '中国,辽宁省,葫芦岛市,南票区', 3, 'nanpiao', '0429', '125027', 'N', '120.74978', '41.10707'),
(578, 574, '绥中', '绥中县', '中国,辽宁省,葫芦岛市,绥中县', 3, 'suizhong', '0429', '125200', 'S', '120.34451', '40.32552'),
(579, 574, '建昌', '建昌县', '中国,辽宁省,葫芦岛市,建昌县', 3, 'jianchang', '0429', '125300', 'J', '119.8377', '40.82448'),
(580, 574, '兴城', '兴城市', '中国,辽宁省,葫芦岛市,兴城市', 3, 'xingcheng', '0429', '125100', 'X', '120.72537', '40.61492'),
(581, 466, '金普新区', '金普新区', '中国,辽宁省,金普新区', 2, 'jinpuxinqu', '0411', '116100', 'J', '121.789627', '39.055451'),
(582, 581, '金州新区', '金州新区', '中国,辽宁省,金普新区,金州新区', 3, 'jinzhouxinqu', '0411', '116100', 'J', '121.784821', '39.052252'),
(583, 581, '普湾新区', '普湾新区', '中国,辽宁省,金普新区,普湾新区', 3, 'puwanxinqu', '0411', '116200', 'P', '121.812812', '39.330093'),
(584, 581, '保税区', '保税区', '中国,辽宁省,金普新区,保税区', 3, 'baoshuiqu', '0411', '116100', 'B', '121.94289', '39.224614'),
(585, 0, '吉林', '吉林省', '中国,吉林省', 1, 'jilin', '', '', 'J', '125.3245', '43.886841'),
(586, 585, '长春', '长春市', '中国,吉林省,长春市', 2, 'changchun', '0431', '130022', 'C', '125.3245', '43.886841'),
(587, 586, '南关', '南关区', '中国,吉林省,长春市,南关区', 3, 'nanguan', '0431', '130022', 'N', '125.35035', '43.86401'),
(588, 586, '宽城', '宽城区', '中国,吉林省,长春市,宽城区', 3, 'kuancheng', '0431', '130051', 'K', '125.32635', '43.90182'),
(589, 586, '朝阳', '朝阳区', '中国,吉林省,长春市,朝阳区', 3, 'chaoyang', '0431', '130012', 'C', '125.2883', '43.83339'),
(590, 586, '二道', '二道区', '中国,吉林省,长春市,二道区', 3, 'erdao', '0431', '130031', 'E', '125.37429', '43.86501'),
(591, 586, '绿园', '绿园区', '中国,吉林省,长春市,绿园区', 3, 'lvyuan', '0431', '130062', 'L', '125.25582', '43.88045'),
(592, 586, '双阳', '双阳区', '中国,吉林省,长春市,双阳区', 3, 'shuangyang', '0431', '130600', 'S', '125.65631', '43.52803'),
(593, 586, '九台', '九台区', '中国,吉林省,长春市,九台区', 3, 'jiutai', '0431', '130500', 'J', '125.8395', '44.15163'),
(594, 586, '农安', '农安县', '中国,吉林省,长春市,农安县', 3, 'nong\'an', '0431', '130200', 'N', '125.18481', '44.43265'),
(595, 586, '榆树', '榆树市', '中国,吉林省,长春市,榆树市', 3, 'yushu', '0431', '130400', 'Y', '126.55688', '44.82523'),
(596, 586, '德惠', '德惠市', '中国,吉林省,长春市,德惠市', 3, 'dehui', '0431', '130300', 'D', '125.70538', '44.53719'),
(597, 585, '吉林', '吉林市', '中国,吉林省,吉林市', 2, 'jilin', '0432', '132011', 'J', '126.55302', '43.843577'),
(598, 597, '昌邑', '昌邑区', '中国,吉林省,吉林市,昌邑区', 3, 'changyi', '0432', '132002', 'C', '126.57424', '43.88183'),
(599, 597, '龙潭', '龙潭区', '中国,吉林省,吉林市,龙潭区', 3, 'longtan', '0432', '132021', 'L', '126.56213', '43.91054'),
(600, 597, '船营', '船营区', '中国,吉林省,吉林市,船营区', 3, 'chuanying', '0432', '132011', 'C', '126.54096', '43.83344'),
(601, 597, '丰满', '丰满区', '中国,吉林省,吉林市,丰满区', 3, 'fengman', '0432', '132013', 'F', '126.56237', '43.82236'),
(602, 597, '永吉', '永吉县', '中国,吉林省,吉林市,永吉县', 3, 'yongji', '0432', '132200', 'Y', '126.4963', '43.67197'),
(603, 597, '蛟河', '蛟河市', '中国,吉林省,吉林市,蛟河市', 3, 'jiaohe', '0432', '132500', NULL, '127.34426', '43.72696'),
(604, 597, '桦甸', '桦甸市', '中国,吉林省,吉林市,桦甸市', 3, 'huadian', '0432', '132400', NULL, '126.74624', '42.97206'),
(605, 597, '舒兰', '舒兰市', '中国,吉林省,吉林市,舒兰市', 3, 'shulan', '0432', '132600', 'S', '126.9653', '44.40582'),
(606, 597, '磐石', '磐石市', '中国,吉林省,吉林市,磐石市', 3, 'panshi', '0432', '132300', 'P', '126.0625', '42.94628'),
(607, 585, '四平', '四平市', '中国,吉林省,四平市', 2, 'siping', '0434', '136000', 'S', '124.370785', '43.170344'),
(608, 607, '铁西', '铁西区', '中国,吉林省,四平市,铁西区', 3, 'tiexi', '0434', '136000', 'T', '124.37369', '43.17456'),
(609, 607, '铁东', '铁东区', '中国,吉林省,四平市,铁东区', 3, 'tiedong', '0434', '136001', 'T', '124.40976', '43.16241'),
(610, 607, '梨树', '梨树县', '中国,吉林省,四平市,梨树县', 3, 'lishu', '0434', '136500', 'L', '124.33563', '43.30717'),
(611, 607, '伊通', '伊通满族自治县', '中国,吉林省,四平市,伊通满族自治县', 3, 'yitong', '0434', '130700', 'Y', '125.30596', '43.34434'),
(612, 607, '公主岭', '公主岭市', '中国,吉林省,四平市,公主岭市', 3, 'gongzhuling', '0434', '136100', 'G', '124.82266', '43.50453'),
(613, 607, '双辽', '双辽市', '中国,吉林省,四平市,双辽市', 3, 'shuangliao', '0434', '136400', 'S', '123.50106', '43.52099'),
(614, 585, '辽源', '辽源市', '中国,吉林省,辽源市', 2, 'liaoyuan', '0437', '136200', 'L', '125.145349', '42.902692'),
(615, 614, '龙山', '龙山区', '中国,吉林省,辽源市,龙山区', 3, 'longshan', '0437', '136200', 'L', '125.13641', '42.89714'),
(616, 614, '西安', '西安区', '中国,吉林省,辽源市,西安区', 3, 'xi\'an', '0437', '136201', 'X', '125.14904', '42.927'),
(617, 614, '东丰', '东丰县', '中国,吉林省,辽源市,东丰县', 3, 'dongfeng', '0437', '136300', 'D', '125.53244', '42.6783'),
(618, 614, '东辽', '东辽县', '中国,吉林省,辽源市,东辽县', 3, 'dongliao', '0437', '136600', 'D', '124.98596', '42.92492'),
(619, 585, '通化', '通化市', '中国,吉林省,通化市', 2, 'tonghua', '0435', '134001', 'T', '125.936501', '41.721177'),
(620, 619, '东昌', '东昌区', '中国,吉林省,通化市,东昌区', 3, 'dongchang', '0435', '134001', 'D', '125.9551', '41.72849'),
(621, 619, '二道江', '二道江区', '中国,吉林省,通化市,二道江区', 3, 'erdaojiang', '0435', '134003', 'E', '126.04257', '41.7741'),
(622, 619, '通化', '通化县', '中国,吉林省,通化市,通化县', 3, 'tonghua', '0435', '134100', 'T', '125.75936', '41.67928'),
(623, 619, '辉南', '辉南县', '中国,吉林省,通化市,辉南县', 3, 'huinan', '0435', '135100', 'H', '126.04684', '42.68497'),
(624, 619, '柳河', '柳河县', '中国,吉林省,通化市,柳河县', 3, 'liuhe', '0435', '135300', 'L', '125.74475', '42.28468'),
(625, 619, '梅河口', '梅河口市', '中国,吉林省,通化市,梅河口市', 3, 'meihekou', '0435', '135000', 'M', '125.71041', '42.53828'),
(626, 619, '集安', '集安市', '中国,吉林省,通化市,集安市', 3, 'ji\'an', '0435', '134200', 'J', '126.18829', '41.12268'),
(627, 585, '白山', '白山市', '中国,吉林省,白山市', 2, 'baishan', '0439', '134300', 'B', '126.427839', '41.942505'),
(628, 627, '浑江', '浑江区', '中国,吉林省,白山市,浑江区', 3, 'hunjiang', '0439', '134300', 'H', '126.422342', '41.945656'),
(629, 627, '江源', '江源区', '中国,吉林省,白山市,江源区', 3, 'jiangyuan', '0439', '134700', 'J', '126.59079', '42.05664'),
(630, 627, '抚松', '抚松县', '中国,吉林省,白山市,抚松县', 3, 'fusong', '0439', '134500', 'F', '127.2803', '42.34198'),
(631, 627, '靖宇', '靖宇县', '中国,吉林省,白山市,靖宇县', 3, 'jingyu', '0439', '135200', 'J', '126.81308', '42.38863'),
(632, 627, '长白', '长白朝鲜族自治县', '中国,吉林省,白山市,长白朝鲜族自治县', 3, 'changbai', '0439', '134400', 'C', '128.20047', '41.41996'),
(633, 627, '临江', '临江市', '中国,吉林省,白山市,临江市', 3, 'linjiang', '0439', '134600', 'L', '126.91751', '41.81142'),
(634, 585, '松原', '松原市', '中国,吉林省,松原市', 2, 'songyuan', '0438', '138000', 'S', '124.823608', '45.118243'),
(635, 634, '宁江', '宁江区', '中国,吉林省,松原市,宁江区', 3, 'ningjiang', '0438', '138000', 'N', '124.81689', '45.17175'),
(636, 634, '前郭尔罗斯', '前郭尔罗斯蒙古族自治县', '中国,吉林省,松原市,前郭尔罗斯蒙古族自治县', 3, 'qianguoerluosi', '0438', '138000', 'Q', '124.82351', '45.11726'),
(637, 634, '长岭', '长岭县', '中国,吉林省,松原市,长岭县', 3, 'changling', '0438', '131500', 'C', '123.96725', '44.27581'),
(638, 634, '乾安', '乾安县', '中国,吉林省,松原市,乾安县', 3, 'qian\'an', '0438', '131400', 'Q', '124.02737', '45.01068'),
(639, 634, '扶余', '扶余市', '中国,吉林省,松原市,扶余市', 3, 'fuyu', '0438', '131200', 'F', '126.042758', '44.986199'),
(640, 585, '白城', '白城市', '中国,吉林省,白城市', 2, 'baicheng', '0436', '137000', 'B', '122.841114', '45.619026'),
(641, 640, '洮北', '洮北区', '中国,吉林省,白城市,洮北区', 3, 'taobei', '0436', '137000', NULL, '122.85104', '45.62167'),
(642, 640, '镇赉', '镇赉县', '中国,吉林省,白城市,镇赉县', 3, 'zhenlai', '0436', '137300', 'Z', '123.19924', '45.84779'),
(643, 640, '通榆', '通榆县', '中国,吉林省,白城市,通榆县', 3, 'tongyu', '0436', '137200', 'T', '123.08761', '44.81388'),
(644, 640, '洮南', '洮南市', '中国,吉林省,白城市,洮南市', 3, 'taonan', '0436', '137100', NULL, '122.78772', '45.33502'),
(645, 640, '大安', '大安市', '中国,吉林省,白城市,大安市', 3, 'da\'an', '0436', '131300', 'D', '124.29519', '45.50846'),
(646, 585, '延边', '延边朝鲜族自治州', '中国,吉林省,延边朝鲜族自治州', 2, 'yanbian', '0433', '133000', 'Y', '129.513228', '42.904823'),
(647, 646, '延吉', '延吉市', '中国,吉林省,延边朝鲜族自治州,延吉市', 3, 'yanji', '0433', '133000', 'Y', '129.51357', '42.90682'),
(648, 646, '图们', '图们市', '中国,吉林省,延边朝鲜族自治州,图们市', 3, 'tumen', '0433', '133100', 'T', '129.84381', '42.96801'),
(649, 646, '敦化', '敦化市', '中国,吉林省,延边朝鲜族自治州,敦化市', 3, 'dunhua', '0433', '133700', 'D', '128.23242', '43.37304'),
(650, 646, '珲春', '珲春市', '中国,吉林省,延边朝鲜族自治州,珲春市', 3, 'hunchun', '0433', '133300', NULL, '130.36572', '42.86242'),
(651, 646, '龙井', '龙井市', '中国,吉林省,延边朝鲜族自治州,龙井市', 3, 'longjing', '0433', '133400', 'L', '129.42584', '42.76804'),
(652, 646, '和龙', '和龙市', '中国,吉林省,延边朝鲜族自治州,和龙市', 3, 'helong', '0433', '133500', 'H', '129.01077', '42.5464'),
(653, 646, '汪清', '汪清县', '中国,吉林省,延边朝鲜族自治州,汪清县', 3, 'wangqing', '0433', '133200', 'W', '129.77121', '43.31278'),
(654, 646, '安图', '安图县', '中国,吉林省,延边朝鲜族自治州,安图县', 3, 'antu', '0433', '133600', 'A', '128.90625', '43.11533'),
(655, 0, '黑龙江', '黑龙江省', '中国,黑龙江省', 1, 'heilongjiang', '', '', 'H', '126.642464', '45.756967'),
(656, 655, '哈尔滨', '哈尔滨市', '中国,黑龙江省,哈尔滨市', 2, 'harbin', '0451', '150010', 'H', '126.642464', '45.756967'),
(657, 656, '道里', '道里区', '中国,黑龙江省,哈尔滨市,道里区', 3, 'daoli', '0451', '150010', 'D', '126.61705', '45.75586'),
(658, 656, '南岗', '南岗区', '中国,黑龙江省,哈尔滨市,南岗区', 3, 'nangang', '0451', '150006', 'N', '126.66854', '45.75996'),
(659, 656, '道外', '道外区', '中国,黑龙江省,哈尔滨市,道外区', 3, 'daowai', '0451', '150020', 'D', '126.64938', '45.79187'),
(660, 656, '平房', '平房区', '中国,黑龙江省,哈尔滨市,平房区', 3, 'pingfang', '0451', '150060', 'P', '126.63729', '45.59777'),
(661, 656, '松北', '松北区', '中国,黑龙江省,哈尔滨市,松北区', 3, 'songbei', '0451', '150028', 'S', '126.56276', '45.80831'),
(662, 656, '香坊', '香坊区', '中国,黑龙江省,哈尔滨市,香坊区', 3, 'xiangfang', '0451', '150036', 'X', '126.67968', '45.72383'),
(663, 656, '呼兰', '呼兰区', '中国,黑龙江省,哈尔滨市,呼兰区', 3, 'hulan', '0451', '150500', 'H', '126.58792', '45.88895'),
(664, 656, '阿城', '阿城区', '中国,黑龙江省,哈尔滨市,阿城区', 3, 'a\'cheng', '0451', '150300', 'A', '126.97525', '45.54144'),
(665, 656, '双城', '双城区', '中国,黑龙江省,哈尔滨市,双城区', 3, 'shuangcheng', '0451', '150100', 'S', '126.308784', '45.377942'),
(666, 656, '依兰', '依兰县', '中国,黑龙江省,哈尔滨市,依兰县', 3, 'yilan', '0451', '154800', 'Y', '129.56817', '46.3247'),
(667, 656, '方正', '方正县', '中国,黑龙江省,哈尔滨市,方正县', 3, 'fangzheng', '0451', '150800', 'F', '128.82952', '45.85162'),
(668, 656, '宾县', '宾县', '中国,黑龙江省,哈尔滨市,宾县', 3, 'binxian', '0451', '150400', 'B', '127.48675', '45.75504'),
(669, 656, '巴彦', '巴彦县', '中国,黑龙江省,哈尔滨市,巴彦县', 3, 'bayan', '0451', '151800', 'B', '127.40799', '46.08148'),
(670, 656, '木兰', '木兰县', '中国,黑龙江省,哈尔滨市,木兰县', 3, 'mulan', '0451', '151900', 'M', '128.0448', '45.94944'),
(671, 656, '通河', '通河县', '中国,黑龙江省,哈尔滨市,通河县', 3, 'tonghe', '0451', '150900', 'T', '128.74603', '45.99007'),
(672, 656, '延寿', '延寿县', '中国,黑龙江省,哈尔滨市,延寿县', 3, 'yanshou', '0451', '150700', 'Y', '128.33419', '45.4554'),
(673, 656, '尚志', '尚志市', '中国,黑龙江省,哈尔滨市,尚志市', 3, 'shangzhi', '0451', '150600', 'S', '127.96191', '45.21736'),
(674, 656, '五常', '五常市', '中国,黑龙江省,哈尔滨市,五常市', 3, 'wuchang', '0451', '150200', 'W', '127.16751', '44.93184'),
(675, 655, '齐齐哈尔', '齐齐哈尔市', '中国,黑龙江省,齐齐哈尔市', 2, 'qiqihar', '0452', '161005', 'Q', '123.953486', '47.348079'),
(676, 675, '龙沙', '龙沙区', '中国,黑龙江省,齐齐哈尔市,龙沙区', 3, 'longsha', '0452', '161000', 'L', '123.95752', '47.31776'),
(677, 675, '建华', '建华区', '中国,黑龙江省,齐齐哈尔市,建华区', 3, 'jianhua', '0452', '161006', 'J', '124.0133', '47.36718'),
(678, 675, '铁锋', '铁锋区', '中国,黑龙江省,齐齐哈尔市,铁锋区', 3, 'tiefeng', '0452', '161000', 'T', '123.97821', '47.34075'),
(679, 675, '昂昂溪', '昂昂溪区', '中国,黑龙江省,齐齐哈尔市,昂昂溪区', 3, 'angangxi', '0452', '161031', 'A', '123.82229', '47.15513'),
(680, 675, '富拉尔基', '富拉尔基区', '中国,黑龙江省,齐齐哈尔市,富拉尔基区', 3, 'fulaerji', '0452', '161041', 'F', '123.62918', '47.20884'),
(681, 675, '碾子山', '碾子山区', '中国,黑龙江省,齐齐哈尔市,碾子山区', 3, 'nianzishan', '0452', '161046', 'N', '122.88183', '47.51662'),
(682, 675, '梅里斯', '梅里斯达斡尔族区', '中国,黑龙江省,齐齐哈尔市,梅里斯达斡尔族区', 3, 'meilisi', '0452', '161021', 'M', '123.75274', '47.30946'),
(683, 675, '龙江', '龙江县', '中国,黑龙江省,齐齐哈尔市,龙江县', 3, 'longjiang', '0452', '161100', 'L', '123.20532', '47.33868'),
(684, 675, '依安', '依安县', '中国,黑龙江省,齐齐哈尔市,依安县', 3, 'yi\'an', '0452', '161500', 'Y', '125.30896', '47.8931'),
(685, 675, '泰来', '泰来县', '中国,黑龙江省,齐齐哈尔市,泰来县', 3, 'tailai', '0452', '162400', 'T', '123.42285', '46.39386'),
(686, 675, '甘南', '甘南县', '中国,黑龙江省,齐齐哈尔市,甘南县', 3, 'gannan', '0452', '162100', 'G', '123.50317', '47.92437'),
(687, 675, '富裕', '富裕县', '中国,黑龙江省,齐齐哈尔市,富裕县', 3, 'fuyu', '0452', '161200', 'F', '124.47457', '47.77431'),
(688, 675, '克山', '克山县', '中国,黑龙江省,齐齐哈尔市,克山县', 3, 'keshan', '0452', '161600', 'K', '125.87396', '48.03265'),
(689, 675, '克东', '克东县', '中国,黑龙江省,齐齐哈尔市,克东县', 3, 'kedong', '0452', '164800', 'K', '126.24917', '48.03828'),
(690, 675, '拜泉', '拜泉县', '中国,黑龙江省,齐齐哈尔市,拜泉县', 3, 'baiquan', '0452', '164700', 'B', '126.09167', '47.60817'),
(691, 675, '讷河', '讷河市', '中国,黑龙江省,齐齐哈尔市,讷河市', 3, 'nehe', '0452', '161300', NULL, '124.87713', '48.48388'),
(692, 655, '鸡西', '鸡西市', '中国,黑龙江省,鸡西市', 2, 'jixi', '0467', '158100', 'J', '130.975966', '45.300046'),
(693, 692, '鸡冠', '鸡冠区', '中国,黑龙江省,鸡西市,鸡冠区', 3, 'jiguan', '0467', '158100', 'J', '130.98139', '45.30396'),
(694, 692, '恒山', '恒山区', '中国,黑龙江省,鸡西市,恒山区', 3, 'hengshan', '0467', '158130', 'H', '130.90493', '45.21071'),
(695, 692, '滴道', '滴道区', '中国,黑龙江省,鸡西市,滴道区', 3, 'didao', '0467', '158150', 'D', '130.84841', '45.35109'),
(696, 692, '梨树', '梨树区', '中国,黑龙江省,鸡西市,梨树区', 3, 'lishu', '0467', '158160', 'L', '130.69848', '45.09037'),
(697, 692, '城子河', '城子河区', '中国,黑龙江省,鸡西市,城子河区', 3, 'chengzihe', '0467', '158170', 'C', '131.01132', '45.33689'),
(698, 692, '麻山', '麻山区', '中国,黑龙江省,鸡西市,麻山区', 3, 'mashan', '0467', '158180', 'M', '130.47811', '45.21209'),
(699, 692, '鸡东', '鸡东县', '中国,黑龙江省,鸡西市,鸡东县', 3, 'jidong', '0467', '158200', 'J', '131.12423', '45.26025'),
(700, 692, '虎林', '虎林市', '中国,黑龙江省,鸡西市,虎林市', 3, 'hulin', '0467', '158400', 'H', '132.93679', '45.76291'),
(701, 692, '密山', '密山市', '中国,黑龙江省,鸡西市,密山市', 3, 'mishan', '0467', '158300', 'M', '131.84625', '45.5297'),
(702, 655, '鹤岗', '鹤岗市', '中国,黑龙江省,鹤岗市', 2, 'hegang', '0468', '154100', 'H', '130.277487', '47.332085'),
(703, 702, '向阳', '向阳区', '中国,黑龙江省,鹤岗市,向阳区', 3, 'xiangyang', '0468', '154100', 'X', '130.2943', '47.34247'),
(704, 702, '工农', '工农区', '中国,黑龙江省,鹤岗市,工农区', 3, 'gongnong', '0468', '154101', 'G', '130.27468', '47.31869'),
(705, 702, '南山', '南山区', '中国,黑龙江省,鹤岗市,南山区', 3, 'nanshan', '0468', '154104', 'N', '130.27676', '47.31404'),
(706, 702, '兴安', '兴安区', '中国,黑龙江省,鹤岗市,兴安区', 3, 'xing\'an', '0468', '154102', 'X', '130.23965', '47.2526'),
(707, 702, '东山', '东山区', '中国,黑龙江省,鹤岗市,东山区', 3, 'dongshan', '0468', '154106', 'D', '130.31706', '47.33853'),
(708, 702, '兴山', '兴山区', '中国,黑龙江省,鹤岗市,兴山区', 3, 'xingshan', '0468', '154105', 'X', '130.29271', '47.35776'),
(709, 702, '萝北', '萝北县', '中国,黑龙江省,鹤岗市,萝北县', 3, 'luobei', '0468', '154200', 'L', '130.83346', '47.57959'),
(710, 702, '绥滨', '绥滨县', '中国,黑龙江省,鹤岗市,绥滨县', 3, 'suibin', '0468', '156200', 'S', '131.86029', '47.2903'),
(711, 655, '双鸭山', '双鸭山市', '中国,黑龙江省,双鸭山市', 2, 'shuangyashan', '0469', '155100', 'S', '131.157304', '46.643442'),
(712, 711, '尖山', '尖山区', '中国,黑龙江省,双鸭山市,尖山区', 3, 'jianshan', '0469', '155100', 'J', '131.15841', '46.64635'),
(713, 711, '岭东', '岭东区', '中国,黑龙江省,双鸭山市,岭东区', 3, 'lingdong', '0469', '155120', 'L', '131.16473', '46.59043'),
(714, 711, '四方台', '四方台区', '中国,黑龙江省,双鸭山市,四方台区', 3, 'sifangtai', '0469', '155130', 'S', '131.33593', '46.59499'),
(715, 711, '宝山', '宝山区', '中国,黑龙江省,双鸭山市,宝山区', 3, 'baoshan', '0469', '155131', 'B', '131.4016', '46.57718'),
(716, 711, '集贤', '集贤县', '中国,黑龙江省,双鸭山市,集贤县', 3, 'jixian', '0469', '155900', 'J', '131.14053', '46.72678'),
(717, 711, '友谊', '友谊县', '中国,黑龙江省,双鸭山市,友谊县', 3, 'youyi', '0469', '155800', 'Y', '131.80789', '46.76739'),
(718, 711, '宝清', '宝清县', '中国,黑龙江省,双鸭山市,宝清县', 3, 'baoqing', '0469', '155600', 'B', '132.19695', '46.32716'),
(719, 711, '饶河', '饶河县', '中国,黑龙江省,双鸭山市,饶河县', 3, 'raohe', '0469', '155700', 'R', '134.01986', '46.79899'),
(720, 655, '大庆', '大庆市', '中国,黑龙江省,大庆市', 2, 'daqing', '0459', '163000', 'D', '125.11272', '46.590734'),
(721, 720, '萨尔图', '萨尔图区', '中国,黑龙江省,大庆市,萨尔图区', 3, 'saertu', '0459', '163001', 'S', '125.08792', '46.59359'),
(722, 720, '龙凤', '龙凤区', '中国,黑龙江省,大庆市,龙凤区', 3, 'longfeng', '0459', '163711', 'L', '125.11657', '46.53273'),
(723, 720, '让胡路', '让胡路区', '中国,黑龙江省,大庆市,让胡路区', 3, 'ranghulu', '0459', '163712', 'R', '124.87075', '46.6522'),
(724, 720, '红岗', '红岗区', '中国,黑龙江省,大庆市,红岗区', 3, 'honggang', '0459', '163511', 'H', '124.89248', '46.40128'),
(725, 720, '大同', '大同区', '中国,黑龙江省,大庆市,大同区', 3, 'datong', '0459', '163515', 'D', '124.81591', '46.03295'),
(726, 720, '肇州', '肇州县', '中国,黑龙江省,大庆市,肇州县', 3, 'zhaozhou', '0459', '166400', 'Z', '125.27059', '45.70414'),
(727, 720, '肇源', '肇源县', '中国,黑龙江省,大庆市,肇源县', 3, 'zhaoyuan', '0459', '166500', 'Z', '125.08456', '45.52032'),
(728, 720, '林甸', '林甸县', '中国,黑龙江省,大庆市,林甸县', 3, 'lindian', '0459', '166300', 'L', '124.87564', '47.18601'),
(729, 720, '杜尔伯特', '杜尔伯特蒙古族自治县', '中国,黑龙江省,大庆市,杜尔伯特蒙古族自治县', 3, 'duerbote', '0459', '166200', 'D', '124.44937', '46.86507'),
(730, 655, '伊春', '伊春市', '中国,黑龙江省,伊春市', 2, 'yichun', '0458', '153000', 'Y', '128.899396', '47.724775'),
(731, 730, '伊春', '伊春区', '中国,黑龙江省,伊春市,伊春区', 3, 'yichun', '0458', '153000', 'Y', '128.90752', '47.728'),
(732, 730, '南岔', '南岔区', '中国,黑龙江省,伊春市,南岔区', 3, 'nancha', '0458', '153100', 'N', '129.28362', '47.13897'),
(733, 730, '友好', '友好区', '中国,黑龙江省,伊春市,友好区', 3, 'youhao', '0458', '153031', 'Y', '128.84039', '47.85371'),
(734, 730, '西林', '西林区', '中国,黑龙江省,伊春市,西林区', 3, 'xilin', '0458', '153025', 'X', '129.31201', '47.48103'),
(735, 730, '翠峦', '翠峦区', '中国,黑龙江省,伊春市,翠峦区', 3, 'cuiluan', '0458', '153013', 'C', '128.66729', '47.72503'),
(736, 730, '新青', '新青区', '中国,黑龙江省,伊春市,新青区', 3, 'xinqing', '0458', '153036', 'X', '129.53653', '48.29067'),
(737, 730, '美溪', '美溪区', '中国,黑龙江省,伊春市,美溪区', 3, 'meixi', '0458', '153021', 'M', '129.13708', '47.63513'),
(738, 730, '金山屯', '金山屯区', '中国,黑龙江省,伊春市,金山屯区', 3, 'jinshantun', '0458', '153026', 'J', '129.43768', '47.41349'),
(739, 730, '五营', '五营区', '中国,黑龙江省,伊春市,五营区', 3, 'wuying', '0458', '153033', 'W', '129.24545', '48.10791'),
(740, 730, '乌马河', '乌马河区', '中国,黑龙江省,伊春市,乌马河区', 3, 'wumahe', '0458', '153011', 'W', '128.79672', '47.728'),
(741, 730, '汤旺河', '汤旺河区', '中国,黑龙江省,伊春市,汤旺河区', 3, 'tangwanghe', '0458', '153037', 'T', '129.57226', '48.45182'),
(742, 730, '带岭', '带岭区', '中国,黑龙江省,伊春市,带岭区', 3, 'dailing', '0458', '153106', 'D', '129.02352', '47.02553'),
(743, 730, '乌伊岭', '乌伊岭区', '中国,黑龙江省,伊春市,乌伊岭区', 3, 'wuyiling', '0458', '153038', 'W', '129.43981', '48.59602'),
(744, 730, '红星', '红星区', '中国,黑龙江省,伊春市,红星区', 3, 'hongxing', '0458', '153035', 'H', '129.3887', '48.23944'),
(745, 730, '上甘岭', '上甘岭区', '中国,黑龙江省,伊春市,上甘岭区', 3, 'shangganling', '0458', '153032', 'S', '129.02447', '47.97522'),
(746, 730, '嘉荫', '嘉荫县', '中国,黑龙江省,伊春市,嘉荫县', 3, 'jiayin', '0458', '153200', 'J', '130.39825', '48.8917'),
(747, 730, '铁力', '铁力市', '中国,黑龙江省,伊春市,铁力市', 3, 'tieli', '0458', '152500', 'T', '128.0317', '46.98571'),
(748, 655, '佳木斯', '佳木斯市', '中国,黑龙江省,佳木斯市', 2, 'jiamusi', '0454', '154002', 'J', '130.361634', '46.809606'),
(749, 748, '向阳', '向阳区', '中国,黑龙江省,佳木斯市,向阳区', 3, 'xiangyang', '0454', '154002', 'X', '130.36519', '46.80778'),
(750, 748, '前进', '前进区', '中国,黑龙江省,佳木斯市,前进区', 3, 'qianjin', '0454', '154002', 'Q', '130.37497', '46.81401'),
(751, 748, '东风', '东风区', '中国,黑龙江省,佳木斯市,东风区', 3, 'dongfeng', '0454', '154005', 'D', '130.40366', '46.82257'),
(752, 748, '郊区', '郊区', '中国,黑龙江省,佳木斯市,郊区', 3, 'jiaoqu', '0454', '154004', 'J', '130.32731', '46.80958'),
(753, 748, '桦南', '桦南县', '中国,黑龙江省,佳木斯市,桦南县', 3, 'huanan', '0454', '154400', NULL, '130.55361', '46.23921'),
(754, 748, '桦川', '桦川县', '中国,黑龙江省,佳木斯市,桦川县', 3, 'huachuan', '0454', '154300', NULL, '130.71893', '47.02297'),
(755, 748, '汤原', '汤原县', '中国,黑龙江省,佳木斯市,汤原县', 3, 'tangyuan', '0454', '154700', 'T', '129.90966', '46.72755'),
(756, 748, '抚远', '抚远县', '中国,黑龙江省,佳木斯市,抚远县', 3, 'fuyuan', '0454', '156500', 'F', '134.29595', '48.36794'),
(757, 748, '同江', '同江市', '中国,黑龙江省,佳木斯市,同江市', 3, 'tongjiang', '0454', '156400', 'T', '132.51095', '47.64211'),
(758, 748, '富锦', '富锦市', '中国,黑龙江省,佳木斯市,富锦市', 3, 'fujin', '0454', '156100', 'F', '132.03707', '47.25132'),
(759, 655, '七台河', '七台河市', '中国,黑龙江省,七台河市', 2, 'qitaihe', '0464', '154600', 'Q', '131.015584', '45.771266'),
(760, 759, '新兴', '新兴区', '中国,黑龙江省,七台河市,新兴区', 3, 'xinxing', '0464', '154604', 'X', '130.93212', '45.81624'),
(761, 759, '桃山', '桃山区', '中国,黑龙江省,七台河市,桃山区', 3, 'taoshan', '0464', '154600', 'T', '131.01786', '45.76782'),
(762, 759, '茄子河', '茄子河区', '中国,黑龙江省,七台河市,茄子河区', 3, 'qiezihe', '0464', '154622', 'Q', '131.06807', '45.78519'),
(763, 759, '勃利', '勃利县', '中国,黑龙江省,七台河市,勃利县', 3, 'boli', '0464', '154500', 'B', '130.59179', '45.755'),
(764, 655, '牡丹江', '牡丹江市', '中国,黑龙江省,牡丹江市', 2, 'mudanjiang', '0453', '157000', 'M', '129.618602', '44.582962'),
(765, 764, '东安', '东安区', '中国,黑龙江省,牡丹江市,东安区', 3, 'dong\'an', '0453', '157000', 'D', '129.62665', '44.58133'),
(766, 764, '阳明', '阳明区', '中国,黑龙江省,牡丹江市,阳明区', 3, 'yangming', '0453', '157013', 'Y', '129.63547', '44.59603'),
(767, 764, '爱民', '爱民区', '中国,黑龙江省,牡丹江市,爱民区', 3, 'aimin', '0453', '157009', 'A', '129.59077', '44.59648'),
(768, 764, '西安', '西安区', '中国,黑龙江省,牡丹江市,西安区', 3, 'xi\'an', '0453', '157000', 'X', '129.61616', '44.57766'),
(769, 764, '东宁', '东宁县', '中国,黑龙江省,牡丹江市,东宁县', 3, 'dongning', '0453', '157200', 'D', '131.12793', '44.0661'),
(770, 764, '林口', '林口县', '中国,黑龙江省,牡丹江市,林口县', 3, 'linkou', '0453', '157600', 'L', '130.28393', '45.27809'),
(771, 764, '绥芬河', '绥芬河市', '中国,黑龙江省,牡丹江市,绥芬河市', 3, 'suifenhe', '0453', '157300', 'S', '131.15139', '44.41249'),
(772, 764, '海林', '海林市', '中国,黑龙江省,牡丹江市,海林市', 3, 'hailin', '0453', '157100', 'H', '129.38156', '44.59'),
(773, 764, '宁安', '宁安市', '中国,黑龙江省,牡丹江市,宁安市', 3, 'ning\'an', '0453', '157400', 'N', '129.48303', '44.34016'),
(774, 764, '穆棱', '穆棱市', '中国,黑龙江省,牡丹江市,穆棱市', 3, 'muling', '0453', '157500', 'M', '130.52465', '44.919'),
(775, 655, '黑河', '黑河市', '中国,黑龙江省,黑河市', 2, 'heihe', '0456', '164300', 'H', '127.499023', '50.249585'),
(776, 775, '爱辉', '爱辉区', '中国,黑龙江省,黑河市,爱辉区', 3, 'aihui', '0456', '164300', 'A', '127.50074', '50.25202'),
(777, 775, '嫩江', '嫩江县', '中国,黑龙江省,黑河市,嫩江县', 3, 'nenjiang', '0456', '161400', 'N', '125.22607', '49.17844'),
(778, 775, '逊克', '逊克县', '中国,黑龙江省,黑河市,逊克县', 3, 'xunke', '0456', '164400', 'X', '128.47882', '49.57983'),
(779, 775, '孙吴', '孙吴县', '中国,黑龙江省,黑河市,孙吴县', 3, 'sunwu', '0456', '164200', 'S', '127.33599', '49.42539'),
(780, 775, '北安', '北安市', '中国,黑龙江省,黑河市,北安市', 3, 'bei\'an', '0456', '164000', 'B', '126.48193', '48.23872'),
(781, 775, '五大连池', '五大连池市', '中国,黑龙江省,黑河市,五大连池市', 3, 'wudalianchi', '0456', '164100', 'W', '126.20294', '48.51507'),
(782, 655, '绥化', '绥化市', '中国,黑龙江省,绥化市', 2, 'suihua', '0455', '152000', 'S', '126.99293', '46.637393'),
(783, 782, '北林', '北林区', '中国,黑龙江省,绥化市,北林区', 3, 'beilin', '0455', '152000', 'B', '126.98564', '46.63735'),
(784, 782, '望奎', '望奎县', '中国,黑龙江省,绥化市,望奎县', 3, 'wangkui', '0455', '152100', 'W', '126.48187', '46.83079'),
(785, 782, '兰西', '兰西县', '中国,黑龙江省,绥化市,兰西县', 3, 'lanxi', '0455', '151500', 'L', '126.28994', '46.2525'),
(786, 782, '青冈', '青冈县', '中国,黑龙江省,绥化市,青冈县', 3, 'qinggang', '0455', '151600', 'Q', '126.11325', '46.68534'),
(787, 782, '庆安', '庆安县', '中国,黑龙江省,绥化市,庆安县', 3, 'qing\'an', '0455', '152400', 'Q', '127.50753', '46.88016'),
(788, 782, '明水', '明水县', '中国,黑龙江省,绥化市,明水县', 3, 'mingshui', '0455', '151700', 'M', '125.90594', '47.17327'),
(789, 782, '绥棱', '绥棱县', '中国,黑龙江省,绥化市,绥棱县', 3, 'suileng', '0455', '152200', 'S', '127.11584', '47.24267'),
(790, 782, '安达', '安达市', '中国,黑龙江省,绥化市,安达市', 3, 'anda', '0455', '151400', 'A', '125.34375', '46.4177'),
(791, 782, '肇东', '肇东市', '中国,黑龙江省,绥化市,肇东市', 3, 'zhaodong', '0455', '151100', 'Z', '125.96243', '46.05131'),
(792, 782, '海伦', '海伦市', '中国,黑龙江省,绥化市,海伦市', 3, 'hailun', '0455', '152300', 'H', '126.9682', '47.46093'),
(793, 655, '大兴安岭', '大兴安岭地区', '中国,黑龙江省,大兴安岭地区', 2, 'daxinganling', '0457', '165000', 'D', '124.711526', '52.335262'),
(794, 793, '加格达奇', '加格达奇区', '中国,黑龙江省,大兴安岭地区,加格达奇区', 3, 'jiagedaqi', '0457', '165000', 'J', '124.30954', '51.98144'),
(795, 793, '新林', '新林区', '中国,黑龙江省,大兴安岭地区,新林区', 3, 'xinlin', '0457', '165000', 'X', '124.397983', '51.67341'),
(796, 793, '松岭', '松岭区', '中国,黑龙江省,大兴安岭地区,松岭区', 3, 'songling', '0457', '165000', 'S', '124.189713', '51.985453'),
(797, 793, '呼中', '呼中区', '中国,黑龙江省,大兴安岭地区,呼中区', 3, 'huzhong', '0457', '165000', 'H', '123.60009', '52.03346'),
(798, 793, '呼玛', '呼玛县', '中国,黑龙江省,大兴安岭地区,呼玛县', 3, 'huma', '0457', '165100', 'H', '126.66174', '51.73112'),
(799, 793, '塔河', '塔河县', '中国,黑龙江省,大兴安岭地区,塔河县', 3, 'tahe', '0457', '165200', 'T', '124.70999', '52.33431'),
(800, 793, '漠河', '漠河县', '中国,黑龙江省,大兴安岭地区,漠河县', 3, 'mohe', '0457', '165300', 'M', '122.53759', '52.97003'),
(801, 0, '上海', '上海', '中国,上海', 1, 'shanghai', '', '', 'S', '121.472644', '31.231706'),
(802, 801, '上海', '上海市', '中国,上海,上海市', 2, 'shanghai', '021', '200000', 'S', '121.472644', '31.231706'),
(803, 802, '黄浦', '黄浦区', '中国,上海,上海市,黄浦区', 3, 'huangpu', '021', '200001', 'H', '121.49295', '31.22337'),
(804, 802, '徐汇', '徐汇区', '中国,上海,上海市,徐汇区', 3, 'xuhui', '021', '200030', 'X', '121.43676', '31.18831'),
(805, 802, '长宁', '长宁区', '中国,上海,上海市,长宁区', 3, 'changning', '021', '200050', 'C', '121.42462', '31.22036'),
(806, 802, '静安', '静安区', '中国,上海,上海市,静安区', 3, 'jing\'an', '021', '200040', 'J', '121.4444', '31.22884'),
(807, 802, '普陀', '普陀区', '中国,上海,上海市,普陀区', 3, 'putuo', '021', '200333', 'P', '121.39703', '31.24951'),
(808, 802, '闸北', '闸北区', '中国,上海,上海市,闸北区', 3, 'zhabei', '021', '200070', 'Z', '121.44636', '31.28075'),
(809, 802, '虹口', '虹口区', '中国,上海,上海市,虹口区', 3, 'hongkou', '021', '200086', 'H', '121.48162', '31.27788'),
(810, 802, '杨浦', '杨浦区', '中国,上海,上海市,杨浦区', 3, 'yangpu', '021', '200082', 'Y', '121.526', '31.2595'),
(811, 802, '闵行', '闵行区', '中国,上海,上海市,闵行区', 3, 'minhang', '021', '201100', NULL, '121.38162', '31.11246'),
(812, 802, '宝山', '宝山区', '中国,上海,上海市,宝山区', 3, 'baoshan', '021', '201900', 'B', '121.4891', '31.4045'),
(813, 802, '嘉定', '嘉定区', '中国,上海,上海市,嘉定区', 3, 'jiading', '021', '201800', 'J', '121.2655', '31.37473'),
(814, 802, '浦东', '浦东新区', '中国,上海,上海市,浦东新区', 3, 'pudong', '021', '200135', 'P', '121.5447', '31.22249'),
(815, 802, '金山', '金山区', '中国,上海,上海市,金山区', 3, 'jinshan', '021', '200540', 'J', '121.34164', '30.74163'),
(816, 802, '松江', '松江区', '中国,上海,上海市,松江区', 3, 'songjiang', '021', '201600', 'S', '121.22879', '31.03222'),
(817, 802, '青浦', '青浦区', '中国,上海,上海市,青浦区', 3, 'qingpu', '021', '201700', 'Q', '121.12417', '31.14974'),
(818, 802, '奉贤', '奉贤区', '中国,上海,上海市,奉贤区', 3, 'fengxian', '021', '201400', 'F', '121.47412', '30.9179'),
(819, 802, '崇明', '崇明县', '中国,上海,上海市,崇明县', 3, 'chongming', '021', '202150', 'C', '121.39758', '31.62278'),
(820, 0, '江苏', '江苏省', '中国,江苏省', 1, 'jiangsu', '', '', 'J', '118.767413', '32.041544'),
(821, 820, '南京', '南京市', '中国,江苏省,南京市', 2, 'nanjing', '025', '210008', 'N', '118.767413', '32.041544'),
(822, 821, '玄武', '玄武区', '中国,江苏省,南京市,玄武区', 3, 'xuanwu', '025', '210018', 'X', '118.79772', '32.04856'),
(823, 821, '秦淮', '秦淮区', '中国,江苏省,南京市,秦淮区', 3, 'qinhuai', '025', '210001', 'Q', '118.79815', '32.01112'),
(824, 821, '建邺', '建邺区', '中国,江苏省,南京市,建邺区', 3, 'jianye', '025', '210004', 'J', '118.76641', '32.03096'),
(825, 821, '鼓楼', '鼓楼区', '中国,江苏省,南京市,鼓楼区', 3, 'gulou', '025', '210009', 'G', '118.76974', '32.06632'),
(826, 821, '浦口', '浦口区', '中国,江苏省,南京市,浦口区', 3, 'pukou', '025', '211800', 'P', '118.62802', '32.05881'),
(827, 821, '栖霞', '栖霞区', '中国,江苏省,南京市,栖霞区', 3, 'qixia', '025', '210046', 'Q', '118.88064', '32.11352'),
(828, 821, '雨花台', '雨花台区', '中国,江苏省,南京市,雨花台区', 3, 'yuhuatai', '025', '210012', 'Y', '118.7799', '31.99202'),
(829, 821, '江宁', '江宁区', '中国,江苏省,南京市,江宁区', 3, 'jiangning', '025', '211100', 'J', '118.8399', '31.95263'),
(830, 821, '六合', '六合区', '中国,江苏省,南京市,六合区', 3, 'luhe', '025', '211500', 'L', '118.8413', '32.34222'),
(831, 821, '溧水', '溧水区', '中国,江苏省,南京市,溧水区', 3, 'lishui', '025', '211200', NULL, '119.028732', '31.653061'),
(832, 821, '高淳', '高淳区', '中国,江苏省,南京市,高淳区', 3, 'gaochun', '025', '211300', 'G', '118.87589', '31.327132'),
(833, 820, '无锡', '无锡市', '中国,江苏省,无锡市', 2, 'wuxi', '0510', '214000', 'W', '120.301663', '31.574729'),
(834, 833, '崇安', '崇安区', '中国,江苏省,无锡市,崇安区', 3, 'chong\'an', '0510', '214001', 'C', '120.29975', '31.58002'),
(835, 833, '南长', '南长区', '中国,江苏省,无锡市,南长区', 3, 'nanchang', '0510', '214021', 'N', '120.30873', '31.56359'),
(836, 833, '北塘', '北塘区', '中国,江苏省,无锡市,北塘区', 3, 'beitang', '0510', '214044', 'B', '120.29405', '31.60592'),
(837, 833, '锡山', '锡山区', '中国,江苏省,无锡市,锡山区', 3, 'xishan', '0510', '214101', 'X', '120.35699', '31.5886'),
(838, 833, '惠山', '惠山区', '中国,江苏省,无锡市,惠山区', 3, 'huishan', '0510', '214174', 'H', '120.29849', '31.68088'),
(839, 833, '滨湖', '滨湖区', '中国,江苏省,无锡市,滨湖区', 3, 'binhu', '0510', '214123', 'B', '120.29461', '31.52162'),
(840, 833, '江阴', '江阴市', '中国,江苏省,无锡市,江阴市', 3, 'jiangyin', '0510', '214431', 'J', '120.2853', '31.91996'),
(841, 833, '宜兴', '宜兴市', '中国,江苏省,无锡市,宜兴市', 3, 'yixing', '0510', '214200', 'Y', '119.82357', '31.33978'),
(842, 820, '徐州', '徐州市', '中国,江苏省,徐州市', 2, 'xuzhou', '0516', '221003', 'X', '117.184811', '34.261792'),
(843, 842, '鼓楼', '鼓楼区', '中国,江苏省,徐州市,鼓楼区', 3, 'gulou', '0516', '221005', 'G', '117.18559', '34.28851'),
(844, 842, '云龙', '云龙区', '中国,江苏省,徐州市,云龙区', 3, 'yunlong', '0516', '221007', 'Y', '117.23053', '34.24895'),
(845, 842, '贾汪', '贾汪区', '中国,江苏省,徐州市,贾汪区', 3, 'jiawang', '0516', '221003', 'J', '117.45346', '34.44264'),
(846, 842, '泉山', '泉山区', '中国,江苏省,徐州市,泉山区', 3, 'quanshan', '0516', '221006', 'Q', '117.19378', '34.24418'),
(847, 842, '铜山', '铜山区', '中国,江苏省,徐州市,铜山区', 3, 'tongshan', '0516', '221106', 'T', '117.183894', '34.19288'),
(848, 842, '丰县', '丰县', '中国,江苏省,徐州市,丰县', 3, 'fengxian', '0516', '221700', 'F', '116.59957', '34.69972'),
(849, 842, '沛县', '沛县', '中国,江苏省,徐州市,沛县', 3, 'peixian', '0516', '221600', 'P', '116.93743', '34.72163'),
(850, 842, '睢宁', '睢宁县', '中国,江苏省,徐州市,睢宁县', 3, 'suining', '0516', '221200', NULL, '117.94104', '33.91269'),
(851, 842, '新沂', '新沂市', '中国,江苏省,徐州市,新沂市', 3, 'xinyi', '0516', '221400', 'X', '118.35452', '34.36942'),
(852, 842, '邳州', '邳州市', '中国,江苏省,徐州市,邳州市', 3, 'pizhou', '0516', '221300', NULL, '117.95858', '34.33329'),
(853, 820, '常州', '常州市', '中国,江苏省,常州市', 2, 'changzhou', '0519', '213000', 'C', '119.946973', '31.772752'),
(854, 853, '天宁', '天宁区', '中国,江苏省,常州市,天宁区', 3, 'tianning', '0519', '213000', 'T', '119.95132', '31.75211'),
(855, 853, '钟楼', '钟楼区', '中国,江苏省,常州市,钟楼区', 3, 'zhonglou', '0519', '213023', 'Z', '119.90178', '31.80221'),
(856, 853, '戚墅堰', '戚墅堰区', '中国,江苏省,常州市,戚墅堰区', 3, 'qishuyan', '0519', '213025', 'Q', '120.06106', '31.71956'),
(857, 853, '新北', '新北区', '中国,江苏省,常州市,新北区', 3, 'xinbei', '0519', '213022', 'X', '119.97131', '31.83046'),
(858, 853, '武进', '武进区', '中国,江苏省,常州市,武进区', 3, 'wujin', '0519', '213100', 'W', '119.94244', '31.70086'),
(859, 853, '溧阳', '溧阳市', '中国,江苏省,常州市,溧阳市', 3, 'liyang', '0519', '213300', NULL, '119.4837', '31.41538'),
(860, 853, '金坛', '金坛市', '中国,江苏省,常州市,金坛市', 3, 'jintan', '0519', '213200', 'J', '119.57757', '31.74043'),
(861, 820, '苏州', '苏州市', '中国,江苏省,苏州市', 2, 'suzhou', '0512', '215002', 'S', '120.619585', '31.299379'),
(862, 861, '虎丘', '虎丘区', '中国,江苏省,苏州市,虎丘区', 3, 'huqiu', '0512', '215004', 'H', '120.57345', '31.2953'),
(863, 861, '吴中', '吴中区', '中国,江苏省,苏州市,吴中区', 3, 'wuzhong', '0512', '215128', 'W', '120.63211', '31.26226'),
(864, 861, '相城', '相城区', '中国,江苏省,苏州市,相城区', 3, 'xiangcheng', '0512', '215131', 'X', '120.64239', '31.36889'),
(865, 861, '姑苏', '姑苏区', '中国,江苏省,苏州市,姑苏区', 3, 'gusu', '0512', '215031', 'G', '120.619585', '31.299379'),
(866, 861, '吴江', '吴江区', '中国,江苏省,苏州市,吴江区', 3, 'wujiang', '0512', '215200', 'W', '120.638317', '31.159815'),
(867, 861, '常熟', '常熟市', '中国,江苏省,苏州市,常熟市', 3, 'changshu', '0512', '215500', 'C', '120.75225', '31.65374'),
(868, 861, '张家港', '张家港市', '中国,江苏省,苏州市,张家港市', 3, 'zhangjiagang', '0512', '215600', 'Z', '120.55538', '31.87532'),
(869, 861, '昆山', '昆山市', '中国,江苏省,苏州市,昆山市', 3, 'kunshan', '0512', '215300', 'K', '120.98074', '31.38464'),
(870, 861, '太仓', '太仓市', '中国,江苏省,苏州市,太仓市', 3, 'taicang', '0512', '215400', 'T', '121.10891', '31.4497'),
(871, 820, '南通', '南通市', '中国,江苏省,南通市', 2, 'nantong', '0513', '226001', 'N', '120.864608', '32.016212'),
(872, 871, '崇川', '崇川区', '中国,江苏省,南通市,崇川区', 3, 'chongchuan', '0513', '226001', 'C', '120.8573', '32.0098'),
(873, 871, '港闸', '港闸区', '中国,江苏省,南通市,港闸区', 3, 'gangzha', '0513', '226001', 'G', '120.81778', '32.03163'),
(874, 871, '通州', '通州区', '中国,江苏省,南通市,通州区', 3, 'tongzhou', '0513', '226300', 'T', '121.07293', '32.0676'),
(875, 871, '海安', '海安县', '中国,江苏省,南通市,海安县', 3, 'hai\'an', '0513', '226600', 'H', '120.45852', '32.54514'),
(876, 871, '如东', '如东县', '中国,江苏省,南通市,如东县', 3, 'rudong', '0513', '226400', 'R', '121.18942', '32.31439'),
(877, 871, '启东', '启东市', '中国,江苏省,南通市,启东市', 3, 'qidong', '0513', '226200', 'Q', '121.65985', '31.81083'),
(878, 871, '如皋', '如皋市', '中国,江苏省,南通市,如皋市', 3, 'rugao', '0513', '226500', 'R', '120.55969', '32.37597'),
(879, 871, '海门', '海门市', '中国,江苏省,南通市,海门市', 3, 'haimen', '0513', '226100', 'H', '121.16995', '31.89422'),
(880, 820, '连云港', '连云港市', '中国,江苏省,连云港市', 2, 'lianyungang', '0518', '222002', 'L', '119.178821', '34.600018'),
(881, 880, '连云', '连云区', '中国,江苏省,连云港市,连云区', 3, 'lianyun', '0518', '222042', 'L', '119.37304', '34.75293'),
(882, 880, '海州', '海州区', '中国,江苏省,连云港市,海州区', 3, 'haizhou', '0518', '222003', 'H', '119.13128', '34.56986'),
(883, 880, '赣榆', '赣榆区', '中国,江苏省,连云港市,赣榆区', 3, 'ganyu', '0518', '222100', 'G', '119.128774', '34.839154'),
(884, 880, '东海', '东海县', '中国,江苏省,连云港市,东海县', 3, 'donghai', '0518', '222300', 'D', '118.77145', '34.54215'),
(885, 880, '灌云', '灌云县', '中国,江苏省,连云港市,灌云县', 3, 'guanyun', '0518', '222200', 'G', '119.23925', '34.28391'),
(886, 880, '灌南', '灌南县', '中国,江苏省,连云港市,灌南县', 3, 'guannan', '0518', '222500', 'G', '119.35632', '34.09'),
(887, 820, '淮安', '淮安市', '中国,江苏省,淮安市', 2, 'huai\'an', '0517', '223001', 'H', '119.021265', '33.597506'),
(888, 887, '清河', '清河区', '中国,江苏省,淮安市,清河区', 3, 'qinghe', '0517', '223001', 'Q', '119.00778', '33.59949'),
(889, 887, '淮安', '淮安区', '中国,江苏省,淮安市,淮安区', 3, 'huai\'an', '0517', '223200', 'H', '119.021265', '33.597506'),
(890, 887, '淮阴', '淮阴区', '中国,江苏省,淮安市,淮阴区', 3, 'huaiyin', '0517', '223300', 'H', '119.03485', '33.63171'),
(891, 887, '清浦', '清浦区', '中国,江苏省,淮安市,清浦区', 3, 'qingpu', '0517', '223002', 'Q', '119.02648', '33.55232'),
(892, 887, '涟水', '涟水县', '中国,江苏省,淮安市,涟水县', 3, 'lianshui', '0517', '223400', 'L', '119.26083', '33.78094'),
(893, 887, '洪泽', '洪泽县', '中国,江苏省,淮安市,洪泽县', 3, 'hongze', '0517', '223100', 'H', '118.87344', '33.29429'),
(894, 887, '盱眙', '盱眙县', '中国,江苏省,淮安市,盱眙县', 3, 'xuyi', '0517', '211700', NULL, '118.54495', '33.01086'),
(895, 887, '金湖', '金湖县', '中国,江苏省,淮安市,金湖县', 3, 'jinhu', '0517', '211600', 'J', '119.02307', '33.02219'),
(896, 820, '盐城', '盐城市', '中国,江苏省,盐城市', 2, 'yancheng', '0515', '224005', 'Y', '120.139998', '33.377631'),
(897, 896, '亭湖', '亭湖区', '中国,江苏省,盐城市,亭湖区', 3, 'tinghu', '0515', '224005', 'T', '120.16583', '33.37825'),
(898, 896, '盐都', '盐都区', '中国,江苏省,盐城市,盐都区', 3, 'yandu', '0515', '224055', 'Y', '120.15441', '33.3373'),
(899, 896, '响水', '响水县', '中国,江苏省,盐城市,响水县', 3, 'xiangshui', '0515', '224600', 'X', '119.56985', '34.20513'),
(900, 896, '滨海', '滨海县', '中国,江苏省,盐城市,滨海县', 3, 'binhai', '0515', '224500', 'B', '119.82058', '33.98972'),
(901, 896, '阜宁', '阜宁县', '中国,江苏省,盐城市,阜宁县', 3, 'funing', '0515', '224400', 'F', '119.80175', '33.78228'),
(902, 896, '射阳', '射阳县', '中国,江苏省,盐城市,射阳县', 3, 'sheyang', '0515', '224300', 'S', '120.26043', '33.77636'),
(903, 896, '建湖', '建湖县', '中国,江苏省,盐城市,建湖县', 3, 'jianhu', '0515', '224700', 'J', '119.79852', '33.47241'),
(904, 896, '东台', '东台市', '中国,江苏省,盐城市,东台市', 3, 'dongtai', '0515', '224200', 'D', '120.32376', '32.85078'),
(905, 896, '大丰', '大丰市', '中国,江苏省,盐城市,大丰市', 3, 'dafeng', '0515', '224100', 'D', '120.46594', '33.19893'),
(906, 820, '扬州', '扬州市', '中国,江苏省,扬州市', 2, 'yangzhou', '0514', '225002', 'Y', '119.421003', '32.393159'),
(907, 906, '广陵', '广陵区', '中国,江苏省,扬州市,广陵区', 3, 'guangling', '0514', '225002', 'G', '119.43186', '32.39472'),
(908, 906, '邗江', '邗江区', '中国,江苏省,扬州市,邗江区', 3, 'hanjiang', '0514', '225002', NULL, '119.39816', '32.3765'),
(909, 906, '江都', '江都区', '中国,江苏省,扬州市,江都区', 3, 'jiangdu', '0514', '225200', 'J', '119.567481', '32.426564'),
(910, 906, '宝应', '宝应县', '中国,江苏省,扬州市,宝应县', 3, 'baoying', '0514', '225800', 'B', '119.31213', '33.23549'),
(911, 906, '仪征', '仪征市', '中国,江苏省,扬州市,仪征市', 3, 'yizheng', '0514', '211400', 'Y', '119.18432', '32.27197'),
(912, 906, '高邮', '高邮市', '中国,江苏省,扬州市,高邮市', 3, 'gaoyou', '0514', '225600', 'G', '119.45965', '32.78135'),
(913, 820, '镇江', '镇江市', '中国,江苏省,镇江市', 2, 'zhenjiang', '0511', '212004', 'Z', '119.452753', '32.204402'),
(914, 913, '京口', '京口区', '中国,江苏省,镇江市,京口区', 3, 'jingkou', '0511', '212003', 'J', '119.46947', '32.19809'),
(915, 913, '润州', '润州区', '中国,江苏省,镇江市,润州区', 3, 'runzhou', '0511', '212005', 'R', '119.41134', '32.19523'),
(916, 913, '丹徒', '丹徒区', '中国,江苏省,镇江市,丹徒区', 3, 'dantu', '0511', '212028', 'D', '119.43383', '32.13183'),
(917, 913, '丹阳', '丹阳市', '中国,江苏省,镇江市,丹阳市', 3, 'danyang', '0511', '212300', 'D', '119.57525', '31.99121'),
(918, 913, '扬中', '扬中市', '中国,江苏省,镇江市,扬中市', 3, 'yangzhong', '0511', '212200', 'Y', '119.79718', '32.2363'),
(919, 913, '句容', '句容市', '中国,江苏省,镇江市,句容市', 3, 'jurong', '0511', '212400', 'J', '119.16482', '31.95591'),
(920, 820, '泰州', '泰州市', '中国,江苏省,泰州市', 2, 'taizhou', '0523', '225300', 'T', '119.915176', '32.484882'),
(921, 920, '海陵', '海陵区', '中国,江苏省,泰州市,海陵区', 3, 'hailing', '0523', '225300', 'H', '119.91942', '32.49101'),
(922, 920, '高港', '高港区', '中国,江苏省,泰州市,高港区', 3, 'gaogang', '0523', '225321', 'G', '119.88089', '32.31833'),
(923, 920, '姜堰', '姜堰区', '中国,江苏省,泰州市,姜堰区', 3, 'jiangyan', '0523', '225500', 'J', '120.148208', '32.508483'),
(924, 920, '兴化', '兴化市', '中国,江苏省,泰州市,兴化市', 3, 'xinghua', '0523', '225700', 'X', '119.85238', '32.90944'),
(925, 920, '靖江', '靖江市', '中国,江苏省,泰州市,靖江市', 3, 'jingjiang', '0523', '214500', 'J', '120.27291', '32.01595'),
(926, 920, '泰兴', '泰兴市', '中国,江苏省,泰州市,泰兴市', 3, 'taixing', '0523', '225400', 'T', '120.05194', '32.17187'),
(927, 820, '宿迁', '宿迁市', '中国,江苏省,宿迁市', 2, 'suqian', '0527', '223800', 'S', '118.293328', '33.945154'),
(928, 927, '宿城', '宿城区', '中国,江苏省,宿迁市,宿城区', 3, 'sucheng', '0527', '223800', 'S', '118.29141', '33.94219'),
(929, 927, '宿豫', '宿豫区', '中国,江苏省,宿迁市,宿豫区', 3, 'suyu', '0527', '223800', 'S', '118.32922', '33.94673'),
(930, 927, '沭阳', '沭阳县', '中国,江苏省,宿迁市,沭阳县', 3, 'shuyang', '0527', '223600', NULL, '118.76873', '34.11446'),
(931, 927, '泗阳', '泗阳县', '中国,江苏省,宿迁市,泗阳县', 3, 'siyang', '0527', '223700', NULL, '118.7033', '33.72096'),
(932, 927, '泗洪', '泗洪县', '中国,江苏省,宿迁市,泗洪县', 3, 'sihong', '0527', '223900', NULL, '118.21716', '33.45996'),
(933, 0, '浙江', '浙江省', '中国,浙江省', 1, 'zhejiang', '', '', 'Z', '120.153576', '30.287459'),
(934, 933, '杭州', '杭州市', '中国,浙江省,杭州市', 2, 'hangzhou', '0571', '310026', 'H', '120.153576', '30.287459'),
(935, 934, '上城', '上城区', '中国,浙江省,杭州市,上城区', 3, 'shangcheng', '0571', '310002', 'S', '120.16922', '30.24255'),
(936, 934, '下城', '下城区', '中国,浙江省,杭州市,下城区', 3, 'xiacheng', '0571', '310006', 'X', '120.18096', '30.28153'),
(937, 934, '江干', '江干区', '中国,浙江省,杭州市,江干区', 3, 'jianggan', '0571', '310016', 'J', '120.20517', '30.2572'),
(938, 934, '拱墅', '拱墅区', '中国,浙江省,杭州市,拱墅区', 3, 'gongshu', '0571', '310011', 'G', '120.14209', '30.31968'),
(939, 934, '西湖', '西湖区', '中国,浙江省,杭州市,西湖区', 3, 'xihu', '0571', '310013', 'X', '120.12979', '30.25949'),
(940, 934, '滨江', '滨江区', '中国,浙江省,杭州市,滨江区', 3, 'binjiang', '0571', '310051', 'B', '120.21194', '30.20835'),
(941, 934, '萧山', '萧山区', '中国,浙江省,杭州市,萧山区', 3, 'xiaoshan', '0571', '311200', 'X', '120.26452', '30.18505'),
(942, 934, '余杭', '余杭区', '中国,浙江省,杭州市,余杭区', 3, 'yuhang', '0571', '311100', 'Y', '120.29986', '30.41829'),
(943, 934, '桐庐', '桐庐县', '中国,浙江省,杭州市,桐庐县', 3, 'tonglu', '0571', '311500', 'T', '119.68853', '29.79779'),
(944, 934, '淳安', '淳安县', '中国,浙江省,杭州市,淳安县', 3, 'chun\'an', '0571', '311700', 'C', '119.04257', '29.60988'),
(945, 934, '建德', '建德市', '中国,浙江省,杭州市,建德市', 3, 'jiande', '0571', '311600', 'J', '119.28158', '29.47603'),
(946, 934, '富阳', '富阳区', '中国,浙江省,杭州市,富阳区', 3, 'fuyang', '0571', '311400', 'F', '119.96041', '30.04878'),
(947, 934, '临安', '临安市', '中国,浙江省,杭州市,临安市', 3, 'lin\'an', '0571', '311300', 'L', '119.72473', '30.23447'),
(948, 933, '宁波', '宁波市', '中国,浙江省,宁波市', 2, 'ningbo', '0574', '315000', 'N', '121.549792', '29.868388'),
(949, 948, '海曙', '海曙区', '中国,浙江省,宁波市,海曙区', 3, 'haishu', '0574', '315000', 'H', '121.55106', '29.85977'),
(950, 948, '江东', '江东区', '中国,浙江省,宁波市,江东区', 3, 'jiangdong', '0574', '315040', 'J', '121.57028', '29.86701'),
(951, 948, '江北', '江北区', '中国,浙江省,宁波市,江北区', 3, 'jiangbei', '0574', '315020', 'J', '121.55681', '29.88776'),
(952, 948, '北仑', '北仑区', '中国,浙江省,宁波市,北仑区', 3, 'beilun', '0574', '315800', 'B', '121.84408', '29.90069'),
(953, 948, '镇海', '镇海区', '中国,浙江省,宁波市,镇海区', 3, 'zhenhai', '0574', '315200', 'Z', '121.71615', '29.94893'),
(954, 948, '鄞州', '鄞州区', '中国,浙江省,宁波市,鄞州区', 3, 'yinzhou', '0574', '315100', NULL, '121.54754', '29.81614'),
(955, 948, '象山', '象山县', '中国,浙江省,宁波市,象山县', 3, 'xiangshan', '0574', '315700', 'X', '121.86917', '29.47758'),
(956, 948, '宁海', '宁海县', '中国,浙江省,宁波市,宁海县', 3, 'ninghai', '0574', '315600', 'N', '121.43072', '29.2889'),
(957, 948, '余姚', '余姚市', '中国,浙江省,宁波市,余姚市', 3, 'yuyao', '0574', '315400', 'Y', '121.15341', '30.03867'),
(958, 948, '慈溪', '慈溪市', '中国,浙江省,宁波市,慈溪市', 3, 'cixi', '0574', '315300', 'C', '121.26641', '30.16959');
INSERT INTO `sf_area` (`id`, `pid`, `shortname`, `name`, `mergename`, `level`, `pinyin`, `code`, `zip`, `first`, `lng`, `lat`) VALUES
(959, 948, '奉化', '奉化市', '中国,浙江省,宁波市,奉化市', 3, 'fenghua', '0574', '315500', 'F', '121.41003', '29.65537'),
(960, 933, '温州', '温州市', '中国,浙江省,温州市', 2, 'wenzhou', '0577', '325000', 'W', '120.672111', '28.000575'),
(961, 960, '鹿城', '鹿城区', '中国,浙江省,温州市,鹿城区', 3, 'lucheng', '0577', '325000', 'L', '120.65505', '28.01489'),
(962, 960, '龙湾', '龙湾区', '中国,浙江省,温州市,龙湾区', 3, 'longwan', '0577', '325013', 'L', '120.83053', '27.91284'),
(963, 960, '瓯海', '瓯海区', '中国,浙江省,温州市,瓯海区', 3, 'ouhai', '0577', '325005', NULL, '120.63751', '28.00714'),
(964, 960, '洞头', '洞头县', '中国,浙江省,温州市,洞头县', 3, 'dongtou', '0577', '325700', 'D', '121.15606', '27.83634'),
(965, 960, '永嘉', '永嘉县', '中国,浙江省,温州市,永嘉县', 3, 'yongjia', '0577', '325100', 'Y', '120.69317', '28.15456'),
(966, 960, '平阳', '平阳县', '中国,浙江省,温州市,平阳县', 3, 'pingyang', '0577', '325400', 'P', '120.56506', '27.66245'),
(967, 960, '苍南', '苍南县', '中国,浙江省,温州市,苍南县', 3, 'cangnan', '0577', '325800', 'C', '120.42608', '27.51739'),
(968, 960, '文成', '文成县', '中国,浙江省,温州市,文成县', 3, 'wencheng', '0577', '325300', 'W', '120.09063', '27.78678'),
(969, 960, '泰顺', '泰顺县', '中国,浙江省,温州市,泰顺县', 3, 'taishun', '0577', '325500', 'T', '119.7182', '27.55694'),
(970, 960, '瑞安', '瑞安市', '中国,浙江省,温州市,瑞安市', 3, 'rui\'an', '0577', '325200', 'R', '120.65466', '27.78041'),
(971, 960, '乐清', '乐清市', '中国,浙江省,温州市,乐清市', 3, 'yueqing', '0577', '325600', 'L', '120.9617', '28.12404'),
(972, 933, '嘉兴', '嘉兴市', '中国,浙江省,嘉兴市', 2, 'jiaxing', '0573', '314000', 'J', '120.750865', '30.762653'),
(973, 972, '南湖', '南湖区', '中国,浙江省,嘉兴市,南湖区', 3, 'nanhu', '0573', '314051', 'N', '120.78524', '30.74865'),
(974, 972, '秀洲', '秀洲区', '中国,浙江省,嘉兴市,秀洲区', 3, 'xiuzhou', '0573', '314031', 'X', '120.70867', '30.76454'),
(975, 972, '嘉善', '嘉善县', '中国,浙江省,嘉兴市,嘉善县', 3, 'jiashan', '0573', '314100', 'J', '120.92559', '30.82993'),
(976, 972, '海盐', '海盐县', '中国,浙江省,嘉兴市,海盐县', 3, 'haiyan', '0573', '314300', 'H', '120.9457', '30.52547'),
(977, 972, '海宁', '海宁市', '中国,浙江省,嘉兴市,海宁市', 3, 'haining', '0573', '314400', 'H', '120.6813', '30.5097'),
(978, 972, '平湖', '平湖市', '中国,浙江省,嘉兴市,平湖市', 3, 'pinghu', '0573', '314200', 'P', '121.02166', '30.69618'),
(979, 972, '桐乡', '桐乡市', '中国,浙江省,嘉兴市,桐乡市', 3, 'tongxiang', '0573', '314500', 'T', '120.56485', '30.6302'),
(980, 933, '湖州', '湖州市', '中国,浙江省,湖州市', 2, 'huzhou', '0572', '313000', 'H', '120.102398', '30.867198'),
(981, 980, '吴兴', '吴兴区', '中国,浙江省,湖州市,吴兴区', 3, 'wuxing', '0572', '313000', 'W', '120.12548', '30.85752'),
(982, 980, '南浔', '南浔区', '中国,浙江省,湖州市,南浔区', 3, 'nanxun', '0572', '313009', 'N', '120.42038', '30.86686'),
(983, 980, '德清', '德清县', '中国,浙江省,湖州市,德清县', 3, 'deqing', '0572', '313200', 'D', '119.97836', '30.53369'),
(984, 980, '长兴', '长兴县', '中国,浙江省,湖州市,长兴县', 3, 'changxing', '0572', '313100', 'C', '119.90783', '31.00606'),
(985, 980, '安吉', '安吉县', '中国,浙江省,湖州市,安吉县', 3, 'anji', '0572', '313300', 'A', '119.68158', '30.63798'),
(986, 933, '绍兴', '绍兴市', '中国,浙江省,绍兴市', 2, 'shaoxing', '0575', '312000', 'S', '120.582112', '29.997117'),
(987, 986, '越城', '越城区', '中国,浙江省,绍兴市,越城区', 3, 'yuecheng', '0575', '312000', 'Y', '120.5819', '29.98895'),
(988, 986, '柯桥', '柯桥区', '中国,浙江省,绍兴市,柯桥区', 3, 'keqiao', '0575', '312030', 'K', '120.492736', '30.08763'),
(989, 986, '上虞', '上虞区', '中国,浙江省,绍兴市,上虞区', 3, 'shangyu', '0575', '312300', 'S', '120.476075', '30.078038'),
(990, 986, '新昌', '新昌县', '中国,浙江省,绍兴市,新昌县', 3, 'xinchang', '0575', '312500', 'X', '120.90435', '29.49991'),
(991, 986, '诸暨', '诸暨市', '中国,浙江省,绍兴市,诸暨市', 3, 'zhuji', '0575', '311800', 'Z', '120.23629', '29.71358'),
(992, 986, '嵊州', '嵊州市', '中国,浙江省,绍兴市,嵊州市', 3, 'shengzhou', '0575', '312400', NULL, '120.82174', '29.58854'),
(993, 933, '金华', '金华市', '中国,浙江省,金华市', 2, 'jinhua', '0579', '321000', 'J', '119.649506', '29.089524'),
(994, 993, '婺城', '婺城区', '中国,浙江省,金华市,婺城区', 3, 'wucheng', '0579', '321000', NULL, '119.57135', '29.09521'),
(995, 993, '金东', '金东区', '中国,浙江省,金华市,金东区', 3, 'jindong', '0579', '321000', 'J', '119.69302', '29.0991'),
(996, 993, '武义', '武义县', '中国,浙江省,金华市,武义县', 3, 'wuyi', '0579', '321200', 'W', '119.8164', '28.89331'),
(997, 993, '浦江', '浦江县', '中国,浙江省,金华市,浦江县', 3, 'pujiang', '0579', '322200', 'P', '119.89181', '29.45353'),
(998, 993, '磐安', '磐安县', '中国,浙江省,金华市,磐安县', 3, 'pan\'an', '0579', '322300', 'P', '120.45022', '29.05733'),
(999, 993, '兰溪', '兰溪市', '中国,浙江省,金华市,兰溪市', 3, 'lanxi', '0579', '321100', 'L', '119.45965', '29.20841'),
(1000, 993, '义乌', '义乌市', '中国,浙江省,金华市,义乌市', 3, 'yiwu', '0579', '322000', 'Y', '120.0744', '29.30558'),
(1001, 993, '东阳', '东阳市', '中国,浙江省,金华市,东阳市', 3, 'dongyang', '0579', '322100', 'D', '120.24185', '29.28942'),
(1002, 993, '永康', '永康市', '中国,浙江省,金华市,永康市', 3, 'yongkang', '0579', '321300', 'Y', '120.04727', '28.88844'),
(1003, 933, '衢州', '衢州市', '中国,浙江省,衢州市', 2, 'quzhou', '0570', '324002', NULL, '118.87263', '28.941708'),
(1004, 1003, '柯城', '柯城区', '中国,浙江省,衢州市,柯城区', 3, 'kecheng', '0570', '324100', 'K', '118.87109', '28.96858'),
(1005, 1003, '衢江', '衢江区', '中国,浙江省,衢州市,衢江区', 3, 'qujiang', '0570', '324022', NULL, '118.9598', '28.97977'),
(1006, 1003, '常山', '常山县', '中国,浙江省,衢州市,常山县', 3, 'changshan', '0570', '324200', 'C', '118.51025', '28.90191'),
(1007, 1003, '开化', '开化县', '中国,浙江省,衢州市,开化县', 3, 'kaihua', '0570', '324300', 'K', '118.41616', '29.13785'),
(1008, 1003, '龙游', '龙游县', '中国,浙江省,衢州市,龙游县', 3, 'longyou', '0570', '324400', 'L', '119.17221', '29.02823'),
(1009, 1003, '江山', '江山市', '中国,浙江省,衢州市,江山市', 3, 'jiangshan', '0570', '324100', 'J', '118.62674', '28.7386'),
(1010, 933, '舟山', '舟山市', '中国,浙江省,舟山市', 2, 'zhoushan', '0580', '316000', 'Z', '122.106863', '30.016028'),
(1011, 1010, '定海', '定海区', '中国,浙江省,舟山市,定海区', 3, 'dinghai', '0580', '316000', 'D', '122.10677', '30.01985'),
(1012, 1010, '普陀', '普陀区', '中国,浙江省,舟山市,普陀区', 3, 'putuo', '0580', '316100', 'P', '122.30278', '29.94908'),
(1013, 1010, '岱山', '岱山县', '中国,浙江省,舟山市,岱山县', 3, 'daishan', '0580', '316200', NULL, '122.20486', '30.24385'),
(1014, 1010, '嵊泗', '嵊泗县', '中国,浙江省,舟山市,嵊泗县', 3, 'shengsi', '0580', '202450', NULL, '122.45129', '30.72678'),
(1015, 933, '台州', '台州市', '中国,浙江省,台州市', 2, 'taizhou', '0576', '318000', 'T', '121.428599', '28.661378'),
(1016, 1015, '椒江', '椒江区', '中国,浙江省,台州市,椒江区', 3, 'jiaojiang', '0576', '318000', 'J', '121.44287', '28.67301'),
(1017, 1015, '黄岩', '黄岩区', '中国,浙江省,台州市,黄岩区', 3, 'huangyan', '0576', '318020', 'H', '121.25891', '28.65077'),
(1018, 1015, '路桥', '路桥区', '中国,浙江省,台州市,路桥区', 3, 'luqiao', '0576', '318050', 'L', '121.37381', '28.58016'),
(1019, 1015, '玉环', '玉环县', '中国,浙江省,台州市,玉环县', 3, 'yuhuan', '0576', '317600', 'Y', '121.23242', '28.13637'),
(1020, 1015, '三门', '三门县', '中国,浙江省,台州市,三门县', 3, 'sanmen', '0576', '317100', 'S', '121.3937', '29.1051'),
(1021, 1015, '天台', '天台县', '中国,浙江省,台州市,天台县', 3, 'tiantai', '0576', '317200', 'T', '121.00848', '29.1429'),
(1022, 1015, '仙居', '仙居县', '中国,浙江省,台州市,仙居县', 3, 'xianju', '0576', '317300', 'X', '120.72872', '28.84672'),
(1023, 1015, '温岭', '温岭市', '中国,浙江省,台州市,温岭市', 3, 'wenling', '0576', '317500', 'W', '121.38595', '28.37176'),
(1024, 1015, '临海', '临海市', '中国,浙江省,台州市,临海市', 3, 'linhai', '0576', '317000', 'L', '121.13885', '28.85603'),
(1025, 933, '丽水', '丽水市', '中国,浙江省,丽水市', 2, 'lishui', '0578', '323000', 'L', '119.921786', '28.451993'),
(1026, 1025, '莲都', '莲都区', '中国,浙江省,丽水市,莲都区', 3, 'liandu', '0578', '323000', 'L', '119.9127', '28.44583'),
(1027, 1025, '青田', '青田县', '中国,浙江省,丽水市,青田县', 3, 'qingtian', '0578', '323900', 'Q', '120.29028', '28.13897'),
(1028, 1025, '缙云', '缙云县', '中国,浙江省,丽水市,缙云县', 3, 'jinyun', '0578', '321400', NULL, '120.09036', '28.65944'),
(1029, 1025, '遂昌', '遂昌县', '中国,浙江省,丽水市,遂昌县', 3, 'suichang', '0578', '323300', 'S', '119.27606', '28.59291'),
(1030, 1025, '松阳', '松阳县', '中国,浙江省,丽水市,松阳县', 3, 'songyang', '0578', '323400', 'S', '119.48199', '28.4494'),
(1031, 1025, '云和', '云和县', '中国,浙江省,丽水市,云和县', 3, 'yunhe', '0578', '323600', 'Y', '119.57287', '28.11643'),
(1032, 1025, '庆元', '庆元县', '中国,浙江省,丽水市,庆元县', 3, 'qingyuan', '0578', '323800', 'Q', '119.06256', '27.61842'),
(1033, 1025, '景宁', '景宁畲族自治县', '中国,浙江省,丽水市,景宁畲族自治县', 3, 'jingning', '0578', '323500', 'J', '119.63839', '27.97393'),
(1034, 1025, '龙泉', '龙泉市', '中国,浙江省,丽水市,龙泉市', 3, 'longquan', '0578', '323700', 'L', '119.14163', '28.0743'),
(1035, 933, '舟山新区', '舟山群岛新区', '中国,浙江省,舟山群岛新区', 2, 'zhoushan', '0580', '316000', 'Z', '122.317657', '29.813242'),
(1036, 1035, '金塘', '金塘岛', '中国,浙江省,舟山群岛新区,金塘岛', 3, 'jintang', '0580', '316000', 'J', '121.893373', '30.040641'),
(1037, 1035, '六横', '六横岛', '中国,浙江省,舟山群岛新区,六横岛', 3, 'liuheng', '0580', '316000', 'L', '122.14265', '29.662938'),
(1038, 1035, '衢山', '衢山岛', '中国,浙江省,舟山群岛新区,衢山岛', 3, 'qushan', '0580', '316000', NULL, '122.358425', '30.442642'),
(1039, 1035, '舟山', '舟山本岛西北部', '中国,浙江省,舟山群岛新区,舟山本岛西北部', 3, 'zhoushan', '0580', '316000', 'Z', '122.03064', '30.140377'),
(1040, 1035, '岱山', '岱山岛西南部', '中国,浙江省,舟山群岛新区,岱山岛西南部', 3, 'daishan', '0580', '316000', NULL, '122.180123', '30.277269'),
(1041, 1035, '泗礁', '泗礁岛', '中国,浙江省,舟山群岛新区,泗礁岛', 3, 'sijiao', '0580', '316000', NULL, '122.45803', '30.725112'),
(1042, 1035, '朱家尖', '朱家尖岛', '中国,浙江省,舟山群岛新区,朱家尖岛', 3, 'zhujiajian', '0580', '316000', 'Z', '122.390636', '29.916303'),
(1043, 1035, '洋山', '洋山岛', '中国,浙江省,舟山群岛新区,洋山岛', 3, 'yangshan', '0580', '316000', 'Y', '121.995891', '30.094637'),
(1044, 1035, '长涂', '长涂岛', '中国,浙江省,舟山群岛新区,长涂岛', 3, 'changtu', '0580', '316000', 'C', '122.284681', '30.24888'),
(1045, 1035, '虾峙', '虾峙岛', '中国,浙江省,舟山群岛新区,虾峙岛', 3, 'xiazhi', '0580', '316000', 'X', '122.244686', '29.752941'),
(1046, 0, '安徽', '安徽省', '中国,安徽省', 1, 'anhui', '', '', 'A', '117.283042', '31.86119'),
(1047, 1046, '合肥', '合肥市', '中国,安徽省,合肥市', 2, 'hefei', '0551', '230001', 'H', '117.283042', '31.86119'),
(1048, 1047, '瑶海', '瑶海区', '中国,安徽省,合肥市,瑶海区', 3, 'yaohai', '0551', '230011', 'Y', '117.30947', '31.85809'),
(1049, 1047, '庐阳', '庐阳区', '中国,安徽省,合肥市,庐阳区', 3, 'luyang', '0551', '230001', 'L', '117.26452', '31.87874'),
(1050, 1047, '蜀山', '蜀山区', '中国,安徽省,合肥市,蜀山区', 3, 'shushan', '0551', '230031', 'S', '117.26104', '31.85117'),
(1051, 1047, '包河', '包河区', '中国,安徽省,合肥市,包河区', 3, 'baohe', '0551', '230041', 'B', '117.30984', '31.79502'),
(1052, 1047, '长丰', '长丰县', '中国,安徽省,合肥市,长丰县', 3, 'changfeng', '0551', '231100', 'C', '117.16549', '32.47959'),
(1053, 1047, '肥东', '肥东县', '中国,安徽省,合肥市,肥东县', 3, 'feidong', '0551', '231600', 'F', '117.47128', '31.88525'),
(1054, 1047, '肥西', '肥西县', '中国,安徽省,合肥市,肥西县', 3, 'feixi', '0551', '231200', 'F', '117.16845', '31.72143'),
(1055, 1047, '庐江', '庐江县', '中国,安徽省,合肥市,庐江县', 3, 'lujiang', '0565', '231500', 'L', '117.289844', '31.251488'),
(1056, 1047, '巢湖', '巢湖市', '中国,安徽省,合肥市,巢湖市', 3, 'chaohu', '0565', '238000', 'C', '117.874155', '31.600518'),
(1057, 1046, '芜湖', '芜湖市', '中国,安徽省,芜湖市', 2, 'wuhu', '0551', '241000', 'W', '118.376451', '31.326319'),
(1058, 1057, '镜湖', '镜湖区', '中国,安徽省,芜湖市,镜湖区', 3, 'jinghu', '0553', '241000', 'J', '118.38525', '31.34038'),
(1059, 1057, '弋江', '弋江区', '中国,安徽省,芜湖市,弋江区', 3, 'yijiang', '0553', '241000', NULL, '118.37265', '31.31178'),
(1060, 1057, '鸠江', '鸠江区', '中国,安徽省,芜湖市,鸠江区', 3, 'jiujiang', '0553', '241000', NULL, '118.39215', '31.36928'),
(1061, 1057, '三山', '三山区', '中国,安徽省,芜湖市,三山区', 3, 'sanshan', '0553', '241000', 'S', '118.22509', '31.20703'),
(1062, 1057, '芜湖', '芜湖县', '中国,安徽省,芜湖市,芜湖县', 3, 'wuhu', '0553', '241100', 'W', '118.57525', '31.13476'),
(1063, 1057, '繁昌', '繁昌县', '中国,安徽省,芜湖市,繁昌县', 3, 'fanchang', '0553', '241200', 'F', '118.19982', '31.08319'),
(1064, 1057, '南陵', '南陵县', '中国,安徽省,芜湖市,南陵县', 3, 'nanling', '0553', '242400', 'N', '118.33688', '30.91969'),
(1065, 1057, '无为', '无为县', '中国,安徽省,芜湖市,无为县', 3, 'wuwei', '0565', '238300', 'W', '117.911432', '31.303075'),
(1066, 1046, '蚌埠', '蚌埠市', '中国,安徽省,蚌埠市', 2, 'bengbu', '0552', '233000', 'B', '117.36237', '32.934037'),
(1067, 1066, '龙子湖', '龙子湖区', '中国,安徽省,蚌埠市,龙子湖区', 3, 'longzihu', '0552', '233000', 'L', '117.39379', '32.94301'),
(1068, 1066, '蚌山', '蚌山区', '中国,安徽省,蚌埠市,蚌山区', 3, 'bengshan', '0552', '233000', 'B', '117.36767', '32.94411'),
(1069, 1066, '禹会', '禹会区', '中国,安徽省,蚌埠市,禹会区', 3, 'yuhui', '0552', '233010', 'Y', '117.35315', '32.93336'),
(1070, 1066, '淮上', '淮上区', '中国,安徽省,蚌埠市,淮上区', 3, 'huaishang', '0552', '233002', 'H', '117.35983', '32.96423'),
(1071, 1066, '怀远', '怀远县', '中国,安徽省,蚌埠市,怀远县', 3, 'huaiyuan', '0552', '233400', 'H', '117.20507', '32.97007'),
(1072, 1066, '五河', '五河县', '中国,安徽省,蚌埠市,五河县', 3, 'wuhe', '0552', '233300', 'W', '117.89144', '33.14457'),
(1073, 1066, '固镇', '固镇县', '中国,安徽省,蚌埠市,固镇县', 3, 'guzhen', '0552', '233700', 'G', '117.31558', '33.31803'),
(1074, 1046, '淮南', '淮南市', '中国,安徽省,淮南市', 2, 'huainan', '0554', '232001', 'H', '117.025449', '32.645947'),
(1075, 1074, '大通', '大通区', '中国,安徽省,淮南市,大通区', 3, 'datong', '0554', '232033', 'D', '117.05255', '32.63265'),
(1076, 1074, '田家庵', '田家庵区', '中国,安徽省,淮南市,田家庵区', 3, 'tianjiaan', '0554', '232000', 'T', '117.01739', '32.64697'),
(1077, 1074, '谢家集', '谢家集区', '中国,安徽省,淮南市,谢家集区', 3, 'xiejiaji', '0554', '232052', 'X', '116.86377', '32.59818'),
(1078, 1074, '八公山', '八公山区', '中国,安徽省,淮南市,八公山区', 3, 'bagongshan', '0554', '232072', 'B', '116.83694', '32.62941'),
(1079, 1074, '潘集', '潘集区', '中国,安徽省,淮南市,潘集区', 3, 'panji', '0554', '232082', 'P', '116.81622', '32.78287'),
(1080, 1074, '凤台', '凤台县', '中国,安徽省,淮南市,凤台县', 3, 'fengtai', '0554', '232100', 'F', '116.71569', '32.70752'),
(1081, 1046, '马鞍山', '马鞍山市', '中国,安徽省,马鞍山市', 2, 'ma\'anshan', '0555', '243001', 'M', '118.507906', '31.689362'),
(1082, 1081, '花山', '花山区', '中国,安徽省,马鞍山市,花山区', 3, 'huashan', '0555', '243000', 'H', '118.51231', '31.7001'),
(1083, 1081, '雨山', '雨山区', '中国,安徽省,马鞍山市,雨山区', 3, 'yushan', '0555', '243071', 'Y', '118.49869', '31.68219'),
(1084, 1081, '博望', '博望区', '中国,安徽省,马鞍山市,博望区', 3, 'bowang', '0555', '243131', 'B', '118.844387', '31.561871'),
(1085, 1081, '当涂', '当涂县', '中国,安徽省,马鞍山市,当涂县', 3, 'dangtu', '0555', '243100', 'D', '118.49786', '31.57098'),
(1086, 1081, '含山', '含山县', '中国,安徽省,马鞍山市,含山县', 3, 'hanshan', '0555', '238100', 'H', '118.105545', '31.727758'),
(1087, 1081, '和县', '和县', '中国,安徽省,马鞍山市,和县', 3, 'hexian', '0555', '238200', 'H', '118.351405', '31.741794'),
(1088, 1046, '淮北', '淮北市', '中国,安徽省,淮北市', 2, 'huaibei', '0561', '235000', 'H', '116.794664', '33.971707'),
(1089, 1088, '杜集', '杜集区', '中国,安徽省,淮北市,杜集区', 3, 'duji', '0561', '235000', 'D', '116.82998', '33.99363'),
(1090, 1088, '相山', '相山区', '中国,安徽省,淮北市,相山区', 3, 'xiangshan', '0561', '235000', 'X', '116.79464', '33.95979'),
(1091, 1088, '烈山', '烈山区', '中国,安徽省,淮北市,烈山区', 3, 'lieshan', '0561', '235000', 'L', '116.81448', '33.89355'),
(1092, 1088, '濉溪', '濉溪县', '中国,安徽省,淮北市,濉溪县', 3, 'suixi', '0561', '235100', NULL, '116.76785', '33.91455'),
(1093, 1046, '铜陵', '铜陵市', '中国,安徽省,铜陵市', 2, 'tongling', '0562', '244000', 'T', '117.816576', '30.929935'),
(1094, 1093, '铜官山', '铜官山区', '中国,安徽省,铜陵市,铜官山区', 3, 'tongguanshan', '0562', '244000', 'T', '117.81525', '30.93423'),
(1095, 1093, '狮子山', '狮子山区', '中国,安徽省,铜陵市,狮子山区', 3, 'shizishan', '0562', '244000', 'S', '117.89178', '30.92631'),
(1096, 1093, '郊区', '郊区', '中国,安徽省,铜陵市,郊区', 3, 'jiaoqu', '0562', '244000', 'J', '117.80868', '30.91976'),
(1097, 1093, '铜陵', '铜陵县', '中国,安徽省,铜陵市,铜陵县', 3, 'tongling', '0562', '244100', 'T', '117.79113', '30.95365'),
(1098, 1046, '安庆', '安庆市', '中国,安徽省,安庆市', 2, 'anqing', '0556', '246001', 'A', '117.053571', '30.524816'),
(1099, 1098, '迎江', '迎江区', '中国,安徽省,安庆市,迎江区', 3, 'yingjiang', '0556', '246001', 'Y', '117.0493', '30.50421'),
(1100, 1098, '大观', '大观区', '中国,安徽省,安庆市,大观区', 3, 'daguan', '0556', '246002', 'D', '117.03426', '30.51216'),
(1101, 1098, '宜秀', '宜秀区', '中国,安徽省,安庆市,宜秀区', 3, 'yixiu', '0556', '246003', 'Y', '117.06127', '30.50783'),
(1102, 1098, '怀宁', '怀宁县', '中国,安徽省,安庆市,怀宁县', 3, 'huaining', '0556', '246100', 'H', '116.82968', '30.73376'),
(1103, 1098, '枞阳', '枞阳县', '中国,安徽省,安庆市,枞阳县', 3, 'zongyang', '0556', '246700', NULL, '117.22015', '30.69956'),
(1104, 1098, '潜山', '潜山县', '中国,安徽省,安庆市,潜山县', 3, 'qianshan', '0556', '246300', 'Q', '116.57574', '30.63037'),
(1105, 1098, '太湖', '太湖县', '中国,安徽省,安庆市,太湖县', 3, 'taihu', '0556', '246400', 'T', '116.3088', '30.4541'),
(1106, 1098, '宿松', '宿松县', '中国,安徽省,安庆市,宿松县', 3, 'susong', '0556', '246500', 'S', '116.12915', '30.1536'),
(1107, 1098, '望江', '望江县', '中国,安徽省,安庆市,望江县', 3, 'wangjiang', '0556', '246200', 'W', '116.68814', '30.12585'),
(1108, 1098, '岳西', '岳西县', '中国,安徽省,安庆市,岳西县', 3, 'yuexi', '0556', '246600', 'Y', '116.35995', '30.84983'),
(1109, 1098, '桐城', '桐城市', '中国,安徽省,安庆市,桐城市', 3, 'tongcheng', '0556', '231400', 'T', '116.95071', '31.05216'),
(1110, 1046, '黄山', '黄山市', '中国,安徽省,黄山市', 2, 'huangshan', '0559', '245000', 'H', '118.317325', '29.709239'),
(1111, 1110, '屯溪', '屯溪区', '中国,安徽省,黄山市,屯溪区', 3, 'tunxi', '0559', '245000', 'T', '118.33368', '29.71138'),
(1112, 1110, '黄山', '黄山区', '中国,安徽省,黄山市,黄山区', 3, 'huangshan', '0559', '242700', 'H', '118.1416', '30.2729'),
(1113, 1110, '徽州', '徽州区', '中国,安徽省,黄山市,徽州区', 3, 'huizhou', '0559', '245061', 'H', '118.33654', '29.82784'),
(1114, 1110, '歙县', '歙县', '中国,安徽省,黄山市,歙县', 3, 'shexian', '0559', '245200', NULL, '118.43676', '29.86745'),
(1115, 1110, '休宁', '休宁县', '中国,安徽省,黄山市,休宁县', 3, 'xiuning', '0559', '245400', 'X', '118.18136', '29.78607'),
(1116, 1110, '黟县', '黟县', '中国,安徽省,黄山市,黟县', 3, 'yixian', '0559', '245500', NULL, '117.94137', '29.92588'),
(1117, 1110, '祁门', '祁门县', '中国,安徽省,黄山市,祁门县', 3, 'qimen', '0559', '245600', 'Q', '117.71847', '29.85723'),
(1118, 1046, '滁州', '滁州市', '中国,安徽省,滁州市', 2, 'chuzhou', '0550', '239000', 'C', '118.316264', '32.303627'),
(1119, 1118, '琅琊', '琅琊区', '中国,安徽省,滁州市,琅琊区', 3, 'langya', '0550', '239000', 'L', '118.30538', '32.29521'),
(1120, 1118, '南谯', '南谯区', '中国,安徽省,滁州市,南谯区', 3, 'nanqiao', '0550', '239000', 'N', '118.31222', '32.31861'),
(1121, 1118, '来安', '来安县', '中国,安徽省,滁州市,来安县', 3, 'lai\'an', '0550', '239200', 'L', '118.43438', '32.45176'),
(1122, 1118, '全椒', '全椒县', '中国,安徽省,滁州市,全椒县', 3, 'quanjiao', '0550', '239500', 'Q', '118.27291', '32.08524'),
(1123, 1118, '定远', '定远县', '中国,安徽省,滁州市,定远县', 3, 'dingyuan', '0550', '233200', 'D', '117.68035', '32.52488'),
(1124, 1118, '凤阳', '凤阳县', '中国,安徽省,滁州市,凤阳县', 3, 'fengyang', '0550', '233100', 'F', '117.56454', '32.86507'),
(1125, 1118, '天长', '天长市', '中国,安徽省,滁州市,天长市', 3, 'tianchang', '0550', '239300', 'T', '118.99868', '32.69124'),
(1126, 1118, '明光', '明光市', '中国,安徽省,滁州市,明光市', 3, 'mingguang', '0550', '239400', 'M', '117.99093', '32.77819'),
(1127, 1046, '阜阳', '阜阳市', '中国,安徽省,阜阳市', 2, 'fuyang', '0558', '236033', 'F', '115.819729', '32.896969'),
(1128, 1127, '颍州', '颍州区', '中国,安徽省,阜阳市,颍州区', 3, 'yingzhou', '0558', '236001', NULL, '115.80694', '32.88346'),
(1129, 1127, '颍东', '颍东区', '中国,安徽省,阜阳市,颍东区', 3, 'yingdong', '0558', '236058', NULL, '115.85659', '32.91296'),
(1130, 1127, '颍泉', '颍泉区', '中国,安徽省,阜阳市,颍泉区', 3, 'yingquan', '0558', '236045', NULL, '115.80712', '32.9249'),
(1131, 1127, '临泉', '临泉县', '中国,安徽省,阜阳市,临泉县', 3, 'linquan', '0558', '236400', 'L', '115.26232', '33.06758'),
(1132, 1127, '太和', '太和县', '中国,安徽省,阜阳市,太和县', 3, 'taihe', '0558', '236600', 'T', '115.62191', '33.16025'),
(1133, 1127, '阜南', '阜南县', '中国,安徽省,阜阳市,阜南县', 3, 'funan', '0558', '236300', 'F', '115.58563', '32.63551'),
(1134, 1127, '颍上', '颍上县', '中国,安徽省,阜阳市,颍上县', 3, 'yingshang', '0558', '236200', NULL, '116.26458', '32.62998'),
(1135, 1127, '界首', '界首市', '中国,安徽省,阜阳市,界首市', 3, 'jieshou', '0558', '236500', 'J', '115.37445', '33.25714'),
(1136, 1046, '宿州', '宿州市', '中国,安徽省,宿州市', 2, 'suzhou', '0557', '234000', 'S', '116.984084', '33.633891'),
(1137, 1136, '埇桥', '埇桥区', '中国,安徽省,宿州市,埇桥区', 3, 'yongqiao', '0557', '234000', NULL, '116.97731', '33.64058'),
(1138, 1136, '砀山', '砀山县', '中国,安徽省,宿州市,砀山县', 3, 'dangshan', '0557', '235300', NULL, '116.35363', '34.42356'),
(1139, 1136, '萧县', '萧县', '中国,安徽省,宿州市,萧县', 3, 'xiaoxian', '0557', '235200', 'X', '116.94546', '34.1879'),
(1140, 1136, '灵璧', '灵璧县', '中国,安徽省,宿州市,灵璧县', 3, 'lingbi', '0557', '234200', 'L', '117.55813', '33.54339'),
(1141, 1136, '泗县', '泗县', '中国,安徽省,宿州市,泗县', 3, 'sixian', '0557', '234300', NULL, '117.91033', '33.48295'),
(1142, 1046, '六安', '六安市', '中国,安徽省,六安市', 2, 'lu\'an', '0564', '237000', 'L', '116.507676', '31.752889'),
(1143, 1142, '金安', '金安区', '中国,安徽省,六安市,金安区', 3, 'jin\'an', '0564', '237005', 'J', '116.50912', '31.75573'),
(1144, 1142, '裕安', '裕安区', '中国,安徽省,六安市,裕安区', 3, 'yu\'an', '0564', '237010', 'Y', '116.47985', '31.73787'),
(1145, 1142, '寿县', '寿县', '中国,安徽省,六安市,寿县', 3, 'shouxian', '0564', '232200', 'S', '116.78466', '32.57653'),
(1146, 1142, '霍邱', '霍邱县', '中国,安徽省,六安市,霍邱县', 3, 'huoqiu', '0564', '237400', 'H', '116.27795', '32.353'),
(1147, 1142, '舒城', '舒城县', '中国,安徽省,六安市,舒城县', 3, 'shucheng', '0564', '231300', 'S', '116.94491', '31.46413'),
(1148, 1142, '金寨', '金寨县', '中国,安徽省,六安市,金寨县', 3, 'jinzhai', '0564', '237300', 'J', '115.93463', '31.7351'),
(1149, 1142, '霍山', '霍山县', '中国,安徽省,六安市,霍山县', 3, 'huoshan', '0564', '237200', 'H', '116.33291', '31.3929'),
(1150, 1046, '亳州', '亳州市', '中国,安徽省,亳州市', 2, 'bozhou', '0558', '236802', NULL, '115.782939', '33.869338'),
(1151, 1150, '谯城', '谯城区', '中国,安徽省,亳州市,谯城区', 3, 'qiaocheng', '0558', '236800', NULL, '115.77941', '33.87532'),
(1152, 1150, '涡阳', '涡阳县', '中国,安徽省,亳州市,涡阳县', 3, 'guoyang', '0558', '233600', 'W', '116.21682', '33.50911'),
(1153, 1150, '蒙城', '蒙城县', '中国,安徽省,亳州市,蒙城县', 3, 'mengcheng', '0558', '233500', 'M', '116.5646', '33.26477'),
(1154, 1150, '利辛', '利辛县', '中国,安徽省,亳州市,利辛县', 3, 'lixin', '0558', '236700', 'L', '116.208', '33.14198'),
(1155, 1046, '池州', '池州市', '中国,安徽省,池州市', 2, 'chizhou', '0566', '247100', 'C', '117.489157', '30.656037'),
(1156, 1155, '贵池', '贵池区', '中国,安徽省,池州市,贵池区', 3, 'guichi', '0566', '247100', 'G', '117.48722', '30.65283'),
(1157, 1155, '东至', '东至县', '中国,安徽省,池州市,东至县', 3, 'dongzhi', '0566', '247200', 'D', '117.02719', '30.0969'),
(1158, 1155, '石台', '石台县', '中国,安徽省,池州市,石台县', 3, 'shitai', '0566', '245100', 'S', '117.48666', '30.21042'),
(1159, 1155, '青阳', '青阳县', '中国,安徽省,池州市,青阳县', 3, 'qingyang', '0566', '242800', 'Q', '117.84744', '30.63932'),
(1160, 1046, '宣城', '宣城市', '中国,安徽省,宣城市', 2, 'xuancheng', '0563', '242000', 'X', '118.757995', '30.945667'),
(1161, 1160, '宣州', '宣州区', '中国,安徽省,宣城市,宣州区', 3, 'xuanzhou', '0563', '242000', 'X', '118.75462', '30.94439'),
(1162, 1160, '郎溪', '郎溪县', '中国,安徽省,宣城市,郎溪县', 3, 'langxi', '0563', '242100', 'L', '119.17923', '31.12599'),
(1163, 1160, '广德', '广德县', '中国,安徽省,宣城市,广德县', 3, 'guangde', '0563', '242200', 'G', '119.41769', '30.89371'),
(1164, 1160, '泾县', '泾县', '中国,安徽省,宣城市,泾县', 3, 'jingxian', '0563', '242500', NULL, '118.41964', '30.69498'),
(1165, 1160, '绩溪', '绩溪县', '中国,安徽省,宣城市,绩溪县', 3, 'jixi', '0563', '245300', 'J', '118.59765', '30.07069'),
(1166, 1160, '旌德', '旌德县', '中国,安徽省,宣城市,旌德县', 3, 'jingde', '0563', '242600', NULL, '118.54299', '30.28898'),
(1167, 1160, '宁国', '宁国市', '中国,安徽省,宣城市,宁国市', 3, 'ningguo', '0563', '242300', 'N', '118.98349', '30.6238'),
(1168, 0, '福建', '福建省', '中国,福建省', 1, 'fujian', '', '', 'F', '119.306239', '26.075302'),
(1169, 1168, '福州', '福州市', '中国,福建省,福州市', 2, 'fuzhou', '0591', '350001', 'F', '119.306239', '26.075302'),
(1170, 1169, '鼓楼', '鼓楼区', '中国,福建省,福州市,鼓楼区', 3, 'gulou', '0591', '350001', 'G', '119.30384', '26.08225'),
(1171, 1169, '台江', '台江区', '中国,福建省,福州市,台江区', 3, 'taijiang', '0591', '350004', 'T', '119.30899', '26.06204'),
(1172, 1169, '仓山', '仓山区', '中国,福建省,福州市,仓山区', 3, 'cangshan', '0591', '350007', 'C', '119.31543', '26.04335'),
(1173, 1169, '马尾', '马尾区', '中国,福建省,福州市,马尾区', 3, 'mawei', '0591', '350015', 'M', '119.4555', '25.98942'),
(1174, 1169, '晋安', '晋安区', '中国,福建省,福州市,晋安区', 3, 'jin\'an', '0591', '350011', 'J', '119.32828', '26.0818'),
(1175, 1169, '闽侯', '闽侯县', '中国,福建省,福州市,闽侯县', 3, 'minhou', '0591', '350100', 'M', '119.13388', '26.15014'),
(1176, 1169, '连江', '连江县', '中国,福建省,福州市,连江县', 3, 'lianjiang', '0591', '350500', 'L', '119.53433', '26.19466'),
(1177, 1169, '罗源', '罗源县', '中国,福建省,福州市,罗源县', 3, 'luoyuan', '0591', '350600', 'L', '119.5509', '26.48752'),
(1178, 1169, '闽清', '闽清县', '中国,福建省,福州市,闽清县', 3, 'minqing', '0591', '350800', 'M', '118.8623', '26.21901'),
(1179, 1169, '永泰', '永泰县', '中国,福建省,福州市,永泰县', 3, 'yongtai', '0591', '350700', 'Y', '118.936', '25.86816'),
(1180, 1169, '平潭', '平潭县', '中国,福建省,福州市,平潭县', 3, 'pingtan', '0591', '350400', 'P', '119.791197', '25.503672'),
(1181, 1169, '福清', '福清市', '中国,福建省,福州市,福清市', 3, 'fuqing', '0591', '350300', 'F', '119.38507', '25.72086'),
(1182, 1169, '长乐', '长乐市', '中国,福建省,福州市,长乐市', 3, 'changle', '0591', '350200', 'C', '119.52313', '25.96276'),
(1183, 1168, '厦门', '厦门市', '中国,福建省,厦门市', 2, 'xiamen', '0592', '361003', 'X', '118.11022', '24.490474'),
(1184, 1183, '思明', '思明区', '中国,福建省,厦门市,思明区', 3, 'siming', '0592', '361001', 'S', '118.08233', '24.44543'),
(1185, 1183, '海沧', '海沧区', '中国,福建省,厦门市,海沧区', 3, 'haicang', '0592', '361026', 'H', '118.03289', '24.48461'),
(1186, 1183, '湖里', '湖里区', '中国,福建省,厦门市,湖里区', 3, 'huli', '0592', '361006', 'H', '118.14621', '24.51253'),
(1187, 1183, '集美', '集美区', '中国,福建省,厦门市,集美区', 3, 'jimei', '0592', '361021', 'J', '118.09719', '24.57584'),
(1188, 1183, '同安', '同安区', '中国,福建省,厦门市,同安区', 3, 'tong\'an', '0592', '361100', 'T', '118.15197', '24.72308'),
(1189, 1183, '翔安', '翔安区', '中国,福建省,厦门市,翔安区', 3, 'xiang\'an', '0592', '361101', 'X', '118.24783', '24.61863'),
(1190, 1168, '莆田', '莆田市', '中国,福建省,莆田市', 2, 'putian', '0594', '351100', 'P', '119.007558', '25.431011'),
(1191, 1190, '城厢', '城厢区', '中国,福建省,莆田市,城厢区', 3, 'chengxiang', '0594', '351100', 'C', '118.99462', '25.41872'),
(1192, 1190, '涵江', '涵江区', '中国,福建省,莆田市,涵江区', 3, 'hanjiang', '0594', '351111', 'H', '119.11621', '25.45876'),
(1193, 1190, '荔城', '荔城区', '中国,福建省,莆田市,荔城区', 3, 'licheng', '0594', '351100', 'L', '119.01339', '25.43369'),
(1194, 1190, '秀屿', '秀屿区', '中国,福建省,莆田市,秀屿区', 3, 'xiuyu', '0594', '351152', 'X', '119.10553', '25.31831'),
(1195, 1190, '仙游', '仙游县', '中国,福建省,莆田市,仙游县', 3, 'xianyou', '0594', '351200', 'X', '118.69177', '25.36214'),
(1196, 1168, '三明', '三明市', '中国,福建省,三明市', 2, 'sanming', '0598', '365000', 'S', '117.635001', '26.265444'),
(1197, 1196, '梅列', '梅列区', '中国,福建省,三明市,梅列区', 3, 'meilie', '0598', '365000', 'M', '117.64585', '26.27171'),
(1198, 1196, '三元', '三元区', '中国,福建省,三明市,三元区', 3, 'sanyuan', '0598', '365001', 'S', '117.60788', '26.23372'),
(1199, 1196, '明溪', '明溪县', '中国,福建省,三明市,明溪县', 3, 'mingxi', '0598', '365200', 'M', '117.20498', '26.35294'),
(1200, 1196, '清流', '清流县', '中国,福建省,三明市,清流县', 3, 'qingliu', '0598', '365300', 'Q', '116.8146', '26.17144'),
(1201, 1196, '宁化', '宁化县', '中国,福建省,三明市,宁化县', 3, 'ninghua', '0598', '365400', 'N', '116.66101', '26.25874'),
(1202, 1196, '大田', '大田县', '中国,福建省,三明市,大田县', 3, 'datian', '0598', '366100', 'D', '117.8471', '25.6926'),
(1203, 1196, '尤溪', '尤溪县', '中国,福建省,三明市,尤溪县', 3, 'youxi', '0598', '365100', 'Y', '118.19049', '26.17002'),
(1204, 1196, '沙县', '沙县', '中国,福建省,三明市,沙县', 3, 'shaxian', '0598', '365500', 'S', '117.79266', '26.39615'),
(1205, 1196, '将乐', '将乐县', '中国,福建省,三明市,将乐县', 3, 'jiangle', '0598', '353300', 'J', '117.47317', '26.72837'),
(1206, 1196, '泰宁', '泰宁县', '中国,福建省,三明市,泰宁县', 3, 'taining', '0598', '354400', 'T', '117.17578', '26.9001'),
(1207, 1196, '建宁', '建宁县', '中国,福建省,三明市,建宁县', 3, 'jianning', '0598', '354500', 'J', '116.84603', '26.83091'),
(1208, 1196, '永安', '永安市', '中国,福建省,三明市,永安市', 3, 'yong\'an', '0598', '366000', 'Y', '117.36517', '25.94136'),
(1209, 1168, '泉州', '泉州市', '中国,福建省,泉州市', 2, 'quanzhou', '0595', '362000', 'Q', '118.589421', '24.908853'),
(1210, 1209, '鲤城', '鲤城区', '中国,福建省,泉州市,鲤城区', 3, 'licheng', '0595', '362000', 'L', '118.56591', '24.88741'),
(1211, 1209, '丰泽', '丰泽区', '中国,福建省,泉州市,丰泽区', 3, 'fengze', '0595', '362000', 'F', '118.61328', '24.89119'),
(1212, 1209, '洛江', '洛江区', '中国,福建省,泉州市,洛江区', 3, 'luojiang', '0595', '362011', 'L', '118.67111', '24.93984'),
(1213, 1209, '泉港', '泉港区', '中国,福建省,泉州市,泉港区', 3, 'quangang', '0595', '362114', 'Q', '118.91586', '25.12005'),
(1214, 1209, '惠安', '惠安县', '中国,福建省,泉州市,惠安县', 3, 'hui\'an', '0595', '362100', 'H', '118.79687', '25.03059'),
(1215, 1209, '安溪', '安溪县', '中国,福建省,泉州市,安溪县', 3, 'anxi', '0595', '362400', 'A', '118.18719', '25.05627'),
(1216, 1209, '永春', '永春县', '中国,福建省,泉州市,永春县', 3, 'yongchun', '0595', '362600', 'Y', '118.29437', '25.32183'),
(1217, 1209, '德化', '德化县', '中国,福建省,泉州市,德化县', 3, 'dehua', '0595', '362500', 'D', '118.24176', '25.49224'),
(1218, 1209, '金门', '金门县', '中国,福建省,泉州市,金门县', 3, 'jinmen', '', '', 'J', '118.32263', '24.42922'),
(1219, 1209, '石狮', '石狮市', '中国,福建省,泉州市,石狮市', 3, 'shishi', '0595', '362700', 'S', '118.64779', '24.73242'),
(1220, 1209, '晋江', '晋江市', '中国,福建省,泉州市,晋江市', 3, 'jinjiang', '0595', '362200', 'J', '118.55194', '24.78141'),
(1221, 1209, '南安', '南安市', '中国,福建省,泉州市,南安市', 3, 'nan\'an', '0595', '362300', 'N', '118.38589', '24.96055'),
(1222, 1168, '漳州', '漳州市', '中国,福建省,漳州市', 2, 'zhangzhou', '0596', '363005', 'Z', '117.661801', '24.510897'),
(1223, 1222, '芗城', '芗城区', '中国,福建省,漳州市,芗城区', 3, 'xiangcheng', '0596', '363000', NULL, '117.65402', '24.51081'),
(1224, 1222, '龙文', '龙文区', '中国,福建省,漳州市,龙文区', 3, 'longwen', '0596', '363005', 'L', '117.70971', '24.50323'),
(1225, 1222, '云霄', '云霄县', '中国,福建省,漳州市,云霄县', 3, 'yunxiao', '0596', '363300', 'Y', '117.34051', '23.95534'),
(1226, 1222, '漳浦', '漳浦县', '中国,福建省,漳州市,漳浦县', 3, 'zhangpu', '0596', '363200', 'Z', '117.61367', '24.11706'),
(1227, 1222, '诏安', '诏安县', '中国,福建省,漳州市,诏安县', 3, 'zhao\'an', '0596', '363500', NULL, '117.17501', '23.71148'),
(1228, 1222, '长泰', '长泰县', '中国,福建省,漳州市,长泰县', 3, 'changtai', '0596', '363900', 'C', '117.75924', '24.62526'),
(1229, 1222, '东山', '东山县', '中国,福建省,漳州市,东山县', 3, 'dongshan', '0596', '363400', 'D', '117.42822', '23.70109'),
(1230, 1222, '南靖', '南靖县', '中国,福建省,漳州市,南靖县', 3, 'nanjing', '0596', '363600', 'N', '117.35736', '24.51448'),
(1231, 1222, '平和', '平和县', '中国,福建省,漳州市,平和县', 3, 'pinghe', '0596', '363700', 'P', '117.3124', '24.36395'),
(1232, 1222, '华安', '华安县', '中国,福建省,漳州市,华安县', 3, 'hua\'an', '0596', '363800', 'H', '117.54077', '25.00563'),
(1233, 1222, '龙海', '龙海市', '中国,福建省,漳州市,龙海市', 3, 'longhai', '0596', '363100', 'L', '117.81802', '24.44655'),
(1234, 1168, '南平', '南平市', '中国,福建省,南平市', 2, 'nanping', '0599', '353000', 'N', '118.178459', '26.635627'),
(1235, 1234, '延平', '延平区', '中国,福建省,南平市,延平区', 3, 'yanping', '0600', '353000', 'Y', '118.18189', '26.63745'),
(1236, 1234, '建阳', '建阳区', '中国,福建省,南平市,建阳区', 3, 'jianyang', '0599', '354200', 'J', '118.12267', '27.332067'),
(1237, 1234, '顺昌', '顺昌县', '中国,福建省,南平市,顺昌县', 3, 'shunchang', '0605', '353200', 'S', '117.8103', '26.79298'),
(1238, 1234, '浦城', '浦城县', '中国,福建省,南平市,浦城县', 3, 'pucheng', '0606', '353400', 'P', '118.54007', '27.91888'),
(1239, 1234, '光泽', '光泽县', '中国,福建省,南平市,光泽县', 3, 'guangze', '0607', '354100', 'G', '117.33346', '27.54231'),
(1240, 1234, '松溪', '松溪县', '中国,福建省,南平市,松溪县', 3, 'songxi', '0608', '353500', 'S', '118.78533', '27.52624'),
(1241, 1234, '政和', '政和县', '中国,福建省,南平市,政和县', 3, 'zhenghe', '0609', '353600', 'Z', '118.85571', '27.36769'),
(1242, 1234, '邵武', '邵武市', '中国,福建省,南平市,邵武市', 3, 'shaowu', '0601', '354000', 'S', '117.4924', '27.34033'),
(1243, 1234, '武夷山', '武夷山市', '中国,福建省,南平市,武夷山市', 3, 'wuyishan', '0602', '354300', 'W', '118.03665', '27.75543'),
(1244, 1234, '建瓯', '建瓯市', '中国,福建省,南平市,建瓯市', 3, 'jianou', '0603', '353100', 'J', '118.29766', '27.02301'),
(1245, 1168, '龙岩', '龙岩市', '中国,福建省,龙岩市', 2, 'longyan', '0597', '364000', 'L', '117.02978', '25.091603'),
(1246, 1245, '新罗', '新罗区', '中国,福建省,龙岩市,新罗区', 3, 'xinluo', '0597', '364000', 'X', '117.03693', '25.09834'),
(1247, 1245, '长汀', '长汀县', '中国,福建省,龙岩市,长汀县', 3, 'changting', '0597', '366300', 'C', '116.35888', '25.82773'),
(1248, 1245, '永定', '永定区', '中国,福建省,龙岩市,永定区', 3, 'yongding', '0597', '364100', 'Y', '116.73199', '24.72302'),
(1249, 1245, '上杭', '上杭县', '中国,福建省,龙岩市,上杭县', 3, 'shanghang', '0597', '364200', 'S', '116.42022', '25.04943'),
(1250, 1245, '武平', '武平县', '中国,福建省,龙岩市,武平县', 3, 'wuping', '0597', '364300', 'W', '116.10229', '25.09244'),
(1251, 1245, '连城', '连城县', '中国,福建省,龙岩市,连城县', 3, 'liancheng', '0597', '366200', 'L', '116.75454', '25.7103'),
(1252, 1245, '漳平', '漳平市', '中国,福建省,龙岩市,漳平市', 3, 'zhangping', '0597', '364400', 'Z', '117.41992', '25.29109'),
(1253, 1168, '宁德', '宁德市', '中国,福建省,宁德市', 2, 'ningde', '0593', '352100', 'N', '119.527082', '26.65924'),
(1254, 1253, '蕉城', '蕉城区', '中国,福建省,宁德市,蕉城区', 3, 'jiaocheng', '0593', '352100', 'J', '119.52643', '26.66048'),
(1255, 1253, '霞浦', '霞浦县', '中国,福建省,宁德市,霞浦县', 3, 'xiapu', '0593', '355100', 'X', '119.99893', '26.88578'),
(1256, 1253, '古田', '古田县', '中国,福建省,宁德市,古田县', 3, 'gutian', '0593', '352200', 'G', '118.74688', '26.57682'),
(1257, 1253, '屏南', '屏南县', '中国,福建省,宁德市,屏南县', 3, 'pingnan', '0593', '352300', 'P', '118.98861', '26.91099'),
(1258, 1253, '寿宁', '寿宁县', '中国,福建省,宁德市,寿宁县', 3, 'shouning', '0593', '355500', 'S', '119.5039', '27.45996'),
(1259, 1253, '周宁', '周宁县', '中国,福建省,宁德市,周宁县', 3, 'zhouning', '0593', '355400', 'Z', '119.33837', '27.10664'),
(1260, 1253, '柘荣', '柘荣县', '中国,福建省,宁德市,柘荣县', 3, 'zherong', '0593', '355300', NULL, '119.89971', '27.23543'),
(1261, 1253, '福安', '福安市', '中国,福建省,宁德市,福安市', 3, 'fu\'an', '0593', '355000', 'F', '119.6495', '27.08673'),
(1262, 1253, '福鼎', '福鼎市', '中国,福建省,宁德市,福鼎市', 3, 'fuding', '0593', '355200', 'F', '120.21664', '27.3243'),
(1263, 0, '江西', '江西省', '中国,江西省', 1, 'jiangxi', '', '', 'J', '115.892151', '28.676493'),
(1264, 1263, '南昌', '南昌市', '中国,江西省,南昌市', 2, 'nanchang', '0791', '330008', 'N', '115.892151', '28.676493'),
(1265, 1264, '东湖', '东湖区', '中国,江西省,南昌市,东湖区', 3, 'donghu', '0791', '330006', 'D', '115.8988', '28.68505'),
(1266, 1264, '西湖', '西湖区', '中国,江西省,南昌市,西湖区', 3, 'xihu', '0791', '330009', 'X', '115.87728', '28.65688'),
(1267, 1264, '青云谱', '青云谱区', '中国,江西省,南昌市,青云谱区', 3, 'qingyunpu', '0791', '330001', 'Q', '115.915', '28.63199'),
(1268, 1264, '湾里', '湾里区', '中国,江西省,南昌市,湾里区', 3, 'wanli', '0791', '330004', 'W', '115.73104', '28.71529'),
(1269, 1264, '青山湖', '青山湖区', '中国,江西省,南昌市,青山湖区', 3, 'qingshanhu', '0791', '330029', 'Q', '115.9617', '28.68206'),
(1270, 1264, '南昌', '南昌县', '中国,江西省,南昌市,南昌县', 3, 'nanchang', '0791', '330200', 'N', '115.94393', '28.54559'),
(1271, 1264, '新建', '新建县', '中国,江西省,南昌市,新建县', 3, 'xinjian', '0791', '330100', 'X', '115.81546', '28.69248'),
(1272, 1264, '安义', '安义县', '中国,江西省,南昌市,安义县', 3, 'anyi', '0791', '330500', 'A', '115.54879', '28.84602'),
(1273, 1264, '进贤', '进贤县', '中国,江西省,南昌市,进贤县', 3, 'jinxian', '0791', '331700', 'J', '116.24087', '28.37679'),
(1274, 1263, '景德镇', '景德镇市', '中国,江西省,景德镇市', 2, 'jingdezhen', '0798', '333000', 'J', '117.214664', '29.29256'),
(1275, 1274, '昌江', '昌江区', '中国,江西省,景德镇市,昌江区', 3, 'changjiang', '0799', '333000', 'C', '117.18359', '29.27321'),
(1276, 1274, '珠山', '珠山区', '中国,江西省,景德镇市,珠山区', 3, 'zhushan', '0800', '333000', 'Z', '117.20233', '29.30127'),
(1277, 1274, '浮梁', '浮梁县', '中国,江西省,景德镇市,浮梁县', 3, 'fuliang', '0802', '333400', 'F', '117.21517', '29.35156'),
(1278, 1274, '乐平', '乐平市', '中国,江西省,景德镇市,乐平市', 3, 'leping', '0801', '333300', 'L', '117.12887', '28.96295'),
(1279, 1263, '萍乡', '萍乡市', '中国,江西省,萍乡市', 2, 'pingxiang', '0799', '337000', 'P', '113.852186', '27.622946'),
(1280, 1279, '安源', '安源区', '中国,江西省,萍乡市,安源区', 3, 'anyuan', '0800', '337000', 'A', '113.89135', '27.61653'),
(1281, 1279, '湘东', '湘东区', '中国,江西省,萍乡市,湘东区', 3, 'xiangdong', '0801', '337016', 'X', '113.73294', '27.64007'),
(1282, 1279, '莲花', '莲花县', '中国,江西省,萍乡市,莲花县', 3, 'lianhua', '0802', '337100', 'L', '113.96142', '27.12866'),
(1283, 1279, '上栗', '上栗县', '中国,江西省,萍乡市,上栗县', 3, 'shangli', '0803', '337009', 'S', '113.79403', '27.87467'),
(1284, 1279, '芦溪', '芦溪县', '中国,江西省,萍乡市,芦溪县', 3, 'luxi', '0804', '337053', 'L', '114.02951', '27.63063'),
(1285, 1263, '九江', '九江市', '中国,江西省,九江市', 2, 'jiujiang', '0792', '332000', 'J', '115.992811', '29.712034'),
(1286, 1285, '庐山', '庐山区', '中国,江西省,九江市,庐山区', 3, 'lushan', '0792', '332005', 'L', '115.98904', '29.67177'),
(1287, 1285, '浔阳', '浔阳区', '中国,江西省,九江市,浔阳区', 3, 'xunyang', '0792', '332000', NULL, '115.98986', '29.72786'),
(1288, 1285, '九江', '九江县', '中国,江西省,九江市,九江县', 3, 'jiujiang', '0792', '332100', 'J', '115.91128', '29.60852'),
(1289, 1285, '武宁', '武宁县', '中国,江西省,九江市,武宁县', 3, 'wuning', '0792', '332300', 'W', '115.10061', '29.2584'),
(1290, 1285, '修水', '修水县', '中国,江西省,九江市,修水县', 3, 'xiushui', '0792', '332400', 'X', '114.54684', '29.02539'),
(1291, 1285, '永修', '永修县', '中国,江西省,九江市,永修县', 3, 'yongxiu', '0792', '330300', 'Y', '115.80911', '29.02093'),
(1292, 1285, '德安', '德安县', '中国,江西省,九江市,德安县', 3, 'de\'an', '0792', '330400', 'D', '115.75601', '29.31341'),
(1293, 1285, '星子', '星子县', '中国,江西省,九江市,星子县', 3, 'xingzi', '0792', '332800', 'X', '116.04492', '29.44608'),
(1294, 1285, '都昌', '都昌县', '中国,江西省,九江市,都昌县', 3, 'duchang', '0792', '332600', 'D', '116.20401', '29.27327'),
(1295, 1285, '湖口', '湖口县', '中国,江西省,九江市,湖口县', 3, 'hukou', '0792', '332500', 'H', '116.21853', '29.73818'),
(1296, 1285, '彭泽', '彭泽县', '中国,江西省,九江市,彭泽县', 3, 'pengze', '0792', '332700', 'P', '116.55011', '29.89589'),
(1297, 1285, '瑞昌', '瑞昌市', '中国,江西省,九江市,瑞昌市', 3, 'ruichang', '0792', '332200', 'R', '115.66705', '29.67183'),
(1298, 1285, '共青城', '共青城市', '中国,江西省,九江市,共青城市', 3, 'gongqingcheng', '0792', '332020', 'G', '115.801939', '29.238785'),
(1299, 1263, '新余', '新余市', '中国,江西省,新余市', 2, 'xinyu', '0790', '338025', 'X', '114.930835', '27.810834'),
(1300, 1299, '渝水', '渝水区', '中国,江西省,新余市,渝水区', 3, 'yushui', '0790', '338025', 'Y', '114.944', '27.80098'),
(1301, 1299, '分宜', '分宜县', '中国,江西省,新余市,分宜县', 3, 'fenyi', '0790', '336600', 'F', '114.69189', '27.81475'),
(1302, 1263, '鹰潭', '鹰潭市', '中国,江西省,鹰潭市', 2, 'yingtan', '0701', '335000', 'Y', '117.033838', '28.238638'),
(1303, 1302, '月湖', '月湖区', '中国,江西省,鹰潭市,月湖区', 3, 'yuehu', '0701', '335000', 'Y', '117.03732', '28.23913'),
(1304, 1302, '余江', '余江县', '中国,江西省,鹰潭市,余江县', 3, 'yujiang', '0701', '335200', 'Y', '116.81851', '28.21034'),
(1305, 1302, '贵溪', '贵溪市', '中国,江西省,鹰潭市,贵溪市', 3, 'guixi', '0701', '335400', 'G', '117.24246', '28.2926'),
(1306, 1263, '赣州', '赣州市', '中国,江西省,赣州市', 2, 'ganzhou', '0797', '341000', 'G', '114.940278', '25.85097'),
(1307, 1306, '章贡', '章贡区', '中国,江西省,赣州市,章贡区', 3, 'zhanggong', '0797', '341000', 'Z', '114.94284', '25.8624'),
(1308, 1306, '南康', '南康区', '中国,江西省,赣州市,南康区', 3, 'nankang', '0797', '341400', 'N', '114.756933', '25.661721'),
(1309, 1306, '赣县', '赣县', '中国,江西省,赣州市,赣县', 3, 'ganxian', '0797', '341100', 'G', '115.01171', '25.86149'),
(1310, 1306, '信丰', '信丰县', '中国,江西省,赣州市,信丰县', 3, 'xinfeng', '0797', '341600', 'X', '114.92279', '25.38612'),
(1311, 1306, '大余', '大余县', '中国,江西省,赣州市,大余县', 3, 'dayu', '0797', '341500', 'D', '114.35757', '25.39561'),
(1312, 1306, '上犹', '上犹县', '中国,江西省,赣州市,上犹县', 3, 'shangyou', '0797', '341200', 'S', '114.54138', '25.79567'),
(1313, 1306, '崇义', '崇义县', '中国,江西省,赣州市,崇义县', 3, 'chongyi', '0797', '341300', 'C', '114.30835', '25.68186'),
(1314, 1306, '安远', '安远县', '中国,江西省,赣州市,安远县', 3, 'anyuan', '0797', '342100', 'A', '115.39483', '25.1371'),
(1315, 1306, '龙南', '龙南县', '中国,江西省,赣州市,龙南县', 3, 'longnan', '0797', '341700', 'L', '114.78994', '24.91086'),
(1316, 1306, '定南', '定南县', '中国,江西省,赣州市,定南县', 3, 'dingnan', '0797', '341900', 'D', '115.02713', '24.78395'),
(1317, 1306, '全南', '全南县', '中国,江西省,赣州市,全南县', 3, 'quannan', '0797', '341800', 'Q', '114.5292', '24.74324'),
(1318, 1306, '宁都', '宁都县', '中国,江西省,赣州市,宁都县', 3, 'ningdu', '0797', '342800', 'N', '116.01565', '26.47227'),
(1319, 1306, '于都', '于都县', '中国,江西省,赣州市,于都县', 3, 'yudu', '0797', '342300', 'Y', '115.41415', '25.95257'),
(1320, 1306, '兴国', '兴国县', '中国,江西省,赣州市,兴国县', 3, 'xingguo', '0797', '342400', 'X', '115.36309', '26.33776'),
(1321, 1306, '会昌', '会昌县', '中国,江西省,赣州市,会昌县', 3, 'huichang', '0797', '342600', 'H', '115.78555', '25.60068'),
(1322, 1306, '寻乌', '寻乌县', '中国,江西省,赣州市,寻乌县', 3, 'xunwu', '0797', '342200', 'X', '115.64852', '24.95513'),
(1323, 1306, '石城', '石城县', '中国,江西省,赣州市,石城县', 3, 'shicheng', '0797', '342700', 'S', '116.3442', '26.32617'),
(1324, 1306, '瑞金', '瑞金市', '中国,江西省,赣州市,瑞金市', 3, 'ruijin', '0797', '342500', 'R', '116.02703', '25.88557'),
(1325, 1263, '吉安', '吉安市', '中国,江西省,吉安市', 2, 'ji\'an', '0796', '343000', 'J', '114.986373', '27.111699'),
(1326, 1325, '吉州', '吉州区', '中国,江西省,吉安市,吉州区', 3, 'jizhou', '0796', '343000', 'J', '114.97598', '27.10669'),
(1327, 1325, '青原', '青原区', '中国,江西省,吉安市,青原区', 3, 'qingyuan', '0796', '343009', 'Q', '115.01747', '27.10577'),
(1328, 1325, '吉安', '吉安县', '中国,江西省,吉安市,吉安县', 3, 'ji\'an', '0796', '343100', 'J', '114.90695', '27.04048'),
(1329, 1325, '吉水', '吉水县', '中国,江西省,吉安市,吉水县', 3, 'jishui', '0796', '331600', 'J', '115.1343', '27.21071'),
(1330, 1325, '峡江', '峡江县', '中国,江西省,吉安市,峡江县', 3, 'xiajiang', '0796', '331409', 'X', '115.31723', '27.576'),
(1331, 1325, '新干', '新干县', '中国,江西省,吉安市,新干县', 3, 'xingan', '0796', '331300', 'X', '115.39306', '27.74092'),
(1332, 1325, '永丰', '永丰县', '中国,江西省,吉安市,永丰县', 3, 'yongfeng', '0796', '331500', 'Y', '115.44238', '27.31785'),
(1333, 1325, '泰和', '泰和县', '中国,江西省,吉安市,泰和县', 3, 'taihe', '0796', '343700', 'T', '114.90789', '26.79113'),
(1334, 1325, '遂川', '遂川县', '中国,江西省,吉安市,遂川县', 3, 'suichuan', '0796', '343900', 'S', '114.51629', '26.32598'),
(1335, 1325, '万安', '万安县', '中国,江西省,吉安市,万安县', 3, 'wan\'an', '0796', '343800', 'W', '114.78659', '26.45931'),
(1336, 1325, '安福', '安福县', '中国,江西省,吉安市,安福县', 3, 'anfu', '0796', '343200', 'A', '114.61956', '27.39276'),
(1337, 1325, '永新', '永新县', '中国,江西省,吉安市,永新县', 3, 'yongxin', '0796', '343400', 'Y', '114.24246', '26.94488'),
(1338, 1325, '井冈山', '井冈山市', '中国,江西省,吉安市,井冈山市', 3, 'jinggangshan', '0796', '343600', 'J', '114.28949', '26.74804'),
(1339, 1263, '宜春', '宜春市', '中国,江西省,宜春市', 2, 'yichun', '0795', '336000', 'Y', '114.391136', '27.8043'),
(1340, 1339, '袁州', '袁州区', '中国,江西省,宜春市,袁州区', 3, 'yuanzhou', '0795', '336000', 'Y', '114.38246', '27.79649'),
(1341, 1339, '奉新', '奉新县', '中国,江西省,宜春市,奉新县', 3, 'fengxin', '0795', '330700', 'F', '115.40036', '28.6879'),
(1342, 1339, '万载', '万载县', '中国,江西省,宜春市,万载县', 3, 'wanzai', '0795', '336100', 'W', '114.4458', '28.10656'),
(1343, 1339, '上高', '上高县', '中国,江西省,宜春市,上高县', 3, 'shanggao', '0795', '336400', 'S', '114.92459', '28.23423'),
(1344, 1339, '宜丰', '宜丰县', '中国,江西省,宜春市,宜丰县', 3, 'yifeng', '0795', '336300', 'Y', '114.7803', '28.38555'),
(1345, 1339, '靖安', '靖安县', '中国,江西省,宜春市,靖安县', 3, 'jing\'an', '0795', '330600', 'J', '115.36279', '28.86167'),
(1346, 1339, '铜鼓', '铜鼓县', '中国,江西省,宜春市,铜鼓县', 3, 'tonggu', '0795', '336200', 'T', '114.37036', '28.52311'),
(1347, 1339, '丰城', '丰城市', '中国,江西省,宜春市,丰城市', 3, 'fengcheng', '0795', '331100', 'F', '115.77114', '28.15918'),
(1348, 1339, '樟树', '樟树市', '中国,江西省,宜春市,樟树市', 3, 'zhangshu', '0795', '331200', 'Z', '115.5465', '28.05332'),
(1349, 1339, '高安', '高安市', '中国,江西省,宜春市,高安市', 3, 'gao\'an', '0795', '330800', 'G', '115.3753', '28.4178'),
(1350, 1263, '抚州', '抚州市', '中国,江西省,抚州市', 2, 'fuzhou', '0794', '344000', 'F', '116.358351', '27.98385'),
(1351, 1350, '临川', '临川区', '中国,江西省,抚州市,临川区', 3, 'linchuan', '0794', '344000', 'L', '116.35919', '27.97721'),
(1352, 1350, '南城', '南城县', '中国,江西省,抚州市,南城县', 3, 'nancheng', '0794', '344700', 'N', '116.64419', '27.55381'),
(1353, 1350, '黎川', '黎川县', '中国,江西省,抚州市,黎川县', 3, 'lichuan', '0794', '344600', 'L', '116.90771', '27.28232'),
(1354, 1350, '南丰', '南丰县', '中国,江西省,抚州市,南丰县', 3, 'nanfeng', '0794', '344500', 'N', '116.5256', '27.21842'),
(1355, 1350, '崇仁', '崇仁县', '中国,江西省,抚州市,崇仁县', 3, 'chongren', '0794', '344200', 'C', '116.06021', '27.75962'),
(1356, 1350, '乐安', '乐安县', '中国,江西省,抚州市,乐安县', 3, 'le\'an', '0794', '344300', 'L', '115.83108', '27.42812'),
(1357, 1350, '宜黄', '宜黄县', '中国,江西省,抚州市,宜黄县', 3, 'yihuang', '0794', '344400', 'Y', '116.23626', '27.55487'),
(1358, 1350, '金溪', '金溪县', '中国,江西省,抚州市,金溪县', 3, 'jinxi', '0794', '344800', 'J', '116.77392', '27.90753'),
(1359, 1350, '资溪', '资溪县', '中国,江西省,抚州市,资溪县', 3, 'zixi', '0794', '335300', 'Z', '117.06939', '27.70493'),
(1360, 1350, '东乡', '东乡县', '中国,江西省,抚州市,东乡县', 3, 'dongxiang', '0794', '331800', 'D', '116.59039', '28.23614'),
(1361, 1350, '广昌', '广昌县', '中国,江西省,抚州市,广昌县', 3, 'guangchang', '0794', '344900', 'G', '116.32547', '26.8341'),
(1362, 1263, '上饶', '上饶市', '中国,江西省,上饶市', 2, 'shangrao', '0793', '334000', 'S', '117.971185', '28.44442'),
(1363, 1362, '信州', '信州区', '中国,江西省,上饶市,信州区', 3, 'xinzhou', '0793', '334000', 'X', '117.96682', '28.43121'),
(1364, 1362, '上饶', '上饶县', '中国,江西省,上饶市,上饶县', 3, 'shangrao', '0793', '334100', 'S', '117.90884', '28.44856'),
(1365, 1362, '广丰', '广丰县', '中国,江西省,上饶市,广丰县', 3, 'guangfeng', '0793', '334600', 'G', '118.19158', '28.43766'),
(1366, 1362, '玉山', '玉山县', '中国,江西省,上饶市,玉山县', 3, 'yushan', '0793', '334700', 'Y', '118.24462', '28.6818'),
(1367, 1362, '铅山', '铅山县', '中国,江西省,上饶市,铅山县', 3, 'yanshan', '0793', '334500', 'Q', '117.70996', '28.31549'),
(1368, 1362, '横峰', '横峰县', '中国,江西省,上饶市,横峰县', 3, 'hengfeng', '0793', '334300', 'H', '117.5964', '28.40716'),
(1369, 1362, '弋阳', '弋阳县', '中国,江西省,上饶市,弋阳县', 3, 'yiyang', '0793', '334400', NULL, '117.45929', '28.37451'),
(1370, 1362, '余干', '余干县', '中国,江西省,上饶市,余干县', 3, 'yugan', '0793', '335100', 'Y', '116.69555', '28.70206'),
(1371, 1362, '鄱阳', '鄱阳县', '中国,江西省,上饶市,鄱阳县', 3, 'poyang', '0793', '333100', NULL, '116.69967', '29.0118'),
(1372, 1362, '万年', '万年县', '中国,江西省,上饶市,万年县', 3, 'wannian', '0793', '335500', 'W', '117.06884', '28.69537'),
(1373, 1362, '婺源', '婺源县', '中国,江西省,上饶市,婺源县', 3, 'wuyuan', '0793', '333200', NULL, '117.86105', '29.24841'),
(1374, 1362, '德兴', '德兴市', '中国,江西省,上饶市,德兴市', 3, 'dexing', '0793', '334200', 'D', '117.57919', '28.94736'),
(1375, 0, '山东', '山东省', '中国,山东省', 1, 'shandong', '', '', 'S', '117.000923', '36.675807'),
(1376, 1375, '济南', '济南市', '中国,山东省,济南市', 2, 'jinan', '0531', '250001', 'J', '117.000923', '36.675807'),
(1377, 1376, '历下', '历下区', '中国,山东省,济南市,历下区', 3, 'lixia', '0531', '250014', 'L', '117.0768', '36.66661'),
(1378, 1376, '市中区', '市中区', '中国,山东省,济南市,市中区', 3, 'shizhongqu', '0531', '250001', 'S', '116.99741', '36.65101'),
(1379, 1376, '槐荫', '槐荫区', '中国,山东省,济南市,槐荫区', 3, 'huaiyin', '0531', '250117', 'H', '116.90075', '36.65136'),
(1380, 1376, '天桥', '天桥区', '中国,山东省,济南市,天桥区', 3, 'tianqiao', '0531', '250031', 'T', '116.98749', '36.67801'),
(1381, 1376, '历城', '历城区', '中国,山东省,济南市,历城区', 3, 'licheng', '0531', '250100', 'L', '117.06509', '36.67995'),
(1382, 1376, '长清', '长清区', '中国,山东省,济南市,长清区', 3, 'changqing', '0531', '250300', 'C', '116.75192', '36.55352'),
(1383, 1376, '平阴', '平阴县', '中国,山东省,济南市,平阴县', 3, 'pingyin', '0531', '250400', 'P', '116.45587', '36.28955'),
(1384, 1376, '济阳', '济阳县', '中国,山东省,济南市,济阳县', 3, 'jiyang', '0531', '251400', 'J', '117.17327', '36.97845'),
(1385, 1376, '商河', '商河县', '中国,山东省,济南市,商河县', 3, 'shanghe', '0531', '251600', 'S', '117.15722', '37.31119'),
(1386, 1376, '章丘', '章丘市', '中国,山东省,济南市,章丘市', 3, 'zhangqiu', '0531', '250200', 'Z', '117.53677', '36.71392'),
(1387, 1375, '青岛', '青岛市', '中国,山东省,青岛市', 2, 'qingdao', '0532', '266001', 'Q', '120.369557', '36.094406'),
(1388, 1387, '市南', '市南区', '中国,山东省,青岛市,市南区', 3, 'shinan', '0532', '266001', 'S', '120.38773', '36.06671'),
(1389, 1387, '市北', '市北区', '中国,山东省,青岛市,市北区', 3, 'shibei', '0532', '266011', 'S', '120.37469', '36.08734'),
(1390, 1387, '黄岛', '黄岛区', '中国,山东省,青岛市,黄岛区', 3, 'huangdao', '0532', '266500', 'H', '120.19775', '35.96065'),
(1391, 1387, '崂山', '崂山区', '中国,山东省,青岛市,崂山区', 3, 'laoshan', '0532', '266100', NULL, '120.46923', '36.10717'),
(1392, 1387, '李沧', '李沧区', '中国,山东省,青岛市,李沧区', 3, 'licang', '0532', '266021', 'L', '120.43286', '36.14502'),
(1393, 1387, '城阳', '城阳区', '中国,山东省,青岛市,城阳区', 3, 'chengyang', '0532', '266041', 'C', '120.39621', '36.30735'),
(1394, 1387, '胶州', '胶州市', '中国,山东省,青岛市,胶州市', 3, 'jiaozhou', '0532', '266300', 'J', '120.0335', '36.26442'),
(1395, 1387, '即墨', '即墨市', '中国,山东省,青岛市,即墨市', 3, 'jimo', '0532', '266200', 'J', '120.44699', '36.38907'),
(1396, 1387, '平度', '平度市', '中国,山东省,青岛市,平度市', 3, 'pingdu', '0532', '266700', 'P', '119.95996', '36.78688'),
(1397, 1387, '莱西', '莱西市', '中国,山东省,青岛市,莱西市', 3, 'laixi', '0532', '266600', 'L', '120.51773', '36.88804'),
(1398, 1387, '西海岸', '西海岸新区', '中国,山东省,青岛市,西海岸新区', 3, 'xihai\'an', '0532', '266500', 'X', '120.19775', '35.96065'),
(1399, 1375, '淄博', '淄博市', '中国,山东省,淄博市', 2, 'zibo', '0533', '255039', 'Z', '118.047648', '36.814939'),
(1400, 1399, '淄川', '淄川区', '中国,山东省,淄博市,淄川区', 3, 'zichuan', '0533', '255100', 'Z', '117.96655', '36.64339'),
(1401, 1399, '张店', '张店区', '中国,山东省,淄博市,张店区', 3, 'zhangdian', '0533', '255022', 'Z', '118.01788', '36.80676'),
(1402, 1399, '博山', '博山区', '中国,山东省,淄博市,博山区', 3, 'boshan', '0533', '255200', 'B', '117.86166', '36.49469'),
(1403, 1399, '临淄', '临淄区', '中国,山东省,淄博市,临淄区', 3, 'linzi', '0533', '255400', 'L', '118.30966', '36.8259'),
(1404, 1399, '周村', '周村区', '中国,山东省,淄博市,周村区', 3, 'zhoucun', '0533', '255300', 'Z', '117.86969', '36.80322'),
(1405, 1399, '桓台', '桓台县', '中国,山东省,淄博市,桓台县', 3, 'huantai', '0533', '256400', 'H', '118.09698', '36.96036'),
(1406, 1399, '高青', '高青县', '中国,山东省,淄博市,高青县', 3, 'gaoqing', '0533', '256300', 'G', '117.82708', '37.17197'),
(1407, 1399, '沂源', '沂源县', '中国,山东省,淄博市,沂源县', 3, 'yiyuan', '0533', '256100', 'Y', '118.17105', '36.18536'),
(1408, 1375, '枣庄', '枣庄市', '中国,山东省,枣庄市', 2, 'zaozhuang', '0632', '277101', 'Z', '117.557964', '34.856424'),
(1409, 1408, '市中区', '市中区', '中国,山东省,枣庄市,市中区', 3, 'shizhongqu', '0632', '277101', 'S', '117.55603', '34.86391'),
(1410, 1408, '薛城', '薛城区', '中国,山东省,枣庄市,薛城区', 3, 'xuecheng', '0632', '277000', 'X', '117.26318', '34.79498'),
(1411, 1408, '峄城', '峄城区', '中国,山东省,枣庄市,峄城区', 3, 'yicheng', '0632', '277300', NULL, '117.59057', '34.77225'),
(1412, 1408, '台儿庄', '台儿庄区', '中国,山东省,枣庄市,台儿庄区', 3, 'taierzhuang', '0632', '277400', 'T', '117.73452', '34.56363'),
(1413, 1408, '山亭', '山亭区', '中国,山东省,枣庄市,山亭区', 3, 'shanting', '0632', '277200', 'S', '117.4663', '35.09541'),
(1414, 1408, '滕州', '滕州市', '中国,山东省,枣庄市,滕州市', 3, 'tengzhou', '0632', '277500', NULL, '117.165', '35.10534'),
(1415, 1375, '东营', '东营市', '中国,山东省,东营市', 2, 'dongying', '0546', '257093', 'D', '118.4963', '37.461266'),
(1416, 1415, '东营', '东营区', '中国,山东省,东营市,东营区', 3, 'dongying', '0546', '257029', 'D', '118.5816', '37.44875'),
(1417, 1415, '河口', '河口区', '中国,山东省,东营市,河口区', 3, 'hekou', '0546', '257200', 'H', '118.5249', '37.88541'),
(1418, 1415, '垦利', '垦利县', '中国,山东省,东营市,垦利县', 3, 'kenli', '0546', '257500', 'K', '118.54815', '37.58825'),
(1419, 1415, '利津', '利津县', '中国,山东省,东营市,利津县', 3, 'lijin', '0546', '257400', 'L', '118.25637', '37.49157'),
(1420, 1415, '广饶', '广饶县', '中国,山东省,东营市,广饶县', 3, 'guangrao', '0546', '257300', 'G', '118.40704', '37.05381'),
(1421, 1375, '烟台', '烟台市', '中国,山东省,烟台市', 2, 'yantai', '0635', '264010', 'Y', '121.391382', '37.539297'),
(1422, 1421, '芝罘', '芝罘区', '中国,山东省,烟台市,芝罘区', 3, 'zhifu', '0635', '264001', 'Z', '121.40023', '37.54064'),
(1423, 1421, '福山', '福山区', '中国,山东省,烟台市,福山区', 3, 'fushan', '0635', '265500', 'F', '121.26812', '37.49841'),
(1424, 1421, '牟平', '牟平区', '中国,山东省,烟台市,牟平区', 3, 'muping', '0635', '264100', 'M', '121.60067', '37.38846'),
(1425, 1421, '莱山', '莱山区', '中国,山东省,烟台市,莱山区', 3, 'laishan', '0635', '264600', 'L', '121.44512', '37.51165'),
(1426, 1421, '长岛', '长岛县', '中国,山东省,烟台市,长岛县', 3, 'changdao', '0635', '265800', 'C', '120.738', '37.91754'),
(1427, 1421, '龙口', '龙口市', '中国,山东省,烟台市,龙口市', 3, 'longkou', '0635', '265700', 'L', '120.50634', '37.64064'),
(1428, 1421, '莱阳', '莱阳市', '中国,山东省,烟台市,莱阳市', 3, 'laiyang', '0635', '265200', 'L', '120.71066', '36.98012'),
(1429, 1421, '莱州', '莱州市', '中国,山东省,烟台市,莱州市', 3, 'laizhou', '0635', '261400', 'L', '119.94137', '37.17806'),
(1430, 1421, '蓬莱', '蓬莱市', '中国,山东省,烟台市,蓬莱市', 3, 'penglai', '0635', '265600', 'P', '120.75988', '37.81119'),
(1431, 1421, '招远', '招远市', '中国,山东省,烟台市,招远市', 3, 'zhaoyuan', '0635', '265400', 'Z', '120.40481', '37.36269'),
(1432, 1421, '栖霞', '栖霞市', '中国,山东省,烟台市,栖霞市', 3, 'qixia', '0635', '265300', 'Q', '120.85025', '37.33571'),
(1433, 1421, '海阳', '海阳市', '中国,山东省,烟台市,海阳市', 3, 'haiyang', '0635', '265100', 'H', '121.15976', '36.77622'),
(1434, 1375, '潍坊', '潍坊市', '中国,山东省,潍坊市', 2, 'weifang', '0536', '261041', 'W', '119.107078', '36.70925'),
(1435, 1434, '潍城', '潍城区', '中国,山东省,潍坊市,潍城区', 3, 'weicheng', '0536', '261021', 'W', '119.10582', '36.7139');
INSERT INTO `sf_area` (`id`, `pid`, `shortname`, `name`, `mergename`, `level`, `pinyin`, `code`, `zip`, `first`, `lng`, `lat`) VALUES
(1436, 1434, '寒亭', '寒亭区', '中国,山东省,潍坊市,寒亭区', 3, 'hanting', '0536', '261100', 'H', '119.21832', '36.77504'),
(1437, 1434, '坊子', '坊子区', '中国,山东省,潍坊市,坊子区', 3, 'fangzi', '0536', '261200', 'F', '119.16476', '36.65218'),
(1438, 1434, '奎文', '奎文区', '中国,山东省,潍坊市,奎文区', 3, 'kuiwen', '0536', '261031', 'K', '119.12532', '36.70723'),
(1439, 1434, '临朐', '临朐县', '中国,山东省,潍坊市,临朐县', 3, 'linqu', '0536', '262600', 'L', '118.544', '36.51216'),
(1440, 1434, '昌乐', '昌乐县', '中国,山东省,潍坊市,昌乐县', 3, 'changle', '0536', '262400', 'C', '118.83017', '36.7078'),
(1441, 1434, '青州', '青州市', '中国,山东省,潍坊市,青州市', 3, 'qingzhou', '0536', '262500', 'Q', '118.47915', '36.68505'),
(1442, 1434, '诸城', '诸城市', '中国,山东省,潍坊市,诸城市', 3, 'zhucheng', '0536', '262200', 'Z', '119.40988', '35.99662'),
(1443, 1434, '寿光', '寿光市', '中国,山东省,潍坊市,寿光市', 3, 'shouguang', '0536', '262700', 'S', '118.74047', '36.88128'),
(1444, 1434, '安丘', '安丘市', '中国,山东省,潍坊市,安丘市', 3, 'anqiu', '0536', '262100', 'A', '119.2189', '36.47847'),
(1445, 1434, '高密', '高密市', '中国,山东省,潍坊市,高密市', 3, 'gaomi', '0536', '261500', 'G', '119.75701', '36.38397'),
(1446, 1434, '昌邑', '昌邑市', '中国,山东省,潍坊市,昌邑市', 3, 'changyi', '0536', '261300', 'C', '119.39767', '36.86008'),
(1447, 1375, '济宁', '济宁市', '中国,山东省,济宁市', 2, 'jining', '0537', '272119', 'J', '116.587245', '35.415393'),
(1448, 1447, '任城', '任城区', '中国,山东省,济宁市,任城区', 3, 'rencheng', '0537', '272113', 'R', '116.59504', '35.40659'),
(1449, 1447, '兖州', '兖州区', '中国,山东省,济宁市,兖州区', 3, 'yanzhou', '0537', '272000', NULL, '116.826546', '35.552305'),
(1450, 1447, '微山', '微山县', '中国,山东省,济宁市,微山县', 3, 'weishan', '0537', '277600', 'W', '117.12875', '34.80712'),
(1451, 1447, '鱼台', '鱼台县', '中国,山东省,济宁市,鱼台县', 3, 'yutai', '0537', '272300', 'Y', '116.64761', '34.99674'),
(1452, 1447, '金乡', '金乡县', '中国,山东省,济宁市,金乡县', 3, 'jinxiang', '0537', '272200', 'J', '116.31146', '35.065'),
(1453, 1447, '嘉祥', '嘉祥县', '中国,山东省,济宁市,嘉祥县', 3, 'jiaxiang', '0537', '272400', 'J', '116.34249', '35.40836'),
(1454, 1447, '汶上', '汶上县', '中国,山东省,济宁市,汶上县', 3, 'wenshang', '0537', '272501', NULL, '116.48742', '35.73295'),
(1455, 1447, '泗水', '泗水县', '中国,山东省,济宁市,泗水县', 3, 'sishui', '0537', '273200', NULL, '117.27948', '35.66113'),
(1456, 1447, '梁山', '梁山县', '中国,山东省,济宁市,梁山县', 3, 'liangshan', '0537', '272600', 'L', '116.09683', '35.80322'),
(1457, 1447, '曲阜', '曲阜市', '中国,山东省,济宁市,曲阜市', 3, 'qufu', '0537', '273100', 'Q', '116.98645', '35.58091'),
(1458, 1447, '邹城', '邹城市', '中国,山东省,济宁市,邹城市', 3, 'zoucheng', '0537', '273500', 'Z', '116.97335', '35.40531'),
(1459, 1375, '泰安', '泰安市', '中国,山东省,泰安市', 2, 'tai\'an', '0538', '271000', 'T', '117.129063', '36.194968'),
(1460, 1459, '泰山', '泰山区', '中国,山东省,泰安市,泰山区', 3, 'taishan', '0538', '271000', 'T', '117.13446', '36.19411'),
(1461, 1459, '岱岳', '岱岳区', '中国,山东省,泰安市,岱岳区', 3, 'daiyue', '0538', '271000', NULL, '117.04174', '36.1875'),
(1462, 1459, '宁阳', '宁阳县', '中国,山东省,泰安市,宁阳县', 3, 'ningyang', '0538', '271400', 'N', '116.80542', '35.7599'),
(1463, 1459, '东平', '东平县', '中国,山东省,泰安市,东平县', 3, 'dongping', '0538', '271500', 'D', '116.47113', '35.93792'),
(1464, 1459, '新泰', '新泰市', '中国,山东省,泰安市,新泰市', 3, 'xintai', '0538', '271200', 'X', '117.76959', '35.90887'),
(1465, 1459, '肥城', '肥城市', '中国,山东省,泰安市,肥城市', 3, 'feicheng', '0538', '271600', 'F', '116.76815', '36.18247'),
(1466, 1375, '威海', '威海市', '中国,山东省,威海市', 2, 'weihai', '0631', '264200', 'W', '122.116394', '37.509691'),
(1467, 1466, '环翠', '环翠区', '中国,山东省,威海市,环翠区', 3, 'huancui', '0631', '264200', 'H', '122.12344', '37.50199'),
(1468, 1466, '文登', '文登区', '中国,山东省,威海市,文登区', 3, 'wendeng', '0631', '266440', 'W', '122.057139', '37.196211'),
(1469, 1466, '荣成', '荣成市', '中国,山东省,威海市,荣成市', 3, 'rongcheng', '0631', '264300', 'R', '122.48773', '37.1652'),
(1470, 1466, '乳山', '乳山市', '中国,山东省,威海市,乳山市', 3, 'rushan', '0631', '264500', 'R', '121.53814', '36.91918'),
(1471, 1375, '日照', '日照市', '中国,山东省,日照市', 2, 'rizhao', '0633', '276800', 'R', '119.461208', '35.428588'),
(1472, 1471, '东港', '东港区', '中国,山东省,日照市,东港区', 3, 'donggang', '0633', '276800', 'D', '119.46237', '35.42541'),
(1473, 1471, '岚山', '岚山区', '中国,山东省,日照市,岚山区', 3, 'lanshan', '0633', '276808', NULL, '119.31884', '35.12203'),
(1474, 1471, '五莲', '五莲县', '中国,山东省,日照市,五莲县', 3, 'wulian', '0633', '262300', 'W', '119.207', '35.75004'),
(1475, 1471, '莒县', '莒县', '中国,山东省,日照市,莒县', 3, 'juxian', '0633', '276500', NULL, '118.83789', '35.58054'),
(1476, 1375, '莱芜', '莱芜市', '中国,山东省,莱芜市', 2, 'laiwu', '0634', '271100', 'L', '117.677736', '36.214397'),
(1477, 1476, '莱城', '莱城区', '中国,山东省,莱芜市,莱城区', 3, 'laicheng', '0634', '271199', 'L', '117.65986', '36.2032'),
(1478, 1476, '钢城', '钢城区', '中国,山东省,莱芜市,钢城区', 3, 'gangcheng', '0634', '271100', 'G', '117.8049', '36.06319'),
(1479, 1375, '临沂', '临沂市', '中国,山东省,临沂市', 2, 'linyi', '0539', '253000', 'L', '118.326443', '35.065282'),
(1480, 1479, '兰山', '兰山区', '中国,山东省,临沂市,兰山区', 3, 'lanshan', '0539', '276002', 'L', '118.34817', '35.06872'),
(1481, 1479, '罗庄', '罗庄区', '中国,山东省,临沂市,罗庄区', 3, 'luozhuang', '0539', '276022', 'L', '118.28466', '34.99627'),
(1482, 1479, '河东', '河东区', '中国,山东省,临沂市,河东区', 3, 'hedong', '0539', '276034', 'H', '118.41055', '35.08803'),
(1483, 1479, '沂南', '沂南县', '中国,山东省,临沂市,沂南县', 3, 'yinan', '0539', '276300', 'Y', '118.47061', '35.55131'),
(1484, 1479, '郯城', '郯城县', '中国,山东省,临沂市,郯城县', 3, 'tancheng', '0539', '276100', NULL, '118.36712', '34.61354'),
(1485, 1479, '沂水', '沂水县', '中国,山东省,临沂市,沂水县', 3, 'yishui', '0539', '276400', 'Y', '118.63009', '35.78731'),
(1486, 1479, '兰陵', '兰陵县', '中国,山东省,临沂市,兰陵县', 3, 'lanling', '0539', '277700', 'L', '117.856592', '34.738315'),
(1487, 1479, '费县', '费县', '中国,山东省,临沂市,费县', 3, 'feixian', '0539', '273400', 'F', '117.97836', '35.26562'),
(1488, 1479, '平邑', '平邑县', '中国,山东省,临沂市,平邑县', 3, 'pingyi', '0539', '273300', 'P', '117.63867', '35.50573'),
(1489, 1479, '莒南', '莒南县', '中国,山东省,临沂市,莒南县', 3, 'junan', '0539', '276600', NULL, '118.83227', '35.17539'),
(1490, 1479, '蒙阴', '蒙阴县', '中国,山东省,临沂市,蒙阴县', 3, 'mengyin', '0539', '276200', 'M', '117.94592', '35.70996'),
(1491, 1479, '临沭', '临沭县', '中国,山东省,临沂市,临沭县', 3, 'linshu', '0539', '276700', 'L', '118.65267', '34.92091'),
(1492, 1375, '德州', '德州市', '中国,山东省,德州市', 2, 'dezhou', '0534', '253000', 'D', '116.307428', '37.453968'),
(1493, 1492, '德城', '德城区', '中国,山东省,德州市,德城区', 3, 'decheng', '0534', '253012', 'D', '116.29943', '37.45126'),
(1494, 1492, '陵城', '陵城区', '中国,山东省,德州市,陵城区', 3, 'lingcheng', '0534', '253500', 'L', '116.57601', '37.33571'),
(1495, 1492, '宁津', '宁津县', '中国,山东省,德州市,宁津县', 3, 'ningjin', '0534', '253400', 'N', '116.79702', '37.65301'),
(1496, 1492, '庆云', '庆云县', '中国,山东省,德州市,庆云县', 3, 'qingyun', '0534', '253700', 'Q', '117.38635', '37.77616'),
(1497, 1492, '临邑', '临邑县', '中国,山东省,德州市,临邑县', 3, 'linyi', '0534', '251500', 'L', '116.86547', '37.19053'),
(1498, 1492, '齐河', '齐河县', '中国,山东省,德州市,齐河县', 3, 'qihe', '0534', '251100', 'Q', '116.75515', '36.79532'),
(1499, 1492, '平原', '平原县', '中国,山东省,德州市,平原县', 3, 'pingyuan', '0534', '253100', 'P', '116.43432', '37.16632'),
(1500, 1492, '夏津', '夏津县', '中国,山东省,德州市,夏津县', 3, 'xiajin', '0534', '253200', 'X', '116.0017', '36.94852'),
(1501, 1492, '武城', '武城县', '中国,山东省,德州市,武城县', 3, 'wucheng', '0534', '253300', 'W', '116.07009', '37.21403'),
(1502, 1492, '乐陵', '乐陵市', '中国,山东省,德州市,乐陵市', 3, 'leling', '0534', '253600', 'L', '117.23141', '37.73164'),
(1503, 1492, '禹城', '禹城市', '中国,山东省,德州市,禹城市', 3, 'yucheng', '0534', '251200', 'Y', '116.64309', '36.93444'),
(1504, 1375, '聊城', '聊城市', '中国,山东省,聊城市', 2, 'liaocheng', '0635', '252052', 'L', '115.980367', '36.456013'),
(1505, 1504, '东昌府', '东昌府区', '中国,山东省,聊城市,东昌府区', 3, 'dongchangfu', '0635', '252000', 'D', '115.97383', '36.44458'),
(1506, 1504, '阳谷', '阳谷县', '中国,山东省,聊城市,阳谷县', 3, 'yanggu', '0635', '252300', 'Y', '115.79126', '36.11444'),
(1507, 1504, '莘县', '莘县', '中国,山东省,聊城市,莘县', 3, 'shenxian', '0635', '252400', NULL, '115.6697', '36.23423'),
(1508, 1504, '茌平', '茌平县', '中国,山东省,聊城市,茌平县', 3, 'chiping', '0635', '252100', NULL, '116.25491', '36.57969'),
(1509, 1504, '东阿', '东阿县', '中国,山东省,聊城市,东阿县', 3, 'dong\'e', '0635', '252200', 'D', '116.25012', '36.33209'),
(1510, 1504, '冠县', '冠县', '中国,山东省,聊城市,冠县', 3, 'guanxian', '0635', '252500', 'G', '115.44195', '36.48429'),
(1511, 1504, '高唐', '高唐县', '中国,山东省,聊城市,高唐县', 3, 'gaotang', '0635', '252800', 'G', '116.23172', '36.86535'),
(1512, 1504, '临清', '临清市', '中国,山东省,聊城市,临清市', 3, 'linqing', '0635', '252600', 'L', '115.70629', '36.83945'),
(1513, 1375, '滨州', '滨州市', '中国,山东省,滨州市', 2, 'binzhou', '0543', '256619', 'B', '118.016974', '37.383542'),
(1514, 1513, '滨城', '滨城区', '中国,山东省,滨州市,滨城区', 3, 'bincheng', '0543', '256613', 'B', '118.02026', '37.38524'),
(1515, 1513, '沾化', '沾化区', '中国,山东省,滨州市,沾化区', 3, 'zhanhua', '0543', '256800', 'Z', '118.13214', '37.69832'),
(1516, 1513, '惠民', '惠民县', '中国,山东省,滨州市,惠民县', 3, 'huimin', '0543', '251700', 'H', '117.51113', '37.49013'),
(1517, 1513, '阳信', '阳信县', '中国,山东省,滨州市,阳信县', 3, 'yangxin', '0543', '251800', 'Y', '117.58139', '37.64198'),
(1518, 1513, '无棣', '无棣县', '中国,山东省,滨州市,无棣县', 3, 'wudi', '0543', '251900', 'W', '117.61395', '37.74009'),
(1519, 1513, '博兴', '博兴县', '中国,山东省,滨州市,博兴县', 3, 'boxing', '0543', '256500', 'B', '118.1336', '37.14316'),
(1520, 1513, '邹平', '邹平县', '中国,山东省,滨州市,邹平县', 3, 'zouping', '0543', '256200', 'Z', '117.74307', '36.86295'),
(1521, 1513, '北海新区', '北海新区', '中国,山东省,滨州市,北海新区', 3, 'beihaixinqu', '0543', '256200', 'B', '118.016974', '37.383542'),
(1522, 1375, '菏泽', '菏泽市', '中国,山东省,菏泽市', 2, 'heze', '0530', '274020', 'H', '115.469381', '35.246531'),
(1523, 1522, '牡丹', '牡丹区', '中国,山东省,菏泽市,牡丹区', 3, 'mudan', '0530', '274009', 'M', '115.41662', '35.25091'),
(1524, 1522, '曹县', '曹县', '中国,山东省,菏泽市,曹县', 3, 'caoxian', '0530', '274400', 'C', '115.54226', '34.82659'),
(1525, 1522, '单县', '单县', '中国,山东省,菏泽市,单县', 3, 'shanxian', '0530', '273700', 'D', '116.08703', '34.79514'),
(1526, 1522, '成武', '成武县', '中国,山东省,菏泽市,成武县', 3, 'chengwu', '0530', '274200', 'C', '115.8897', '34.95332'),
(1527, 1522, '巨野', '巨野县', '中国,山东省,菏泽市,巨野县', 3, 'juye', '0530', '274900', 'J', '116.09497', '35.39788'),
(1528, 1522, '郓城', '郓城县', '中国,山东省,菏泽市,郓城县', 3, 'yuncheng', '0530', '274700', NULL, '115.94439', '35.60044'),
(1529, 1522, '鄄城', '鄄城县', '中国,山东省,菏泽市,鄄城县', 3, 'juancheng', '0530', '274600', NULL, '115.50997', '35.56412'),
(1530, 1522, '定陶', '定陶县', '中国,山东省,菏泽市,定陶县', 3, 'dingtao', '0530', '274100', 'D', '115.57287', '35.07118'),
(1531, 1522, '东明', '东明县', '中国,山东省,菏泽市,东明县', 3, 'dongming', '0530', '274500', 'D', '115.09079', '35.28906'),
(1532, 0, '河南', '河南省', '中国,河南省', 1, 'henan', '', '', 'H', '113.665412', '34.757975'),
(1533, 1532, '郑州', '郑州市', '中国,河南省,郑州市', 2, 'zhengzhou', '0371', '450000', 'Z', '113.665412', '34.757975'),
(1534, 1533, '中原', '中原区', '中国,河南省,郑州市,中原区', 3, 'zhongyuan', '0371', '450007', 'Z', '113.61333', '34.74827'),
(1535, 1533, '二七', '二七区', '中国,河南省,郑州市,二七区', 3, 'erqi', '0371', '450052', 'E', '113.63931', '34.72336'),
(1536, 1533, '管城', '管城回族区', '中国,河南省,郑州市,管城回族区', 3, 'guancheng', '0371', '450000', 'G', '113.67734', '34.75383'),
(1537, 1533, '金水', '金水区', '中国,河南省,郑州市,金水区', 3, 'jinshui', '0371', '450003', 'J', '113.66057', '34.80028'),
(1538, 1533, '上街', '上街区', '中国,河南省,郑州市,上街区', 3, 'shangjie', '0371', '450041', 'S', '113.30897', '34.80276'),
(1539, 1533, '惠济', '惠济区', '中国,河南省,郑州市,惠济区', 3, 'huiji', '0371', '450053', 'H', '113.61688', '34.86735'),
(1540, 1533, '中牟', '中牟县', '中国,河南省,郑州市,中牟县', 3, 'zhongmu', '0371', '451450', 'Z', '113.97619', '34.71899'),
(1541, 1533, '巩义', '巩义市', '中国,河南省,郑州市,巩义市', 3, 'gongyi', '0371', '451200', 'G', '113.022', '34.74794'),
(1542, 1533, '荥阳', '荥阳市', '中国,河南省,郑州市,荥阳市', 3, 'xingyang', '0371', '450100', NULL, '113.38345', '34.78759'),
(1543, 1533, '新密', '新密市', '中国,河南省,郑州市,新密市', 3, 'xinmi', '0371', '452300', 'X', '113.3869', '34.53704'),
(1544, 1533, '新郑', '新郑市', '中国,河南省,郑州市,新郑市', 3, 'xinzheng', '0371', '451100', 'X', '113.73645', '34.3955'),
(1545, 1533, '登封', '登封市', '中国,河南省,郑州市,登封市', 3, 'dengfeng', '0371', '452470', 'D', '113.05023', '34.45345'),
(1546, 1532, '开封', '开封市', '中国,河南省,开封市', 2, 'kaifeng', '0378', '475001', 'K', '114.341447', '34.797049'),
(1547, 1546, '龙亭', '龙亭区', '中国,河南省,开封市,龙亭区', 3, 'longting', '0378', '475100', 'L', '114.35484', '34.79995'),
(1548, 1546, '顺河', '顺河回族区', '中国,河南省,开封市,顺河回族区', 3, 'shunhe', '0378', '475000', 'S', '114.36123', '34.79586'),
(1549, 1546, '鼓楼', '鼓楼区', '中国,河南省,开封市,鼓楼区', 3, 'gulou', '0378', '475000', 'G', '114.35559', '34.79517'),
(1550, 1546, '禹王台', '禹王台区', '中国,河南省,开封市,禹王台区', 3, 'yuwangtai', '0378', '475003', 'Y', '114.34787', '34.77693'),
(1551, 1546, '祥符', '祥符区', '中国,河南省,开封市,祥符区', 3, 'xiangfu', '0378', '475100', 'X', '114.43859', '34.75874'),
(1552, 1546, '杞县', '杞县', '中国,河南省,开封市,杞县', 3, 'qixian', '0378', '475200', NULL, '114.7828', '34.55033'),
(1553, 1546, '通许', '通许县', '中国,河南省,开封市,通许县', 3, 'tongxu', '0378', '475400', 'T', '114.46716', '34.47522'),
(1554, 1546, '尉氏', '尉氏县', '中国,河南省,开封市,尉氏县', 3, 'weishi', '0378', '475500', 'W', '114.19284', '34.41223'),
(1555, 1546, '兰考', '兰考县', '中国,河南省,开封市,兰考县', 3, 'lankao', '0378', '475300', 'L', '114.81961', '34.8235'),
(1556, 1532, '洛阳', '洛阳市', '中国,河南省,洛阳市', 2, 'luoyang', '0379', '471000', 'L', '112.434468', '34.663041'),
(1557, 1556, '老城', '老城区', '中国,河南省,洛阳市,老城区', 3, 'laocheng', '0379', '471002', 'L', '112.46902', '34.68364'),
(1558, 1556, '西工', '西工区', '中国,河南省,洛阳市,西工区', 3, 'xigong', '0379', '471000', 'X', '112.4371', '34.67'),
(1559, 1556, '瀍河', '瀍河回族区', '中国,河南省,洛阳市,瀍河回族区', 3, 'chanhe', '0379', '471002', NULL, '112.50018', '34.67985'),
(1560, 1556, '涧西', '涧西区', '中国,河南省,洛阳市,涧西区', 3, 'jianxi', '0379', '471003', 'J', '112.39588', '34.65823'),
(1561, 1556, '吉利', '吉利区', '中国,河南省,洛阳市,吉利区', 3, 'jili', '0379', '471012', 'J', '112.58905', '34.90088'),
(1562, 1556, '洛龙', '洛龙区', '中国,河南省,洛阳市,洛龙区', 3, 'luolong', '0379', '471000', 'L', '112.46412', '34.61866'),
(1563, 1556, '孟津', '孟津县', '中国,河南省,洛阳市,孟津县', 3, 'mengjin', '0379', '471100', 'M', '112.44351', '34.826'),
(1564, 1556, '新安', '新安县', '中国,河南省,洛阳市,新安县', 3, 'xin\'an', '0379', '471800', 'X', '112.13238', '34.72814'),
(1565, 1556, '栾川', '栾川县', '中国,河南省,洛阳市,栾川县', 3, 'luanchuan', '0379', '471500', NULL, '111.61779', '33.78576'),
(1566, 1556, '嵩县', '嵩县', '中国,河南省,洛阳市,嵩县', 3, 'songxian', '0379', '471400', NULL, '112.08526', '34.13466'),
(1567, 1556, '汝阳', '汝阳县', '中国,河南省,洛阳市,汝阳县', 3, 'ruyang', '0379', '471200', 'R', '112.47314', '34.15387'),
(1568, 1556, '宜阳', '宜阳县', '中国,河南省,洛阳市,宜阳县', 3, 'yiyang', '0379', '471600', 'Y', '112.17907', '34.51523'),
(1569, 1556, '洛宁', '洛宁县', '中国,河南省,洛阳市,洛宁县', 3, 'luoning', '0379', '471700', 'L', '111.65087', '34.38913'),
(1570, 1556, '伊川', '伊川县', '中国,河南省,洛阳市,伊川县', 3, 'yichuan', '0379', '471300', 'Y', '112.42947', '34.42205'),
(1571, 1556, '偃师', '偃师市', '中国,河南省,洛阳市,偃师市', 3, 'yanshi', '0379', '471900', NULL, '112.7922', '34.7281'),
(1572, 1532, '平顶山', '平顶山市', '中国,河南省,平顶山市', 2, 'pingdingshan', '0375', '467000', 'P', '113.307718', '33.735241'),
(1573, 1572, '新华', '新华区', '中国,河南省,平顶山市,新华区', 3, 'xinhua', '0375', '467002', 'X', '113.29402', '33.7373'),
(1574, 1572, '卫东', '卫东区', '中国,河南省,平顶山市,卫东区', 3, 'weidong', '0375', '467021', 'W', '113.33511', '33.73472'),
(1575, 1572, '石龙', '石龙区', '中国,河南省,平顶山市,石龙区', 3, 'shilong', '0375', '467045', 'S', '112.89879', '33.89878'),
(1576, 1572, '湛河', '湛河区', '中国,河南省,平顶山市,湛河区', 3, 'zhanhe', '0375', '467000', 'Z', '113.29252', '33.7362'),
(1577, 1572, '宝丰', '宝丰县', '中国,河南省,平顶山市,宝丰县', 3, 'baofeng', '0375', '467400', 'B', '113.05493', '33.86916'),
(1578, 1572, '叶县', '叶县', '中国,河南省,平顶山市,叶县', 3, 'yexian', '0375', '467200', 'Y', '113.35104', '33.62225'),
(1579, 1572, '鲁山', '鲁山县', '中国,河南省,平顶山市,鲁山县', 3, 'lushan', '0375', '467300', 'L', '112.9057', '33.73879'),
(1580, 1572, '郏县', '郏县', '中国,河南省,平顶山市,郏县', 3, 'jiaxian', '0375', '467100', NULL, '113.21588', '33.97072'),
(1581, 1572, '舞钢', '舞钢市', '中国,河南省,平顶山市,舞钢市', 3, 'wugang', '0375', '462500', 'W', '113.52417', '33.2938'),
(1582, 1572, '汝州', '汝州市', '中国,河南省,平顶山市,汝州市', 3, 'ruzhou', '0375', '467500', 'R', '112.84301', '34.16135'),
(1583, 1532, '安阳', '安阳市', '中国,河南省,安阳市', 2, 'anyang', '0372', '455000', 'A', '114.352482', '36.103442'),
(1584, 1583, '文峰', '文峰区', '中国,河南省,安阳市,文峰区', 3, 'wenfeng', '0372', '455000', 'W', '114.35708', '36.09046'),
(1585, 1583, '北关', '北关区', '中国,河南省,安阳市,北关区', 3, 'beiguan', '0372', '455001', 'B', '114.35735', '36.11872'),
(1586, 1583, '殷都', '殷都区', '中国,河南省,安阳市,殷都区', 3, 'yindu', '0372', '455004', 'Y', '114.3034', '36.1099'),
(1587, 1583, '龙安', '龙安区', '中国,河南省,安阳市,龙安区', 3, 'long\'an', '0372', '455001', 'L', '114.34814', '36.11904'),
(1588, 1583, '安阳', '安阳县', '中国,河南省,安阳市,安阳县', 3, 'anyang', '0372', '455000', 'A', '114.36605', '36.06695'),
(1589, 1583, '汤阴', '汤阴县', '中国,河南省,安阳市,汤阴县', 3, 'tangyin', '0372', '456150', 'T', '114.35839', '35.92152'),
(1590, 1583, '滑县', '滑县', '中国,河南省,安阳市,滑县', 3, 'huaxian', '0372', '456400', 'H', '114.52066', '35.5807'),
(1591, 1583, '内黄', '内黄县', '中国,河南省,安阳市,内黄县', 3, 'neihuang', '0372', '456350', 'N', '114.90673', '35.95269'),
(1592, 1583, '林州', '林州市', '中国,河南省,安阳市,林州市', 3, 'linzhou', '0372', '456550', 'L', '113.81558', '36.07804'),
(1593, 1532, '鹤壁', '鹤壁市', '中国,河南省,鹤壁市', 2, 'hebi', '0392', '458030', 'H', '114.295444', '35.748236'),
(1594, 1593, '鹤山', '鹤山区', '中国,河南省,鹤壁市,鹤山区', 3, 'heshan', '0392', '458010', 'H', '114.16336', '35.95458'),
(1595, 1593, '山城', '山城区', '中国,河南省,鹤壁市,山城区', 3, 'shancheng', '0392', '458000', 'S', '114.18443', '35.89773'),
(1596, 1593, '淇滨', '淇滨区', '中国,河南省,鹤壁市,淇滨区', 3, 'qibin', '0392', '458000', NULL, '114.29867', '35.74127'),
(1597, 1593, '浚县', '浚县', '中国,河南省,鹤壁市,浚县', 3, 'xunxian', '0392', '456250', 'J', '114.54879', '35.67085'),
(1598, 1593, '淇县', '淇县', '中国,河南省,鹤壁市,淇县', 3, 'qixian', '0392', '456750', NULL, '114.1976', '35.60782'),
(1599, 1532, '新乡', '新乡市', '中国,河南省,新乡市', 2, 'xinxiang', '0373', '453000', 'X', '113.883991', '35.302616'),
(1600, 1599, '红旗', '红旗区', '中国,河南省,新乡市,红旗区', 3, 'hongqi', '0373', '453000', 'H', '113.87523', '35.30367'),
(1601, 1599, '卫滨', '卫滨区', '中国,河南省,新乡市,卫滨区', 3, 'weibin', '0373', '453000', 'W', '113.86578', '35.30211'),
(1602, 1599, '凤泉', '凤泉区', '中国,河南省,新乡市,凤泉区', 3, 'fengquan', '0373', '453011', 'F', '113.91507', '35.38399'),
(1603, 1599, '牧野', '牧野区', '中国,河南省,新乡市,牧野区', 3, 'muye', '0373', '453002', 'M', '113.9086', '35.3149'),
(1604, 1599, '新乡', '新乡县', '中国,河南省,新乡市,新乡县', 3, 'xinxiang', '0373', '453700', 'X', '113.80511', '35.19075'),
(1605, 1599, '获嘉', '获嘉县', '中国,河南省,新乡市,获嘉县', 3, 'huojia', '0373', '453800', 'H', '113.66159', '35.26521'),
(1606, 1599, '原阳', '原阳县', '中国,河南省,新乡市,原阳县', 3, 'yuanyang', '0373', '453500', 'Y', '113.93994', '35.06565'),
(1607, 1599, '延津', '延津县', '中国,河南省,新乡市,延津县', 3, 'yanjin', '0373', '453200', 'Y', '114.20266', '35.14327'),
(1608, 1599, '封丘', '封丘县', '中国,河南省,新乡市,封丘县', 3, 'fengqiu', '0373', '453300', 'F', '114.41915', '35.04166'),
(1609, 1599, '长垣', '长垣县', '中国,河南省,新乡市,长垣县', 3, 'changyuan', '0373', '453400', 'C', '114.66882', '35.20046'),
(1610, 1599, '卫辉', '卫辉市', '中国,河南省,新乡市,卫辉市', 3, 'weihui', '0373', '453100', 'W', '114.06454', '35.39843'),
(1611, 1599, '辉县', '辉县市', '中国,河南省,新乡市,辉县市', 3, 'huixian', '0373', '453600', 'H', '113.8067', '35.46307'),
(1612, 1532, '焦作', '焦作市', '中国,河南省,焦作市', 2, 'jiaozuo', '0391', '454002', 'J', '113.238266', '35.23904'),
(1613, 1612, '解放', '解放区', '中国,河南省,焦作市,解放区', 3, 'jiefang', '0391', '454000', 'J', '113.22933', '35.24023'),
(1614, 1612, '中站', '中站区', '中国,河南省,焦作市,中站区', 3, 'zhongzhan', '0391', '454191', 'Z', '113.18315', '35.23665'),
(1615, 1612, '马村', '马村区', '中国,河南省,焦作市,马村区', 3, 'macun', '0391', '454171', 'M', '113.3187', '35.26908'),
(1616, 1612, '山阳', '山阳区', '中国,河南省,焦作市,山阳区', 3, 'shanyang', '0391', '454002', 'S', '113.25464', '35.21436'),
(1617, 1612, '修武', '修武县', '中国,河南省,焦作市,修武县', 3, 'xiuwu', '0391', '454350', 'X', '113.44775', '35.22357'),
(1618, 1612, '博爱', '博爱县', '中国,河南省,焦作市,博爱县', 3, 'boai', '0391', '454450', 'B', '113.06698', '35.16943'),
(1619, 1612, '武陟', '武陟县', '中国,河南省,焦作市,武陟县', 3, 'wuzhi', '0391', '454950', 'W', '113.39718', '35.09505'),
(1620, 1612, '温县', '温县', '中国,河南省,焦作市,温县', 3, 'wenxian', '0391', '454850', 'W', '113.08065', '34.94022'),
(1621, 1612, '沁阳', '沁阳市', '中国,河南省,焦作市,沁阳市', 3, 'qinyang', '0391', '454550', 'Q', '112.94494', '35.08935'),
(1622, 1612, '孟州', '孟州市', '中国,河南省,焦作市,孟州市', 3, 'mengzhou', '0391', '454750', 'M', '112.79138', '34.9071'),
(1623, 1532, '濮阳', '濮阳市', '中国,河南省,濮阳市', 2, 'puyang', '0393', '457000', NULL, '115.041299', '35.768234'),
(1624, 1623, '华龙', '华龙区', '中国,河南省,濮阳市,华龙区', 3, 'hualong', '0393', '457001', 'H', '115.07446', '35.77736'),
(1625, 1623, '清丰', '清丰县', '中国,河南省,濮阳市,清丰县', 3, 'qingfeng', '0393', '457300', 'Q', '115.10415', '35.88507'),
(1626, 1623, '南乐', '南乐县', '中国,河南省,濮阳市,南乐县', 3, 'nanle', '0393', '457400', 'N', '115.20639', '36.07686'),
(1627, 1623, '范县', '范县', '中国,河南省,濮阳市,范县', 3, 'fanxian', '0393', '457500', 'F', '115.50405', '35.85178'),
(1628, 1623, '台前', '台前县', '中国,河南省,濮阳市,台前县', 3, 'taiqian', '0393', '457600', 'T', '115.87158', '35.96923'),
(1629, 1623, '濮阳', '濮阳县', '中国,河南省,濮阳市,濮阳县', 3, 'puyang', '0393', '457100', NULL, '115.03057', '35.70745'),
(1630, 1532, '许昌', '许昌市', '中国,河南省,许昌市', 2, 'xuchang', '0374', '461000', 'X', '113.826063', '34.022956'),
(1631, 1630, '魏都', '魏都区', '中国,河南省,许昌市,魏都区', 3, 'weidu', '0374', '461000', 'W', '113.8227', '34.02544'),
(1632, 1630, '许昌', '许昌县', '中国,河南省,许昌市,许昌县', 3, 'xuchang', '0374', '461100', 'X', '113.84707', '34.00406'),
(1633, 1630, '鄢陵', '鄢陵县', '中国,河南省,许昌市,鄢陵县', 3, 'yanling', '0374', '461200', NULL, '114.18795', '34.10317'),
(1634, 1630, '襄城', '襄城县', '中国,河南省,许昌市,襄城县', 3, 'xiangcheng', '0374', '461700', 'X', '113.48196', '33.84928'),
(1635, 1630, '禹州', '禹州市', '中国,河南省,许昌市,禹州市', 3, 'yuzhou', '0374', '461670', 'Y', '113.48803', '34.14054'),
(1636, 1630, '长葛', '长葛市', '中国,河南省,许昌市,长葛市', 3, 'changge', '0374', '461500', 'C', '113.77328', '34.21846'),
(1637, 1532, '漯河', '漯河市', '中国,河南省,漯河市', 2, 'luohe', '0395', '462000', NULL, '114.026405', '33.575855'),
(1638, 1637, '源汇', '源汇区', '中国,河南省,漯河市,源汇区', 3, 'yuanhui', '0395', '462000', 'Y', '114.00647', '33.55627'),
(1639, 1637, '郾城', '郾城区', '中国,河南省,漯河市,郾城区', 3, 'yancheng', '0395', '462300', NULL, '114.00694', '33.58723'),
(1640, 1637, '召陵', '召陵区', '中国,河南省,漯河市,召陵区', 3, 'zhaoling', '0395', '462300', 'Z', '114.09399', '33.58601'),
(1641, 1637, '舞阳', '舞阳县', '中国,河南省,漯河市,舞阳县', 3, 'wuyang', '0395', '462400', 'W', '113.59848', '33.43243'),
(1642, 1637, '临颍', '临颍县', '中国,河南省,漯河市,临颍县', 3, 'linying', '0395', '462600', 'L', '113.93661', '33.81123'),
(1643, 1532, '三门峡', '三门峡市', '中国,河南省,三门峡市', 2, 'sanmenxia', '0398', '472000', 'S', '111.194099', '34.777338'),
(1644, 1643, '湖滨', '湖滨区', '中国,河南省,三门峡市,湖滨区', 3, 'hubin', '0398', '472000', 'H', '111.20006', '34.77872'),
(1645, 1643, '渑池', '渑池县', '中国,河南省,三门峡市,渑池县', 3, 'mianchi', '0398', '472400', NULL, '111.76184', '34.76725'),
(1646, 1643, '陕县', '陕县', '中国,河南省,三门峡市,陕县', 3, 'shanxian', '0398', '472100', 'S', '111.10333', '34.72052'),
(1647, 1643, '卢氏', '卢氏县', '中国,河南省,三门峡市,卢氏县', 3, 'lushi', '0398', '472200', 'L', '111.04782', '34.05436'),
(1648, 1643, '义马', '义马市', '中国,河南省,三门峡市,义马市', 3, 'yima', '0398', '472300', 'Y', '111.87445', '34.74721'),
(1649, 1643, '灵宝', '灵宝市', '中国,河南省,三门峡市,灵宝市', 3, 'lingbao', '0398', '472500', 'L', '110.8945', '34.51682'),
(1650, 1532, '南阳', '南阳市', '中国,河南省,南阳市', 2, 'nanyang', '0377', '473002', 'N', '112.540918', '32.999082'),
(1651, 1650, '宛城', '宛城区', '中国,河南省,南阳市,宛城区', 3, 'wancheng', '0377', '473001', 'W', '112.53955', '33.00378'),
(1652, 1650, '卧龙', '卧龙区', '中国,河南省,南阳市,卧龙区', 3, 'wolong', '0377', '473003', 'W', '112.53479', '32.98615'),
(1653, 1650, '南召', '南召县', '中国,河南省,南阳市,南召县', 3, 'nanzhao', '0377', '474650', 'N', '112.43194', '33.49098'),
(1654, 1650, '方城', '方城县', '中国,河南省,南阳市,方城县', 3, 'fangcheng', '0377', '473200', 'F', '113.01269', '33.25453'),
(1655, 1650, '西峡', '西峡县', '中国,河南省,南阳市,西峡县', 3, 'xixia', '0377', '474550', 'X', '111.48187', '33.29772'),
(1656, 1650, '镇平', '镇平县', '中国,河南省,南阳市,镇平县', 3, 'zhenping', '0377', '474250', 'Z', '112.2398', '33.03629'),
(1657, 1650, '内乡', '内乡县', '中国,河南省,南阳市,内乡县', 3, 'neixiang', '0377', '474350', 'N', '111.84957', '33.04671'),
(1658, 1650, '淅川', '淅川县', '中国,河南省,南阳市,淅川县', 3, 'xichuan', '0377', '474450', NULL, '111.48663', '33.13708'),
(1659, 1650, '社旗', '社旗县', '中国,河南省,南阳市,社旗县', 3, 'sheqi', '0377', '473300', 'S', '112.94656', '33.05503'),
(1660, 1650, '唐河', '唐河县', '中国,河南省,南阳市,唐河县', 3, 'tanghe', '0377', '473400', 'T', '112.83609', '32.69453'),
(1661, 1650, '新野', '新野县', '中国,河南省,南阳市,新野县', 3, 'xinye', '0377', '473500', 'X', '112.36151', '32.51698'),
(1662, 1650, '桐柏', '桐柏县', '中国,河南省,南阳市,桐柏县', 3, 'tongbai', '0377', '474750', 'T', '113.42886', '32.37917'),
(1663, 1650, '邓州', '邓州市', '中国,河南省,南阳市,邓州市', 3, 'dengzhou', '0377', '474150', 'D', '112.0896', '32.68577'),
(1664, 1532, '商丘', '商丘市', '中国,河南省,商丘市', 2, 'shangqiu', '0370', '476000', 'S', '115.650497', '34.437054'),
(1665, 1664, '梁园', '梁园区', '中国,河南省,商丘市,梁园区', 3, 'liangyuan', '0370', '476000', 'L', '115.64487', '34.44341'),
(1666, 1664, '睢阳', '睢阳区', '中国,河南省,商丘市,睢阳区', 3, 'suiyang', '0370', '476100', NULL, '115.65338', '34.38804'),
(1667, 1664, '民权', '民权县', '中国,河南省,商丘市,民权县', 3, 'minquan', '0370', '476800', 'M', '115.14621', '34.64931'),
(1668, 1664, '睢县', '睢县', '中国,河南省,商丘市,睢县', 3, 'suixian', '0370', '476900', NULL, '115.07168', '34.44539'),
(1669, 1664, '宁陵', '宁陵县', '中国,河南省,商丘市,宁陵县', 3, 'ningling', '0370', '476700', 'N', '115.30511', '34.45463'),
(1670, 1664, '柘城', '柘城县', '中国,河南省,商丘市,柘城县', 3, 'zhecheng', '0370', '476200', NULL, '115.30538', '34.0911'),
(1671, 1664, '虞城', '虞城县', '中国,河南省,商丘市,虞城县', 3, 'yucheng', '0370', '476300', 'Y', '115.86337', '34.40189'),
(1672, 1664, '夏邑', '夏邑县', '中国,河南省,商丘市,夏邑县', 3, 'xiayi', '0370', '476400', 'X', '116.13348', '34.23242'),
(1673, 1664, '永城', '永城市', '中国,河南省,商丘市,永城市', 3, 'yongcheng', '0370', '476600', 'Y', '116.44943', '33.92911'),
(1674, 1532, '信阳', '信阳市', '中国,河南省,信阳市', 2, 'xinyang', '0376', '464000', 'X', '114.075031', '32.123274'),
(1675, 1674, '浉河', '浉河区', '中国,河南省,信阳市,浉河区', 3, 'shihe', '0376', '464000', NULL, '114.05871', '32.1168'),
(1676, 1674, '平桥', '平桥区', '中国,河南省,信阳市,平桥区', 3, 'pingqiao', '0376', '464100', 'P', '114.12435', '32.10095'),
(1677, 1674, '罗山', '罗山县', '中国,河南省,信阳市,罗山县', 3, 'luoshan', '0376', '464200', 'L', '114.5314', '32.20277'),
(1678, 1674, '光山', '光山县', '中国,河南省,信阳市,光山县', 3, 'guangshan', '0376', '465450', 'G', '114.91873', '32.00992'),
(1679, 1674, '新县', '新县', '中国,河南省,信阳市,新县', 3, 'xinxian', '0376', '465550', 'X', '114.87924', '31.64386'),
(1680, 1674, '商城', '商城县', '中国,河南省,信阳市,商城县', 3, 'shangcheng', '0376', '465350', 'S', '115.40856', '31.79986'),
(1681, 1674, '固始', '固始县', '中国,河南省,信阳市,固始县', 3, 'gushi', '0376', '465250', 'G', '115.68298', '32.18011'),
(1682, 1674, '潢川', '潢川县', '中国,河南省,信阳市,潢川县', 3, 'huangchuan', '0376', '465150', NULL, '115.04696', '32.13763'),
(1683, 1674, '淮滨', '淮滨县', '中国,河南省,信阳市,淮滨县', 3, 'huaibin', '0376', '464400', 'H', '115.4205', '32.46614'),
(1684, 1674, '息县', '息县', '中国,河南省,信阳市,息县', 3, 'xixian', '0376', '464300', 'X', '114.7402', '32.34279'),
(1685, 1532, '周口', '周口市', '中国,河南省,周口市', 2, 'zhoukou', '0394', '466000', 'Z', '114.649653', '33.620357'),
(1686, 1685, '川汇', '川汇区', '中国,河南省,周口市,川汇区', 3, 'chuanhui', '0394', '466000', 'C', '114.64202', '33.6256'),
(1687, 1685, '扶沟', '扶沟县', '中国,河南省,周口市,扶沟县', 3, 'fugou', '0394', '461300', 'F', '114.39477', '34.05999'),
(1688, 1685, '西华', '西华县', '中国,河南省,周口市,西华县', 3, 'xihua', '0394', '466600', 'X', '114.52279', '33.78548'),
(1689, 1685, '商水', '商水县', '中国,河南省,周口市,商水县', 3, 'shangshui', '0394', '466100', 'S', '114.60604', '33.53912'),
(1690, 1685, '沈丘', '沈丘县', '中国,河南省,周口市,沈丘县', 3, 'shenqiu', '0394', '466300', 'S', '115.09851', '33.40936'),
(1691, 1685, '郸城', '郸城县', '中国,河南省,周口市,郸城县', 3, 'dancheng', '0394', '477150', 'D', '115.17715', '33.64485'),
(1692, 1685, '淮阳', '淮阳县', '中国,河南省,周口市,淮阳县', 3, 'huaiyang', '0394', '466700', 'H', '114.88848', '33.73211'),
(1693, 1685, '太康', '太康县', '中国,河南省,周口市,太康县', 3, 'taikang', '0394', '461400', 'T', '114.83773', '34.06376'),
(1694, 1685, '鹿邑', '鹿邑县', '中国,河南省,周口市,鹿邑县', 3, 'luyi', '0394', '477200', 'L', '115.48553', '33.85931'),
(1695, 1685, '项城', '项城市', '中国,河南省,周口市,项城市', 3, 'xiangcheng', '0394', '466200', 'X', '114.87558', '33.4672'),
(1696, 1532, '驻马店', '驻马店市', '中国,河南省,驻马店市', 2, 'zhumadian', '0396', '463000', 'Z', '114.024736', '32.980169'),
(1697, 1696, '驿城', '驿城区', '中国,河南省,驻马店市,驿城区', 3, 'yicheng', '0396', '463000', NULL, '113.99377', '32.97316'),
(1698, 1696, '西平', '西平县', '中国,河南省,驻马店市,西平县', 3, 'xiping', '0396', '463900', 'X', '114.02322', '33.3845'),
(1699, 1696, '上蔡', '上蔡县', '中国,河南省,驻马店市,上蔡县', 3, 'shangcai', '0396', '463800', 'S', '114.26825', '33.26825'),
(1700, 1696, '平舆', '平舆县', '中国,河南省,驻马店市,平舆县', 3, 'pingyu', '0396', '463400', 'P', '114.63552', '32.95727'),
(1701, 1696, '正阳', '正阳县', '中国,河南省,驻马店市,正阳县', 3, 'zhengyang', '0396', '463600', 'Z', '114.38952', '32.6039'),
(1702, 1696, '确山', '确山县', '中国,河南省,驻马店市,确山县', 3, 'queshan', '0396', '463200', 'Q', '114.02917', '32.80281'),
(1703, 1696, '泌阳', '泌阳县', '中国,河南省,驻马店市,泌阳县', 3, 'biyang', '0396', '463700', 'M', '113.32681', '32.71781'),
(1704, 1696, '汝南', '汝南县', '中国,河南省,驻马店市,汝南县', 3, 'runan', '0396', '463300', 'R', '114.36138', '33.00461'),
(1705, 1696, '遂平', '遂平县', '中国,河南省,驻马店市,遂平县', 3, 'suiping', '0396', '463100', 'S', '114.01297', '33.14571'),
(1706, 1696, '新蔡', '新蔡县', '中国,河南省,驻马店市,新蔡县', 3, 'xincai', '0396', '463500', 'X', '114.98199', '32.7502'),
(1707, 1532, ' ', '直辖县级', '中国,河南省,直辖县级', 2, '', '', '', 'Z', '113.665412', '34.757975'),
(1708, 1707, '济源', '济源市', '中国,河南省,直辖县级,济源市', 3, 'jiyuan', '0391', '454650', 'J', '112.590047', '35.090378'),
(1709, 0, '湖北', '湖北省', '中国,湖北省', 1, 'hubei', '', '', 'H', '114.298572', '30.584355'),
(1710, 1709, '武汉', '武汉市', '中国,湖北省,武汉市', 2, 'wuhan', '', '430014', 'W', '114.298572', '30.584355'),
(1711, 1710, '江岸', '江岸区', '中国,湖北省,武汉市,江岸区', 3, 'jiang\'an', '027', '430014', 'J', '114.30943', '30.59982'),
(1712, 1710, '江汉', '江汉区', '中国,湖北省,武汉市,江汉区', 3, 'jianghan', '027', '430021', 'J', '114.27093', '30.60146'),
(1713, 1710, '硚口', '硚口区', '中国,湖北省,武汉市,硚口区', 3, 'qiaokou', '027', '430033', NULL, '114.26422', '30.56945'),
(1714, 1710, '汉阳', '汉阳区', '中国,湖北省,武汉市,汉阳区', 3, 'hanyang', '027', '430050', 'H', '114.27478', '30.54915'),
(1715, 1710, '武昌', '武昌区', '中国,湖北省,武汉市,武昌区', 3, 'wuchang', '027', '430061', 'W', '114.31589', '30.55389'),
(1716, 1710, '青山', '青山区', '中国,湖北省,武汉市,青山区', 3, 'qingshan', '027', '430080', 'Q', '114.39117', '30.63427'),
(1717, 1710, '洪山', '洪山区', '中国,湖北省,武汉市,洪山区', 3, 'hongshan', '027', '430070', 'H', '114.34375', '30.49989'),
(1718, 1710, '东西湖', '东西湖区', '中国,湖北省,武汉市,东西湖区', 3, 'dongxihu', '027', '430040', 'D', '114.13708', '30.61989'),
(1719, 1710, '汉南', '汉南区', '中国,湖北省,武汉市,汉南区', 3, 'hannan', '027', '430090', 'H', '114.08462', '30.30879'),
(1720, 1710, '蔡甸', '蔡甸区', '中国,湖北省,武汉市,蔡甸区', 3, 'caidian', '027', '430100', 'C', '114.02929', '30.58197'),
(1721, 1710, '江夏', '江夏区', '中国,湖北省,武汉市,江夏区', 3, 'jiangxia', '027', '430200', 'J', '114.31301', '30.34653'),
(1722, 1710, '黄陂', '黄陂区', '中国,湖北省,武汉市,黄陂区', 3, 'huangpi', '027', '432200', 'H', '114.37512', '30.88151'),
(1723, 1710, '新洲', '新洲区', '中国,湖北省,武汉市,新洲区', 3, 'xinzhou', '027', '431400', 'X', '114.80136', '30.84145'),
(1724, 1709, '黄石', '黄石市', '中国,湖北省,黄石市', 2, 'huangshi', '0714', '435003', 'H', '115.077048', '30.220074'),
(1725, 1724, '黄石港', '黄石港区', '中国,湖北省,黄石市,黄石港区', 3, 'huangshigang', '0714', '435000', 'H', '115.06604', '30.22279'),
(1726, 1724, '西塞山', '西塞山区', '中国,湖北省,黄石市,西塞山区', 3, 'xisaishan', '0714', '435001', 'X', '115.11016', '30.20487'),
(1727, 1724, '下陆', '下陆区', '中国,湖北省,黄石市,下陆区', 3, 'xialu', '0714', '435005', 'X', '114.96112', '30.17368'),
(1728, 1724, '铁山', '铁山区', '中国,湖北省,黄石市,铁山区', 3, 'tieshan', '0714', '435006', 'T', '114.90109', '30.20678'),
(1729, 1724, '阳新', '阳新县', '中国,湖北省,黄石市,阳新县', 3, 'yangxin', '0714', '435200', 'Y', '115.21527', '29.83038'),
(1730, 1724, '大冶', '大冶市', '中国,湖北省,黄石市,大冶市', 3, 'daye', '0714', '435100', 'D', '114.97174', '30.09438'),
(1731, 1709, '十堰', '十堰市', '中国,湖北省,十堰市', 2, 'shiyan', '0719', '442000', 'S', '110.785239', '32.647017'),
(1732, 1731, '茅箭', '茅箭区', '中国,湖北省,十堰市,茅箭区', 3, 'maojian', '0719', '442012', 'M', '110.81341', '32.59153'),
(1733, 1731, '张湾', '张湾区', '中国,湖北省,十堰市,张湾区', 3, 'zhangwan', '0719', '442001', 'Z', '110.77067', '32.65195'),
(1734, 1731, '郧阳', '郧阳区', '中国,湖北省,十堰市,郧阳区', 3, 'yunyang', '0719', '442500', 'Y', '110.81854', '32.83593'),
(1735, 1731, '郧西', '郧西县', '中国,湖北省,十堰市,郧西县', 3, 'yunxi', '0719', '442600', 'Y', '110.42556', '32.99349'),
(1736, 1731, '竹山', '竹山县', '中国,湖北省,十堰市,竹山县', 3, 'zhushan', '0719', '442200', 'Z', '110.23071', '32.22536'),
(1737, 1731, '竹溪', '竹溪县', '中国,湖北省,十堰市,竹溪县', 3, 'zhuxi', '0719', '442300', 'Z', '109.71798', '32.31901'),
(1738, 1731, '房县', '房县', '中国,湖北省,十堰市,房县', 3, 'fangxian', '0719', '442100', 'F', '110.74386', '32.05794'),
(1739, 1731, '丹江口', '丹江口市', '中国,湖北省,十堰市,丹江口市', 3, 'danjiangkou', '0719', '442700', 'D', '111.51525', '32.54085'),
(1740, 1709, '宜昌', '宜昌市', '中国,湖北省,宜昌市', 2, 'yichang', '0717', '443000', 'Y', '111.290843', '30.702636'),
(1741, 1740, '西陵', '西陵区', '中国,湖北省,宜昌市,西陵区', 3, 'xiling', '0717', '443000', 'X', '111.28573', '30.71077'),
(1742, 1740, '伍家岗', '伍家岗区', '中国,湖北省,宜昌市,伍家岗区', 3, 'wujiagang', '0717', '443001', 'W', '111.3609', '30.64434'),
(1743, 1740, '点军', '点军区', '中国,湖北省,宜昌市,点军区', 3, 'dianjun', '0717', '443006', 'D', '111.26828', '30.6934'),
(1744, 1740, '猇亭', '猇亭区', '中国,湖北省,宜昌市,猇亭区', 3, 'xiaoting', '0717', '443007', NULL, '111.44079', '30.52663'),
(1745, 1740, '夷陵', '夷陵区', '中国,湖北省,宜昌市,夷陵区', 3, 'yiling', '0717', '443100', 'Y', '111.3262', '30.76881'),
(1746, 1740, '远安', '远安县', '中国,湖北省,宜昌市,远安县', 3, 'yuan\'an', '0717', '444200', 'Y', '111.6416', '31.05989'),
(1747, 1740, '兴山', '兴山县', '中国,湖北省,宜昌市,兴山县', 3, 'xingshan', '0717', '443711', 'X', '110.74951', '31.34686'),
(1748, 1740, '秭归', '秭归县', '中国,湖北省,宜昌市,秭归县', 3, 'zigui', '0717', '443600', NULL, '110.98156', '30.82702'),
(1749, 1740, '长阳', '长阳土家族自治县', '中国,湖北省,宜昌市,长阳土家族自治县', 3, 'changyang', '0717', '443500', 'C', '111.20105', '30.47052'),
(1750, 1740, '五峰', '五峰土家族自治县', '中国,湖北省,宜昌市,五峰土家族自治县', 3, 'wufeng', '0717', '443413', 'W', '110.6748', '30.19856'),
(1751, 1740, '宜都', '宜都市', '中国,湖北省,宜昌市,宜都市', 3, 'yidu', '0717', '443300', 'Y', '111.45025', '30.37807'),
(1752, 1740, '当阳', '当阳市', '中国,湖北省,宜昌市,当阳市', 3, 'dangyang', '0717', '444100', 'D', '111.78912', '30.8208'),
(1753, 1740, '枝江', '枝江市', '中国,湖北省,宜昌市,枝江市', 3, 'zhijiang', '0717', '443200', 'Z', '111.76855', '30.42612'),
(1754, 1709, '襄阳', '襄阳市', '中国,湖北省,襄阳市', 2, 'xiangyang', '0710', '441021', 'X', '112.144146', '32.042426'),
(1755, 1754, '襄城', '襄城区', '中国,湖北省,襄阳市,襄城区', 3, 'xiangcheng', '0710', '441021', 'X', '112.13372', '32.01017'),
(1756, 1754, '樊城', '樊城区', '中国,湖北省,襄阳市,樊城区', 3, 'fancheng', '0710', '441001', 'F', '112.13546', '32.04482'),
(1757, 1754, '襄州', '襄州区', '中国,湖北省,襄阳市,襄州区', 3, 'xiangzhou', '0710', '441100', 'X', '112.150327', '32.015088'),
(1758, 1754, '南漳', '南漳县', '中国,湖北省,襄阳市,南漳县', 3, 'nanzhang', '0710', '441500', 'N', '111.84603', '31.77653'),
(1759, 1754, '谷城', '谷城县', '中国,湖北省,襄阳市,谷城县', 3, 'gucheng', '0710', '441700', 'G', '111.65267', '32.26377'),
(1760, 1754, '保康', '保康县', '中国,湖北省,襄阳市,保康县', 3, 'baokang', '0710', '441600', 'B', '111.26138', '31.87874'),
(1761, 1754, '老河口', '老河口市', '中国,湖北省,襄阳市,老河口市', 3, 'laohekou', '0710', '441800', 'L', '111.67117', '32.38476'),
(1762, 1754, '枣阳', '枣阳市', '中国,湖北省,襄阳市,枣阳市', 3, 'zaoyang', '0710', '441200', 'Z', '112.77444', '32.13142'),
(1763, 1754, '宜城', '宜城市', '中国,湖北省,襄阳市,宜城市', 3, 'yicheng', '0710', '441400', 'Y', '112.25772', '31.71972'),
(1764, 1709, '鄂州', '鄂州市', '中国,湖北省,鄂州市', 2, 'ezhou', '0711', '436000', 'E', '114.890593', '30.396536'),
(1765, 1764, '梁子湖', '梁子湖区', '中国,湖北省,鄂州市,梁子湖区', 3, 'liangzihu', '0711', '436064', 'L', '114.68463', '30.10003'),
(1766, 1764, '华容', '华容区', '中国,湖北省,鄂州市,华容区', 3, 'huarong', '0711', '436030', 'H', '114.73568', '30.53328'),
(1767, 1764, '鄂城', '鄂城区', '中国,湖北省,鄂州市,鄂城区', 3, 'echeng', '0711', '436000', 'E', '114.89158', '30.40024'),
(1768, 1709, '荆门', '荆门市', '中国,湖北省,荆门市', 2, 'jingmen', '0724', '448000', 'J', '112.204251', '31.03542'),
(1769, 1768, '东宝', '东宝区', '中国,湖北省,荆门市,东宝区', 3, 'dongbao', '0724', '448004', 'D', '112.20147', '31.05192'),
(1770, 1768, '掇刀', '掇刀区', '中国,湖北省,荆门市,掇刀区', 3, 'duodao', '0724', '448124', 'D', '112.208', '30.97316'),
(1771, 1768, '京山', '京山县', '中国,湖北省,荆门市,京山县', 3, 'jingshan', '0724', '431800', 'J', '113.11074', '31.0224'),
(1772, 1768, '沙洋', '沙洋县', '中国,湖北省,荆门市,沙洋县', 3, 'shayang', '0724', '448200', 'S', '112.58853', '30.70916'),
(1773, 1768, '钟祥', '钟祥市', '中国,湖北省,荆门市,钟祥市', 3, 'zhongxiang', '0724', '431900', 'Z', '112.58932', '31.1678'),
(1774, 1709, '孝感', '孝感市', '中国,湖北省,孝感市', 2, 'xiaogan', '0712', '432100', 'X', '113.926655', '30.926423'),
(1775, 1774, '孝南', '孝南区', '中国,湖北省,孝感市,孝南区', 3, 'xiaonan', '0712', '432100', 'X', '113.91111', '30.9168'),
(1776, 1774, '孝昌', '孝昌县', '中国,湖北省,孝感市,孝昌县', 3, 'xiaochang', '0712', '432900', 'X', '113.99795', '31.25799'),
(1777, 1774, '大悟', '大悟县', '中国,湖北省,孝感市,大悟县', 3, 'dawu', '0712', '432800', 'D', '114.12564', '31.56176'),
(1778, 1774, '云梦', '云梦县', '中国,湖北省,孝感市,云梦县', 3, 'yunmeng', '0712', '432500', 'Y', '113.75289', '31.02093'),
(1779, 1774, '应城', '应城市', '中国,湖北省,孝感市,应城市', 3, 'yingcheng', '0712', '432400', 'Y', '113.57287', '30.92834'),
(1780, 1774, '安陆', '安陆市', '中国,湖北省,孝感市,安陆市', 3, 'anlu', '0712', '432600', 'A', '113.68557', '31.25693'),
(1781, 1774, '汉川', '汉川市', '中国,湖北省,孝感市,汉川市', 3, 'hanchuan', '0712', '432300', 'H', '113.83898', '30.66117'),
(1782, 1709, '荆州', '荆州市', '中国,湖北省,荆州市', 2, 'jingzhou', '0716', '434000', 'J', '112.23813', '30.326857'),
(1783, 1782, '沙市', '沙市区', '中国,湖北省,荆州市,沙市区', 3, 'shashi', '0716', '434000', 'S', '112.25543', '30.31107'),
(1784, 1782, '荆州', '荆州区', '中国,湖北省,荆州市,荆州区', 3, 'jingzhou', '0716', '434020', 'J', '112.19006', '30.35264'),
(1785, 1782, '公安', '公安县', '中国,湖北省,荆州市,公安县', 3, 'gong\'an', '0716', '434300', 'G', '112.23242', '30.05902'),
(1786, 1782, '监利', '监利县', '中国,湖北省,荆州市,监利县', 3, 'jianli', '0716', '433300', 'J', '112.89462', '29.81494'),
(1787, 1782, '江陵', '江陵县', '中国,湖北省,荆州市,江陵县', 3, 'jiangling', '0716', '434101', 'J', '112.42468', '30.04174'),
(1788, 1782, '石首', '石首市', '中国,湖北省,荆州市,石首市', 3, 'shishou', '0716', '434400', 'S', '112.42636', '29.72127'),
(1789, 1782, '洪湖', '洪湖市', '中国,湖北省,荆州市,洪湖市', 3, 'honghu', '0716', '433200', 'H', '113.47598', '29.827'),
(1790, 1782, '松滋', '松滋市', '中国,湖北省,荆州市,松滋市', 3, 'songzi', '0716', '434200', 'S', '111.76739', '30.16965'),
(1791, 1709, '黄冈', '黄冈市', '中国,湖北省,黄冈市', 2, 'huanggang', '0713', '438000', 'H', '114.879365', '30.447711'),
(1792, 1791, '黄州', '黄州区', '中国,湖北省,黄冈市,黄州区', 3, 'huangzhou', '0713', '438000', 'H', '114.88008', '30.43436'),
(1793, 1791, '团风', '团风县', '中国,湖北省,黄冈市,团风县', 3, 'tuanfeng', '0713', '438800', 'T', '114.87228', '30.64359'),
(1794, 1791, '红安', '红安县', '中国,湖北省,黄冈市,红安县', 3, 'hong\'an', '0713', '438401', 'H', '114.6224', '31.28668'),
(1795, 1791, '罗田', '罗田县', '中国,湖北省,黄冈市,罗田县', 3, 'luotian', '0713', '438600', 'L', '115.39971', '30.78255'),
(1796, 1791, '英山', '英山县', '中国,湖北省,黄冈市,英山县', 3, 'yingshan', '0713', '438700', 'Y', '115.68142', '30.73516'),
(1797, 1791, '浠水', '浠水县', '中国,湖北省,黄冈市,浠水县', 3, 'xishui', '0713', '438200', NULL, '115.26913', '30.45265'),
(1798, 1791, '蕲春', '蕲春县', '中国,湖北省,黄冈市,蕲春县', 3, 'qichun', '0713', '435300', NULL, '115.43615', '30.22613'),
(1799, 1791, '黄梅', '黄梅县', '中国,湖北省,黄冈市,黄梅县', 3, 'huangmei', '0713', '435500', 'H', '115.94427', '30.07033'),
(1800, 1791, '麻城', '麻城市', '中国,湖北省,黄冈市,麻城市', 3, 'macheng', '0713', '438300', 'M', '115.00988', '31.17228'),
(1801, 1791, '武穴', '武穴市', '中国,湖北省,黄冈市,武穴市', 3, 'wuxue', '0713', '435400', 'W', '115.55975', '29.84446'),
(1802, 1709, '咸宁', '咸宁市', '中国,湖北省,咸宁市', 2, 'xianning', '0715', '437000', 'X', '114.328963', '29.832798'),
(1803, 1802, '咸安', '咸安区', '中国,湖北省,咸宁市,咸安区', 3, 'xian\'an', '0715', '437000', 'X', '114.29872', '29.8529'),
(1804, 1802, '嘉鱼', '嘉鱼县', '中国,湖北省,咸宁市,嘉鱼县', 3, 'jiayu', '0715', '437200', 'J', '113.93927', '29.97054'),
(1805, 1802, '通城', '通城县', '中国,湖北省,咸宁市,通城县', 3, 'tongcheng', '0715', '437400', 'T', '113.81582', '29.24568'),
(1806, 1802, '崇阳', '崇阳县', '中国,湖北省,咸宁市,崇阳县', 3, 'chongyang', '0715', '437500', 'C', '114.03982', '29.55564'),
(1807, 1802, '通山', '通山县', '中国,湖北省,咸宁市,通山县', 3, 'tongshan', '0715', '437600', 'T', '114.48239', '29.6063'),
(1808, 1802, '赤壁', '赤壁市', '中国,湖北省,咸宁市,赤壁市', 3, 'chibi', '0715', '437300', 'C', '113.90039', '29.72454'),
(1809, 1709, '随州', '随州市', '中国,湖北省,随州市', 2, 'suizhou', '0722', '441300', 'S', '113.37377', '31.717497'),
(1810, 1809, '曾都', '曾都区', '中国,湖北省,随州市,曾都区', 3, 'zengdu', '0722', '441300', 'Z', '113.37128', '31.71614'),
(1811, 1809, '随县', '随县', '中国,湖北省,随州市,随县', 3, 'suixian', '0722', '441309', 'S', '113.82663', '31.6179'),
(1812, 1809, '广水', '广水市', '中国,湖北省,随州市,广水市', 3, 'guangshui', '0722', '432700', 'G', '113.82663', '31.6179'),
(1813, 1709, '恩施', '恩施土家族苗族自治州', '中国,湖北省,恩施土家族苗族自治州', 2, 'enshi', '0718', '445000', 'E', '109.48699', '30.283114'),
(1814, 1813, '恩施', '恩施市', '中国,湖北省,恩施土家族苗族自治州,恩施市', 3, 'enshi', '0718', '445000', 'E', '109.47942', '30.29502'),
(1815, 1813, '利川', '利川市', '中国,湖北省,恩施土家族苗族自治州,利川市', 3, 'lichuan', '0718', '445400', 'L', '108.93591', '30.29117'),
(1816, 1813, '建始', '建始县', '中国,湖北省,恩施土家族苗族自治州,建始县', 3, 'jianshi', '0718', '445300', 'J', '109.72207', '30.60209'),
(1817, 1813, '巴东', '巴东县', '中国,湖北省,恩施土家族苗族自治州,巴东县', 3, 'badong', '0718', '444300', 'B', '110.34066', '31.04233'),
(1818, 1813, '宣恩', '宣恩县', '中国,湖北省,恩施土家族苗族自治州,宣恩县', 3, 'xuanen', '0718', '445500', 'X', '109.49179', '29.98714'),
(1819, 1813, '咸丰', '咸丰县', '中国,湖北省,恩施土家族苗族自治州,咸丰县', 3, 'xianfeng', '0718', '445600', 'X', '109.152', '29.67983'),
(1820, 1813, '来凤', '来凤县', '中国,湖北省,恩施土家族苗族自治州,来凤县', 3, 'laifeng', '0718', '445700', 'L', '109.40716', '29.49373'),
(1821, 1813, '鹤峰', '鹤峰县', '中国,湖北省,恩施土家族苗族自治州,鹤峰县', 3, 'hefeng', '0718', '445800', 'H', '110.03091', '29.89072'),
(1822, 1709, ' ', '直辖县级', '中国,湖北省,直辖县级', 2, '', '', '', 'Z', '114.298572', '30.584355'),
(1823, 1822, '仙桃', '仙桃市', '中国,湖北省,直辖县级,仙桃市', 3, 'xiantao', '0728', '433000', 'X', '113.453974', '30.364953'),
(1824, 1822, '潜江', '潜江市', '中国,湖北省,直辖县级,潜江市', 3, 'qianjiang', '0728', '433100', 'Q', '112.896866', '30.421215'),
(1825, 1822, '天门', '天门市', '中国,湖北省,直辖县级,天门市', 3, 'tianmen', '0728', '431700', 'T', '113.165862', '30.653061'),
(1826, 1822, '神农架', '神农架林区', '中国,湖北省,直辖县级,神农架林区', 3, 'shennongjia', '0719', '442400', 'S', '110.671525', '31.744449'),
(1827, 0, '湖南', '湖南省', '中国,湖南省', 1, 'hunan', '', '', 'H', '112.982279', '28.19409'),
(1828, 1827, '长沙', '长沙市', '中国,湖南省,长沙市', 2, 'changsha', '0731', '410005', 'C', '112.982279', '28.19409'),
(1829, 1828, '芙蓉', '芙蓉区', '中国,湖南省,长沙市,芙蓉区', 3, 'furong', '0731', '410011', NULL, '113.03176', '28.1844'),
(1830, 1828, '天心', '天心区', '中国,湖南省,长沙市,天心区', 3, 'tianxin', '0731', '410004', 'T', '112.98991', '28.1127'),
(1831, 1828, '岳麓', '岳麓区', '中国,湖南省,长沙市,岳麓区', 3, 'yuelu', '0731', '410013', 'Y', '112.93133', '28.2351'),
(1832, 1828, '开福', '开福区', '中国,湖南省,长沙市,开福区', 3, 'kaifu', '0731', '410008', 'K', '112.98623', '28.25585'),
(1833, 1828, '雨花', '雨花区', '中国,湖南省,长沙市,雨花区', 3, 'yuhua', '0731', '410011', 'Y', '113.03567', '28.13541'),
(1834, 1828, '望城', '望城区', '中国,湖南省,长沙市,望城区', 3, 'wangcheng', '0731', '410200', 'W', '112.819549', '28.347458'),
(1835, 1828, '长沙', '长沙县', '中国,湖南省,长沙市,长沙县', 3, 'changsha', '0731', '410100', 'C', '113.08071', '28.24595'),
(1836, 1828, '宁乡', '宁乡县', '中国,湖南省,长沙市,宁乡县', 3, 'ningxiang', '0731', '410600', 'N', '112.55749', '28.25358'),
(1837, 1828, '浏阳', '浏阳市', '中国,湖南省,长沙市,浏阳市', 3, 'liuyang', '0731', '410300', NULL, '113.64312', '28.16375'),
(1838, 1827, '株洲', '株洲市', '中国,湖南省,株洲市', 2, 'zhuzhou', '0731', '412000', 'Z', '113.151737', '27.835806'),
(1839, 1838, '荷塘', '荷塘区', '中国,湖南省,株洲市,荷塘区', 3, 'hetang', '0731', '412000', 'H', '113.17315', '27.85569'),
(1840, 1838, '芦淞', '芦淞区', '中国,湖南省,株洲市,芦淞区', 3, 'lusong', '0731', '412000', 'L', '113.15562', '27.78525'),
(1841, 1838, '石峰', '石峰区', '中国,湖南省,株洲市,石峰区', 3, 'shifeng', '0731', '412005', 'S', '113.11776', '27.87552'),
(1842, 1838, '天元', '天元区', '中国,湖南省,株洲市,天元区', 3, 'tianyuan', '0731', '412007', 'T', '113.12335', '27.83103'),
(1843, 1838, '株洲', '株洲县', '中国,湖南省,株洲市,株洲县', 3, 'zhuzhou', '0731', '412100', 'Z', '113.14428', '27.69826'),
(1844, 1838, '攸县', '攸县', '中国,湖南省,株洲市,攸县', 3, 'youxian', '0731', '412300', NULL, '113.34365', '27.00352'),
(1845, 1838, '茶陵', '茶陵县', '中国,湖南省,株洲市,茶陵县', 3, 'chaling', '0731', '412400', 'C', '113.54364', '26.7915'),
(1846, 1838, '炎陵', '炎陵县', '中国,湖南省,株洲市,炎陵县', 3, 'yanling', '0731', '412500', 'Y', '113.77163', '26.48818'),
(1847, 1838, '醴陵', '醴陵市', '中国,湖南省,株洲市,醴陵市', 3, 'liling', '0731', '412200', NULL, '113.49704', '27.64615'),
(1848, 1827, '湘潭', '湘潭市', '中国,湖南省,湘潭市', 2, 'xiangtan', '0731', '411100', 'X', '112.925083', '27.846725'),
(1849, 1848, '雨湖', '雨湖区', '中国,湖南省,湘潭市,雨湖区', 3, 'yuhu', '0731', '411100', 'Y', '112.90399', '27.86859'),
(1850, 1848, '岳塘', '岳塘区', '中国,湖南省,湘潭市,岳塘区', 3, 'yuetang', '0731', '411101', 'Y', '112.9606', '27.85784'),
(1851, 1848, '湘潭', '湘潭县', '中国,湖南省,湘潭市,湘潭县', 3, 'xiangtan', '0731', '411228', 'X', '112.9508', '27.77893'),
(1852, 1848, '湘乡', '湘乡市', '中国,湖南省,湘潭市,湘乡市', 3, 'xiangxiang', '0731', '411400', 'X', '112.53512', '27.73543'),
(1853, 1848, '韶山', '韶山市', '中国,湖南省,湘潭市,韶山市', 3, 'shaoshan', '0731', '411300', 'S', '112.52655', '27.91503'),
(1854, 1827, '衡阳', '衡阳市', '中国,湖南省,衡阳市', 2, 'hengyang', '0734', '421001', 'H', '112.607693', '26.900358'),
(1855, 1854, '珠晖', '珠晖区', '中国,湖南省,衡阳市,珠晖区', 3, 'zhuhui', '0734', '421002', 'Z', '112.62054', '26.89361'),
(1856, 1854, '雁峰', '雁峰区', '中国,湖南省,衡阳市,雁峰区', 3, 'yanfeng', '0734', '421001', 'Y', '112.61654', '26.88866'),
(1857, 1854, '石鼓', '石鼓区', '中国,湖南省,衡阳市,石鼓区', 3, 'shigu', '0734', '421005', 'S', '112.61069', '26.90232'),
(1858, 1854, '蒸湘', '蒸湘区', '中国,湖南省,衡阳市,蒸湘区', 3, 'zhengxiang', '0734', '421001', 'Z', '112.6033', '26.89651'),
(1859, 1854, '南岳', '南岳区', '中国,湖南省,衡阳市,南岳区', 3, 'nanyue', '0734', '421900', 'N', '112.7384', '27.23262'),
(1860, 1854, '衡阳', '衡阳县', '中国,湖南省,衡阳市,衡阳县', 3, 'hengyang', '0734', '421200', 'H', '112.37088', '26.9706'),
(1861, 1854, '衡南', '衡南县', '中国,湖南省,衡阳市,衡南县', 3, 'hengnan', '0734', '421131', 'H', '112.67788', '26.73828'),
(1862, 1854, '衡山', '衡山县', '中国,湖南省,衡阳市,衡山县', 3, 'hengshan', '0734', '421300', 'H', '112.86776', '27.23134'),
(1863, 1854, '衡东', '衡东县', '中国,湖南省,衡阳市,衡东县', 3, 'hengdong', '0734', '421400', 'H', '112.94833', '27.08093'),
(1864, 1854, '祁东', '祁东县', '中国,湖南省,衡阳市,祁东县', 3, 'qidong', '0734', '421600', 'Q', '112.09039', '26.79964'),
(1865, 1854, '耒阳', '耒阳市', '中国,湖南省,衡阳市,耒阳市', 3, 'leiyang', '0734', '421800', NULL, '112.85998', '26.42132'),
(1866, 1854, '常宁', '常宁市', '中国,湖南省,衡阳市,常宁市', 3, 'changning', '0734', '421500', 'C', '112.4009', '26.40692'),
(1867, 1827, '邵阳', '邵阳市', '中国,湖南省,邵阳市', 2, 'shaoyang', '0739', '422000', 'S', '111.46923', '27.237842'),
(1868, 1867, '双清', '双清区', '中国,湖南省,邵阳市,双清区', 3, 'shuangqing', '0739', '422001', 'S', '111.49715', '27.23291'),
(1869, 1867, '大祥', '大祥区', '中国,湖南省,邵阳市,大祥区', 3, 'daxiang', '0739', '422000', 'D', '111.45412', '27.23332'),
(1870, 1867, '北塔', '北塔区', '中国,湖南省,邵阳市,北塔区', 3, 'beita', '0739', '422007', 'B', '111.45219', '27.24648'),
(1871, 1867, '邵东', '邵东县', '中国,湖南省,邵阳市,邵东县', 3, 'shaodong', '0739', '422800', 'S', '111.74441', '27.2584'),
(1872, 1867, '新邵', '新邵县', '中国,湖南省,邵阳市,新邵县', 3, 'xinshao', '0739', '422900', 'X', '111.46066', '27.32169'),
(1873, 1867, '邵阳', '邵阳县', '中国,湖南省,邵阳市,邵阳县', 3, 'shaoyang', '0739', '422100', 'S', '111.27459', '26.99143'),
(1874, 1867, '隆回', '隆回县', '中国,湖南省,邵阳市,隆回县', 3, 'longhui', '0739', '422200', 'L', '111.03216', '27.10937'),
(1875, 1867, '洞口', '洞口县', '中国,湖南省,邵阳市,洞口县', 3, 'dongkou', '0739', '422300', 'D', '110.57388', '27.05462'),
(1876, 1867, '绥宁', '绥宁县', '中国,湖南省,邵阳市,绥宁县', 3, 'suining', '0739', '422600', 'S', '110.15576', '26.58636'),
(1877, 1867, '新宁', '新宁县', '中国,湖南省,邵阳市,新宁县', 3, 'xinning', '0739', '422700', 'X', '110.85131', '26.42936'),
(1878, 1867, '城步', '城步苗族自治县', '中国,湖南省,邵阳市,城步苗族自治县', 3, 'chengbu', '0739', '422500', 'C', '110.3222', '26.39048'),
(1879, 1867, '武冈', '武冈市', '中国,湖南省,邵阳市,武冈市', 3, 'wugang', '0739', '422400', 'W', '110.63281', '26.72817'),
(1880, 1827, '岳阳', '岳阳市', '中国,湖南省,岳阳市', 2, 'yueyang', '0730', '414000', 'Y', '113.132855', '29.37029'),
(1881, 1880, '岳阳楼', '岳阳楼区', '中国,湖南省,岳阳市,岳阳楼区', 3, 'yueyanglou', '0730', '414000', 'Y', '113.12942', '29.3719'),
(1882, 1880, '云溪', '云溪区', '中国,湖南省,岳阳市,云溪区', 3, 'yunxi', '0730', '414009', 'Y', '113.27713', '29.47357'),
(1883, 1880, '君山', '君山区', '中国,湖南省,岳阳市,君山区', 3, 'junshan', '0730', '414005', 'J', '113.00439', '29.45941'),
(1884, 1880, '岳阳', '岳阳县', '中国,湖南省,岳阳市,岳阳县', 3, 'yueyang', '0730', '414100', 'Y', '113.11987', '29.14314'),
(1885, 1880, '华容', '华容县', '中国,湖南省,岳阳市,华容县', 3, 'huarong', '0730', '414200', 'H', '112.54089', '29.53019'),
(1886, 1880, '湘阴', '湘阴县', '中国,湖南省,岳阳市,湘阴县', 3, 'xiangyin', '0730', '414600', 'X', '112.90911', '28.68922'),
(1887, 1880, '平江', '平江县', '中国,湖南省,岳阳市,平江县', 3, 'pingjiang', '0730', '414500', 'P', '113.58105', '28.70664'),
(1888, 1880, '汨罗', '汨罗市', '中国,湖南省,岳阳市,汨罗市', 3, 'miluo', '0730', '414400', NULL, '113.06707', '28.80631'),
(1889, 1880, '临湘', '临湘市', '中国,湖南省,岳阳市,临湘市', 3, 'linxiang', '0730', '414300', 'L', '113.4501', '29.47701'),
(1890, 1827, '常德', '常德市', '中国,湖南省,常德市', 2, 'changde', '0736', '415000', 'C', '111.691347', '29.040225'),
(1891, 1890, '武陵', '武陵区', '中国,湖南省,常德市,武陵区', 3, 'wuling', '0736', '415000', 'W', '111.69791', '29.02876'),
(1892, 1890, '鼎城', '鼎城区', '中国,湖南省,常德市,鼎城区', 3, 'dingcheng', '0736', '415101', 'D', '111.68078', '29.01859'),
(1893, 1890, '安乡', '安乡县', '中国,湖南省,常德市,安乡县', 3, 'anxiang', '0736', '415600', 'A', '112.16732', '29.41326'),
(1894, 1890, '汉寿', '汉寿县', '中国,湖南省,常德市,汉寿县', 3, 'hanshou', '0736', '415900', 'H', '111.96691', '28.90299'),
(1895, 1890, '澧县', '澧县', '中国,湖南省,常德市,澧县', 3, 'lixian', '0736', '415500', NULL, '111.75866', '29.63317'),
(1896, 1890, '临澧', '临澧县', '中国,湖南省,常德市,临澧县', 3, 'linli', '0736', '415200', 'L', '111.65161', '29.44163'),
(1897, 1890, '桃源', '桃源县', '中国,湖南省,常德市,桃源县', 3, 'taoyuan', '0736', '415700', 'T', '111.48892', '28.90474'),
(1898, 1890, '石门', '石门县', '中国,湖南省,常德市,石门县', 3, 'shimen', '0736', '415300', 'S', '111.37966', '29.58424'),
(1899, 1890, '津市', '津市市', '中国,湖南省,常德市,津市市', 3, 'jinshi', '0736', '415400', 'J', '111.87756', '29.60563'),
(1900, 1827, '张家界', '张家界市', '中国,湖南省,张家界市', 2, 'zhangjiajie', '0744', '427000', 'Z', '110.479921', '29.127401'),
(1901, 1900, '永定', '永定区', '中国,湖南省,张家界市,永定区', 3, 'yongding', '0744', '427000', 'Y', '110.47464', '29.13387'),
(1902, 1900, '武陵源', '武陵源区', '中国,湖南省,张家界市,武陵源区', 3, 'wulingyuan', '0744', '427400', 'W', '110.55026', '29.34574'),
(1903, 1900, '慈利', '慈利县', '中国,湖南省,张家界市,慈利县', 3, 'cili', '0744', '427200', 'C', '111.13946', '29.42989'),
(1904, 1900, '桑植', '桑植县', '中国,湖南省,张家界市,桑植县', 3, 'sangzhi', '0744', '427100', 'S', '110.16308', '29.39815'),
(1905, 1827, '益阳', '益阳市', '中国,湖南省,益阳市', 2, 'yiyang', '0737', '413000', 'Y', '112.355042', '28.570066'),
(1906, 1905, '资阳', '资阳区', '中国,湖南省,益阳市,资阳区', 3, 'ziyang', '0737', '413001', 'Z', '112.32447', '28.59095'),
(1907, 1905, '赫山', '赫山区', '中国,湖南省,益阳市,赫山区', 3, 'heshan', '0737', '413002', 'H', '112.37265', '28.57425'),
(1908, 1905, '南县', '南县', '中国,湖南省,益阳市,南县', 3, 'nanxian', '0737', '413200', 'N', '112.3963', '29.36159'),
(1909, 1905, '桃江', '桃江县', '中国,湖南省,益阳市,桃江县', 3, 'taojiang', '0737', '413400', 'T', '112.1557', '28.51814'),
(1910, 1905, '安化', '安化县', '中国,湖南省,益阳市,安化县', 3, 'anhua', '0737', '413500', 'A', '111.21298', '28.37424');
INSERT INTO `sf_area` (`id`, `pid`, `shortname`, `name`, `mergename`, `level`, `pinyin`, `code`, `zip`, `first`, `lng`, `lat`) VALUES
(1911, 1905, '沅江', '沅江市', '中国,湖南省,益阳市,沅江市', 3, 'yuanjiang', '0737', '413100', NULL, '112.35427', '28.84403'),
(1912, 1827, '郴州', '郴州市', '中国,湖南省,郴州市', 2, 'chenzhou', '0735', '423000', 'C', '113.032067', '25.793589'),
(1913, 1912, '北湖', '北湖区', '中国,湖南省,郴州市,北湖区', 3, 'beihu', '0735', '423000', 'B', '113.01103', '25.78405'),
(1914, 1912, '苏仙', '苏仙区', '中国,湖南省,郴州市,苏仙区', 3, 'suxian', '0735', '423000', 'S', '113.04226', '25.80045'),
(1915, 1912, '桂阳', '桂阳县', '中国,湖南省,郴州市,桂阳县', 3, 'guiyang', '0735', '424400', 'G', '112.73364', '25.75406'),
(1916, 1912, '宜章', '宜章县', '中国,湖南省,郴州市,宜章县', 3, 'yizhang', '0735', '424200', 'Y', '112.95147', '25.39931'),
(1917, 1912, '永兴', '永兴县', '中国,湖南省,郴州市,永兴县', 3, 'yongxing', '0735', '423300', 'Y', '113.11242', '26.12646'),
(1918, 1912, '嘉禾', '嘉禾县', '中国,湖南省,郴州市,嘉禾县', 3, 'jiahe', '0735', '424500', 'J', '112.36935', '25.58795'),
(1919, 1912, '临武', '临武县', '中国,湖南省,郴州市,临武县', 3, 'linwu', '0735', '424300', 'L', '112.56369', '25.27602'),
(1920, 1912, '汝城', '汝城县', '中国,湖南省,郴州市,汝城县', 3, 'rucheng', '0735', '424100', 'R', '113.68582', '25.55204'),
(1921, 1912, '桂东', '桂东县', '中国,湖南省,郴州市,桂东县', 3, 'guidong', '0735', '423500', 'G', '113.9468', '26.07987'),
(1922, 1912, '安仁', '安仁县', '中国,湖南省,郴州市,安仁县', 3, 'anren', '0735', '423600', 'A', '113.26944', '26.70931'),
(1923, 1912, '资兴', '资兴市', '中国,湖南省,郴州市,资兴市', 3, 'zixing', '0735', '423400', 'Z', '113.23724', '25.97668'),
(1924, 1827, '永州', '永州市', '中国,湖南省,永州市', 2, 'yongzhou', '0746', '425000', 'Y', '111.608019', '26.434516'),
(1925, 1924, '零陵', '零陵区', '中国,湖南省,永州市,零陵区', 3, 'lingling', '0746', '425100', 'L', '111.62103', '26.22109'),
(1926, 1924, '冷水滩', '冷水滩区', '中国,湖南省,永州市,冷水滩区', 3, 'lengshuitan', '0746', '425100', 'L', '111.59214', '26.46107'),
(1927, 1924, '祁阳', '祁阳县', '中国,湖南省,永州市,祁阳县', 3, 'qiyang', '0746', '426100', 'Q', '111.84011', '26.58009'),
(1928, 1924, '东安', '东安县', '中国,湖南省,永州市,东安县', 3, 'dong\'an', '0746', '425900', 'D', '111.3164', '26.39202'),
(1929, 1924, '双牌', '双牌县', '中国,湖南省,永州市,双牌县', 3, 'shuangpai', '0746', '425200', 'S', '111.65927', '25.95988'),
(1930, 1924, '道县', '道县', '中国,湖南省,永州市,道县', 3, 'daoxian', '0746', '425300', 'D', '111.60195', '25.52766'),
(1931, 1924, '江永', '江永县', '中国,湖南省,永州市,江永县', 3, 'jiangyong', '0746', '425400', 'J', '111.34082', '25.27233'),
(1932, 1924, '宁远', '宁远县', '中国,湖南省,永州市,宁远县', 3, 'ningyuan', '0746', '425600', 'N', '111.94625', '25.56913'),
(1933, 1924, '蓝山', '蓝山县', '中国,湖南省,永州市,蓝山县', 3, 'lanshan', '0746', '425800', 'L', '112.19363', '25.36794'),
(1934, 1924, '新田', '新田县', '中国,湖南省,永州市,新田县', 3, 'xintian', '0746', '425700', 'X', '112.22103', '25.9095'),
(1935, 1924, '江华', '江华瑶族自治县', '中国,湖南省,永州市,江华瑶族自治县', 3, 'jianghua', '0746', '425500', 'J', '111.58847', '25.1845'),
(1936, 1827, '怀化', '怀化市', '中国,湖南省,怀化市', 2, 'huaihua', '0745', '418000', 'H', '109.97824', '27.550082'),
(1937, 1936, '鹤城', '鹤城区', '中国,湖南省,怀化市,鹤城区', 3, 'hecheng', '0745', '418000', 'H', '109.96509', '27.54942'),
(1938, 1936, '中方', '中方县', '中国,湖南省,怀化市,中方县', 3, 'zhongfang', '0745', '418005', 'Z', '109.94497', '27.43988'),
(1939, 1936, '沅陵', '沅陵县', '中国,湖南省,怀化市,沅陵县', 3, 'yuanling', '0745', '419600', NULL, '110.39633', '28.45548'),
(1940, 1936, '辰溪', '辰溪县', '中国,湖南省,怀化市,辰溪县', 3, 'chenxi', '0745', '419500', 'C', '110.18942', '28.00406'),
(1941, 1936, '溆浦', '溆浦县', '中国,湖南省,怀化市,溆浦县', 3, 'xupu', '0745', '419300', NULL, '110.59384', '27.90836'),
(1942, 1936, '会同', '会同县', '中国,湖南省,怀化市,会同县', 3, 'huitong', '0745', '418300', 'H', '109.73568', '26.88716'),
(1943, 1936, '麻阳', '麻阳苗族自治县', '中国,湖南省,怀化市,麻阳苗族自治县', 3, 'mayang', '0745', '419400', 'M', '109.80194', '27.866'),
(1944, 1936, '新晃', '新晃侗族自治县', '中国,湖南省,怀化市,新晃侗族自治县', 3, 'xinhuang', '0745', '419200', 'X', '109.17166', '27.35937'),
(1945, 1936, '芷江', '芷江侗族自治县', '中国,湖南省,怀化市,芷江侗族自治县', 3, 'zhijiang', '0745', '419100', NULL, '109.6849', '27.44297'),
(1946, 1936, '靖州', '靖州苗族侗族自治县', '中国,湖南省,怀化市,靖州苗族侗族自治县', 3, 'jingzhou', '0745', '418400', 'J', '109.69821', '26.57651'),
(1947, 1936, '通道', '通道侗族自治县', '中国,湖南省,怀化市,通道侗族自治县', 3, 'tongdao', '0745', '418500', 'T', '109.78515', '26.1571'),
(1948, 1936, '洪江', '洪江市', '中国,湖南省,怀化市,洪江市', 3, 'hongjiang', '0745', '418100', 'H', '109.83651', '27.20922'),
(1949, 1827, '娄底', '娄底市', '中国,湖南省,娄底市', 2, 'loudi', '0738', '417000', 'L', '112.008497', '27.728136'),
(1950, 1949, '娄星', '娄星区', '中国,湖南省,娄底市,娄星区', 3, 'louxing', '0738', '417000', 'L', '112.00193', '27.72992'),
(1951, 1949, '双峰', '双峰县', '中国,湖南省,娄底市,双峰县', 3, 'shuangfeng', '0738', '417700', 'S', '112.19921', '27.45418'),
(1952, 1949, '新化', '新化县', '中国,湖南省,娄底市,新化县', 3, 'xinhua', '0738', '417600', 'X', '111.32739', '27.7266'),
(1953, 1949, '冷水江', '冷水江市', '中国,湖南省,娄底市,冷水江市', 3, 'lengshuijiang', '0738', '417500', 'L', '111.43554', '27.68147'),
(1954, 1949, '涟源', '涟源市', '中国,湖南省,娄底市,涟源市', 3, 'lianyuan', '0738', '417100', 'L', '111.67233', '27.68831'),
(1955, 1827, '湘西', '湘西土家族苗族自治州', '中国,湖南省,湘西土家族苗族自治州', 2, 'xiangxi', '0743', '416000', 'X', '109.739735', '28.314296'),
(1956, 1955, '吉首', '吉首市', '中国,湖南省,湘西土家族苗族自治州,吉首市', 3, 'jishou', '0743', '416000', 'J', '109.69799', '28.26247'),
(1957, 1955, '泸溪', '泸溪县', '中国,湖南省,湘西土家族苗族自治州,泸溪县', 3, 'luxi', '0743', '416100', NULL, '110.21682', '28.2205'),
(1958, 1955, '凤凰', '凤凰县', '中国,湖南省,湘西土家族苗族自治州,凤凰县', 3, 'fenghuang', '0743', '416200', 'F', '109.60156', '27.94822'),
(1959, 1955, '花垣', '花垣县', '中国,湖南省,湘西土家族苗族自治州,花垣县', 3, 'huayuan', '0743', '416400', 'H', '109.48217', '28.5721'),
(1960, 1955, '保靖', '保靖县', '中国,湖南省,湘西土家族苗族自治州,保靖县', 3, 'baojing', '0743', '416500', 'B', '109.66049', '28.69997'),
(1961, 1955, '古丈', '古丈县', '中国,湖南省,湘西土家族苗族自治州,古丈县', 3, 'guzhang', '0743', '416300', 'G', '109.94812', '28.61944'),
(1962, 1955, '永顺', '永顺县', '中国,湖南省,湘西土家族苗族自治州,永顺县', 3, 'yongshun', '0743', '416700', 'Y', '109.85266', '29.00103'),
(1963, 1955, '龙山', '龙山县', '中国,湖南省,湘西土家族苗族自治州,龙山县', 3, 'longshan', '0743', '416800', 'L', '109.4432', '29.45693'),
(1964, 0, '广东', '广东省', '中国,广东省', 1, 'guangdong', '', '', 'G', '113.280637', '23.125178'),
(1965, 1964, '广州', '广州市', '中国,广东省,广州市', 2, 'guangzhou', '020', '510032', 'G', '113.280637', '23.125178'),
(1966, 1965, '荔湾', '荔湾区', '中国,广东省,广州市,荔湾区', 3, 'liwan', '020', '510170', 'L', '113.2442', '23.12592'),
(1967, 1965, '越秀', '越秀区', '中国,广东省,广州市,越秀区', 3, 'yuexiu', '020', '510030', 'Y', '113.26683', '23.12897'),
(1968, 1965, '海珠', '海珠区', '中国,广东省,广州市,海珠区', 3, 'haizhu', '020', '510300', 'H', '113.26197', '23.10379'),
(1969, 1965, '天河', '天河区', '中国,广东省,广州市,天河区', 3, 'tianhe', '020', '510665', 'T', '113.36112', '23.12467'),
(1970, 1965, '白云', '白云区', '中国,广东省,广州市,白云区', 3, 'baiyun', '020', '510405', 'B', '113.27307', '23.15787'),
(1971, 1965, '黄埔', '黄埔区', '中国,广东省,广州市,黄埔区', 3, 'huangpu', '020', '510700', 'H', '113.45895', '23.10642'),
(1972, 1965, '番禺', '番禺区', '中国,广东省,广州市,番禺区', 3, 'panyu', '020', '511400', 'F', '113.38397', '22.93599'),
(1973, 1965, '花都', '花都区', '中国,广东省,广州市,花都区', 3, 'huadu', '020', '510800', 'H', '113.22033', '23.40358'),
(1974, 1965, '南沙', '南沙区', '中国,广东省,广州市,南沙区', 3, 'nansha', '020', '511458', 'N', '113.60845', '22.77144'),
(1975, 1965, '从化', '从化区', '中国,广东省,广州市,从化区', 3, 'conghua', '020', '510900', 'C', '113.587386', '23.545283'),
(1976, 1965, '增城', '增城区', '中国,广东省,广州市,增城区', 3, 'zengcheng', '020', '511300', 'Z', '113.829579', '23.290497'),
(1977, 1964, '韶关', '韶关市', '中国,广东省,韶关市', 2, 'shaoguan', '0751', '512002', 'S', '113.591544', '24.801322'),
(1978, 1977, '武江', '武江区', '中国,广东省,韶关市,武江区', 3, 'wujiang', '0751', '512026', 'W', '113.58767', '24.79264'),
(1979, 1977, '浈江', '浈江区', '中国,广东省,韶关市,浈江区', 3, 'zhenjiang', '0751', '512023', NULL, '113.61109', '24.80438'),
(1980, 1977, '曲江', '曲江区', '中国,广东省,韶关市,曲江区', 3, 'qujiang', '0751', '512101', 'Q', '113.60165', '24.67915'),
(1981, 1977, '始兴', '始兴县', '中国,广东省,韶关市,始兴县', 3, 'shixing', '0751', '512500', 'S', '114.06799', '24.94759'),
(1982, 1977, '仁化', '仁化县', '中国,广东省,韶关市,仁化县', 3, 'renhua', '0751', '512300', 'R', '113.74737', '25.08742'),
(1983, 1977, '翁源', '翁源县', '中国,广东省,韶关市,翁源县', 3, 'wengyuan', '0751', '512600', 'W', '114.13385', '24.3495'),
(1984, 1977, '乳源', '乳源瑶族自治县', '中国,广东省,韶关市,乳源瑶族自治县', 3, 'ruyuan', '0751', '512700', 'R', '113.27734', '24.77803'),
(1985, 1977, '新丰', '新丰县', '中国,广东省,韶关市,新丰县', 3, 'xinfeng', '0751', '511100', 'X', '114.20788', '24.05924'),
(1986, 1977, '乐昌', '乐昌市', '中国,广东省,韶关市,乐昌市', 3, 'lechang', '0751', '512200', 'L', '113.35653', '25.12799'),
(1987, 1977, '南雄', '南雄市', '中国,广东省,韶关市,南雄市', 3, 'nanxiong', '0751', '512400', 'N', '114.30966', '25.11706'),
(1988, 1964, '深圳', '深圳市', '中国,广东省,深圳市', 2, 'shenzhen', '0755', '518035', 'S', '114.085947', '22.547'),
(1989, 1988, '罗湖', '罗湖区', '中国,广东省,深圳市,罗湖区', 3, 'luohu', '0755', '518021', 'L', '114.13116', '22.54836'),
(1990, 1988, '福田', '福田区', '中国,广东省,深圳市,福田区', 3, 'futian', '0755', '518048', 'F', '114.05571', '22.52245'),
(1991, 1988, '南山', '南山区', '中国,广东省,深圳市,南山区', 3, 'nanshan', '0755', '518051', 'N', '113.93029', '22.53291'),
(1992, 1988, '宝安', '宝安区', '中国,广东省,深圳市,宝安区', 3, 'bao\'an', '0755', '518101', 'B', '113.88311', '22.55371'),
(1993, 1988, '龙岗', '龙岗区', '中国,广东省,深圳市,龙岗区', 3, 'longgang', '0755', '518172', 'L', '114.24771', '22.71986'),
(1994, 1988, '盐田', '盐田区', '中国,广东省,深圳市,盐田区', 3, 'yantian', '0755', '518081', 'Y', '114.23733', '22.5578'),
(1995, 1988, '光明新区', '光明新区', '中国,广东省,深圳市,光明新区', 3, 'guangmingxinqu', '0755', '518100', 'G', '113.896026', '22.777292'),
(1996, 1988, '坪山新区', '坪山新区', '中国,广东省,深圳市,坪山新区', 3, 'pingshanxinqu', '0755', '518000', 'P', '114.34637', '22.690529'),
(1997, 1988, '大鹏新区', '大鹏新区', '中国,广东省,深圳市,大鹏新区', 3, 'dapengxinqu', '0755', '518000', 'D', '114.479901', '22.587862'),
(1998, 1988, '龙华新区', '龙华新区', '中国,广东省,深圳市,龙华新区', 3, 'longhuaxinqu', '0755', '518100', 'L', '114.036585', '22.68695'),
(1999, 1964, '珠海', '珠海市', '中国,广东省,珠海市', 2, 'zhuhai', '0756', '519000', 'Z', '113.552724', '22.255899'),
(2000, 1999, '香洲', '香洲区', '中国,广东省,珠海市,香洲区', 3, 'xiangzhou', '0756', '519000', 'X', '113.5435', '22.26654'),
(2001, 1999, '斗门', '斗门区', '中国,广东省,珠海市,斗门区', 3, 'doumen', '0756', '519110', 'D', '113.29644', '22.20898'),
(2002, 1999, '金湾', '金湾区', '中国,广东省,珠海市,金湾区', 3, 'jinwan', '0756', '519040', 'J', '113.36361', '22.14691'),
(2003, 1964, '汕头', '汕头市', '中国,广东省,汕头市', 2, 'shantou', '0754', '515041', 'S', '116.708463', '23.37102'),
(2004, 2003, '龙湖', '龙湖区', '中国,广东省,汕头市,龙湖区', 3, 'longhu', '0754', '515041', 'L', '116.71641', '23.37166'),
(2005, 2003, '金平', '金平区', '中国,广东省,汕头市,金平区', 3, 'jinping', '0754', '515041', 'J', '116.70364', '23.36637'),
(2006, 2003, '濠江', '濠江区', '中国,广东省,汕头市,濠江区', 3, 'haojiang', '0754', '515071', NULL, '116.72659', '23.28588'),
(2007, 2003, '潮阳', '潮阳区', '中国,广东省,汕头市,潮阳区', 3, 'chaoyang', '0754', '515100', 'C', '116.6015', '23.26485'),
(2008, 2003, '潮南', '潮南区', '中国,广东省,汕头市,潮南区', 3, 'chaonan', '0754', '515144', 'C', '116.43188', '23.25'),
(2009, 2003, '澄海', '澄海区', '中国,广东省,汕头市,澄海区', 3, 'chenghai', '0754', '515800', 'C', '116.75589', '23.46728'),
(2010, 2003, '南澳', '南澳县', '中国,广东省,汕头市,南澳县', 3, 'nanao', '0754', '515900', 'N', '117.01889', '23.4223'),
(2011, 1964, '佛山', '佛山市', '中国,广东省,佛山市', 2, 'foshan', '0757', '528000', 'F', '113.122717', '23.028762'),
(2012, 2011, '禅城', '禅城区', '中国,广东省,佛山市,禅城区', 3, 'chancheng', '0757', '528000', NULL, '113.1228', '23.00842'),
(2013, 2011, '南海', '南海区', '中国,广东省,佛山市,南海区', 3, 'nanhai', '0757', '528251', 'N', '113.14299', '23.02877'),
(2014, 2011, '顺德', '顺德区', '中国,广东省,佛山市,顺德区', 3, 'shunde', '0757', '528300', 'S', '113.29394', '22.80452'),
(2015, 2011, '三水', '三水区', '中国,广东省,佛山市,三水区', 3, 'sanshui', '0757', '528133', 'S', '112.89703', '23.15564'),
(2016, 2011, '高明', '高明区', '中国,广东省,佛山市,高明区', 3, 'gaoming', '0757', '528500', 'G', '112.89254', '22.90022'),
(2017, 1964, '江门', '江门市', '中国,广东省,江门市', 2, 'jiangmen', '0750', '529000', 'J', '113.094942', '22.590431'),
(2018, 2017, '蓬江', '蓬江区', '中国,广东省,江门市,蓬江区', 3, 'pengjiang', '0750', '529000', 'P', '113.07849', '22.59515'),
(2019, 2017, '江海', '江海区', '中国,广东省,江门市,江海区', 3, 'jianghai', '0750', '529040', 'J', '113.11099', '22.56024'),
(2020, 2017, '新会', '新会区', '中国,广东省,江门市,新会区', 3, 'xinhui', '0750', '529100', 'X', '113.03225', '22.45876'),
(2021, 2017, '台山', '台山市', '中国,广东省,江门市,台山市', 3, 'taishan', '0750', '529200', 'T', '112.79382', '22.2515'),
(2022, 2017, '开平', '开平市', '中国,广东省,江门市,开平市', 3, 'kaiping', '0750', '529337', 'K', '112.69842', '22.37622'),
(2023, 2017, '鹤山', '鹤山市', '中国,广东省,江门市,鹤山市', 3, 'heshan', '0750', '529700', 'H', '112.96429', '22.76523'),
(2024, 2017, '恩平', '恩平市', '中国,广东省,江门市,恩平市', 3, 'enping', '0750', '529400', 'E', '112.30496', '22.18288'),
(2025, 1964, '湛江', '湛江市', '中国,广东省,湛江市', 2, 'zhanjiang', '0759', '524047', 'Z', '110.405529', '21.195338'),
(2026, 2025, '赤坎', '赤坎区', '中国,广东省,湛江市,赤坎区', 3, 'chikan', '0759', '524033', 'C', '110.36592', '21.26606'),
(2027, 2025, '霞山', '霞山区', '中国,广东省,湛江市,霞山区', 3, 'xiashan', '0759', '524011', 'X', '110.39822', '21.19181'),
(2028, 2025, '坡头', '坡头区', '中国,广东省,湛江市,坡头区', 3, 'potou', '0759', '524057', 'P', '110.45533', '21.24472'),
(2029, 2025, '麻章', '麻章区', '中国,广东省,湛江市,麻章区', 3, 'mazhang', '0759', '524094', 'M', '110.3342', '21.26333'),
(2030, 2025, '遂溪', '遂溪县', '中国,广东省,湛江市,遂溪县', 3, 'suixi', '0759', '524300', 'S', '110.25003', '21.37721'),
(2031, 2025, '徐闻', '徐闻县', '中国,广东省,湛江市,徐闻县', 3, 'xuwen', '0759', '524100', 'X', '110.17379', '20.32812'),
(2032, 2025, '廉江', '廉江市', '中国,广东省,湛江市,廉江市', 3, 'lianjiang', '0759', '524400', 'L', '110.28442', '21.60917'),
(2033, 2025, '雷州', '雷州市', '中国,广东省,湛江市,雷州市', 3, 'leizhou', '0759', '524200', 'L', '110.10092', '20.91428'),
(2034, 2025, '吴川', '吴川市', '中国,广东省,湛江市,吴川市', 3, 'wuchuan', '0759', '524500', 'W', '110.77703', '21.44584'),
(2035, 1964, '茂名', '茂名市', '中国,广东省,茂名市', 2, 'maoming', '0668', '525000', 'M', '110.919229', '21.659751'),
(2036, 2035, '茂南', '茂南区', '中国,广东省,茂名市,茂南区', 3, 'maonan', '0668', '525000', 'M', '110.9187', '21.64103'),
(2037, 2035, '电白', '电白区', '中国,广东省,茂名市,电白区', 3, 'dianbai', '0668', '525400', 'D', '111.007264', '21.507219'),
(2038, 2035, '高州', '高州市', '中国,广东省,茂名市,高州市', 3, 'gaozhou', '0668', '525200', 'G', '110.85519', '21.92057'),
(2039, 2035, '化州', '化州市', '中国,广东省,茂名市,化州市', 3, 'huazhou', '0668', '525100', 'H', '110.63949', '21.66394'),
(2040, 2035, '信宜', '信宜市', '中国,广东省,茂名市,信宜市', 3, 'xinyi', '0668', '525300', 'X', '110.94647', '22.35351'),
(2041, 1964, '肇庆', '肇庆市', '中国,广东省,肇庆市', 2, 'zhaoqing', '0758', '526040', 'Z', '112.472529', '23.051546'),
(2042, 2041, '端州', '端州区', '中国,广东省,肇庆市,端州区', 3, 'duanzhou', '0758', '526060', 'D', '112.48495', '23.0519'),
(2043, 2041, '鼎湖', '鼎湖区', '中国,广东省,肇庆市,鼎湖区', 3, 'dinghu', '0758', '526070', 'D', '112.56643', '23.15846'),
(2044, 2041, '广宁', '广宁县', '中国,广东省,肇庆市,广宁县', 3, 'guangning', '0758', '526300', 'G', '112.44064', '23.6346'),
(2045, 2041, '怀集', '怀集县', '中国,广东省,肇庆市,怀集县', 3, 'huaiji', '0758', '526400', 'H', '112.18396', '23.90918'),
(2046, 2041, '封开', '封开县', '中国,广东省,肇庆市,封开县', 3, 'fengkai', '0758', '526500', 'F', '111.50332', '23.43571'),
(2047, 2041, '德庆', '德庆县', '中国,广东省,肇庆市,德庆县', 3, 'deqing', '0758', '526600', 'D', '111.78555', '23.14371'),
(2048, 2041, '高要', '高要市', '中国,广东省,肇庆市,高要市', 3, 'gaoyao', '0758', '526100', 'G', '112.45834', '23.02577'),
(2049, 2041, '四会', '四会市', '中国,广东省,肇庆市,四会市', 3, 'sihui', '0758', '526200', 'S', '112.73416', '23.32686'),
(2050, 1964, '惠州', '惠州市', '中国,广东省,惠州市', 2, 'huizhou', '0752', '516000', 'H', '114.412599', '23.079404'),
(2051, 2050, '惠城', '惠城区', '中国,广东省,惠州市,惠城区', 3, 'huicheng', '0752', '516008', 'H', '114.3828', '23.08377'),
(2052, 2050, '惠阳', '惠阳区', '中国,广东省,惠州市,惠阳区', 3, 'huiyang', '0752', '516211', 'H', '114.45639', '22.78845'),
(2053, 2050, '博罗', '博罗县', '中国,广东省,惠州市,博罗县', 3, 'boluo', '0752', '516100', 'B', '114.28964', '23.17307'),
(2054, 2050, '惠东', '惠东县', '中国,广东省,惠州市,惠东县', 3, 'huidong', '0752', '516300', 'H', '114.72009', '22.98484'),
(2055, 2050, '龙门', '龙门县', '中国,广东省,惠州市,龙门县', 3, 'longmen', '0752', '516800', 'L', '114.25479', '23.72758'),
(2056, 1964, '梅州', '梅州市', '中国,广东省,梅州市', 2, 'meizhou', '0753', '514021', 'M', '116.117582', '24.299112'),
(2057, 2056, '梅江', '梅江区', '中国,广东省,梅州市,梅江区', 3, 'meijiang', '0753', '514000', 'M', '116.11663', '24.31062'),
(2058, 2056, '梅县', '梅县区', '中国,广东省,梅州市,梅县区', 3, 'meixian', '0753', '514787', 'M', '116.097753', '24.286739'),
(2059, 2056, '大埔', '大埔县', '中国,广东省,梅州市,大埔县', 3, 'dabu', '0753', '514200', 'D', '116.69662', '24.35325'),
(2060, 2056, '丰顺', '丰顺县', '中国,广东省,梅州市,丰顺县', 3, 'fengshun', '0753', '514300', 'F', '116.18219', '23.74094'),
(2061, 2056, '五华', '五华县', '中国,广东省,梅州市,五华县', 3, 'wuhua', '0753', '514400', 'W', '115.77893', '23.92417'),
(2062, 2056, '平远', '平远县', '中国,广东省,梅州市,平远县', 3, 'pingyuan', '0753', '514600', 'P', '115.89556', '24.57116'),
(2063, 2056, '蕉岭', '蕉岭县', '中国,广东省,梅州市,蕉岭县', 3, 'jiaoling', '0753', '514100', 'J', '116.17089', '24.65732'),
(2064, 2056, '兴宁', '兴宁市', '中国,广东省,梅州市,兴宁市', 3, 'xingning', '0753', '514500', 'X', '115.73141', '24.14001'),
(2065, 1964, '汕尾', '汕尾市', '中国,广东省,汕尾市', 2, 'shanwei', '0660', '516600', 'S', '115.364238', '22.774485'),
(2066, 2065, '城区', '城区', '中国,广东省,汕尾市,城区', 3, 'chengqu', '0660', '516600', 'C', '115.36503', '22.7789'),
(2067, 2065, '海丰', '海丰县', '中国,广东省,汕尾市,海丰县', 3, 'haifeng', '0660', '516400', 'H', '115.32336', '22.96653'),
(2068, 2065, '陆河', '陆河县', '中国,广东省,汕尾市,陆河县', 3, 'luhe', '0660', '516700', 'L', '115.65597', '23.30365'),
(2069, 2065, '陆丰', '陆丰市', '中国,广东省,汕尾市,陆丰市', 3, 'lufeng', '0660', '516500', 'L', '115.64813', '22.94335'),
(2070, 1964, '河源', '河源市', '中国,广东省,河源市', 2, 'heyuan', '0762', '517000', 'H', '114.697802', '23.746266'),
(2071, 2070, '源城', '源城区', '中国,广东省,河源市,源城区', 3, 'yuancheng', '0762', '517000', 'Y', '114.70242', '23.7341'),
(2072, 2070, '紫金', '紫金县', '中国,广东省,河源市,紫金县', 3, 'zijin', '0762', '517400', 'Z', '115.18365', '23.63867'),
(2073, 2070, '龙川', '龙川县', '中国,广东省,河源市,龙川县', 3, 'longchuan', '0762', '517300', 'L', '115.26025', '24.10142'),
(2074, 2070, '连平', '连平县', '中国,广东省,河源市,连平县', 3, 'lianping', '0762', '517100', 'L', '114.49026', '24.37156'),
(2075, 2070, '和平', '和平县', '中国,广东省,河源市,和平县', 3, 'heping', '0762', '517200', 'H', '114.93841', '24.44319'),
(2076, 2070, '东源', '东源县', '中国,广东省,河源市,东源县', 3, 'dongyuan', '0762', '517583', 'D', '114.74633', '23.78835'),
(2077, 1964, '阳江', '阳江市', '中国,广东省,阳江市', 2, 'yangjiang', '0662', '529500', 'Y', '111.975107', '21.859222'),
(2078, 2077, '江城', '江城区', '中国,广东省,阳江市,江城区', 3, 'jiangcheng', '0662', '529500', 'J', '111.95488', '21.86193'),
(2079, 2077, '阳东', '阳东区', '中国,广东省,阳江市,阳东区', 3, 'yangdong', '0662', '529900', 'Y', '112.01467', '21.87398'),
(2080, 2077, '阳西', '阳西县', '中国,广东省,阳江市,阳西县', 3, 'yangxi', '0662', '529800', 'Y', '111.61785', '21.75234'),
(2081, 2077, '阳春', '阳春市', '中国,广东省,阳江市,阳春市', 3, 'yangchun', '0662', '529600', 'Y', '111.78854', '22.17232'),
(2082, 1964, '清远', '清远市', '中国,广东省,清远市', 2, 'qingyuan', '0763', '511500', 'Q', '113.036779', '23.704188'),
(2083, 2082, '清城', '清城区', '中国,广东省,清远市,清城区', 3, 'qingcheng', '0763', '511515', 'Q', '113.06265', '23.69784'),
(2084, 2082, '清新', '清新区', '中国,广东省,清远市,清新区', 3, 'qingxin', '0763', '511810', 'Q', '113.015203', '23.736949'),
(2085, 2082, '佛冈', '佛冈县', '中国,广东省,清远市,佛冈县', 3, 'fogang', '0763', '511600', 'F', '113.53286', '23.87231'),
(2086, 2082, '阳山', '阳山县', '中国,广东省,清远市,阳山县', 3, 'yangshan', '0763', '513100', 'Y', '112.64129', '24.46516'),
(2087, 2082, '连山', '连山壮族瑶族自治县', '中国,广东省,清远市,连山壮族瑶族自治县', 3, 'lianshan', '0763', '513200', 'L', '112.0802', '24.56807'),
(2088, 2082, '连南', '连南瑶族自治县', '中国,广东省,清远市,连南瑶族自治县', 3, 'liannan', '0763', '513300', 'L', '112.28842', '24.71726'),
(2089, 2082, '英德', '英德市', '中国,广东省,清远市,英德市', 3, 'yingde', '0763', '513000', 'Y', '113.415', '24.18571'),
(2090, 2082, '连州', '连州市', '中国,广东省,清远市,连州市', 3, 'lianzhou', '0763', '513400', 'L', '112.38153', '24.77913'),
(2091, 1964, '东莞', '东莞市', '中国,广东省,东莞市', 2, 'dongguan', '0769', '523888', 'D', '113.760234', '23.048884'),
(2092, 2091, '莞城', '莞城区', '中国,广东省,东莞市,莞城区', 3, 'guancheng', '0769', '523128', NULL, '113.751043', '23.053412'),
(2093, 2091, '南城', '南城区', '中国,广东省,东莞市,南城区', 3, 'nancheng', '0769', '523617', 'N', '113.752125', '23.02018'),
(2094, 2091, '万江', '万江区', '中国,广东省,东莞市,万江区', 3, 'wanjiang', '0769', '523039', 'W', '113.739053', '23.043842'),
(2095, 2091, '石碣', '石碣镇', '中国,广东省,东莞市,石碣镇', 3, 'shijie', '0769', '523290', 'S', '113.80217', '23.09899'),
(2096, 2091, '石龙', '石龙镇', '中国,广东省,东莞市,石龙镇', 3, 'shilong', '0769', '523326', 'S', '113.876381', '23.107444'),
(2097, 2091, '茶山', '茶山镇', '中国,广东省,东莞市,茶山镇', 3, 'chashan', '0769', '523380', 'C', '113.883526', '23.062375'),
(2098, 2091, '石排', '石排镇', '中国,广东省,东莞市,石排镇', 3, 'shipai', '0769', '523346', 'S', '113.919859', '23.0863'),
(2099, 2091, '企石', '企石镇', '中国,广东省,东莞市,企石镇', 3, 'qishi', '0769', '523507', 'Q', '114.013233', '23.066044'),
(2100, 2091, '横沥', '横沥镇', '中国,广东省,东莞市,横沥镇', 3, 'hengli', '0769', '523471', 'H', '113.957436', '23.025732'),
(2101, 2091, '桥头', '桥头镇', '中国,广东省,东莞市,桥头镇', 3, 'qiaotou', '0769', '523520', 'Q', '114.01385', '22.939727'),
(2102, 2091, '谢岗', '谢岗镇', '中国,广东省,东莞市,谢岗镇', 3, 'xiegang', '0769', '523592', 'X', '114.141396', '22.959664'),
(2103, 2091, '东坑', '东坑镇', '中国,广东省,东莞市,东坑镇', 3, 'dongkeng', '0769', '523451', 'D', '113.939835', '22.992804'),
(2104, 2091, '常平', '常平镇', '中国,广东省,东莞市,常平镇', 3, 'changping', '0769', '523560', 'C', '114.029627', '23.016116'),
(2105, 2091, '寮步', '寮步镇', '中国,广东省,东莞市,寮步镇', 3, 'liaobu', '0769', '523411', NULL, '113.884745', '22.991738'),
(2106, 2091, '大朗', '大朗镇', '中国,广东省,东莞市,大朗镇', 3, 'dalang', '0769', '523770', 'D', '113.9271', '22.965748'),
(2107, 2091, '麻涌', '麻涌镇', '中国,广东省,东莞市,麻涌镇', 3, 'machong', '0769', '523143', 'M', '113.546177', '23.045315'),
(2108, 2091, '中堂', '中堂镇', '中国,广东省,东莞市,中堂镇', 3, 'zhongtang', '0769', '523233', 'Z', '113.654422', '23.090164'),
(2109, 2091, '高埗', '高埗镇', '中国,广东省,东莞市,高埗镇', 3, 'gaobu', '0769', '523282', NULL, '113.735917', '23.068415'),
(2110, 2091, '樟木头', '樟木头镇', '中国,广东省,东莞市,樟木头镇', 3, 'zhangmutou', '0769', '523619', 'Z', '114.066298', '22.956682'),
(2111, 2091, '大岭山', '大岭山镇', '中国,广东省,东莞市,大岭山镇', 3, 'dalingshan', '0769', '523835', 'D', '113.782955', '22.885366'),
(2112, 2091, '望牛墩', '望牛墩镇', '中国,广东省,东莞市,望牛墩镇', 3, 'wangniudun', '0769', '523203', 'W', '113.658847', '23.055018'),
(2113, 2091, '黄江', '黄江镇', '中国,广东省,东莞市,黄江镇', 3, 'huangjiang', '0769', '523755', 'H', '113.992635', '22.877536'),
(2114, 2091, '洪梅', '洪梅镇', '中国,广东省,东莞市,洪梅镇', 3, 'hongmei', '0769', '523163', 'H', '113.613081', '22.992675'),
(2115, 2091, '清溪', '清溪镇', '中国,广东省,东莞市,清溪镇', 3, 'qingxi', '0769', '523660', 'Q', '114.155796', '22.844456'),
(2116, 2091, '沙田', '沙田镇', '中国,广东省,东莞市,沙田镇', 3, 'shatian', '0769', '523988', 'S', '113.760234', '23.048884'),
(2117, 2091, '道滘', '道滘镇', '中国,广东省,东莞市,道滘镇', 3, 'daojiao', '0769', '523171', NULL, '113.760234', '23.048884'),
(2118, 2091, '塘厦', '塘厦镇', '中国,广东省,东莞市,塘厦镇', 3, 'tangxia', '0769', '523713', 'T', '114.10765', '22.822862'),
(2119, 2091, '虎门', '虎门镇', '中国,广东省,东莞市,虎门镇', 3, 'humen', '0769', '523932', 'H', '113.71118', '22.82615'),
(2120, 2091, '厚街', '厚街镇', '中国,广东省,东莞市,厚街镇', 3, 'houjie', '0769', '523960', 'H', '113.67301', '22.940815'),
(2121, 2091, '凤岗', '凤岗镇', '中国,广东省,东莞市,凤岗镇', 3, 'fenggang', '0769', '523690', 'F', '114.141194', '22.744598'),
(2122, 2091, '长安', '长安镇', '中国,广东省,东莞市,长安镇', 3, 'chang\'an', '0769', '523850', 'C', '113.803939', '22.816644'),
(2123, 1964, '中山', '中山市', '中国,广东省,中山市', 2, 'zhongshan', '0760', '528403', 'Z', '113.382391', '22.521113'),
(2124, 2123, '石岐', '石岐区', '中国,广东省,中山市,石岐区', 3, 'shiqi', '0760', '528400', 'S', '113.378835', '22.52522'),
(2125, 2123, '南区', '南区', '中国,广东省,中山市,南区', 3, 'nanqu', '0760', '528400', 'N', '113.355896', '22.486568'),
(2126, 2123, '五桂山', '五桂山区', '中国,广东省,中山市,五桂山区', 3, 'wuguishan', '0760', '528458', 'W', '113.41079', '22.51968'),
(2127, 2123, '火炬', '火炬开发区', '中国,广东省,中山市,火炬开发区', 3, 'huoju', '0760', '528437', 'H', '113.480523', '22.566082'),
(2128, 2123, '黄圃', '黄圃镇', '中国,广东省,中山市,黄圃镇', 3, 'huangpu', '0760', '528429', 'H', '113.342359', '22.715116'),
(2129, 2123, '南头', '南头镇', '中国,广东省,中山市,南头镇', 3, 'nantou', '0760', '528421', 'N', '113.296358', '22.713907'),
(2130, 2123, '东凤', '东凤镇', '中国,广东省,中山市,东凤镇', 3, 'dongfeng', '0760', '528425', 'D', '113.26114', '22.68775'),
(2131, 2123, '阜沙', '阜沙镇', '中国,广东省,中山市,阜沙镇', 3, 'fusha', '0760', '528434', 'F', '113.353024', '22.666364'),
(2132, 2123, '小榄', '小榄镇', '中国,广东省,中山市,小榄镇', 3, 'xiaolan', '0760', '528415', 'X', '113.244235', '22.666951'),
(2133, 2123, '东升', '东升镇', '中国,广东省,中山市,东升镇', 3, 'dongsheng', '0760', '528400', 'D', '113.296298', '22.614003'),
(2134, 2123, '古镇', '古镇镇', '中国,广东省,中山市,古镇镇', 3, 'guzhen', '0760', '528422', 'G', '113.179745', '22.611019'),
(2135, 2123, '横栏', '横栏镇', '中国,广东省,中山市,横栏镇', 3, 'henglan', '0760', '528478', 'H', '113.265845', '22.523202'),
(2136, 2123, '三角', '三角镇', '中国,广东省,中山市,三角镇', 3, 'sanjiao', '0760', '528422', 'S', '113.423624', '22.677033'),
(2137, 2123, '民众', '民众镇', '中国,广东省,中山市,民众镇', 3, 'minzhong', '0760', '528441', 'M', '113.486025', '22.623468'),
(2138, 2123, '南朗', '南朗镇', '中国,广东省,中山市,南朗镇', 3, 'nanlang', '0760', '528454', 'N', '113.533939', '22.492378'),
(2139, 2123, '港口', '港口镇', '中国,广东省,中山市,港口镇', 3, 'gangkou', '0760', '528447', 'G', '113.382391', '22.521113'),
(2140, 2123, '大涌', '大涌镇', '中国,广东省,中山市,大涌镇', 3, 'dayong', '0760', '528476', 'D', '113.291708', '22.467712'),
(2141, 2123, '沙溪', '沙溪镇', '中国,广东省,中山市,沙溪镇', 3, 'shaxi', '0760', '528471', 'S', '113.328369', '22.526325'),
(2142, 2123, '三乡', '三乡镇', '中国,广东省,中山市,三乡镇', 3, 'sanxiang', '0760', '528463', 'S', '113.4334', '22.352494'),
(2143, 2123, '板芙', '板芙镇', '中国,广东省,中山市,板芙镇', 3, 'banfu', '0760', '528459', 'B', '113.320346', '22.415674'),
(2144, 2123, '神湾', '神湾镇', '中国,广东省,中山市,神湾镇', 3, 'shenwan', '0760', '528462', 'S', '113.359387', '22.312476'),
(2145, 2123, '坦洲', '坦洲镇', '中国,广东省,中山市,坦洲镇', 3, 'tanzhou', '0760', '528467', 'T', '113.485677', '22.261269'),
(2146, 1964, '潮州', '潮州市', '中国,广东省,潮州市', 2, 'chaozhou', '0768', '521000', 'C', '116.632301', '23.661701'),
(2147, 2146, '湘桥', '湘桥区', '中国,广东省,潮州市,湘桥区', 3, 'xiangqiao', '0768', '521000', 'X', '116.62805', '23.67451'),
(2148, 2146, '潮安', '潮安区', '中国,广东省,潮州市,潮安区', 3, 'chao\'an', '0768', '515638', 'C', '116.592895', '23.643656'),
(2149, 2146, '饶平', '饶平县', '中国,广东省,潮州市,饶平县', 3, 'raoping', '0768', '515700', 'R', '117.00692', '23.66994'),
(2150, 1964, '揭阳', '揭阳市', '中国,广东省,揭阳市', 2, 'jieyang', '0633', '522000', 'J', '116.355733', '23.543778'),
(2151, 2150, '榕城', '榕城区', '中国,广东省,揭阳市,榕城区', 3, 'rongcheng', '0633', '522000', NULL, '116.3671', '23.52508'),
(2152, 2150, '揭东', '揭东区', '中国,广东省,揭阳市,揭东区', 3, 'jiedong', '0633', '515500', 'J', '116.412947', '23.569887'),
(2153, 2150, '揭西', '揭西县', '中国,广东省,揭阳市,揭西县', 3, 'jiexi', '0633', '515400', 'J', '115.83883', '23.42714'),
(2154, 2150, '惠来', '惠来县', '中国,广东省,揭阳市,惠来县', 3, 'huilai', '0633', '515200', 'H', '116.29599', '23.03289'),
(2155, 2150, '普宁', '普宁市', '中国,广东省,揭阳市,普宁市', 3, 'puning', '0633', '515300', 'P', '116.16564', '23.29732'),
(2156, 1964, '云浮', '云浮市', '中国,广东省,云浮市', 2, 'yunfu', '0766', '527300', 'Y', '112.044439', '22.929801'),
(2157, 2156, '云城', '云城区', '中国,广东省,云浮市,云城区', 3, 'yuncheng', '0766', '527300', 'Y', '112.03908', '22.92996'),
(2158, 2156, '云安', '云安区', '中国,广东省,云浮市,云安区', 3, 'yun\'an', '0766', '527500', 'Y', '112.00936', '23.07779'),
(2159, 2156, '新兴', '新兴县', '中国,广东省,云浮市,新兴县', 3, 'xinxing', '0766', '527400', 'X', '112.23019', '22.69734'),
(2160, 2156, '郁南', '郁南县', '中国,广东省,云浮市,郁南县', 3, 'yunan', '0766', '527100', 'Y', '111.53387', '23.23307'),
(2161, 2156, '罗定', '罗定市', '中国,广东省,云浮市,罗定市', 3, 'luoding', '0766', '527200', 'L', '111.56979', '22.76967'),
(2162, 0, '广西', '广西壮族自治区', '中国,广西壮族自治区', 1, 'guangxi', '', '', 'G', '108.320004', '22.82402'),
(2163, 2162, '南宁', '南宁市', '中国,广西壮族自治区,南宁市', 2, 'nanning', '0771', '530028', 'N', '108.320004', '22.82402'),
(2164, 2163, '兴宁', '兴宁区', '中国,广西壮族自治区,南宁市,兴宁区', 3, 'xingning', '0771', '530023', 'X', '108.36694', '22.85355'),
(2165, 2163, '青秀', '青秀区', '中国,广西壮族自治区,南宁市,青秀区', 3, 'qingxiu', '0771', '530213', 'Q', '108.49545', '22.78511'),
(2166, 2163, '江南', '江南区', '中国,广西壮族自治区,南宁市,江南区', 3, 'jiangnan', '0771', '530031', 'J', '108.27325', '22.78127'),
(2167, 2163, '西乡塘', '西乡塘区', '中国,广西壮族自治区,南宁市,西乡塘区', 3, 'xixiangtang', '0771', '530001', 'X', '108.31347', '22.83386'),
(2168, 2163, '良庆', '良庆区', '中国,广西壮族自治区,南宁市,良庆区', 3, 'liangqing', '0771', '530219', 'L', '108.41284', '22.74914'),
(2169, 2163, '邕宁', '邕宁区', '中国,广西壮族自治区,南宁市,邕宁区', 3, 'yongning', '0771', '530200', NULL, '108.48684', '22.75628'),
(2170, 2163, '武鸣', '武鸣县', '中国,广西壮族自治区,南宁市,武鸣县', 3, 'wuming', '0771', '530100', 'W', '108.27719', '23.15643'),
(2171, 2163, '隆安', '隆安县', '中国,广西壮族自治区,南宁市,隆安县', 3, 'long\'an', '0771', '532700', 'L', '107.69192', '23.17336'),
(2172, 2163, '马山', '马山县', '中国,广西壮族自治区,南宁市,马山县', 3, 'mashan', '0771', '530600', 'M', '108.17697', '23.70931'),
(2173, 2163, '上林', '上林县', '中国,广西壮族自治区,南宁市,上林县', 3, 'shanglin', '0771', '530500', 'S', '108.60522', '23.432'),
(2174, 2163, '宾阳', '宾阳县', '中国,广西壮族自治区,南宁市,宾阳县', 3, 'binyang', '0771', '530400', 'B', '108.81185', '23.2196'),
(2175, 2163, '横县', '横县', '中国,广西壮族自治区,南宁市,横县', 3, 'hengxian', '0771', '530300', 'H', '109.26608', '22.68448'),
(2176, 2163, '埌东', '埌东新区', '中国,广西壮族自治区,南宁市,埌东新区', 3, 'langdong', '0771', '530000', NULL, '108.419094', '22.812976'),
(2177, 2162, '柳州', '柳州市', '中国,广西壮族自治区,柳州市', 2, 'liuzhou', '0772', '545001', 'L', '109.411703', '24.314617'),
(2178, 2177, '城中', '城中区', '中国,广西壮族自治区,柳州市,城中区', 3, 'chengzhong', '0772', '545001', 'C', '109.41082', '24.31543'),
(2179, 2177, '鱼峰', '鱼峰区', '中国,广西壮族自治区,柳州市,鱼峰区', 3, 'yufeng', '0772', '545005', 'Y', '109.4533', '24.31868'),
(2180, 2177, '柳南', '柳南区', '中国,广西壮族自治区,柳州市,柳南区', 3, 'liunan', '0772', '545007', 'L', '109.38548', '24.33599'),
(2181, 2177, '柳北', '柳北区', '中国,广西壮族自治区,柳州市,柳北区', 3, 'liubei', '0772', '545002', 'L', '109.40202', '24.36267'),
(2182, 2177, '柳江', '柳江县', '中国,广西壮族自治区,柳州市,柳江县', 3, 'liujiang', '0772', '545100', 'L', '109.33273', '24.25596'),
(2183, 2177, '柳城', '柳城县', '中国,广西壮族自治区,柳州市,柳城县', 3, 'liucheng', '0772', '545200', 'L', '109.23877', '24.64951'),
(2184, 2177, '鹿寨', '鹿寨县', '中国,广西壮族自治区,柳州市,鹿寨县', 3, 'luzhai', '0772', '545600', 'L', '109.75177', '24.47306'),
(2185, 2177, '融安', '融安县', '中国,广西壮族自治区,柳州市,融安县', 3, 'rong\'an', '0772', '545400', 'R', '109.39761', '25.22465'),
(2186, 2177, '融水', '融水苗族自治县', '中国,广西壮族自治区,柳州市,融水苗族自治县', 3, 'rongshui', '0772', '545300', 'R', '109.25634', '25.06628'),
(2187, 2177, '三江', '三江侗族自治县', '中国,广西壮族自治区,柳州市,三江侗族自治县', 3, 'sanjiang', '0772', '545500', 'S', '109.60446', '25.78428'),
(2188, 2177, '柳东', '柳东新区', '中国,广西壮族自治区,柳州市,柳东新区', 3, 'liudong', '0772', '545000', 'L', '109.437053', '24.329204'),
(2189, 2162, '桂林', '桂林市', '中国,广西壮族自治区,桂林市', 2, 'guilin', '0773', '541100', 'G', '110.299121', '25.274215'),
(2190, 2189, '秀峰', '秀峰区', '中国,广西壮族自治区,桂林市,秀峰区', 3, 'xiufeng', '0773', '541001', 'X', '110.28915', '25.28249'),
(2191, 2189, '叠彩', '叠彩区', '中国,广西壮族自治区,桂林市,叠彩区', 3, 'diecai', '0773', '541001', 'D', '110.30195', '25.31381'),
(2192, 2189, '象山', '象山区', '中国,广西壮族自治区,桂林市,象山区', 3, 'xiangshan', '0773', '541002', 'X', '110.28108', '25.26168'),
(2193, 2189, '七星', '七星区', '中国,广西壮族自治区,桂林市,七星区', 3, 'qixing', '0773', '541004', 'Q', '110.31793', '25.2525'),
(2194, 2189, '雁山', '雁山区', '中国,广西壮族自治区,桂林市,雁山区', 3, 'yanshan', '0773', '541006', 'Y', '110.30911', '25.06038'),
(2195, 2189, '临桂', '临桂区', '中国,广西壮族自治区,桂林市,临桂区', 3, 'lingui', '0773', '541100', 'L', '110.205487', '25.246257'),
(2196, 2189, '阳朔', '阳朔县', '中国,广西壮族自治区,桂林市,阳朔县', 3, 'yangshuo', '0773', '541900', 'Y', '110.49475', '24.77579'),
(2197, 2189, '灵川', '灵川县', '中国,广西壮族自治区,桂林市,灵川县', 3, 'lingchuan', '0773', '541200', 'L', '110.32949', '25.41292'),
(2198, 2189, '全州', '全州县', '中国,广西壮族自治区,桂林市,全州县', 3, 'quanzhou', '0773', '541503', 'Q', '111.07211', '25.92799'),
(2199, 2189, '兴安', '兴安县', '中国,广西壮族自治区,桂林市,兴安县', 3, 'xing\'an', '0773', '541300', 'X', '110.67144', '25.61167'),
(2200, 2189, '永福', '永福县', '中国,广西壮族自治区,桂林市,永福县', 3, 'yongfu', '0773', '541800', 'Y', '109.98333', '24.98004'),
(2201, 2189, '灌阳', '灌阳县', '中国,广西壮族自治区,桂林市,灌阳县', 3, 'guanyang', '0773', '541600', 'G', '111.15954', '25.48803'),
(2202, 2189, '龙胜', '龙胜各族自治县', '中国,广西壮族自治区,桂林市,龙胜各族自治县', 3, 'longsheng', '0773', '541700', 'L', '110.01226', '25.79614'),
(2203, 2189, '资源', '资源县', '中国,广西壮族自治区,桂林市,资源县', 3, 'ziyuan', '0773', '541400', 'Z', '110.65255', '26.04237'),
(2204, 2189, '平乐', '平乐县', '中国,广西壮族自治区,桂林市,平乐县', 3, 'pingle', '0773', '542400', 'P', '110.64175', '24.63242'),
(2205, 2189, '荔浦', '荔浦县', '中国,广西壮族自治区,桂林市,荔浦县', 3, 'lipu', '0773', '546600', 'L', '110.3971', '24.49589'),
(2206, 2189, '恭城', '恭城瑶族自治县', '中国,广西壮族自治区,桂林市,恭城瑶族自治县', 3, 'gongcheng', '0773', '542500', 'G', '110.83035', '24.83286'),
(2207, 2162, '梧州', '梧州市', '中国,广西壮族自治区,梧州市', 2, 'wuzhou', '0774', '543002', 'W', '111.316229', '23.472309'),
(2208, 2207, '万秀', '万秀区', '中国,广西壮族自治区,梧州市,万秀区', 3, 'wanxiu', '0774', '543000', 'W', '111.32052', '23.47298'),
(2209, 2207, '长洲', '长洲区', '中国,广西壮族自治区,梧州市,长洲区', 3, 'changzhou', '0774', '543003', 'C', '111.27494', '23.48573'),
(2210, 2207, '龙圩', '龙圩区', '中国,广西壮族自治区,梧州市,龙圩区', 3, 'longxu', '0774', '543002', 'L', '111.316229', '23.472309'),
(2211, 2207, '苍梧', '苍梧县', '中国,广西壮族自治区,梧州市,苍梧县', 3, 'cangwu', '0774', '543100', 'C', '111.24533', '23.42049'),
(2212, 2207, '藤县', '藤县', '中国,广西壮族自治区,梧州市,藤县', 3, 'tengxian', '0774', '543300', 'T', '110.91418', '23.37605'),
(2213, 2207, '蒙山', '蒙山县', '中国,广西壮族自治区,梧州市,蒙山县', 3, 'mengshan', '0774', '546700', 'M', '110.52221', '24.20168'),
(2214, 2207, '岑溪', '岑溪市', '中国,广西壮族自治区,梧州市,岑溪市', 3, 'cenxi', '0774', '543200', NULL, '110.99594', '22.9191'),
(2215, 2162, '北海', '北海市', '中国,广西壮族自治区,北海市', 2, 'beihai', '0779', '536000', 'B', '109.119254', '21.473343'),
(2216, 2215, '海城', '海城区', '中国,广西壮族自治区,北海市,海城区', 3, 'haicheng', '0779', '536000', 'H', '109.11744', '21.47501'),
(2217, 2215, '银海', '银海区', '中国,广西壮族自治区,北海市,银海区', 3, 'yinhai', '0779', '536000', 'Y', '109.13029', '21.4783'),
(2218, 2215, '铁山港', '铁山港区', '中国,广西壮族自治区,北海市,铁山港区', 3, 'tieshangang', '0779', '536017', 'T', '109.45578', '21.59661'),
(2219, 2215, '合浦', '合浦县', '中国,广西壮族自治区,北海市,合浦县', 3, 'hepu', '0779', '536100', 'H', '109.20068', '21.66601'),
(2220, 2162, '防城港', '防城港市', '中国,广西壮族自治区,防城港市', 2, 'fangchenggang', '0770', '538001', 'F', '108.345478', '21.614631'),
(2221, 2220, '港口', '港口区', '中国,广西壮族自治区,防城港市,港口区', 3, 'gangkou', '0770', '538001', 'G', '108.38022', '21.64342'),
(2222, 2220, '防城', '防城区', '中国,广西壮族自治区,防城港市,防城区', 3, 'fangcheng', '0770', '538021', 'F', '108.35726', '21.76464'),
(2223, 2220, '上思', '上思县', '中国,广西壮族自治区,防城港市,上思县', 3, 'shangsi', '0770', '535500', 'S', '107.9823', '22.14957'),
(2224, 2220, '东兴', '东兴市', '中国,广西壮族自治区,防城港市,东兴市', 3, 'dongxing', '0770', '538100', 'D', '107.97204', '21.54713'),
(2225, 2162, '钦州', '钦州市', '中国,广西壮族自治区,钦州市', 2, 'qinzhou', '0777', '535099', 'Q', '108.624175', '21.967127'),
(2226, 2225, '钦南', '钦南区', '中国,广西壮族自治区,钦州市,钦南区', 3, 'qinnan', '0777', '535099', 'Q', '108.61775', '21.95137'),
(2227, 2225, '钦北', '钦北区', '中国,广西壮族自治区,钦州市,钦北区', 3, 'qinbei', '0777', '535099', 'Q', '108.63037', '21.95127'),
(2228, 2225, '灵山', '灵山县', '中国,广西壮族自治区,钦州市,灵山县', 3, 'lingshan', '0777', '535099', 'L', '109.29153', '22.4165'),
(2229, 2225, '浦北', '浦北县', '中国,广西壮族自治区,钦州市,浦北县', 3, 'pubei', '0777', '535099', 'P', '109.55572', '22.26888'),
(2230, 2162, '贵港', '贵港市', '中国,广西壮族自治区,贵港市', 2, 'guigang', '0775', '537100', 'G', '109.602146', '23.0936'),
(2231, 2230, '港北', '港北区', '中国,广西壮族自治区,贵港市,港北区', 3, 'gangbei', '0775', '537100', 'G', '109.57224', '23.11153'),
(2232, 2230, '港南', '港南区', '中国,广西壮族自治区,贵港市,港南区', 3, 'gangnan', '0775', '537100', 'G', '109.60617', '23.07226'),
(2233, 2230, '覃塘', '覃塘区', '中国,广西壮族自治区,贵港市,覃塘区', 3, 'qintang', '0775', '537121', NULL, '109.44293', '23.12677'),
(2234, 2230, '平南', '平南县', '中国,广西壮族自治区,贵港市,平南县', 3, 'pingnan', '0775', '537300', 'P', '110.39062', '23.54201'),
(2235, 2230, '桂平', '桂平市', '中国,广西壮族自治区,贵港市,桂平市', 3, 'guiping', '0775', '537200', 'G', '110.08105', '23.39339'),
(2236, 2162, '玉林', '玉林市', '中国,广西壮族自治区,玉林市', 2, 'yulin', '0775', '537000', 'Y', '110.154393', '22.63136'),
(2237, 2236, '玉州', '玉州区', '中国,广西壮族自治区,玉林市,玉州区', 3, 'yuzhou', '0775', '537000', 'Y', '110.15114', '22.6281'),
(2238, 2236, '福绵', '福绵区', '中国,广西壮族自治区,玉林市,福绵区', 3, 'fumian', '0775', '537023', 'F', '110.064816', '22.583057'),
(2239, 2236, '玉东', '玉东新区', '中国,广西壮族自治区,玉林市,玉东新区', 3, 'yudong', '0775', '537000', 'Y', '110.154393', '22.63136'),
(2240, 2236, '容县', '容县', '中国,广西壮族自治区,玉林市,容县', 3, 'rongxian', '0775', '537500', 'R', '110.55593', '22.85701'),
(2241, 2236, '陆川', '陆川县', '中国,广西壮族自治区,玉林市,陆川县', 3, 'luchuan', '0775', '537700', 'L', '110.26413', '22.32454'),
(2242, 2236, '博白', '博白县', '中国,广西壮族自治区,玉林市,博白县', 3, 'bobai', '0775', '537600', 'B', '109.97744', '22.27286'),
(2243, 2236, '兴业', '兴业县', '中国,广西壮族自治区,玉林市,兴业县', 3, 'xingye', '0775', '537800', 'X', '109.87612', '22.74237'),
(2244, 2236, '北流', '北流市', '中国,广西壮族自治区,玉林市,北流市', 3, 'beiliu', '0775', '537400', 'B', '110.35302', '22.70817'),
(2245, 2162, '百色', '百色市', '中国,广西壮族自治区,百色市', 2, 'baise', '0776', '533000', 'B', '106.616285', '23.897742'),
(2246, 2245, '右江', '右江区', '中国,广西壮族自治区,百色市,右江区', 3, 'youjiang', '0776', '533000', 'Y', '106.61764', '23.9009'),
(2247, 2245, '田阳', '田阳县', '中国,广西壮族自治区,百色市,田阳县', 3, 'tianyang', '0776', '533600', 'T', '106.91558', '23.73535'),
(2248, 2245, '田东', '田东县', '中国,广西壮族自治区,百色市,田东县', 3, 'tiandong', '0776', '531500', 'T', '107.12432', '23.60003'),
(2249, 2245, '平果', '平果县', '中国,广西壮族自治区,百色市,平果县', 3, 'pingguo', '0776', '531400', 'P', '107.59045', '23.32969'),
(2250, 2245, '德保', '德保县', '中国,广西壮族自治区,百色市,德保县', 3, 'debao', '0776', '533700', 'D', '106.61917', '23.32515'),
(2251, 2245, '靖西', '靖西县', '中国,广西壮族自治区,百色市,靖西县', 3, 'jingxi', '0776', '533800', 'J', '106.41766', '23.13425'),
(2252, 2245, '那坡', '那坡县', '中国,广西壮族自治区,百色市,那坡县', 3, 'napo', '0776', '533900', 'N', '105.84191', '23.40649'),
(2253, 2245, '凌云', '凌云县', '中国,广西壮族自治区,百色市,凌云县', 3, 'lingyun', '0776', '533100', 'L', '106.56155', '24.34747'),
(2254, 2245, '乐业', '乐业县', '中国,广西壮族自治区,百色市,乐业县', 3, 'leye', '0776', '533200', 'L', '106.56124', '24.78295'),
(2255, 2245, '田林', '田林县', '中国,广西壮族自治区,百色市,田林县', 3, 'tianlin', '0776', '533300', 'T', '106.22882', '24.29207'),
(2256, 2245, '西林', '西林县', '中国,广西壮族自治区,百色市,西林县', 3, 'xilin', '0776', '533500', 'X', '105.09722', '24.48966'),
(2257, 2245, '隆林', '隆林各族自治县', '中国,广西壮族自治区,百色市,隆林各族自治县', 3, 'longlin', '0776', '533400', 'L', '105.34295', '24.77036'),
(2258, 2162, '贺州', '贺州市', '中国,广西壮族自治区,贺州市', 2, 'hezhou', '0774', '542800', 'H', '111.552056', '24.414141'),
(2259, 2258, '八步', '八步区', '中国,广西壮族自治区,贺州市,八步区', 3, 'babu', '0774', '542800', 'B', '111.55225', '24.41179'),
(2260, 2258, '昭平', '昭平县', '中国,广西壮族自治区,贺州市,昭平县', 3, 'zhaoping', '0774', '546800', 'Z', '110.81082', '24.1701'),
(2261, 2258, '钟山', '钟山县', '中国,广西壮族自治区,贺州市,钟山县', 3, 'zhongshan', '0774', '542600', 'Z', '111.30459', '24.52482'),
(2262, 2258, '富川', '富川瑶族自治县', '中国,广西壮族自治区,贺州市,富川瑶族自治县', 3, 'fuchuan', '0774', '542700', 'F', '111.27767', '24.81431'),
(2263, 2258, '平桂', '平桂管理区', '中国,广西壮族自治区,贺州市,平桂管理区', 3, 'pingui', '0774', '542800', 'P', '111.485651', '24.458041'),
(2264, 2162, '河池', '河池市', '中国,广西壮族自治区,河池市', 2, 'hechi', '0778', '547000', 'H', '108.062105', '24.695899'),
(2265, 2264, '金城江', '金城江区', '中国,广西壮族自治区,河池市,金城江区', 3, 'jinchengjiang', '0779', '547000', 'J', '108.03727', '24.6897'),
(2266, 2264, '南丹', '南丹县', '中国,广西壮族自治区,河池市,南丹县', 3, 'nandan', '0781', '547200', 'N', '107.54562', '24.9776'),
(2267, 2264, '天峨', '天峨县', '中国,广西壮族自治区,河池市,天峨县', 3, 'tiane', '0782', '547300', 'T', '107.17205', '24.99593'),
(2268, 2264, '凤山', '凤山县', '中国,广西壮族自治区,河池市,凤山县', 3, 'fengshan', '0783', '547600', 'F', '107.04892', '24.54215'),
(2269, 2264, '东兰', '东兰县', '中国,广西壮族自治区,河池市,东兰县', 3, 'donglan', '0784', '547400', 'D', '107.37527', '24.51053'),
(2270, 2264, '罗城', '罗城仫佬族自治县', '中国,广西壮族自治区,河池市,罗城仫佬族自治县', 3, 'luocheng', '0785', '546400', 'L', '108.90777', '24.77923'),
(2271, 2264, '环江', '环江毛南族自治县', '中国,广西壮族自治区,河池市,环江毛南族自治县', 3, 'huanjiang', '0786', '547100', 'H', '108.26055', '24.82916'),
(2272, 2264, '巴马', '巴马瑶族自治县', '中国,广西壮族自治区,河池市,巴马瑶族自治县', 3, 'bama', '0787', '547500', 'B', '107.25308', '24.14135'),
(2273, 2264, '都安', '都安瑶族自治县', '中国,广西壮族自治区,河池市,都安瑶族自治县', 3, 'du\'an', '0788', '530700', 'D', '108.10116', '23.93245'),
(2274, 2264, '大化', '大化瑶族自治县', '中国,广西壮族自治区,河池市,大化瑶族自治县', 3, 'dahua', '0789', '530800', 'D', '107.9985', '23.74487'),
(2275, 2264, '宜州', '宜州市', '中国,广西壮族自治区,河池市,宜州市', 3, 'yizhou', '0780', '546300', 'Y', '108.65304', '24.49391'),
(2276, 2162, '来宾', '来宾市', '中国,广西壮族自治区,来宾市', 2, 'laibin', '0772', '546100', 'L', '109.229772', '23.733766'),
(2277, 2276, '兴宾', '兴宾区', '中国,广西壮族自治区,来宾市,兴宾区', 3, 'xingbin', '0772', '546100', 'X', '109.23471', '23.72731'),
(2278, 2276, '忻城', '忻城县', '中国,广西壮族自治区,来宾市,忻城县', 3, 'xincheng', '0772', '546200', 'X', '108.66357', '24.06862'),
(2279, 2276, '象州', '象州县', '中国,广西壮族自治区,来宾市,象州县', 3, 'xiangzhou', '0772', '545800', 'X', '109.6994', '23.97355'),
(2280, 2276, '武宣', '武宣县', '中国,广西壮族自治区,来宾市,武宣县', 3, 'wuxuan', '0772', '545900', 'W', '109.66284', '23.59474'),
(2281, 2276, '金秀', '金秀瑶族自治县', '中国,广西壮族自治区,来宾市,金秀瑶族自治县', 3, 'jinxiu', '0772', '545799', 'J', '110.19079', '24.12929'),
(2282, 2276, '合山', '合山市', '中国,广西壮族自治区,来宾市,合山市', 3, 'heshan', '0772', '546500', 'H', '108.88586', '23.80619'),
(2283, 2162, '崇左', '崇左市', '中国,广西壮族自治区,崇左市', 2, 'chongzuo', '0771', '532299', 'C', '107.353926', '22.404108'),
(2284, 2283, '江州', '江州区', '中国,广西壮族自治区,崇左市,江州区', 3, 'jiangzhou', '0771', '532299', 'J', '107.34747', '22.41135'),
(2285, 2283, '扶绥', '扶绥县', '中国,广西壮族自治区,崇左市,扶绥县', 3, 'fusui', '0771', '532199', 'F', '107.90405', '22.63413'),
(2286, 2283, '宁明', '宁明县', '中国,广西壮族自治区,崇左市,宁明县', 3, 'ningming', '0771', '532599', 'N', '107.07299', '22.13655'),
(2287, 2283, '龙州', '龙州县', '中国,广西壮族自治区,崇左市,龙州县', 3, 'longzhou', '0771', '532499', 'L', '106.85415', '22.33937'),
(2288, 2283, '大新', '大新县', '中国,广西壮族自治区,崇左市,大新县', 3, 'daxin', '0771', '532399', 'D', '107.19821', '22.83412'),
(2289, 2283, '天等', '天等县', '中国,广西壮族自治区,崇左市,天等县', 3, 'tiandeng', '0771', '532899', 'T', '107.13998', '23.077'),
(2290, 2283, '凭祥', '凭祥市', '中国,广西壮族自治区,崇左市,凭祥市', 3, 'pingxiang', '0771', '532699', 'P', '106.75534', '22.10573'),
(2291, 0, '海南', '海南省', '中国,海南省', 1, 'hainan', '', '', 'H', '110.33119', '20.031971'),
(2292, 2291, '海口', '海口市', '中国,海南省,海口市', 2, 'haikou', '0898', '570000', 'H', '110.33119', '20.031971'),
(2293, 2292, '秀英', '秀英区', '中国,海南省,海口市,秀英区', 3, 'xiuying', '0898', '570311', 'X', '110.29345', '20.00752'),
(2294, 2292, '龙华', '龙华区', '中国,海南省,海口市,龙华区', 3, 'longhua', '0898', '570145', 'L', '110.30194', '20.02866'),
(2295, 2292, '琼山', '琼山区', '中国,海南省,海口市,琼山区', 3, 'qiongshan', '0898', '571100', 'Q', '110.35418', '20.00321'),
(2296, 2292, '美兰', '美兰区', '中国,海南省,海口市,美兰区', 3, 'meilan', '0898', '570203', 'M', '110.36908', '20.02864'),
(2297, 2291, '三亚', '三亚市', '中国,海南省,三亚市', 2, 'sanya', '0898', '572000', 'S', '109.508268', '18.247872'),
(2298, 2297, '海棠', '海棠区', '中国,海南省,三亚市,海棠区', 3, 'haitang', '0898', '572000', 'H', '109.508268', '18.247872'),
(2299, 2297, '吉阳', '吉阳区', '中国,海南省,三亚市,吉阳区', 3, 'jiyang', '0898', '572000', 'J', '109.508268', '18.247872'),
(2300, 2297, '天涯', '天涯区', '中国,海南省,三亚市,天涯区', 3, 'tianya', '0898', '572000', 'T', '109.508268', '18.247872'),
(2301, 2297, '崖州', '崖州区', '中国,海南省,三亚市,崖州区', 3, 'yazhou', '0898', '572000', 'Y', '109.508268', '18.247872'),
(2302, 2291, '三沙', '三沙市', '中国,海南省,三沙市', 2, 'sansha', '0898', '573199', 'S', '112.34882', '16.831039'),
(2303, 2302, '西沙', '西沙群岛', '中国,海南省,三沙市,西沙群岛', 3, 'xishaislands', '0898', '572000', 'X', '112.025528', '16.331342'),
(2304, 2302, '南沙', '南沙群岛', '中国,海南省,三沙市,南沙群岛', 3, 'nanshaislands', '0898', '573100', 'N', '116.749998', '11.471888'),
(2305, 2302, '中沙', '中沙群岛', '中国,海南省,三沙市,中沙群岛', 3, 'zhongshaislands', '0898', '573100', 'Z', '117.740071', '15.112856'),
(2306, 2291, ' ', '直辖县级', '中国,海南省,直辖县级', 2, '', '', '', 'Z', '109.503479', '18.739906'),
(2307, 2306, '五指山', '五指山市', '中国,海南省,直辖县级,五指山市', 3, 'wuzhishan', '0898', '572200', 'W', '109.516662', '18.776921'),
(2308, 2306, '琼海', '琼海市', '中国,海南省,直辖县级,琼海市', 3, 'qionghai', '0898', '571400', 'Q', '110.466785', '19.246011'),
(2309, 2306, '儋州', '儋州市', '中国,海南省,直辖县级,儋州市', 3, 'danzhou', '0898', '571700', NULL, '109.576782', '19.517486'),
(2310, 2306, '文昌', '文昌市', '中国,海南省,直辖县级,文昌市', 3, 'wenchang', '0898', '571339', 'W', '110.753975', '19.612986'),
(2311, 2306, '万宁', '万宁市', '中国,海南省,直辖县级,万宁市', 3, 'wanning', '0898', '571500', 'W', '110.388793', '18.796216'),
(2312, 2306, '东方', '东方市', '中国,海南省,直辖县级,东方市', 3, 'dongfang', '0898', '572600', 'D', '108.653789', '19.10198'),
(2313, 2306, '定安', '定安县', '中国,海南省,直辖县级,定安县', 3, 'ding\'an', '0898', '571200', 'D', '110.323959', '19.699211'),
(2314, 2306, '屯昌', '屯昌县', '中国,海南省,直辖县级,屯昌县', 3, 'tunchang', '0898', '571600', 'T', '110.102773', '19.362916'),
(2315, 2306, '澄迈', '澄迈县', '中国,海南省,直辖县级,澄迈县', 3, 'chengmai', '0898', '571900', 'C', '110.007147', '19.737095'),
(2316, 2306, '临高', '临高县', '中国,海南省,直辖县级,临高县', 3, 'lingao', '0898', '571800', 'L', '109.687697', '19.908293'),
(2317, 2306, '白沙', '白沙黎族自治县', '中国,海南省,直辖县级,白沙黎族自治县', 3, 'baisha', '0898', '572800', 'B', '109.452606', '19.224584'),
(2318, 2306, '昌江', '昌江黎族自治县', '中国,海南省,直辖县级,昌江黎族自治县', 3, 'changjiang', '0898', '572700', 'C', '109.053351', '19.260968'),
(2319, 2306, '乐东', '乐东黎族自治县', '中国,海南省,直辖县级,乐东黎族自治县', 3, 'ledong', '0898', '572500', 'L', '109.175444', '18.74758'),
(2320, 2306, '陵水', '陵水黎族自治县', '中国,海南省,直辖县级,陵水黎族自治县', 3, 'lingshui', '0898', '572400', 'L', '110.037218', '18.505006'),
(2321, 2306, '保亭', '保亭黎族苗族自治县', '中国,海南省,直辖县级,保亭黎族苗族自治县', 3, 'baoting', '0898', '572300', 'B', '109.70245', '18.636371'),
(2322, 2306, '琼中', '琼中黎族苗族自治县', '中国,海南省,直辖县级,琼中黎族苗族自治县', 3, 'qiongzhong', '0898', '572900', 'Q', '109.839996', '19.03557'),
(2323, 0, '重庆', '重庆', '中国,重庆', 1, 'chongqing', '', '', 'Z', '106.504962', '29.533155'),
(2324, 2323, '重庆', '重庆市', '中国,重庆,重庆市', 2, 'chongqing', '023', '400000', 'Z', '106.504962', '29.533155'),
(2325, 2324, '万州', '万州区', '中国,重庆,重庆市,万州区', 3, 'wanzhou', '023', '404000', 'W', '108.40869', '30.80788'),
(2326, 2324, '涪陵', '涪陵区', '中国,重庆,重庆市,涪陵区', 3, 'fuling', '023', '408000', 'F', '107.39007', '29.70292'),
(2327, 2324, '渝中', '渝中区', '中国,重庆,重庆市,渝中区', 3, 'yuzhong', '023', '400010', 'Y', '106.56901', '29.55279'),
(2328, 2324, '大渡口', '大渡口区', '中国,重庆,重庆市,大渡口区', 3, 'dadukou', '023', '400080', 'D', '106.48262', '29.48447'),
(2329, 2324, '江北', '江北区', '中国,重庆,重庆市,江北区', 3, 'jiangbei', '023', '400020', 'J', '106.57434', '29.60658'),
(2330, 2324, '沙坪坝', '沙坪坝区', '中国,重庆,重庆市,沙坪坝区', 3, 'shapingba', '023', '400030', 'S', '106.45752', '29.54113'),
(2331, 2324, '九龙坡', '九龙坡区', '中国,重庆,重庆市,九龙坡区', 3, 'jiulongpo', '023', '400050', 'J', '106.51107', '29.50197'),
(2332, 2324, '南岸', '南岸区', '中国,重庆,重庆市,南岸区', 3, 'nan\'an', '023', '400064', 'N', '106.56347', '29.52311'),
(2333, 2324, '北碚', '北碚区', '中国,重庆,重庆市,北碚区', 3, 'beibei', '023', '400700', 'B', '106.39614', '29.80574'),
(2334, 2324, '綦江', '綦江区', '中国,重庆,重庆市,綦江区', 3, 'qijiang', '023', '400800', NULL, '106.926779', '28.960656'),
(2335, 2324, '大足', '大足区', '中国,重庆,重庆市,大足区', 3, 'dazu', '023', '400900', 'D', '105.768121', '29.484025'),
(2336, 2324, '渝北', '渝北区', '中国,重庆,重庆市,渝北区', 3, 'yubei', '023', '401120', 'Y', '106.6307', '29.7182'),
(2337, 2324, '巴南', '巴南区', '中国,重庆,重庆市,巴南区', 3, 'banan', '023', '401320', 'B', '106.52365', '29.38311'),
(2338, 2324, '黔江', '黔江区', '中国,重庆,重庆市,黔江区', 3, 'qianjiang', '023', '409700', 'Q', '108.7709', '29.5332'),
(2339, 2324, '长寿', '长寿区', '中国,重庆,重庆市,长寿区', 3, 'changshou', '023', '401220', 'C', '107.08166', '29.85359'),
(2340, 2324, '江津', '江津区', '中国,重庆,重庆市,江津区', 3, 'jiangjin', '023', '402260', 'J', '106.25912', '29.29008'),
(2341, 2324, '合川', '合川区', '中国,重庆,重庆市,合川区', 3, 'hechuan', '023', '401520', 'H', '106.27633', '29.97227'),
(2342, 2324, '永川', '永川区', '中国,重庆,重庆市,永川区', 3, 'yongchuan', '023', '402160', 'Y', '105.927', '29.35593'),
(2343, 2324, '南川', '南川区', '中国,重庆,重庆市,南川区', 3, 'nanchuan', '023', '408400', 'N', '107.09936', '29.15751'),
(2344, 2324, '璧山', '璧山区', '中国,重庆,重庆市,璧山区', 3, 'bishan', '023', '402760', NULL, '106.231126', '29.593581'),
(2345, 2324, '铜梁', '铜梁区', '中国,重庆,重庆市,铜梁区', 3, 'tongliang', '023', '402560', 'T', '106.054948', '29.839944'),
(2346, 2324, '潼南', '潼南县', '中国,重庆,重庆市,潼南县', 3, 'tongnan', '023', '402660', NULL, '105.84005', '30.1912'),
(2347, 2324, '荣昌', '荣昌县', '中国,重庆,重庆市,荣昌县', 3, 'rongchang', '023', '402460', 'R', '105.59442', '29.40488'),
(2348, 2324, '梁平', '梁平县', '中国,重庆,重庆市,梁平县', 3, 'liangping', '023', '405200', 'L', '107.79998', '30.67545'),
(2349, 2324, '城口', '城口县', '中国,重庆,重庆市,城口县', 3, 'chengkou', '023', '405900', 'C', '108.66513', '31.94801'),
(2350, 2324, '丰都', '丰都县', '中国,重庆,重庆市,丰都县', 3, 'fengdu', '023', '408200', 'F', '107.73098', '29.86348'),
(2351, 2324, '垫江', '垫江县', '中国,重庆,重庆市,垫江县', 3, 'dianjiang', '023', '408300', 'D', '107.35446', '30.33359'),
(2352, 2324, '武隆', '武隆县', '中国,重庆,重庆市,武隆县', 3, 'wulong', '023', '408500', 'W', '107.7601', '29.32548'),
(2353, 2324, '忠县', '忠县', '中国,重庆,重庆市,忠县', 3, 'zhongxian', '023', '404300', 'Z', '108.03689', '30.28898'),
(2354, 2324, '开县', '开县', '中国,重庆,重庆市,开县', 3, 'kaixian', '023', '405400', 'K', '108.39306', '31.16095'),
(2355, 2324, '云阳', '云阳县', '中国,重庆,重庆市,云阳县', 3, 'yunyang', '023', '404500', 'Y', '108.69726', '30.93062'),
(2356, 2324, '奉节', '奉节县', '中国,重庆,重庆市,奉节县', 3, 'fengjie', '023', '404600', 'F', '109.46478', '31.01825'),
(2357, 2324, '巫山', '巫山县', '中国,重庆,重庆市,巫山县', 3, 'wushan', '023', '404700', 'W', '109.87814', '31.07458'),
(2358, 2324, '巫溪', '巫溪县', '中国,重庆,重庆市,巫溪县', 3, 'wuxi', '023', '405800', 'W', '109.63128', '31.39756'),
(2359, 2324, '石柱', '石柱土家族自治县', '中国,重庆,重庆市,石柱土家族自治县', 3, 'shizhu', '023', '409100', 'S', '108.11389', '30.00054'),
(2360, 2324, '秀山', '秀山土家族苗族自治县', '中国,重庆,重庆市,秀山土家族苗族自治县', 3, 'xiushan', '023', '409900', 'X', '108.98861', '28.45062'),
(2361, 2324, '酉阳', '酉阳土家族苗族自治县', '中国,重庆,重庆市,酉阳土家族苗族自治县', 3, 'youyang', '023', '409800', 'Y', '108.77212', '28.8446'),
(2362, 2324, '彭水', '彭水苗族土家族自治县', '中国,重庆,重庆市,彭水苗族土家族自治县', 3, 'pengshui', '023', '409600', 'P', '108.16638', '29.29516'),
(2363, 2323, '两江新区', '两江新区', '中国,重庆,两江新区', 2, 'liangjiangxinqu', '023', '400000', 'L', '106.463344', '29.729153'),
(2364, 2363, '北部新区', '北部新区', '中国,重庆,两江新区,北部新区', 3, 'beibuxinqu', '023', '400000', 'B', '106.488841', '29.667062'),
(2365, 2363, '保税港区', '保税港区', '中国,重庆,两江新区,保税港区', 3, 'baoshuigangqu', '023', '400000', 'B', '106.638184', '29.716311'),
(2366, 2363, '工业园区', '工业园区', '中国,重庆,两江新区,工业园区', 3, 'gongyeyuanqu', '023', '400000', 'G', '106.626434', '29.55554'),
(2367, 0, '四川', '四川省', '中国,四川省', 1, 'sichuan', '', '', 'S', '104.065735', '30.659462'),
(2368, 2367, '成都', '成都市', '中国,四川省,成都市', 2, 'chengdu', '028', '610015', 'C', '104.065735', '30.659462'),
(2369, 2368, '锦江', '锦江区', '中国,四川省,成都市,锦江区', 3, 'jinjiang', '028', '610021', 'J', '104.08347', '30.65614'),
(2370, 2368, '青羊', '青羊区', '中国,四川省,成都市,青羊区', 3, 'qingyang', '028', '610031', 'Q', '104.06151', '30.67387'),
(2371, 2368, '金牛', '金牛区', '中国,四川省,成都市,金牛区', 3, 'jinniu', '028', '610036', 'J', '104.05114', '30.69126'),
(2372, 2368, '武侯', '武侯区', '中国,四川省,成都市,武侯区', 3, 'wuhou', '028', '610041', 'W', '104.04303', '30.64235'),
(2373, 2368, '成华', '成华区', '中国,四川省,成都市,成华区', 3, 'chenghua', '028', '610066', 'C', '104.10193', '30.65993'),
(2374, 2368, '龙泉驿', '龙泉驿区', '中国,四川省,成都市,龙泉驿区', 3, 'longquanyi', '028', '610100', 'L', '104.27462', '30.55658'),
(2375, 2368, '青白江', '青白江区', '中国,四川省,成都市,青白江区', 3, 'qingbaijiang', '028', '610300', 'Q', '104.251', '30.87841'),
(2376, 2368, '新都', '新都区', '中国,四川省,成都市,新都区', 3, 'xindu', '028', '610500', 'X', '104.15921', '30.82314');
INSERT INTO `sf_area` (`id`, `pid`, `shortname`, `name`, `mergename`, `level`, `pinyin`, `code`, `zip`, `first`, `lng`, `lat`) VALUES
(2377, 2368, '温江', '温江区', '中国,四川省,成都市,温江区', 3, 'wenjiang', '028', '611130', 'W', '103.84881', '30.68444'),
(2378, 2368, '金堂', '金堂县', '中国,四川省,成都市,金堂县', 3, 'jintang', '028', '610400', 'J', '104.41195', '30.86195'),
(2379, 2368, '双流', '双流县', '中国,四川省,成都市,双流县', 3, 'shuangliu', '028', '610200', 'S', '103.92373', '30.57444'),
(2380, 2368, '郫县', '郫县', '中国,四川省,成都市,郫县', 3, 'pixian', '028', '611730', NULL, '103.88717', '30.81054'),
(2381, 2368, '大邑', '大邑县', '中国,四川省,成都市,大邑县', 3, 'dayi', '028', '611330', 'D', '103.52075', '30.58738'),
(2382, 2368, '蒲江', '蒲江县', '中国,四川省,成都市,蒲江县', 3, 'pujiang', '028', '611630', 'P', '103.50616', '30.19667'),
(2383, 2368, '新津', '新津县', '中国,四川省,成都市,新津县', 3, 'xinjin', '028', '611430', 'X', '103.8114', '30.40983'),
(2384, 2368, '都江堰', '都江堰市', '中国,四川省,成都市,都江堰市', 3, 'dujiangyan', '028', '611830', 'D', '103.61941', '30.99825'),
(2385, 2368, '彭州', '彭州市', '中国,四川省,成都市,彭州市', 3, 'pengzhou', '028', '611930', 'P', '103.958', '30.99011'),
(2386, 2368, '邛崃', '邛崃市', '中国,四川省,成都市,邛崃市', 3, 'qionglai', '028', '611530', NULL, '103.46283', '30.41489'),
(2387, 2368, '崇州', '崇州市', '中国,四川省,成都市,崇州市', 3, 'chongzhou', '028', '611230', 'C', '103.67285', '30.63014'),
(2388, 2367, '自贡', '自贡市', '中国,四川省,自贡市', 2, 'zigong', '0813', '643000', 'Z', '104.773447', '29.352765'),
(2389, 2388, '自流井', '自流井区', '中国,四川省,自贡市,自流井区', 3, 'ziliujing', '0813', '643000', 'Z', '104.77719', '29.33745'),
(2390, 2388, '贡井', '贡井区', '中国,四川省,自贡市,贡井区', 3, 'gongjing', '0813', '643020', 'G', '104.71536', '29.34576'),
(2391, 2388, '大安', '大安区', '中国,四川省,自贡市,大安区', 3, 'da\'an', '0813', '643010', 'D', '104.77383', '29.36364'),
(2392, 2388, '沿滩', '沿滩区', '中国,四川省,自贡市,沿滩区', 3, 'yantan', '0813', '643030', 'Y', '104.88012', '29.26611'),
(2393, 2388, '荣县', '荣县', '中国,四川省,自贡市,荣县', 3, 'rongxian', '0813', '643100', 'R', '104.4176', '29.44445'),
(2394, 2388, '富顺', '富顺县', '中国,四川省,自贡市,富顺县', 3, 'fushun', '0813', '643200', 'F', '104.97491', '29.18123'),
(2395, 2367, '攀枝花', '攀枝花市', '中国,四川省,攀枝花市', 2, 'panzhihua', '0812', '617000', 'P', '101.716007', '26.580446'),
(2396, 2395, '东区', '东区', '中国,四川省,攀枝花市,东区', 3, 'dongqu', '0812', '617067', 'D', '101.7052', '26.54677'),
(2397, 2395, '西区', '西区', '中国,四川省,攀枝花市,西区', 3, 'xiqu', '0812', '617068', 'X', '101.63058', '26.59753'),
(2398, 2395, '仁和', '仁和区', '中国,四川省,攀枝花市,仁和区', 3, 'renhe', '0812', '617061', 'R', '101.73812', '26.49841'),
(2399, 2395, '米易', '米易县', '中国,四川省,攀枝花市,米易县', 3, 'miyi', '0812', '617200', 'M', '102.11132', '26.88718'),
(2400, 2395, '盐边', '盐边县', '中国,四川省,攀枝花市,盐边县', 3, 'yanbian', '0812', '617100', 'Y', '101.85446', '26.68847'),
(2401, 2367, '泸州', '泸州市', '中国,四川省,泸州市', 2, 'luzhou', '0830', '646000', NULL, '105.443348', '28.889138'),
(2402, 2401, '江阳', '江阳区', '中国,四川省,泸州市,江阳区', 3, 'jiangyang', '0830', '646000', 'J', '105.45336', '28.88934'),
(2403, 2401, '纳溪', '纳溪区', '中国,四川省,泸州市,纳溪区', 3, 'naxi', '0830', '646300', 'N', '105.37255', '28.77343'),
(2404, 2401, '龙马潭', '龙马潭区', '中国,四川省,泸州市,龙马潭区', 3, 'longmatan', '0830', '646000', 'L', '105.43774', '28.91308'),
(2405, 2401, '泸县', '泸县', '中国,四川省,泸州市,泸县', 3, 'luxian', '0830', '646106', NULL, '105.38192', '29.15041'),
(2406, 2401, '合江', '合江县', '中国,四川省,泸州市,合江县', 3, 'hejiang', '0830', '646200', 'H', '105.8352', '28.81005'),
(2407, 2401, '叙永', '叙永县', '中国,四川省,泸州市,叙永县', 3, 'xuyong', '0830', '646400', 'X', '105.44473', '28.15586'),
(2408, 2401, '古蔺', '古蔺县', '中国,四川省,泸州市,古蔺县', 3, 'gulin', '0830', '646500', 'G', '105.81347', '28.03867'),
(2409, 2367, '德阳', '德阳市', '中国,四川省,德阳市', 2, 'deyang', '0838', '618000', 'D', '104.398651', '31.127991'),
(2410, 2409, '旌阳', '旌阳区', '中国,四川省,德阳市,旌阳区', 3, 'jingyang', '0838', '618000', NULL, '104.39367', '31.13906'),
(2411, 2409, '中江', '中江县', '中国,四川省,德阳市,中江县', 3, 'zhongjiang', '0838', '618100', 'Z', '104.67861', '31.03297'),
(2412, 2409, '罗江', '罗江县', '中国,四川省,德阳市,罗江县', 3, 'luojiang', '0838', '618500', 'L', '104.51025', '31.31665'),
(2413, 2409, '广汉', '广汉市', '中国,四川省,德阳市,广汉市', 3, 'guanghan', '0838', '618300', 'G', '104.28234', '30.97686'),
(2414, 2409, '什邡', '什邡市', '中国,四川省,德阳市,什邡市', 3, 'shifang', '0838', '618400', 'S', '104.16754', '31.1264'),
(2415, 2409, '绵竹', '绵竹市', '中国,四川省,德阳市,绵竹市', 3, 'mianzhu', '0838', '618200', 'M', '104.22076', '31.33772'),
(2416, 2367, '绵阳', '绵阳市', '中国,四川省,绵阳市', 2, 'mianyang', '0816', '621000', 'M', '104.741722', '31.46402'),
(2417, 2416, '涪城', '涪城区', '中国,四川省,绵阳市,涪城区', 3, 'fucheng', '0816', '621000', 'F', '104.75719', '31.45522'),
(2418, 2416, '游仙', '游仙区', '中国,四川省,绵阳市,游仙区', 3, 'youxian', '0816', '621022', 'Y', '104.77092', '31.46574'),
(2419, 2416, '三台', '三台县', '中国,四川省,绵阳市,三台县', 3, 'santai', '0816', '621100', 'S', '105.09079', '31.09179'),
(2420, 2416, '盐亭', '盐亭县', '中国,四川省,绵阳市,盐亭县', 3, 'yanting', '0816', '621600', 'Y', '105.3898', '31.22176'),
(2421, 2416, '安县', '安县', '中国,四川省,绵阳市,安县', 3, 'anxian', '0816', '622650', 'A', '104.56738', '31.53487'),
(2422, 2416, '梓潼', '梓潼县', '中国,四川省,绵阳市,梓潼县', 3, 'zitong', '0816', '622150', NULL, '105.16183', '31.6359'),
(2423, 2416, '北川', '北川羌族自治县', '中国,四川省,绵阳市,北川羌族自治县', 3, 'beichuan', '0816', '622750', 'B', '104.46408', '31.83286'),
(2424, 2416, '平武', '平武县', '中国,四川省,绵阳市,平武县', 3, 'pingwu', '0816', '622550', 'P', '104.52862', '32.40791'),
(2425, 2416, '江油', '江油市', '中国,四川省,绵阳市,江油市', 3, 'jiangyou', '0816', '621700', 'J', '104.74539', '31.77775'),
(2426, 2367, '广元', '广元市', '中国,四川省,广元市', 2, 'guangyuan', '0839', '628000', 'G', '105.829757', '32.433668'),
(2427, 2426, '利州', '利州区', '中国,四川省,广元市,利州区', 3, 'lizhou', '0839', '628017', 'L', '105.826194', '32.432276'),
(2428, 2426, '昭化', '昭化区', '中国,四川省,广元市,昭化区', 3, 'zhaohua', '0839', '628017', 'Z', '105.640491', '32.386518'),
(2429, 2426, '朝天', '朝天区', '中国,四川省,广元市,朝天区', 3, 'chaotian', '0839', '628017', 'C', '105.89273', '32.64398'),
(2430, 2426, '旺苍', '旺苍县', '中国,四川省,广元市,旺苍县', 3, 'wangcang', '0839', '628200', 'W', '106.29022', '32.22845'),
(2431, 2426, '青川', '青川县', '中国,四川省,广元市,青川县', 3, 'qingchuan', '0839', '628100', 'Q', '105.2391', '32.58563'),
(2432, 2426, '剑阁', '剑阁县', '中国,四川省,广元市,剑阁县', 3, 'jiange', '0839', '628300', 'J', '105.5252', '32.28845'),
(2433, 2426, '苍溪', '苍溪县', '中国,四川省,广元市,苍溪县', 3, 'cangxi', '0839', '628400', 'C', '105.936', '31.73209'),
(2434, 2367, '遂宁', '遂宁市', '中国,四川省,遂宁市', 2, 'suining', '0825', '629000', 'S', '105.571331', '30.513311'),
(2435, 2434, '船山', '船山区', '中国,四川省,遂宁市,船山区', 3, 'chuanshan', '0825', '629000', 'C', '105.5809', '30.49991'),
(2436, 2434, '安居', '安居区', '中国,四川省,遂宁市,安居区', 3, 'anju', '0825', '629000', 'A', '105.46402', '30.35778'),
(2437, 2434, '蓬溪', '蓬溪县', '中国,四川省,遂宁市,蓬溪县', 3, 'pengxi', '0825', '629100', 'P', '105.70752', '30.75775'),
(2438, 2434, '射洪', '射洪县', '中国,四川省,遂宁市,射洪县', 3, 'shehong', '0825', '629200', 'S', '105.38922', '30.87203'),
(2439, 2434, '大英', '大英县', '中国,四川省,遂宁市,大英县', 3, 'daying', '0825', '629300', 'D', '105.24346', '30.59434'),
(2440, 2367, '内江', '内江市', '中国,四川省,内江市', 2, 'neijiang', '0832', '641000', 'N', '105.066138', '29.58708'),
(2441, 2440, '市中区', '市中区', '中国,四川省,内江市,市中区', 3, 'shizhongqu', '0832', '641000', 'S', '105.0679', '29.58709'),
(2442, 2440, '东兴', '东兴区', '中国,四川省,内江市,东兴区', 3, 'dongxing', '0832', '641100', 'D', '105.07554', '29.59278'),
(2443, 2440, '威远', '威远县', '中国,四川省,内江市,威远县', 3, 'weiyuan', '0832', '642450', 'W', '104.66955', '29.52823'),
(2444, 2440, '资中', '资中县', '中国,四川省,内江市,资中县', 3, 'zizhong', '0832', '641200', 'Z', '104.85205', '29.76409'),
(2445, 2440, '隆昌', '隆昌县', '中国,四川省,内江市,隆昌县', 3, 'longchang', '0832', '642150', 'L', '105.28738', '29.33937'),
(2446, 2367, '乐山', '乐山市', '中国,四川省,乐山市', 2, 'leshan', '0833', '614000', 'L', '103.761263', '29.582024'),
(2447, 2446, '市中区', '市中区', '中国,四川省,乐山市,市中区', 3, 'shizhongqu', '0833', '614000', 'S', '103.76159', '29.55543'),
(2448, 2446, '沙湾', '沙湾区', '中国,四川省,乐山市,沙湾区', 3, 'shawan', '0833', '614900', 'S', '103.54873', '29.41194'),
(2449, 2446, '五通桥', '五通桥区', '中国,四川省,乐山市,五通桥区', 3, 'wutongqiao', '0833', '614800', 'W', '103.82345', '29.40344'),
(2450, 2446, '金口河', '金口河区', '中国,四川省,乐山市,金口河区', 3, 'jinkouhe', '0833', '614700', 'J', '103.07858', '29.24578'),
(2451, 2446, '犍为', '犍为县', '中国,四川省,乐山市,犍为县', 3, 'qianwei', '0833', '614400', NULL, '103.94989', '29.20973'),
(2452, 2446, '井研', '井研县', '中国,四川省,乐山市,井研县', 3, 'jingyan', '0833', '613100', 'J', '104.07019', '29.65228'),
(2453, 2446, '夹江', '夹江县', '中国,四川省,乐山市,夹江县', 3, 'jiajiang', '0833', '614100', 'J', '103.57199', '29.73868'),
(2454, 2446, '沐川', '沐川县', '中国,四川省,乐山市,沐川县', 3, 'muchuan', '0833', '614500', NULL, '103.90353', '28.95646'),
(2455, 2446, '峨边', '峨边彝族自治县', '中国,四川省,乐山市,峨边彝族自治县', 3, 'ebian', '0833', '614300', 'E', '103.26339', '29.23004'),
(2456, 2446, '马边', '马边彝族自治县', '中国,四川省,乐山市,马边彝族自治县', 3, 'mabian', '0833', '614600', 'M', '103.54617', '28.83593'),
(2457, 2446, '峨眉山', '峨眉山市', '中国,四川省,乐山市,峨眉山市', 3, 'emeishan', '0833', '614200', 'E', '103.4844', '29.60117'),
(2458, 2367, '南充', '南充市', '中国,四川省,南充市', 2, 'nanchong', '0817', '637000', 'N', '106.082974', '30.795281'),
(2459, 2458, '顺庆', '顺庆区', '中国,四川省,南充市,顺庆区', 3, 'shunqing', '0817', '637000', 'S', '106.09216', '30.79642'),
(2460, 2458, '高坪', '高坪区', '中国,四川省,南充市,高坪区', 3, 'gaoping', '0817', '637100', 'G', '106.11894', '30.78162'),
(2461, 2458, '嘉陵', '嘉陵区', '中国,四川省,南充市,嘉陵区', 3, 'jialing', '0817', '637100', 'J', '106.07141', '30.75848'),
(2462, 2458, '南部', '南部县', '中国,四川省,南充市,南部县', 3, 'nanbu', '0817', '637300', 'N', '106.06738', '31.35451'),
(2463, 2458, '营山', '营山县', '中国,四川省,南充市,营山县', 3, 'yingshan', '0817', '637700', 'Y', '106.56637', '31.07747'),
(2464, 2458, '蓬安', '蓬安县', '中国,四川省,南充市,蓬安县', 3, 'peng\'an', '0817', '637800', 'P', '106.41262', '31.02964'),
(2465, 2458, '仪陇', '仪陇县', '中国,四川省,南充市,仪陇县', 3, 'yilong', '0817', '637600', 'Y', '106.29974', '31.27628'),
(2466, 2458, '西充', '西充县', '中国,四川省,南充市,西充县', 3, 'xichong', '0817', '637200', 'X', '105.89996', '30.9969'),
(2467, 2458, '阆中', '阆中市', '中国,四川省,南充市,阆中市', 3, 'langzhong', '0817', '637400', NULL, '106.00494', '31.55832'),
(2468, 2367, '眉山', '眉山市', '中国,四川省,眉山市', 2, 'meishan', '028', '620020', 'M', '103.831788', '30.048318'),
(2469, 2468, '东坡', '东坡区', '中国,四川省,眉山市,东坡区', 3, 'dongpo', '028', '620010', 'D', '103.832', '30.04219'),
(2470, 2468, '彭山', '彭山区', '中国,四川省,眉山市,彭山区', 3, 'pengshan', '028', '620860', 'P', '103.87268', '30.19283'),
(2471, 2468, '仁寿', '仁寿县', '中国,四川省,眉山市,仁寿县', 3, 'renshou', '028', '620500', 'R', '104.13412', '29.99599'),
(2472, 2468, '洪雅', '洪雅县', '中国,四川省,眉山市,洪雅县', 3, 'hongya', '028', '620360', 'H', '103.37313', '29.90661'),
(2473, 2468, '丹棱', '丹棱县', '中国,四川省,眉山市,丹棱县', 3, 'danling', '028', '620200', 'D', '103.51339', '30.01562'),
(2474, 2468, '青神', '青神县', '中国,四川省,眉山市,青神县', 3, 'qingshen', '028', '620460', 'Q', '103.84771', '29.83235'),
(2475, 2367, '宜宾', '宜宾市', '中国,四川省,宜宾市', 2, 'yibin', '0831', '644000', 'Y', '104.630825', '28.760189'),
(2476, 2475, '翠屏', '翠屏区', '中国,四川省,宜宾市,翠屏区', 3, 'cuiping', '0831', '644000', 'C', '104.61978', '28.76566'),
(2477, 2475, '南溪', '南溪区', '中国,四川省,宜宾市,南溪区', 3, 'nanxi', '0831', '644100', 'N', '104.981133', '28.839806'),
(2478, 2475, '宜宾', '宜宾县', '中国,四川省,宜宾市,宜宾县', 3, 'yibin', '0831', '644600', 'Y', '104.53314', '28.68996'),
(2479, 2475, '江安', '江安县', '中国,四川省,宜宾市,江安县', 3, 'jiang\'an', '0831', '644200', 'J', '105.06683', '28.72385'),
(2480, 2475, '长宁', '长宁县', '中国,四川省,宜宾市,长宁县', 3, 'changning', '0831', '644300', 'C', '104.9252', '28.57777'),
(2481, 2475, '高县', '高县', '中国,四川省,宜宾市,高县', 3, 'gaoxian', '0831', '645150', 'G', '104.51754', '28.43619'),
(2482, 2475, '珙县', '珙县', '中国,四川省,宜宾市,珙县', 3, 'gongxian', '0831', '644500', NULL, '104.71398', '28.44512'),
(2483, 2475, '筠连', '筠连县', '中国,四川省,宜宾市,筠连县', 3, 'junlian', '0831', '645250', NULL, '104.51217', '28.16495'),
(2484, 2475, '兴文', '兴文县', '中国,四川省,宜宾市,兴文县', 3, 'xingwen', '0831', '644400', 'X', '105.23675', '28.3044'),
(2485, 2475, '屏山', '屏山县', '中国,四川省,宜宾市,屏山县', 3, 'pingshan', '0831', '645350', 'P', '104.16293', '28.64369'),
(2486, 2367, '广安', '广安市', '中国,四川省,广安市', 2, 'guang\'an', '0826', '638000', 'G', '106.633369', '30.456398'),
(2487, 2486, '广安', '广安区', '中国,四川省,广安市,广安区', 3, 'guang\'an', '0826', '638000', 'G', '106.64163', '30.47389'),
(2488, 2486, '前锋', '前锋区', '中国,四川省,广安市,前锋区', 3, 'qianfeng', '0826', '638019', 'Q', '106.893537', '30.494572'),
(2489, 2486, '岳池', '岳池县', '中国,四川省,广安市,岳池县', 3, 'yuechi', '0826', '638300', 'Y', '106.44079', '30.53918'),
(2490, 2486, '武胜', '武胜县', '中国,四川省,广安市,武胜县', 3, 'wusheng', '0826', '638400', 'W', '106.29592', '30.34932'),
(2491, 2486, '邻水', '邻水县', '中国,四川省,广安市,邻水县', 3, 'linshui', '0826', '638500', 'L', '106.92968', '30.33449'),
(2492, 2486, '华蓥', '华蓥市', '中国,四川省,广安市,华蓥市', 3, 'huaying', '0826', '638600', 'H', '106.78466', '30.39007'),
(2493, 2367, '达州', '达州市', '中国,四川省,达州市', 2, 'dazhou', '0818', '635000', 'D', '107.502262', '31.209484'),
(2494, 2493, '通川', '通川区', '中国,四川省,达州市,通川区', 3, 'tongchuan', '0818', '635000', 'T', '107.50456', '31.21469'),
(2495, 2493, '达川', '达川区', '中国,四川省,达州市,达川区', 3, 'dachuan', '0818', '635000', 'D', '107.502262', '31.209484'),
(2496, 2493, '宣汉', '宣汉县', '中国,四川省,达州市,宣汉县', 3, 'xuanhan', '0818', '636150', 'X', '107.72775', '31.35516'),
(2497, 2493, '开江', '开江县', '中国,四川省,达州市,开江县', 3, 'kaijiang', '0818', '636250', 'K', '107.86889', '31.0841'),
(2498, 2493, '大竹', '大竹县', '中国,四川省,达州市,大竹县', 3, 'dazhu', '0818', '635100', 'D', '107.20855', '30.74147'),
(2499, 2493, '渠县', '渠县', '中国,四川省,达州市,渠县', 3, 'quxian', '0818', '635200', 'Q', '106.97381', '30.8376'),
(2500, 2493, '万源', '万源市', '中国,四川省,达州市,万源市', 3, 'wanyuan', '0818', '636350', 'W', '108.03598', '32.08091'),
(2501, 2367, '雅安', '雅安市', '中国,四川省,雅安市', 2, 'ya\'an', '0835', '625000', 'Y', '103.001033', '29.987722'),
(2502, 2501, '雨城', '雨城区', '中国,四川省,雅安市,雨城区', 3, 'yucheng', '0835', '625000', 'Y', '103.03305', '30.00531'),
(2503, 2501, '名山', '名山区', '中国,四川省,雅安市,名山区', 3, 'mingshan', '0835', '625100', 'M', '103.112214', '30.084718'),
(2504, 2501, '荥经', '荥经县', '中国,四川省,雅安市,荥经县', 3, 'yingjing', '0835', '625200', NULL, '102.84652', '29.79402'),
(2505, 2501, '汉源', '汉源县', '中国,四川省,雅安市,汉源县', 3, 'hanyuan', '0835', '625300', 'H', '102.6784', '29.35168'),
(2506, 2501, '石棉', '石棉县', '中国,四川省,雅安市,石棉县', 3, 'shimian', '0835', '625400', 'S', '102.35943', '29.22796'),
(2507, 2501, '天全', '天全县', '中国,四川省,雅安市,天全县', 3, 'tianquan', '0835', '625500', 'T', '102.75906', '30.06754'),
(2508, 2501, '芦山', '芦山县', '中国,四川省,雅安市,芦山县', 3, 'lushan', '0835', '625600', 'L', '102.92791', '30.14369'),
(2509, 2501, '宝兴', '宝兴县', '中国,四川省,雅安市,宝兴县', 3, 'baoxing', '0835', '625700', 'B', '102.81555', '30.36836'),
(2510, 2367, '巴中', '巴中市', '中国,四川省,巴中市', 2, 'bazhong', '0827', '636000', 'B', '106.753669', '31.858809'),
(2511, 2510, '巴州', '巴州区', '中国,四川省,巴中市,巴州区', 3, 'bazhou', '0827', '636001', 'B', '106.76889', '31.85125'),
(2512, 2510, '恩阳', '恩阳区', '中国,四川省,巴中市,恩阳区', 3, 'enyang', '0827', '636064', 'E', '106.753669', '31.858809'),
(2513, 2510, '通江', '通江县', '中国,四川省,巴中市,通江县', 3, 'tongjiang', '0827', '636700', 'T', '107.24398', '31.91294'),
(2514, 2510, '南江', '南江县', '中国,四川省,巴中市,南江县', 3, 'nanjiang', '0827', '636600', 'N', '106.84164', '32.35335'),
(2515, 2510, '平昌', '平昌县', '中国,四川省,巴中市,平昌县', 3, 'pingchang', '0827', '636400', 'P', '107.10424', '31.5594'),
(2516, 2367, '资阳', '资阳市', '中国,四川省,资阳市', 2, 'ziyang', '028', '641300', 'Z', '104.641917', '30.122211'),
(2517, 2516, '雁江', '雁江区', '中国,四川省,资阳市,雁江区', 3, 'yanjiang', '028', '641300', 'Y', '104.65216', '30.11525'),
(2518, 2516, '安岳', '安岳县', '中国,四川省,资阳市,安岳县', 3, 'anyue', '028', '642350', 'A', '105.3363', '30.09786'),
(2519, 2516, '乐至', '乐至县', '中国,四川省,资阳市,乐至县', 3, 'lezhi', '028', '641500', 'L', '105.03207', '30.27227'),
(2520, 2516, '简阳', '简阳市', '中国,四川省,资阳市,简阳市', 3, 'jianyang', '028', '641400', 'J', '104.54864', '30.3904'),
(2521, 2367, '阿坝', '阿坝藏族羌族自治州', '中国,四川省,阿坝藏族羌族自治州', 2, 'aba', '0837', '624000', 'A', '102.221374', '31.899792'),
(2522, 2521, '汶川', '汶川县', '中国,四川省,阿坝藏族羌族自治州,汶川县', 3, 'wenchuan', '0837', '623000', NULL, '103.59079', '31.47326'),
(2523, 2521, '理县', '理县', '中国,四川省,阿坝藏族羌族自治州,理县', 3, 'lixian', '0837', '623100', 'L', '103.17175', '31.43603'),
(2524, 2521, '茂县', '茂县', '中国,四川省,阿坝藏族羌族自治州,茂县', 3, 'maoxian', '0837', '623200', 'M', '103.85372', '31.682'),
(2525, 2521, '松潘', '松潘县', '中国,四川省,阿坝藏族羌族自治州,松潘县', 3, 'songpan', '0837', '623300', 'S', '103.59924', '32.63871'),
(2526, 2521, '九寨沟', '九寨沟县', '中国,四川省,阿坝藏族羌族自治州,九寨沟县', 3, 'jiuzhaigou', '0837', '623400', 'J', '104.23672', '33.26318'),
(2527, 2521, '金川', '金川县', '中国,四川省,阿坝藏族羌族自治州,金川县', 3, 'jinchuan', '0837', '624100', 'J', '102.06555', '31.47623'),
(2528, 2521, '小金', '小金县', '中国,四川省,阿坝藏族羌族自治州,小金县', 3, 'xiaojin', '0837', '624200', 'X', '102.36499', '30.99934'),
(2529, 2521, '黑水', '黑水县', '中国,四川省,阿坝藏族羌族自治州,黑水县', 3, 'heishui', '0837', '623500', 'H', '102.99176', '32.06184'),
(2530, 2521, '马尔康', '马尔康县', '中国,四川省,阿坝藏族羌族自治州,马尔康县', 3, 'maerkang', '0837', '624000', 'M', '102.20625', '31.90584'),
(2531, 2521, '壤塘', '壤塘县', '中国,四川省,阿坝藏族羌族自治州,壤塘县', 3, 'rangtang', '0837', '624300', 'R', '100.9783', '32.26578'),
(2532, 2521, '阿坝', '阿坝县', '中国,四川省,阿坝藏族羌族自治州,阿坝县', 3, 'aba', '0837', '624600', 'A', '101.70632', '32.90301'),
(2533, 2521, '若尔盖', '若尔盖县', '中国,四川省,阿坝藏族羌族自治州,若尔盖县', 3, 'ruoergai', '0837', '624500', 'R', '102.9598', '33.57432'),
(2534, 2521, '红原', '红原县', '中国,四川省,阿坝藏族羌族自治州,红原县', 3, 'hongyuan', '0837', '624400', 'H', '102.54525', '32.78989'),
(2535, 2367, '甘孜', '甘孜藏族自治州', '中国,四川省,甘孜藏族自治州', 2, 'garze', '0836', '626000', 'G', '101.963815', '30.050663'),
(2536, 2535, '康定', '康定县', '中国,四川省,甘孜藏族自治州,康定县', 3, 'kangding', '0836', '626000', 'K', '101.96487', '30.05532'),
(2537, 2535, '泸定', '泸定县', '中国,四川省,甘孜藏族自治州,泸定县', 3, 'luding', '0836', '626100', NULL, '102.23507', '29.91475'),
(2538, 2535, '丹巴', '丹巴县', '中国,四川省,甘孜藏族自治州,丹巴县', 3, 'danba', '0836', '626300', 'D', '101.88424', '30.87656'),
(2539, 2535, '九龙', '九龙县', '中国,四川省,甘孜藏族自治州,九龙县', 3, 'jiulong', '0836', '626200', 'J', '101.50848', '29.00091'),
(2540, 2535, '雅江', '雅江县', '中国,四川省,甘孜藏族自治州,雅江县', 3, 'yajiang', '0836', '627450', 'Y', '101.01492', '30.03281'),
(2541, 2535, '道孚', '道孚县', '中国,四川省,甘孜藏族自治州,道孚县', 3, 'daofu', '0836', '626400', 'D', '101.12554', '30.98046'),
(2542, 2535, '炉霍', '炉霍县', '中国,四川省,甘孜藏族自治州,炉霍县', 3, 'luhuo', '0836', '626500', 'L', '100.67681', '31.3917'),
(2543, 2535, '甘孜', '甘孜县', '中国,四川省,甘孜藏族自治州,甘孜县', 3, 'ganzi', '0836', '626700', 'G', '99.99307', '31.62672'),
(2544, 2535, '新龙', '新龙县', '中国,四川省,甘孜藏族自治州,新龙县', 3, 'xinlong', '0836', '626800', 'X', '100.3125', '30.94067'),
(2545, 2535, '德格', '德格县', '中国,四川省,甘孜藏族自治州,德格县', 3, 'dege', '0836', '627250', 'D', '98.58078', '31.80615'),
(2546, 2535, '白玉', '白玉县', '中国,四川省,甘孜藏族自治州,白玉县', 3, 'baiyu', '0836', '627150', 'B', '98.82568', '31.20902'),
(2547, 2535, '石渠', '石渠县', '中国,四川省,甘孜藏族自治州,石渠县', 3, 'shiqu', '0836', '627350', 'S', '98.10156', '32.97884'),
(2548, 2535, '色达', '色达县', '中国,四川省,甘孜藏族自治州,色达县', 3, 'seda', '0836', '626600', 'S', '100.33224', '32.26839'),
(2549, 2535, '理塘', '理塘县', '中国,四川省,甘孜藏族自治州,理塘县', 3, 'litang', '0836', '627550', 'L', '100.27005', '29.99674'),
(2550, 2535, '巴塘', '巴塘县', '中国,四川省,甘孜藏族自治州,巴塘县', 3, 'batang', '0836', '627650', 'B', '99.10409', '30.00423'),
(2551, 2535, '乡城', '乡城县', '中国,四川省,甘孜藏族自治州,乡城县', 3, 'xiangcheng', '0836', '627850', 'X', '99.79943', '28.93554'),
(2552, 2535, '稻城', '稻城县', '中国,四川省,甘孜藏族自治州,稻城县', 3, 'daocheng', '0836', '627750', 'D', '100.29809', '29.0379'),
(2553, 2535, '得荣', '得荣县', '中国,四川省,甘孜藏族自治州,得荣县', 3, 'derong', '0836', '627950', 'D', '99.28628', '28.71297'),
(2554, 2367, '凉山', '凉山彝族自治州', '中国,四川省,凉山彝族自治州', 2, 'liangshan', '0834', '615000', 'L', '102.258746', '27.886762'),
(2555, 2554, '西昌', '西昌市', '中国,四川省,凉山彝族自治州,西昌市', 3, 'xichang', '0835', '615000', 'X', '102.26413', '27.89524'),
(2556, 2554, '木里', '木里藏族自治县', '中国,四川省,凉山彝族自治州,木里藏族自治县', 3, 'muli', '0851', '615800', 'M', '101.2796', '27.92875'),
(2557, 2554, '盐源', '盐源县', '中国,四川省,凉山彝族自治州,盐源县', 3, 'yanyuan', '0836', '615700', 'Y', '101.5097', '27.42177'),
(2558, 2554, '德昌', '德昌县', '中国,四川省,凉山彝族自治州,德昌县', 3, 'dechang', '0837', '615500', 'D', '102.18017', '27.40482'),
(2559, 2554, '会理', '会理县', '中国,四川省,凉山彝族自治州,会理县', 3, 'huili', '0838', '615100', 'H', '102.24539', '26.65627'),
(2560, 2554, '会东', '会东县', '中国,四川省,凉山彝族自治州,会东县', 3, 'huidong', '0839', '615200', 'H', '102.57815', '26.63429'),
(2561, 2554, '宁南', '宁南县', '中国,四川省,凉山彝族自治州,宁南县', 3, 'ningnan', '0840', '615400', 'N', '102.76116', '27.06567'),
(2562, 2554, '普格', '普格县', '中国,四川省,凉山彝族自治州,普格县', 3, 'puge', '0841', '615300', 'P', '102.54055', '27.37485'),
(2563, 2554, '布拖', '布拖县', '中国,四川省,凉山彝族自治州,布拖县', 3, 'butuo', '0842', '616350', 'B', '102.81234', '27.7079'),
(2564, 2554, '金阳', '金阳县', '中国,四川省,凉山彝族自治州,金阳县', 3, 'jinyang', '0843', '616250', 'J', '103.24774', '27.69698'),
(2565, 2554, '昭觉', '昭觉县', '中国,四川省,凉山彝族自治州,昭觉县', 3, 'zhaojue', '0844', '616150', 'Z', '102.84661', '28.01155'),
(2566, 2554, '喜德', '喜德县', '中国,四川省,凉山彝族自治州,喜德县', 3, 'xide', '0845', '616750', 'X', '102.41336', '28.30739'),
(2567, 2554, '冕宁', '冕宁县', '中国,四川省,凉山彝族自治州,冕宁县', 3, 'mianning', '0846', '615600', 'M', '102.17108', '28.55161'),
(2568, 2554, '越西', '越西县', '中国,四川省,凉山彝族自治州,越西县', 3, 'yuexi', '0847', '616650', 'Y', '102.5079', '28.64133'),
(2569, 2554, '甘洛', '甘洛县', '中国,四川省,凉山彝族自治州,甘洛县', 3, 'ganluo', '0848', '616850', 'G', '102.77154', '28.96624'),
(2570, 2554, '美姑', '美姑县', '中国,四川省,凉山彝族自治州,美姑县', 3, 'meigu', '0849', '616450', 'M', '103.13116', '28.32596'),
(2571, 2554, '雷波', '雷波县', '中国,四川省,凉山彝族自治州,雷波县', 3, 'leibo', '0850', '616550', 'L', '103.57287', '28.26407'),
(2572, 0, '贵州', '贵州省', '中国,贵州省', 1, 'guizhou', '', '', 'G', '106.713478', '26.578343'),
(2573, 2572, '贵阳', '贵阳市', '中国,贵州省,贵阳市', 2, 'guiyang', '0851', '550001', 'G', '106.713478', '26.578343'),
(2574, 2573, '南明', '南明区', '中国,贵州省,贵阳市,南明区', 3, 'nanming', '0851', '550001', 'N', '106.7145', '26.56819'),
(2575, 2573, '云岩', '云岩区', '中国,贵州省,贵阳市,云岩区', 3, 'yunyan', '0851', '550001', 'Y', '106.72485', '26.60484'),
(2576, 2573, '花溪', '花溪区', '中国,贵州省,贵阳市,花溪区', 3, 'huaxi', '0851', '550025', 'H', '106.67688', '26.43343'),
(2577, 2573, '乌当', '乌当区', '中国,贵州省,贵阳市,乌当区', 3, 'wudang', '0851', '550018', 'W', '106.7521', '26.6302'),
(2578, 2573, '白云', '白云区', '中国,贵州省,贵阳市,白云区', 3, 'baiyun', '0851', '550014', 'B', '106.63088', '26.68284'),
(2579, 2573, '观山湖', '观山湖区', '中国,贵州省,贵阳市,观山湖区', 3, 'guanshanhu', '0851', '550009', 'G', '106.625442', '26.618209'),
(2580, 2573, '开阳', '开阳县', '中国,贵州省,贵阳市,开阳县', 3, 'kaiyang', '0851', '550300', 'K', '106.9692', '27.05533'),
(2581, 2573, '息烽', '息烽县', '中国,贵州省,贵阳市,息烽县', 3, 'xifeng', '0851', '551100', 'X', '106.738', '27.09346'),
(2582, 2573, '修文', '修文县', '中国,贵州省,贵阳市,修文县', 3, 'xiuwen', '0851', '550200', 'X', '106.59487', '26.83783'),
(2583, 2573, '清镇', '清镇市', '中国,贵州省,贵阳市,清镇市', 3, 'qingzhen', '0851', '551400', 'Q', '106.46862', '26.55261'),
(2584, 2572, '六盘水', '六盘水市', '中国,贵州省,六盘水市', 2, 'liupanshui', '0858', '553400', 'L', '104.846743', '26.584643'),
(2585, 2584, '钟山', '钟山区', '中国,贵州省,六盘水市,钟山区', 3, 'zhongshan', '0858', '553000', 'Z', '104.87848', '26.57699'),
(2586, 2584, '六枝', '六枝特区', '中国,贵州省,六盘水市,六枝特区', 3, 'liuzhi', '0858', '553400', 'L', '105.48062', '26.20117'),
(2587, 2584, '水城', '水城县', '中国,贵州省,六盘水市,水城县', 3, 'shuicheng', '0858', '553000', 'S', '104.95764', '26.54785'),
(2588, 2584, '盘县', '盘县', '中国,贵州省,六盘水市,盘县', 3, 'panxian', '0858', '561601', 'P', '104.47061', '25.7136'),
(2589, 2572, '遵义', '遵义市', '中国,贵州省,遵义市', 2, 'zunyi', '0852', '563000', 'Z', '106.937265', '27.706626'),
(2590, 2589, '红花岗', '红花岗区', '中国,贵州省,遵义市,红花岗区', 3, 'honghuagang', '0852', '563000', 'H', '106.89404', '27.64471'),
(2591, 2589, '汇川', '汇川区', '中国,贵州省,遵义市,汇川区', 3, 'huichuan', '0852', '563000', 'H', '106.9393', '27.70625'),
(2592, 2589, '遵义', '遵义县', '中国,贵州省,遵义市,遵义县', 3, 'zunyi', '0852', '563100', 'Z', '106.83331', '27.53772'),
(2593, 2589, '桐梓', '桐梓县', '中国,贵州省,遵义市,桐梓县', 3, 'tongzi', '0852', '563200', 'T', '106.82568', '28.13806'),
(2594, 2589, '绥阳', '绥阳县', '中国,贵州省,遵义市,绥阳县', 3, 'suiyang', '0852', '563300', 'S', '107.19064', '27.94702'),
(2595, 2589, '正安', '正安县', '中国,贵州省,遵义市,正安县', 3, 'zheng\'an', '0852', '563400', 'Z', '107.44357', '28.5512'),
(2596, 2589, '道真', '道真仡佬族苗族自治县', '中国,贵州省,遵义市,道真仡佬族苗族自治县', 3, 'daozhen', '0852', '563500', 'D', '107.61152', '28.864'),
(2597, 2589, '务川', '务川仡佬族苗族自治县', '中国,贵州省,遵义市,务川仡佬族苗族自治县', 3, 'wuchuan', '0852', '564300', 'W', '107.88935', '28.52227'),
(2598, 2589, '凤冈', '凤冈县', '中国,贵州省,遵义市,凤冈县', 3, 'fenggang', '0852', '564200', 'F', '107.71682', '27.95461'),
(2599, 2589, '湄潭', '湄潭县', '中国,贵州省,遵义市,湄潭县', 3, 'meitan', '0852', '564100', NULL, '107.48779', '27.76676'),
(2600, 2589, '余庆', '余庆县', '中国,贵州省,遵义市,余庆县', 3, 'yuqing', '0852', '564400', 'Y', '107.88821', '27.22532'),
(2601, 2589, '习水', '习水县', '中国,贵州省,遵义市,习水县', 3, 'xishui', '0852', '564600', 'X', '106.21267', '28.31976'),
(2602, 2589, '赤水', '赤水市', '中国,贵州省,遵义市,赤水市', 3, 'chishui', '0852', '564700', 'C', '105.69845', '28.58921'),
(2603, 2589, '仁怀', '仁怀市', '中国,贵州省,遵义市,仁怀市', 3, 'renhuai', '0852', '564500', 'R', '106.40152', '27.79231'),
(2604, 2572, '安顺', '安顺市', '中国,贵州省,安顺市', 2, 'anshun', '0853', '561000', 'A', '105.932188', '26.245544'),
(2605, 2604, '西秀', '西秀区', '中国,贵州省,安顺市,西秀区', 3, 'xixiu', '0853', '561000', 'X', '105.96585', '26.24491'),
(2606, 2604, '平坝', '平坝区', '中国,贵州省,安顺市,平坝区', 3, 'pingba', '0853', '561100', 'P', '106.25683', '26.40543'),
(2607, 2604, '普定', '普定县', '中国,贵州省,安顺市,普定县', 3, 'puding', '0853', '562100', 'P', '105.74285', '26.30141'),
(2608, 2604, '镇宁', '镇宁布依族苗族自治县', '中国,贵州省,安顺市,镇宁布依族苗族自治县', 3, 'zhenning', '0853', '561200', 'Z', '105.76513', '26.05533'),
(2609, 2604, '关岭', '关岭布依族苗族自治县', '中国,贵州省,安顺市,关岭布依族苗族自治县', 3, 'guanling', '0853', '561300', 'G', '105.61883', '25.94248'),
(2610, 2604, '紫云', '紫云苗族布依族自治县', '中国,贵州省,安顺市,紫云苗族布依族自治县', 3, 'ziyun', '0853', '550800', 'Z', '106.08364', '25.75258'),
(2611, 2572, '毕节', '毕节市', '中国,贵州省,毕节市', 2, 'bijie', '0857', '551700', 'B', '105.28501', '27.301693'),
(2612, 2611, '七星关', '七星关区', '中国,贵州省,毕节市,七星关区', 3, 'qixingguan', '0857', '551700', 'Q', '104.9497', '27.153556'),
(2613, 2611, '大方', '大方县', '中国,贵州省,毕节市,大方县', 3, 'dafang', '0857', '551600', 'D', '105.609254', '27.143521'),
(2614, 2611, '黔西', '黔西县', '中国,贵州省,毕节市,黔西县', 3, 'qianxi', '0857', '551500', 'Q', '106.038299', '27.024923'),
(2615, 2611, '金沙', '金沙县', '中国,贵州省,毕节市,金沙县', 3, 'jinsha', '0857', '551800', 'J', '106.222103', '27.459693'),
(2616, 2611, '织金', '织金县', '中国,贵州省,毕节市,织金县', 3, 'zhijin', '0857', '552100', 'Z', '105.768997', '26.668497'),
(2617, 2611, '纳雍', '纳雍县', '中国,贵州省,毕节市,纳雍县', 3, 'nayong', '0857', '553300', 'N', '105.375322', '26.769875'),
(2618, 2611, '威宁', '威宁彝族回族苗族自治县', '中国,贵州省,毕节市,威宁彝族回族苗族自治县', 3, 'weining', '0857', '553100', 'W', '104.286523', '26.859099'),
(2619, 2611, '赫章', '赫章县', '中国,贵州省,毕节市,赫章县', 3, 'hezhang', '0857', '553200', 'H', '104.726438', '27.119243'),
(2620, 2572, '铜仁', '铜仁市', '中国,贵州省,铜仁市', 2, 'tongren', '0856', '554300', 'T', '109.191555', '27.718346'),
(2621, 2620, '碧江', '碧江区', '中国,贵州省,铜仁市,碧江区', 3, 'bijiang', '0856', '554300', 'B', '109.191555', '27.718346'),
(2622, 2620, '万山', '万山区', '中国,贵州省,铜仁市,万山区', 3, 'wanshan', '0856', '554200', 'W', '109.21199', '27.51903'),
(2623, 2620, '江口', '江口县', '中国,贵州省,铜仁市,江口县', 3, 'jiangkou', '0856', '554400', 'J', '108.848427', '27.691904'),
(2624, 2620, '玉屏', '玉屏侗族自治县', '中国,贵州省,铜仁市,玉屏侗族自治县', 3, 'yuping', '0856', '554004', 'Y', '108.917882', '27.238024'),
(2625, 2620, '石阡', '石阡县', '中国,贵州省,铜仁市,石阡县', 3, 'shiqian', '0856', '555100', 'S', '108.229854', '27.519386'),
(2626, 2620, '思南', '思南县', '中国,贵州省,铜仁市,思南县', 3, 'sinan', '0856', '565100', 'S', '108.255827', '27.941331'),
(2627, 2620, '印江', '印江土家族苗族自治县', '中国,贵州省,铜仁市,印江土家族苗族自治县', 3, 'yinjiang', '0856', '555200', 'Y', '108.405517', '27.997976'),
(2628, 2620, '德江', '德江县', '中国,贵州省,铜仁市,德江县', 3, 'dejiang', '0856', '565200', 'D', '108.117317', '28.26094'),
(2629, 2620, '沿河', '沿河土家族自治县', '中国,贵州省,铜仁市,沿河土家族自治县', 3, 'yuanhe', '0856', '565300', 'Y', '108.495746', '28.560487'),
(2630, 2620, '松桃', '松桃苗族自治县', '中国,贵州省,铜仁市,松桃苗族自治县', 3, 'songtao', '0856', '554100', 'S', '109.202627', '28.165419'),
(2631, 2572, '黔西南', '黔西南布依族苗族自治州', '中国,贵州省,黔西南布依族苗族自治州', 2, 'qianxinan', '0859', '562400', 'Q', '104.897971', '25.08812'),
(2632, 2631, '兴义', '兴义市 ', '中国,贵州省,黔西南布依族苗族自治州,兴义市 ', 3, 'xingyi', '0859', '562400', 'X', '104.89548', '25.09205'),
(2633, 2631, '兴仁', '兴仁县', '中国,贵州省,黔西南布依族苗族自治州,兴仁县', 3, 'xingren', '0859', '562300', 'X', '105.18652', '25.43282'),
(2634, 2631, '普安', '普安县', '中国,贵州省,黔西南布依族苗族自治州,普安县', 3, 'pu\'an', '0859', '561500', 'P', '104.95529', '25.78603'),
(2635, 2631, '晴隆', '晴隆县', '中国,贵州省,黔西南布依族苗族自治州,晴隆县', 3, 'qinglong', '0859', '561400', 'Q', '105.2192', '25.83522'),
(2636, 2631, '贞丰', '贞丰县', '中国,贵州省,黔西南布依族苗族自治州,贞丰县', 3, 'zhenfeng', '0859', '562200', 'Z', '105.65454', '25.38464'),
(2637, 2631, '望谟', '望谟县', '中国,贵州省,黔西南布依族苗族自治州,望谟县', 3, 'wangmo', '0859', '552300', 'W', '106.09957', '25.17822'),
(2638, 2631, '册亨', '册亨县', '中国,贵州省,黔西南布依族苗族自治州,册亨县', 3, 'ceheng', '0859', '552200', 'C', '105.8124', '24.98376'),
(2639, 2631, '安龙', '安龙县', '中国,贵州省,黔西南布依族苗族自治州,安龙县', 3, 'anlong', '0859', '552400', 'A', '105.44268', '25.09818'),
(2640, 2572, '黔东南', '黔东南苗族侗族自治州', '中国,贵州省,黔东南苗族侗族自治州', 2, 'qiandongnan', '0855', '556000', 'Q', '107.977488', '26.583352'),
(2641, 2640, '凯里', '凯里市', '中国,贵州省,黔东南苗族侗族自治州,凯里市', 3, 'kaili', '0855', '556000', 'K', '107.98132', '26.56689'),
(2642, 2640, '黄平', '黄平县', '中国,贵州省,黔东南苗族侗族自治州,黄平县', 3, 'huangping', '0855', '556100', 'H', '107.90179', '26.89573'),
(2643, 2640, '施秉', '施秉县', '中国,贵州省,黔东南苗族侗族自治州,施秉县', 3, 'shibing', '0855', '556200', 'S', '108.12597', '27.03495'),
(2644, 2640, '三穗', '三穗县', '中国,贵州省,黔东南苗族侗族自治州,三穗县', 3, 'sansui', '0855', '556500', 'S', '108.67132', '26.94765'),
(2645, 2640, '镇远', '镇远县', '中国,贵州省,黔东南苗族侗族自治州,镇远县', 3, 'zhenyuan', '0855', '557700', 'Z', '108.42721', '27.04933'),
(2646, 2640, '岑巩', '岑巩县', '中国,贵州省,黔东南苗族侗族自治州,岑巩县', 3, 'cengong', '0855', '557800', NULL, '108.81884', '27.17539'),
(2647, 2640, '天柱', '天柱县', '中国,贵州省,黔东南苗族侗族自治州,天柱县', 3, 'tianzhu', '0855', '556600', 'T', '109.20718', '26.90781'),
(2648, 2640, '锦屏', '锦屏县', '中国,贵州省,黔东南苗族侗族自治州,锦屏县', 3, 'jinping', '0855', '556700', 'J', '109.19982', '26.67635'),
(2649, 2640, '剑河', '剑河县', '中国,贵州省,黔东南苗族侗族自治州,剑河县', 3, 'jianhe', '0855', '556400', 'J', '108.5913', '26.6525'),
(2650, 2640, '台江', '台江县', '中国,贵州省,黔东南苗族侗族自治州,台江县', 3, 'taijiang', '0855', '556300', 'T', '108.31814', '26.66916'),
(2651, 2640, '黎平', '黎平县', '中国,贵州省,黔东南苗族侗族自治州,黎平县', 3, 'liping', '0855', '557300', 'L', '109.13607', '26.23114'),
(2652, 2640, '榕江', '榕江县', '中国,贵州省,黔东南苗族侗族自治州,榕江县', 3, 'rongjiang', '0855', '557200', NULL, '108.52072', '25.92421'),
(2653, 2640, '从江', '从江县', '中国,贵州省,黔东南苗族侗族自治州,从江县', 3, 'congjiang', '0855', '557400', 'C', '108.90527', '25.75415'),
(2654, 2640, '雷山', '雷山县', '中国,贵州省,黔东南苗族侗族自治州,雷山县', 3, 'leishan', '0855', '557100', 'L', '108.07745', '26.38385'),
(2655, 2640, '麻江', '麻江县', '中国,贵州省,黔东南苗族侗族自治州,麻江县', 3, 'majiang', '0855', '557600', 'M', '107.59155', '26.49235'),
(2656, 2640, '丹寨', '丹寨县', '中国,贵州省,黔东南苗族侗族自治州,丹寨县', 3, 'danzhai', '0855', '557500', 'D', '107.79718', '26.19816'),
(2657, 2572, '黔南', '黔南布依族苗族自治州', '中国,贵州省,黔南布依族苗族自治州', 2, 'qiannan', '0854', '558000', 'Q', '107.517156', '26.258219'),
(2658, 2657, '都匀', '都匀市', '中国,贵州省,黔南布依族苗族自治州,都匀市', 3, 'duyun', '0854', '558000', 'D', '107.51872', '26.2594'),
(2659, 2657, '福泉', '福泉市', '中国,贵州省,黔南布依族苗族自治州,福泉市', 3, 'fuquan', '0854', '550500', 'F', '107.51715', '26.67989'),
(2660, 2657, '荔波', '荔波县', '中国,贵州省,黔南布依族苗族自治州,荔波县', 3, 'libo', '0854', '558400', 'L', '107.88592', '25.4139'),
(2661, 2657, '贵定', '贵定县', '中国,贵州省,黔南布依族苗族自治州,贵定县', 3, 'guiding', '0854', '551300', 'G', '107.23654', '26.57812'),
(2662, 2657, '瓮安', '瓮安县', '中国,贵州省,黔南布依族苗族自治州,瓮安县', 3, 'weng\'an', '0854', '550400', 'W', '107.4757', '27.06813'),
(2663, 2657, '独山', '独山县', '中国,贵州省,黔南布依族苗族自治州,独山县', 3, 'dushan', '0854', '558200', 'D', '107.54101', '25.8245'),
(2664, 2657, '平塘', '平塘县', '中国,贵州省,黔南布依族苗族自治州,平塘县', 3, 'pingtang', '0854', '558300', 'P', '107.32428', '25.83294'),
(2665, 2657, '罗甸', '罗甸县', '中国,贵州省,黔南布依族苗族自治州,罗甸县', 3, 'luodian', '0854', '550100', 'L', '106.75186', '25.42586'),
(2666, 2657, '长顺', '长顺县', '中国,贵州省,黔南布依族苗族自治州,长顺县', 3, 'changshun', '0854', '550700', 'C', '106.45217', '26.02299'),
(2667, 2657, '龙里', '龙里县', '中国,贵州省,黔南布依族苗族自治州,龙里县', 3, 'longli', '0854', '551200', 'L', '106.97662', '26.45076'),
(2668, 2657, '惠水', '惠水县', '中国,贵州省,黔南布依族苗族自治州,惠水县', 3, 'huishui', '0854', '550600', 'H', '106.65911', '26.13389'),
(2669, 2657, '三都', '三都水族自治县', '中国,贵州省,黔南布依族苗族自治州,三都水族自治县', 3, 'sandu', '0854', '558100', 'S', '107.87464', '25.98562'),
(2670, 0, '云南', '云南省', '中国,云南省', 1, 'yunnan', '', '', 'Y', '102.712251', '25.040609'),
(2671, 2670, '昆明', '昆明市', '中国,云南省,昆明市', 2, 'kunming', '0871', '650500', 'K', '102.712251', '25.040609'),
(2672, 2671, '五华', '五华区', '中国,云南省,昆明市,五华区', 3, 'wuhua', '0871', '650021', 'W', '102.70786', '25.03521'),
(2673, 2671, '盘龙', '盘龙区', '中国,云南省,昆明市,盘龙区', 3, 'panlong', '0871', '650051', 'P', '102.71994', '25.04053'),
(2674, 2671, '官渡', '官渡区', '中国,云南省,昆明市,官渡区', 3, 'guandu', '0871', '650200', 'G', '102.74362', '25.01497'),
(2675, 2671, '西山', '西山区', '中国,云南省,昆明市,西山区', 3, 'xishan', '0871', '650118', 'X', '102.66464', '25.03796'),
(2676, 2671, '东川', '东川区', '中国,云南省,昆明市,东川区', 3, 'dongchuan', '0871', '654100', 'D', '103.18832', '26.083'),
(2677, 2671, '呈贡', '呈贡区', '中国,云南省,昆明市,呈贡区', 3, 'chenggong', '0871', '650500', 'C', '102.801382', '24.889275'),
(2678, 2671, '晋宁', '晋宁县', '中国,云南省,昆明市,晋宁县', 3, 'jinning', '0871', '650600', 'J', '102.59393', '24.6665'),
(2679, 2671, '富民', '富民县', '中国,云南省,昆明市,富民县', 3, 'fumin', '0871', '650400', 'F', '102.4985', '25.22119'),
(2680, 2671, '宜良', '宜良县', '中国,云南省,昆明市,宜良县', 3, 'yiliang', '0871', '652100', 'Y', '103.14117', '24.91705'),
(2681, 2671, '石林', '石林彝族自治县', '中国,云南省,昆明市,石林彝族自治县', 3, 'shilin', '0871', '652200', 'S', '103.27148', '24.75897'),
(2682, 2671, '嵩明', '嵩明县', '中国,云南省,昆明市,嵩明县', 3, 'songming', '0871', '651700', NULL, '103.03729', '25.33986'),
(2683, 2671, '禄劝', '禄劝彝族苗族自治县', '中国,云南省,昆明市,禄劝彝族苗族自治县', 3, 'luquan', '0871', '651500', 'L', '102.4671', '25.55387'),
(2684, 2671, '寻甸', '寻甸回族彝族自治县 ', '中国,云南省,昆明市,寻甸回族彝族自治县 ', 3, 'xundian', '0871', '655200', 'X', '103.2557', '25.55961'),
(2685, 2671, '安宁', '安宁市', '中国,云南省,昆明市,安宁市', 3, 'anning', '0871', '650300', 'A', '102.46972', '24.91652'),
(2686, 2670, '曲靖', '曲靖市', '中国,云南省,曲靖市', 2, 'qujing', '0874', '655000', 'Q', '103.797851', '25.501557'),
(2687, 2686, '麒麟', '麒麟区', '中国,云南省,曲靖市,麒麟区', 3, 'qilin', '0874', '655000', NULL, '103.80504', '25.49515'),
(2688, 2686, '马龙', '马龙县', '中国,云南省,曲靖市,马龙县', 3, 'malong', '0874', '655100', 'M', '103.57873', '25.42521'),
(2689, 2686, '陆良', '陆良县', '中国,云南省,曲靖市,陆良县', 3, 'luliang', '0874', '655600', 'L', '103.6665', '25.02335'),
(2690, 2686, '师宗', '师宗县', '中国,云南省,曲靖市,师宗县', 3, 'shizong', '0874', '655700', 'S', '103.99084', '24.82822'),
(2691, 2686, '罗平', '罗平县', '中国,云南省,曲靖市,罗平县', 3, 'luoping', '0874', '655800', 'L', '104.30859', '24.88444'),
(2692, 2686, '富源', '富源县', '中国,云南省,曲靖市,富源县', 3, 'fuyuan', '0874', '655500', 'F', '104.25387', '25.66587'),
(2693, 2686, '会泽', '会泽县', '中国,云南省,曲靖市,会泽县', 3, 'huize', '0874', '654200', 'H', '103.30017', '26.41076'),
(2694, 2686, '沾益', '沾益县', '中国,云南省,曲靖市,沾益县', 3, 'zhanyi', '0874', '655331', 'Z', '103.82135', '25.60715'),
(2695, 2686, '宣威', '宣威市', '中国,云南省,曲靖市,宣威市', 3, 'xuanwei', '0874', '655400', 'X', '104.10409', '26.2173'),
(2696, 2670, '玉溪', '玉溪市', '中国,云南省,玉溪市', 2, 'yuxi', '0877', '653100', 'Y', '102.543907', '24.350461'),
(2697, 2696, '红塔', '红塔区', '中国,云南省,玉溪市,红塔区', 3, 'hongta', '0877', '653100', 'H', '102.5449', '24.35411'),
(2698, 2696, '江川', '江川县', '中国,云南省,玉溪市,江川县', 3, 'jiangchuan', '0877', '652600', 'J', '102.75412', '24.28863'),
(2699, 2696, '澄江', '澄江县', '中国,云南省,玉溪市,澄江县', 3, 'chengjiang', '0877', '652500', 'C', '102.90817', '24.67376'),
(2700, 2696, '通海', '通海县', '中国,云南省,玉溪市,通海县', 3, 'tonghai', '0877', '652700', 'T', '102.76641', '24.11362'),
(2701, 2696, '华宁', '华宁县', '中国,云南省,玉溪市,华宁县', 3, 'huaning', '0877', '652800', 'H', '102.92831', '24.1926'),
(2702, 2696, '易门', '易门县', '中国,云南省,玉溪市,易门县', 3, 'yimen', '0877', '651100', 'Y', '102.16354', '24.67122'),
(2703, 2696, '峨山', '峨山彝族自治县', '中国,云南省,玉溪市,峨山彝族自治县', 3, 'eshan', '0877', '653200', 'E', '102.40576', '24.16904'),
(2704, 2696, '新平', '新平彝族傣族自治县', '中国,云南省,玉溪市,新平彝族傣族自治县', 3, 'xinping', '0877', '653400', 'X', '101.98895', '24.06886'),
(2705, 2696, '元江', '元江哈尼族彝族傣族自治县', '中国,云南省,玉溪市,元江哈尼族彝族傣族自治县', 3, 'yuanjiang', '0877', '653300', 'Y', '101.99812', '23.59655'),
(2706, 2670, '保山', '保山市', '中国,云南省,保山市', 2, 'baoshan', '0875', '678000', 'B', '99.167133', '25.111802'),
(2707, 2706, '隆阳', '隆阳区', '中国,云南省,保山市,隆阳区', 3, 'longyang', '0875', '678000', 'L', '99.16334', '25.11163'),
(2708, 2706, '施甸', '施甸县', '中国,云南省,保山市,施甸县', 3, 'shidian', '0875', '678200', 'S', '99.18768', '24.72418'),
(2709, 2706, '腾冲', '腾冲县', '中国,云南省,保山市,腾冲县', 3, 'tengchong', '0875', '679100', 'T', '98.49414', '25.02539'),
(2710, 2706, '龙陵', '龙陵县', '中国,云南省,保山市,龙陵县', 3, 'longling', '0875', '678300', 'L', '98.69024', '24.58746'),
(2711, 2706, '昌宁', '昌宁县', '中国,云南省,保山市,昌宁县', 3, 'changning', '0875', '678100', 'C', '99.6036', '24.82763'),
(2712, 2670, '昭通', '昭通市', '中国,云南省,昭通市', 2, 'zhaotong', '0870', '657000', 'Z', '103.717216', '27.336999'),
(2713, 2712, '昭阳', '昭阳区', '中国,云南省,昭通市,昭阳区', 3, 'zhaoyang', '0870', '657000', 'Z', '103.70654', '27.31998'),
(2714, 2712, '鲁甸', '鲁甸县', '中国,云南省,昭通市,鲁甸县', 3, 'ludian', '0870', '657100', 'L', '103.54721', '27.19238'),
(2715, 2712, '巧家', '巧家县', '中国,云南省,昭通市,巧家县', 3, 'qiaojia', '0870', '654600', 'Q', '102.92416', '26.91237'),
(2716, 2712, '盐津', '盐津县', '中国,云南省,昭通市,盐津县', 3, 'yanjin', '0870', '657500', 'Y', '104.23461', '28.10856'),
(2717, 2712, '大关', '大关县', '中国,云南省,昭通市,大关县', 3, 'daguan', '0870', '657400', 'D', '103.89254', '27.7488'),
(2718, 2712, '永善', '永善县', '中国,云南省,昭通市,永善县', 3, 'yongshan', '0870', '657300', 'Y', '103.63504', '28.2279'),
(2719, 2712, '绥江', '绥江县', '中国,云南省,昭通市,绥江县', 3, 'suijiang', '0870', '657700', 'S', '103.94937', '28.59661'),
(2720, 2712, '镇雄', '镇雄县', '中国,云南省,昭通市,镇雄县', 3, 'zhenxiong', '0870', '657200', 'Z', '104.87258', '27.43981'),
(2721, 2712, '彝良', '彝良县', '中国,云南省,昭通市,彝良县', 3, 'yiliang', '0870', '657600', 'Y', '104.04983', '27.62809'),
(2722, 2712, '威信', '威信县', '中国,云南省,昭通市,威信县', 3, 'weixin', '0870', '657900', 'W', '105.04754', '27.84065'),
(2723, 2712, '水富', '水富县', '中国,云南省,昭通市,水富县', 3, 'shuifu', '0870', '657800', 'S', '104.4158', '28.62986'),
(2724, 2670, '丽江', '丽江市', '中国,云南省,丽江市', 2, 'lijiang', '0888', '674100', 'L', '100.233026', '26.872108'),
(2725, 2724, '古城', '古城区', '中国,云南省,丽江市,古城区', 3, 'gucheng', '0888', '674100', 'G', '100.2257', '26.87697'),
(2726, 2724, '玉龙', '玉龙纳西族自治县', '中国,云南省,丽江市,玉龙纳西族自治县', 3, 'yulong', '0888', '674100', 'Y', '100.2369', '26.82149'),
(2727, 2724, '永胜', '永胜县', '中国,云南省,丽江市,永胜县', 3, 'yongsheng', '0888', '674200', 'Y', '100.74667', '26.68591'),
(2728, 2724, '华坪', '华坪县', '中国,云南省,丽江市,华坪县', 3, 'huaping', '0888', '674800', 'H', '101.26562', '26.62967'),
(2729, 2724, '宁蒗', '宁蒗彝族自治县', '中国,云南省,丽江市,宁蒗彝族自治县', 3, 'ninglang', '0888', '674300', 'N', '100.8507', '27.28179'),
(2730, 2670, '普洱', '普洱市', '中国,云南省,普洱市', 2, 'pu\'er', '0879', '665000', 'P', '100.972344', '22.777321'),
(2731, 2730, '思茅', '思茅区', '中国,云南省,普洱市,思茅区', 3, 'simao', '0879', '665000', 'S', '100.97716', '22.78691'),
(2732, 2730, '宁洱', '宁洱哈尼族彝族自治县', '中国,云南省,普洱市,宁洱哈尼族彝族自治县', 3, 'ninger', '0879', '665100', 'N', '101.04653', '23.06341'),
(2733, 2730, '墨江', '墨江哈尼族自治县', '中国,云南省,普洱市,墨江哈尼族自治县', 3, 'mojiang', '0879', '654800', 'M', '101.69171', '23.43214'),
(2734, 2730, '景东', '景东彝族自治县', '中国,云南省,普洱市,景东彝族自治县', 3, 'jingdong', '0879', '676200', 'J', '100.83599', '24.44791'),
(2735, 2730, '景谷', '景谷傣族彝族自治县', '中国,云南省,普洱市,景谷傣族彝族自治县', 3, 'jinggu', '0879', '666400', 'J', '100.70251', '23.49705'),
(2736, 2730, '镇沅', '镇沅彝族哈尼族拉祜族自治县', '中国,云南省,普洱市,镇沅彝族哈尼族拉祜族自治县', 3, 'zhenyuan', '0879', '666500', 'Z', '101.10675', '24.00557'),
(2737, 2730, '江城', '江城哈尼族彝族自治县', '中国,云南省,普洱市,江城哈尼族彝族自治县', 3, 'jiangcheng', '0879', '665900', 'J', '101.85788', '22.58424'),
(2738, 2730, '孟连', '孟连傣族拉祜族佤族自治县', '中国,云南省,普洱市,孟连傣族拉祜族佤族自治县', 3, 'menglian', '0879', '665800', 'M', '99.58424', '22.32922'),
(2739, 2730, '澜沧', '澜沧拉祜族自治县', '中国,云南省,普洱市,澜沧拉祜族自治县', 3, 'lancang', '0879', '665600', 'L', '99.93591', '22.55474'),
(2740, 2730, '西盟', '西盟佤族自治县', '中国,云南省,普洱市,西盟佤族自治县', 3, 'ximeng', '0879', '665700', 'X', '99.59869', '22.64774'),
(2741, 2670, '临沧', '临沧市', '中国,云南省,临沧市', 2, 'lincang', '0883', '677000', 'L', '100.08697', '23.886567'),
(2742, 2741, '临翔', '临翔区', '中国,云南省,临沧市,临翔区', 3, 'linxiang', '0883', '677000', 'L', '100.08242', '23.89497'),
(2743, 2741, '凤庆', '凤庆县', '中国,云南省,临沧市,凤庆县', 3, 'fengqing', '0883', '675900', 'F', '99.92837', '24.58034'),
(2744, 2741, '云县', '云县', '中国,云南省,临沧市,云县', 3, 'yunxian', '0883', '675800', 'Y', '100.12808', '24.44675'),
(2745, 2741, '永德', '永德县', '中国,云南省,临沧市,永德县', 3, 'yongde', '0883', '677600', 'Y', '99.25326', '24.0276'),
(2746, 2741, '镇康', '镇康县', '中国,云南省,临沧市,镇康县', 3, 'zhenkang', '0883', '677704', 'Z', '98.8255', '23.76241'),
(2747, 2741, '双江', '双江拉祜族佤族布朗族傣族自治县', '中国,云南省,临沧市,双江拉祜族佤族布朗族傣族自治县', 3, 'shuangjiang', '0883', '677300', 'S', '99.82769', '23.47349'),
(2748, 2741, '耿马', '耿马傣族佤族自治县', '中国,云南省,临沧市,耿马傣族佤族自治县', 3, 'gengma', '0883', '677500', 'G', '99.39785', '23.53776'),
(2749, 2741, '沧源', '沧源佤族自治县', '中国,云南省,临沧市,沧源佤族自治县', 3, 'cangyuan', '0883', '677400', 'C', '99.24545', '23.14821'),
(2750, 2670, '楚雄', '楚雄彝族自治州', '中国,云南省,楚雄彝族自治州', 2, 'chuxiong', '0878', '675000', 'C', '101.546046', '25.041988'),
(2751, 2750, '楚雄', '楚雄市', '中国,云南省,楚雄彝族自治州,楚雄市', 3, 'chuxiong', '0878', '675000', 'C', '101.54615', '25.0329'),
(2752, 2750, '双柏', '双柏县', '中国,云南省,楚雄彝族自治州,双柏县', 3, 'shuangbai', '0878', '675100', 'S', '101.64205', '24.68882'),
(2753, 2750, '牟定', '牟定县', '中国,云南省,楚雄彝族自治州,牟定县', 3, 'mouding', '0878', '675500', 'M', '101.54', '25.31551'),
(2754, 2750, '南华', '南华县', '中国,云南省,楚雄彝族自治州,南华县', 3, 'nanhua', '0878', '675200', 'N', '101.27313', '25.19293'),
(2755, 2750, '姚安', '姚安县', '中国,云南省,楚雄彝族自治州,姚安县', 3, 'yao\'an', '0878', '675300', 'Y', '101.24279', '25.50467'),
(2756, 2750, '大姚', '大姚县', '中国,云南省,楚雄彝族自治州,大姚县', 3, 'dayao', '0878', '675400', 'D', '101.32397', '25.72218'),
(2757, 2750, '永仁', '永仁县', '中国,云南省,楚雄彝族自治州,永仁县', 3, 'yongren', '0878', '651400', 'Y', '101.6716', '26.05794'),
(2758, 2750, '元谋', '元谋县', '中国,云南省,楚雄彝族自治州,元谋县', 3, 'yuanmou', '0878', '651300', 'Y', '101.87728', '25.70438'),
(2759, 2750, '武定', '武定县', '中国,云南省,楚雄彝族自治州,武定县', 3, 'wuding', '0878', '651600', 'W', '102.4038', '25.5295'),
(2760, 2750, '禄丰', '禄丰县', '中国,云南省,楚雄彝族自治州,禄丰县', 3, 'lufeng', '0878', '651200', 'L', '102.07797', '25.14815'),
(2761, 2670, '红河', '红河哈尼族彝族自治州', '中国,云南省,红河哈尼族彝族自治州', 2, 'honghe', '0873', '661400', 'H', '103.384182', '23.366775'),
(2762, 2761, '个旧', '个旧市', '中国,云南省,红河哈尼族彝族自治州,个旧市', 3, 'gejiu', '0873', '661000', 'G', '103.15966', '23.35894'),
(2763, 2761, '开远', '开远市', '中国,云南省,红河哈尼族彝族自治州,开远市', 3, 'kaiyuan', '0873', '661600', 'K', '103.26986', '23.71012'),
(2764, 2761, '蒙自', '蒙自市', '中国,云南省,红河哈尼族彝族自治州,蒙自市', 3, 'mengzi', '0873', '661101', 'M', '103.385005', '23.366843'),
(2765, 2761, '弥勒', '弥勒市', '中国,云南省,红河哈尼族彝族自治州,弥勒市', 3, 'mile', '0873', '652300', 'M', '103.436988', '24.40837'),
(2766, 2761, '屏边', '屏边苗族自治县', '中国,云南省,红河哈尼族彝族自治州,屏边苗族自治县', 3, 'pingbian', '0873', '661200', 'P', '103.68554', '22.98425'),
(2767, 2761, '建水', '建水县', '中国,云南省,红河哈尼族彝族自治州,建水县', 3, 'jianshui', '0873', '654300', 'J', '102.82656', '23.63472'),
(2768, 2761, '石屏', '石屏县', '中国,云南省,红河哈尼族彝族自治州,石屏县', 3, 'shiping', '0873', '662200', 'S', '102.49408', '23.71441'),
(2769, 2761, '泸西', '泸西县', '中国,云南省,红河哈尼族彝族自治州,泸西县', 3, 'luxi', '0873', '652400', NULL, '103.76373', '24.52854'),
(2770, 2761, '元阳', '元阳县', '中国,云南省,红河哈尼族彝族自治州,元阳县', 3, 'yuanyang', '0873', '662400', 'Y', '102.83261', '23.22281'),
(2771, 2761, '红河县', '红河县', '中国,云南省,红河哈尼族彝族自治州,红河县', 3, 'honghexian', '0873', '654400', 'H', '102.42059', '23.36767'),
(2772, 2761, '金平', '金平苗族瑶族傣族自治县', '中国,云南省,红河哈尼族彝族自治州,金平苗族瑶族傣族自治县', 3, 'jinping', '0873', '661500', 'J', '103.22651', '22.77959'),
(2773, 2761, '绿春', '绿春县', '中国,云南省,红河哈尼族彝族自治州,绿春县', 3, 'lvchun', '0873', '662500', 'L', '102.39672', '22.99371'),
(2774, 2761, '河口', '河口瑶族自治县', '中国,云南省,红河哈尼族彝族自治州,河口瑶族自治县', 3, 'hekou', '0873', '661300', 'H', '103.93936', '22.52929'),
(2775, 2670, '文山', '文山壮族苗族自治州', '中国,云南省,文山壮族苗族自治州', 2, 'wenshan', '0876', '663000', 'W', '104.24401', '23.36951'),
(2776, 2775, '文山', '文山市', '中国,云南省,文山壮族苗族自治州,文山市', 3, 'wenshan', '0876', '663000', 'W', '104.244277', '23.369216'),
(2777, 2775, '砚山', '砚山县', '中国,云南省,文山壮族苗族自治州,砚山县', 3, 'yanshan', '0876', '663100', 'Y', '104.33306', '23.60723'),
(2778, 2775, '西畴', '西畴县', '中国,云南省,文山壮族苗族自治州,西畴县', 3, 'xichou', '0876', '663500', 'X', '104.67419', '23.43941'),
(2779, 2775, '麻栗坡', '麻栗坡县', '中国,云南省,文山壮族苗族自治州,麻栗坡县', 3, 'malipo', '0876', '663600', 'M', '104.70132', '23.12028'),
(2780, 2775, '马关', '马关县', '中国,云南省,文山壮族苗族自治州,马关县', 3, 'maguan', '0876', '663700', 'M', '104.39514', '23.01293'),
(2781, 2775, '丘北', '丘北县', '中国,云南省,文山壮族苗族自治州,丘北县', 3, 'qiubei', '0876', '663200', 'Q', '104.19256', '24.03957'),
(2782, 2775, '广南', '广南县', '中国,云南省,文山壮族苗族自治州,广南县', 3, 'guangnan', '0876', '663300', 'G', '105.05511', '24.0464'),
(2783, 2775, '富宁', '富宁县', '中国,云南省,文山壮族苗族自治州,富宁县', 3, 'funing', '0876', '663400', 'F', '105.63085', '23.62536'),
(2784, 2670, '西双版纳', '西双版纳傣族自治州', '中国,云南省,西双版纳傣族自治州', 2, 'xishuangbanna', '0691', '666100', 'X', '100.797941', '22.001724'),
(2785, 2784, '景洪', '景洪市', '中国,云南省,西双版纳傣族自治州,景洪市', 3, 'jinghong', '0691', '666100', 'J', '100.79977', '22.01071'),
(2786, 2784, '勐海', '勐海县', '中国,云南省,西双版纳傣族自治州,勐海县', 3, 'menghai', '0691', '666200', NULL, '100.44931', '21.96175'),
(2787, 2784, '勐腊', '勐腊县', '中国,云南省,西双版纳傣族自治州,勐腊县', 3, 'mengla', '0691', '666300', NULL, '101.56488', '21.48162'),
(2788, 2670, '大理', '大理白族自治州', '中国,云南省,大理白族自治州', 2, 'dali', '0872', '671000', 'D', '100.240037', '25.592765'),
(2789, 2788, '大理', '大理市', '中国,云南省,大理白族自治州,大理市', 3, 'dali', '0872', '671000', 'D', '100.22998', '25.59157'),
(2790, 2788, '漾濞', '漾濞彝族自治县', '中国,云南省,大理白族自治州,漾濞彝族自治县', 3, 'yangbi', '0872', '672500', 'Y', '99.95474', '25.6652'),
(2791, 2788, '祥云', '祥云县', '中国,云南省,大理白族自治州,祥云县', 3, 'xiangyun', '0872', '672100', 'X', '100.55761', '25.47342'),
(2792, 2788, '宾川', '宾川县', '中国,云南省,大理白族自治州,宾川县', 3, 'binchuan', '0872', '671600', 'B', '100.57666', '25.83144'),
(2793, 2788, '弥渡', '弥渡县', '中国,云南省,大理白族自治州,弥渡县', 3, 'midu', '0872', '675600', 'M', '100.49075', '25.34179'),
(2794, 2788, '南涧', '南涧彝族自治县', '中国,云南省,大理白族自治州,南涧彝族自治县', 3, 'nanjian', '0872', '675700', 'N', '100.50964', '25.04349'),
(2795, 2788, '巍山', '巍山彝族回族自治县', '中国,云南省,大理白族自治州,巍山彝族回族自治县', 3, 'weishan', '0872', '672400', 'W', '100.30612', '25.23197'),
(2796, 2788, '永平', '永平县', '中国,云南省,大理白族自治州,永平县', 3, 'yongping', '0872', '672600', 'Y', '99.54095', '25.46451'),
(2797, 2788, '云龙', '云龙县', '中国,云南省,大理白族自治州,云龙县', 3, 'yunlong', '0872', '672700', 'Y', '99.37255', '25.88505'),
(2798, 2788, '洱源', '洱源县', '中国,云南省,大理白族自治州,洱源县', 3, 'eryuan', '0872', '671200', 'E', '99.94903', '26.10829'),
(2799, 2788, '剑川', '剑川县', '中国,云南省,大理白族自治州,剑川县', 3, 'jianchuan', '0872', '671300', 'J', '99.90545', '26.53688'),
(2800, 2788, '鹤庆', '鹤庆县', '中国,云南省,大理白族自治州,鹤庆县', 3, 'heqing', '0872', '671500', 'H', '100.17697', '26.55798'),
(2801, 2670, '德宏', '德宏傣族景颇族自治州', '中国,云南省,德宏傣族景颇族自治州', 2, 'dehong', '0692', '678400', 'D', '98.578363', '24.436694'),
(2802, 2801, '瑞丽', '瑞丽市', '中国,云南省,德宏傣族景颇族自治州,瑞丽市', 3, 'ruili', '0692', '678600', 'R', '97.85183', '24.01277'),
(2803, 2801, '芒市', '芒市', '中国,云南省,德宏傣族景颇族自治州,芒市', 3, 'mangshi', '0692', '678400', 'M', '98.588641', '24.433735'),
(2804, 2801, '梁河', '梁河县', '中国,云南省,德宏傣族景颇族自治州,梁河县', 3, 'lianghe', '0692', '679200', 'L', '98.29705', '24.80658'),
(2805, 2801, '盈江', '盈江县', '中国,云南省,德宏傣族景颇族自治州,盈江县', 3, 'yingjiang', '0692', '679300', 'Y', '97.93179', '24.70579'),
(2806, 2801, '陇川', '陇川县', '中国,云南省,德宏傣族景颇族自治州,陇川县', 3, 'longchuan', '0692', '678700', 'L', '97.79199', '24.18302'),
(2807, 2670, '怒江', '怒江傈僳族自治州', '中国,云南省,怒江傈僳族自治州', 2, 'nujiang', '0886', '673100', 'N', '98.854304', '25.850949'),
(2808, 2807, '泸水', '泸水县', '中国,云南省,怒江傈僳族自治州,泸水县', 3, 'lushui', '0886', '673100', NULL, '98.85534', '25.83772'),
(2809, 2807, '福贡', '福贡县', '中国,云南省,怒江傈僳族自治州,福贡县', 3, 'fugong', '0886', '673400', 'F', '98.86969', '26.90366'),
(2810, 2807, '贡山', '贡山独龙族怒族自治县', '中国,云南省,怒江傈僳族自治州,贡山独龙族怒族自治县', 3, 'gongshan', '0886', '673500', 'G', '98.66583', '27.74088'),
(2811, 2807, '兰坪', '兰坪白族普米族自治县', '中国,云南省,怒江傈僳族自治州,兰坪白族普米族自治县', 3, 'lanping', '0886', '671400', 'L', '99.41891', '26.45251'),
(2812, 2670, '迪庆', '迪庆藏族自治州', '中国,云南省,迪庆藏族自治州', 2, 'deqen', '0887', '674400', 'D', '99.706463', '27.826853'),
(2813, 2812, '香格里拉', '香格里拉市', '中国,云南省,迪庆藏族自治州,香格里拉市', 3, 'xianggelila', '0887', '674400', 'X', '99.70601', '27.82308'),
(2814, 2812, '德钦', '德钦县', '中国,云南省,迪庆藏族自治州,德钦县', 3, 'deqin', '0887', '674500', 'D', '98.91082', '28.4863'),
(2815, 2812, '维西', '维西傈僳族自治县', '中国,云南省,迪庆藏族自治州,维西傈僳族自治县', 3, 'weixi', '0887', '674600', 'W', '99.28402', '27.1793'),
(2816, 0, '西藏', '西藏自治区', '中国,西藏自治区', 1, 'tibet', '', '', 'X', '91.132212', '29.660361'),
(2817, 2816, '拉萨', '拉萨市', '中国,西藏自治区,拉萨市', 2, 'lhasa', '0891', '850000', 'L', '91.132212', '29.660361'),
(2818, 2817, '城关', '城关区', '中国,西藏自治区,拉萨市,城关区', 3, 'chengguan', '0891', '850000', 'C', '91.13859', '29.65312'),
(2819, 2817, '林周', '林周县', '中国,西藏自治区,拉萨市,林周县', 3, 'linzhou', '0891', '851600', 'L', '91.2586', '29.89445'),
(2820, 2817, '当雄', '当雄县', '中国,西藏自治区,拉萨市,当雄县', 3, 'dangxiong', '0891', '851500', 'D', '91.10076', '30.48309'),
(2821, 2817, '尼木', '尼木县', '中国,西藏自治区,拉萨市,尼木县', 3, 'nimu', '0891', '851300', 'N', '90.16378', '29.43353'),
(2822, 2817, '曲水', '曲水县', '中国,西藏自治区,拉萨市,曲水县', 3, 'qushui', '0891', '850600', 'Q', '90.73187', '29.35636'),
(2823, 2817, '堆龙德庆', '堆龙德庆县', '中国,西藏自治区,拉萨市,堆龙德庆县', 3, 'duilongdeqing', '0891', '851400', 'D', '91.00033', '29.65002'),
(2824, 2817, '达孜', '达孜县', '中国,西藏自治区,拉萨市,达孜县', 3, 'dazi', '0891', '850100', 'D', '91.35757', '29.6722'),
(2825, 2817, '墨竹工卡', '墨竹工卡县', '中国,西藏自治区,拉萨市,墨竹工卡县', 3, 'mozhugongka', '0891', '850200', 'M', '91.72814', '29.83614'),
(2826, 2816, '日喀则', '日喀则市', '中国,西藏自治区,日喀则市', 2, 'rikaze', '0892', '857000', 'R', '88.884874', '29.263792'),
(2827, 2826, '桑珠孜', '桑珠孜区', '中国,西藏自治区,日喀则市,桑珠孜区', 3, 'sangzhuzi', '0892', '857000', 'S', '88.880367', '29.269565'),
(2828, 2826, '南木林', '南木林县', '中国,西藏自治区,日喀则市,南木林县', 3, 'nanmulin', '0892', '857100', 'N', '89.09686', '29.68206'),
(2829, 2826, '江孜', '江孜县', '中国,西藏自治区,日喀则市,江孜县', 3, 'jiangzi', '0892', '857400', 'J', '89.60263', '28.91744'),
(2830, 2826, '定日', '定日县', '中国,西藏自治区,日喀则市,定日县', 3, 'dingri', '0892', '858200', 'D', '87.12176', '28.66129'),
(2831, 2826, '萨迦', '萨迦县', '中国,西藏自治区,日喀则市,萨迦县', 3, 'sajia', '0892', '857800', 'S', '88.02191', '28.90299'),
(2832, 2826, '拉孜', '拉孜县', '中国,西藏自治区,日喀则市,拉孜县', 3, 'lazi', '0892', '858100', 'L', '87.63412', '29.085'),
(2833, 2826, '昂仁', '昂仁县', '中国,西藏自治区,日喀则市,昂仁县', 3, 'angren', '0892', '858500', 'A', '87.23858', '29.29496'),
(2834, 2826, '谢通门', '谢通门县', '中国,西藏自治区,日喀则市,谢通门县', 3, 'xietongmen', '0892', '858900', 'X', '88.26242', '29.43337'),
(2835, 2826, '白朗', '白朗县', '中国,西藏自治区,日喀则市,白朗县', 3, 'bailang', '0892', '857300', 'B', '89.26205', '29.10553'),
(2836, 2826, '仁布', '仁布县', '中国,西藏自治区,日喀则市,仁布县', 3, 'renbu', '0892', '857200', 'R', '89.84228', '29.2301'),
(2837, 2826, '康马', '康马县', '中国,西藏自治区,日喀则市,康马县', 3, 'kangma', '0892', '857500', 'K', '89.68527', '28.5567'),
(2838, 2826, '定结', '定结县', '中国,西藏自治区,日喀则市,定结县', 3, 'dingjie', '0892', '857900', 'D', '87.77255', '28.36403');
INSERT INTO `sf_area` (`id`, `pid`, `shortname`, `name`, `mergename`, `level`, `pinyin`, `code`, `zip`, `first`, `lng`, `lat`) VALUES
(2839, 2826, '仲巴', '仲巴县', '中国,西藏自治区,日喀则市,仲巴县', 3, 'zhongba', '0892', '858800', 'Z', '84.02951', '29.76595'),
(2840, 2826, '亚东', '亚东县', '中国,西藏自治区,日喀则市,亚东县', 3, 'yadong', '0892', '857600', 'Y', '88.90802', '27.4839'),
(2841, 2826, '吉隆', '吉隆县', '中国,西藏自治区,日喀则市,吉隆县', 3, 'jilong', '0892', '858700', 'J', '85.29846', '28.85382'),
(2842, 2826, '聂拉木', '聂拉木县', '中国,西藏自治区,日喀则市,聂拉木县', 3, 'nielamu', '0892', '858300', 'N', '85.97998', '28.15645'),
(2843, 2826, '萨嘎', '萨嘎县', '中国,西藏自治区,日喀则市,萨嘎县', 3, 'saga', '0892', '857800', 'S', '85.23413', '29.32936'),
(2844, 2826, '岗巴', '岗巴县', '中国,西藏自治区,日喀则市,岗巴县', 3, 'gangba', '0892', '857700', 'G', '88.52069', '28.27504'),
(2845, 2816, '昌都', '昌都市', '中国,西藏自治区,昌都市', 2, 'qamdo', '0895', '854000', 'C', '97.178452', '31.136875'),
(2846, 2845, '昌都', '卡若区', '中国,西藏自治区,昌都市,卡若区', 3, 'karuo', '0895', '854000', 'K', '97.18043', '31.1385'),
(2847, 2845, '江达', '江达县', '中国,西藏自治区,昌都市,江达县', 3, 'jiangda', '0895', '854100', 'J', '98.21865', '31.50343'),
(2848, 2845, '贡觉', '贡觉县', '中国,西藏自治区,昌都市,贡觉县', 3, 'gongjue', '0895', '854200', 'G', '98.27163', '30.85941'),
(2849, 2845, '类乌齐', '类乌齐县', '中国,西藏自治区,昌都市,类乌齐县', 3, 'leiwuqi', '0895', '855600', 'L', '96.60015', '31.21207'),
(2850, 2845, '丁青', '丁青县', '中国,西藏自治区,昌都市,丁青县', 3, 'dingqing', '0895', '855700', 'D', '95.59362', '31.41621'),
(2851, 2845, '察雅', '察雅县', '中国,西藏自治区,昌都市,察雅县', 3, 'chaya', '0895', '854300', 'C', '97.56521', '30.65336'),
(2852, 2845, '八宿', '八宿县', '中国,西藏自治区,昌都市,八宿县', 3, 'basu', '0895', '854600', 'B', '96.9176', '30.05346'),
(2853, 2845, '左贡', '左贡县', '中国,西藏自治区,昌都市,左贡县', 3, 'zuogong', '0895', '854400', 'Z', '97.84429', '29.67108'),
(2854, 2845, '芒康', '芒康县', '中国,西藏自治区,昌都市,芒康县', 3, 'mangkang', '0895', '854500', 'M', '98.59378', '29.67946'),
(2855, 2845, '洛隆', '洛隆县', '中国,西藏自治区,昌都市,洛隆县', 3, 'luolong', '0895', '855400', 'L', '95.82644', '30.74049'),
(2856, 2845, '边坝', '边坝县', '中国,西藏自治区,昌都市,边坝县', 3, 'bianba', '0895', '855500', 'B', '94.70687', '30.93434'),
(2857, 2816, '山南', '山南地区', '中国,西藏自治区,山南地区', 2, 'shannan', '0893', '856000', 'S', '91.766529', '29.236023'),
(2858, 2857, '乃东', '乃东县', '中国,西藏自治区,山南地区,乃东县', 3, 'naidong', '0893', '856100', 'N', '91.76153', '29.2249'),
(2859, 2857, '扎囊', '扎囊县', '中国,西藏自治区,山南地区,扎囊县', 3, 'zhanang', '0893', '850800', 'Z', '91.33288', '29.2399'),
(2860, 2857, '贡嘎', '贡嘎县', '中国,西藏自治区,山南地区,贡嘎县', 3, 'gongga', '0893', '850700', 'G', '90.98867', '29.29408'),
(2861, 2857, '桑日', '桑日县', '中国,西藏自治区,山南地区,桑日县', 3, 'sangri', '0893', '856200', 'S', '92.02005', '29.26643'),
(2862, 2857, '琼结', '琼结县', '中国,西藏自治区,山南地区,琼结县', 3, 'qiongjie', '0893', '856800', 'Q', '91.68093', '29.02632'),
(2863, 2857, '曲松', '曲松县', '中国,西藏自治区,山南地区,曲松县', 3, 'qusong', '0893', '856300', 'Q', '92.20263', '29.06412'),
(2864, 2857, '措美', '措美县', '中国,西藏自治区,山南地区,措美县', 3, 'cuomei', '0893', '856900', 'C', '91.43237', '28.43794'),
(2865, 2857, '洛扎', '洛扎县', '中国,西藏自治区,山南地区,洛扎县', 3, 'luozha', '0893', '856600', 'L', '90.86035', '28.3872'),
(2866, 2857, '加查', '加查县', '中国,西藏自治区,山南地区,加查县', 3, 'jiacha', '0893', '856400', 'J', '92.57702', '29.13973'),
(2867, 2857, '隆子', '隆子县', '中国,西藏自治区,山南地区,隆子县', 3, 'longzi', '0893', '856600', 'L', '92.46148', '28.40797'),
(2868, 2857, '错那', '错那县', '中国,西藏自治区,山南地区,错那县', 3, 'cuona', '0893', '856700', 'C', '91.95752', '27.99224'),
(2869, 2857, '浪卡子', '浪卡子县', '中国,西藏自治区,山南地区,浪卡子县', 3, 'langkazi', '0893', '851100', 'L', '90.40002', '28.96948'),
(2870, 2816, '那曲', '那曲地区', '中国,西藏自治区,那曲地区', 2, 'nagqu', '0896', '852000', 'N', '92.060214', '31.476004'),
(2871, 2870, '那曲', '那曲县', '中国,西藏自治区,那曲地区,那曲县', 3, 'naqu', '0896', '852000', 'N', '92.0535', '31.46964'),
(2872, 2870, '嘉黎', '嘉黎县', '中国,西藏自治区,那曲地区,嘉黎县', 3, 'jiali', '0896', '852400', 'J', '93.24987', '30.64233'),
(2873, 2870, '比如', '比如县', '中国,西藏自治区,那曲地区,比如县', 3, 'biru', '0896', '852300', 'B', '93.68685', '31.4779'),
(2874, 2870, '聂荣', '聂荣县', '中国,西藏自治区,那曲地区,聂荣县', 3, 'nierong', '0896', '853500', 'N', '92.29574', '32.11193'),
(2875, 2870, '安多', '安多县', '中国,西藏自治区,那曲地区,安多县', 3, 'anduo', '0896', '853400', 'A', '91.6795', '32.26125'),
(2876, 2870, '申扎', '申扎县', '中国,西藏自治区,那曲地区,申扎县', 3, 'shenzha', '0896', '853100', 'S', '88.70776', '30.92995'),
(2877, 2870, '索县', '索县', '中国,西藏自治区,那曲地区,索县', 3, 'suoxian', '0896', '852200', 'S', '93.78295', '31.88427'),
(2878, 2870, '班戈', '班戈县', '中国,西藏自治区,那曲地区,班戈县', 3, 'bange', '0896', '852500', 'B', '90.01907', '31.36149'),
(2879, 2870, '巴青', '巴青县', '中国,西藏自治区,那曲地区,巴青县', 3, 'baqing', '0896', '852100', 'B', '94.05316', '31.91833'),
(2880, 2870, '尼玛', '尼玛县', '中国,西藏自治区,那曲地区,尼玛县', 3, 'nima', '0896', '852600', 'N', '87.25256', '31.79654'),
(2881, 2870, '双湖', '双湖县', '中国,西藏自治区,那曲地区,双湖县', 3, 'shuanghu', '0896', '852600', 'S', '88.837776', '33.189032'),
(2882, 2816, '阿里', '阿里地区', '中国,西藏自治区,阿里地区', 2, 'ngari', '0897', '859000', 'A', '80.105498', '32.503187'),
(2883, 2882, '普兰', '普兰县', '中国,西藏自治区,阿里地区,普兰县', 3, 'pulan', '0897', '859500', 'P', '81.177', '30.30002'),
(2884, 2882, '札达', '札达县', '中国,西藏自治区,阿里地区,札达县', 3, 'zhada', '0897', '859600', 'Z', '79.80255', '31.48345'),
(2885, 2882, '噶尔', '噶尔县', '中国,西藏自治区,阿里地区,噶尔县', 3, 'gaer', '0897', '859400', 'G', '80.09579', '32.50024'),
(2886, 2882, '日土', '日土县', '中国,西藏自治区,阿里地区,日土县', 3, 'ritu', '0897', '859700', 'R', '79.7131', '33.38741'),
(2887, 2882, '革吉', '革吉县', '中国,西藏自治区,阿里地区,革吉县', 3, 'geji', '0897', '859100', 'G', '81.151', '32.3964'),
(2888, 2882, '改则', '改则县', '中国,西藏自治区,阿里地区,改则县', 3, 'gaize', '0897', '859200', 'G', '84.06295', '32.30446'),
(2889, 2882, '措勤', '措勤县', '中国,西藏自治区,阿里地区,措勤县', 3, 'cuoqin', '0897', '859300', 'C', '85.16616', '31.02095'),
(2890, 2816, '林芝', '林芝地区', '中国,西藏自治区,林芝地区', 2, 'nyingchi', '0894', '850400', 'L', '94.362348', '29.654693'),
(2891, 2890, '林芝', '林芝县', '中国,西藏自治区,林芝地区,林芝县', 3, 'linzhi', '0894', '850400', 'L', '94.48391', '29.57562'),
(2892, 2890, '工布江达', '工布江达县', '中国,西藏自治区,林芝地区,工布江达县', 3, 'gongbujiangda', '0894', '850300', 'G', '93.2452', '29.88576'),
(2893, 2890, '米林', '米林县', '中国,西藏自治区,林芝地区,米林县', 3, 'milin', '0894', '850500', 'M', '94.21316', '29.21535'),
(2894, 2890, '墨脱', '墨脱县', '中国,西藏自治区,林芝地区,墨脱县', 3, 'motuo', '0894', '855300', 'M', '95.3316', '29.32698'),
(2895, 2890, '波密', '波密县', '中国,西藏自治区,林芝地区,波密县', 3, 'bomi', '0894', '855200', 'B', '95.77096', '29.85907'),
(2896, 2890, '察隅', '察隅县', '中国,西藏自治区,林芝地区,察隅县', 3, 'chayu', '0894', '855100', 'C', '97.46679', '28.6618'),
(2897, 2890, '朗县', '朗县', '中国,西藏自治区,林芝地区,朗县', 3, 'langxian', '0894', '856500', 'L', '93.0754', '29.04549'),
(2898, 0, '陕西', '陕西省', '中国,陕西省', 1, 'shaanxi', '', '', 'S', '108.948024', '34.263161'),
(2899, 2898, '西安', '西安市', '中国,陕西省,西安市', 2, 'xi\'an', '029', '710003', 'X', '108.948024', '34.263161'),
(2900, 2899, '新城', '新城区', '中国,陕西省,西安市,新城区', 3, 'xincheng', '029', '710004', 'X', '108.9608', '34.26641'),
(2901, 2899, '碑林', '碑林区', '中国,陕西省,西安市,碑林区', 3, 'beilin', '029', '710001', 'B', '108.93426', '34.2304'),
(2902, 2899, '莲湖', '莲湖区', '中国,陕西省,西安市,莲湖区', 3, 'lianhu', '029', '710003', 'L', '108.9401', '34.26709'),
(2903, 2899, '灞桥', '灞桥区', '中国,陕西省,西安市,灞桥区', 3, 'baqiao', '029', '710038', NULL, '109.06451', '34.27264'),
(2904, 2899, '未央', '未央区', '中国,陕西省,西安市,未央区', 3, 'weiyang', '029', '710014', 'W', '108.94683', '34.29296'),
(2905, 2899, '雁塔', '雁塔区', '中国,陕西省,西安市,雁塔区', 3, 'yanta', '029', '710061', 'Y', '108.94866', '34.22245'),
(2906, 2899, '阎良', '阎良区', '中国,陕西省,西安市,阎良区', 3, 'yanliang', '029', '710087', 'Y', '109.22616', '34.66221'),
(2907, 2899, '临潼', '临潼区', '中国,陕西省,西安市,临潼区', 3, 'lintong', '029', '710600', 'L', '109.21417', '34.36665'),
(2908, 2899, '长安', '长安区', '中国,陕西省,西安市,长安区', 3, 'chang\'an', '029', '710100', 'C', '108.94586', '34.15559'),
(2909, 2899, '蓝田', '蓝田县', '中国,陕西省,西安市,蓝田县', 3, 'lantian', '029', '710500', 'L', '109.32339', '34.15128'),
(2910, 2899, '周至', '周至县', '中国,陕西省,西安市,周至县', 3, 'zhouzhi', '029', '710400', 'Z', '108.22207', '34.16337'),
(2911, 2899, '户县', '户县', '中国,陕西省,西安市,户县', 3, 'huxian', '029', '710300', 'H', '108.60513', '34.10856'),
(2912, 2899, '高陵', '高陵区', '中国,陕西省,西安市,高陵区', 3, 'gaoling', '029', '710200', 'G', '109.08816', '34.53483'),
(2913, 2898, '铜川', '铜川市', '中国,陕西省,铜川市', 2, 'tongchuan', '0919', '727100', 'T', '108.963122', '34.90892'),
(2914, 2913, '王益', '王益区', '中国,陕西省,铜川市,王益区', 3, 'wangyi', '0919', '727000', 'W', '109.07564', '35.06896'),
(2915, 2913, '印台', '印台区', '中国,陕西省,铜川市,印台区', 3, 'yintai', '0919', '727007', 'Y', '109.10208', '35.1169'),
(2916, 2913, '耀州', '耀州区', '中国,陕西省,铜川市,耀州区', 3, 'yaozhou', '0919', '727100', 'Y', '108.98556', '34.91308'),
(2917, 2913, '宜君', '宜君县', '中国,陕西省,铜川市,宜君县', 3, 'yijun', '0919', '727200', 'Y', '109.11813', '35.40108'),
(2918, 2898, '宝鸡', '宝鸡市', '中国,陕西省,宝鸡市', 2, 'baoji', '0917', '721000', 'B', '107.14487', '34.369315'),
(2919, 2918, '渭滨', '渭滨区', '中国,陕西省,宝鸡市,渭滨区', 3, 'weibin', '0917', '721000', 'W', '107.14991', '34.37116'),
(2920, 2918, '金台', '金台区', '中国,陕西省,宝鸡市,金台区', 3, 'jintai', '0917', '721000', 'J', '107.14691', '34.37612'),
(2921, 2918, '陈仓', '陈仓区', '中国,陕西省,宝鸡市,陈仓区', 3, 'chencang', '0917', '721300', 'C', '107.38742', '34.35451'),
(2922, 2918, '凤翔', '凤翔县', '中国,陕西省,宝鸡市,凤翔县', 3, 'fengxiang', '0917', '721400', 'F', '107.39645', '34.52321'),
(2923, 2918, '岐山', '岐山县', '中国,陕西省,宝鸡市,岐山县', 3, 'qishan', '0917', '722400', NULL, '107.62173', '34.44378'),
(2924, 2918, '扶风', '扶风县', '中国,陕西省,宝鸡市,扶风县', 3, 'fufeng', '0917', '722200', 'F', '107.90017', '34.37524'),
(2925, 2918, '眉县', '眉县', '中国,陕西省,宝鸡市,眉县', 3, 'meixian', '0917', '722300', 'M', '107.75079', '34.27569'),
(2926, 2918, '陇县', '陇县', '中国,陕西省,宝鸡市,陇县', 3, 'longxian', '0917', '721200', 'L', '106.85946', '34.89404'),
(2927, 2918, '千阳', '千阳县', '中国,陕西省,宝鸡市,千阳县', 3, 'qianyang', '0917', '721100', 'Q', '107.13043', '34.64219'),
(2928, 2918, '麟游', '麟游县', '中国,陕西省,宝鸡市,麟游县', 3, 'linyou', '0917', '721500', NULL, '107.79623', '34.67844'),
(2929, 2918, '凤县', '凤县', '中国,陕西省,宝鸡市,凤县', 3, 'fengxian', '0917', '721700', 'F', '106.52356', '33.91172'),
(2930, 2918, '太白', '太白县', '中国,陕西省,宝鸡市,太白县', 3, 'taibai', '0917', '721600', 'T', '107.31646', '34.06207'),
(2931, 2898, '咸阳', '咸阳市', '中国,陕西省,咸阳市', 2, 'xianyang', '029', '712000', 'X', '108.705117', '34.333439'),
(2932, 2931, '秦都', '秦都区', '中国,陕西省,咸阳市,秦都区', 3, 'qindu', '029', '712000', 'Q', '108.71493', '34.33804'),
(2933, 2931, '杨陵', '杨陵区', '中国,陕西省,咸阳市,杨陵区', 3, 'yangling', '029', '712100', 'Y', '108.083481', '34.270434'),
(2934, 2931, '渭城', '渭城区', '中国,陕西省,咸阳市,渭城区', 3, 'weicheng', '029', '712000', 'W', '108.72227', '34.33198'),
(2935, 2931, '三原', '三原县', '中国,陕西省,咸阳市,三原县', 3, 'sanyuan', '029', '713800', 'S', '108.93194', '34.61556'),
(2936, 2931, '泾阳', '泾阳县', '中国,陕西省,咸阳市,泾阳县', 3, 'jingyang', '029', '713700', NULL, '108.84259', '34.52705'),
(2937, 2931, '乾县', '乾县', '中国,陕西省,咸阳市,乾县', 3, 'qianxian', '029', '713300', 'Q', '108.24231', '34.52946'),
(2938, 2931, '礼泉', '礼泉县', '中国,陕西省,咸阳市,礼泉县', 3, 'liquan', '029', '713200', 'L', '108.4263', '34.48455'),
(2939, 2931, '永寿', '永寿县', '中国,陕西省,咸阳市,永寿县', 3, 'yongshou', '029', '713400', 'Y', '108.14474', '34.69081'),
(2940, 2931, '彬县', '彬县', '中国,陕西省,咸阳市,彬县', 3, 'binxian', '029', '713500', 'B', '108.08468', '35.0342'),
(2941, 2931, '长武', '长武县', '中国,陕西省,咸阳市,长武县', 3, 'changwu', '029', '713600', 'C', '107.7951', '35.2067'),
(2942, 2931, '旬邑', '旬邑县', '中国,陕西省,咸阳市,旬邑县', 3, 'xunyi', '029', '711300', 'X', '108.3341', '35.11338'),
(2943, 2931, '淳化', '淳化县', '中国,陕西省,咸阳市,淳化县', 3, 'chunhua', '029', '711200', 'C', '108.58026', '34.79886'),
(2944, 2931, '武功', '武功县', '中国,陕西省,咸阳市,武功县', 3, 'wugong', '029', '712200', 'W', '108.20434', '34.26003'),
(2945, 2931, '兴平', '兴平市', '中国,陕西省,咸阳市,兴平市', 3, 'xingping', '029', '713100', 'X', '108.49057', '34.29785'),
(2946, 2898, '渭南', '渭南市', '中国,陕西省,渭南市', 2, 'weinan', '0913', '714000', 'W', '109.502882', '34.499381'),
(2947, 2946, '临渭', '临渭区', '中国,陕西省,渭南市,临渭区', 3, 'linwei', '0913', '714000', 'L', '109.49296', '34.49822'),
(2948, 2946, '华县', '华县', '中国,陕西省,渭南市,华县', 3, 'huaxian', '0913', '714100', 'H', '109.77185', '34.51255'),
(2949, 2946, '潼关', '潼关县', '中国,陕西省,渭南市,潼关县', 3, 'tongguan', '0913', '714300', NULL, '110.24362', '34.54284'),
(2950, 2946, '大荔', '大荔县', '中国,陕西省,渭南市,大荔县', 3, 'dali', '0913', '715100', 'D', '109.94216', '34.79565'),
(2951, 2946, '合阳', '合阳县', '中国,陕西省,渭南市,合阳县', 3, 'heyang', '0913', '715300', 'H', '110.14862', '35.23805'),
(2952, 2946, '澄城', '澄城县', '中国,陕西省,渭南市,澄城县', 3, 'chengcheng', '0913', '715200', 'C', '109.93444', '35.18396'),
(2953, 2946, '蒲城', '蒲城县', '中国,陕西省,渭南市,蒲城县', 3, 'pucheng', '0913', '715500', 'P', '109.5903', '34.9568'),
(2954, 2946, '白水', '白水县', '中国,陕西省,渭南市,白水县', 3, 'baishui', '0913', '715600', 'B', '109.59286', '35.17863'),
(2955, 2946, '富平', '富平县', '中国,陕西省,渭南市,富平县', 3, 'fuping', '0913', '711700', 'F', '109.1802', '34.75109'),
(2956, 2946, '韩城', '韩城市', '中国,陕西省,渭南市,韩城市', 3, 'hancheng', '0913', '715400', 'H', '110.44238', '35.47926'),
(2957, 2946, '华阴', '华阴市', '中国,陕西省,渭南市,华阴市', 3, 'huayin', '0913', '714200', 'H', '110.08752', '34.56608'),
(2958, 2898, '延安', '延安市', '中国,陕西省,延安市', 2, 'yan\'an', '0911', '716000', 'Y', '109.49081', '36.596537'),
(2959, 2958, '宝塔', '宝塔区', '中国,陕西省,延安市,宝塔区', 3, 'baota', '0911', '716000', 'B', '109.49336', '36.59154'),
(2960, 2958, '延长', '延长县', '中国,陕西省,延安市,延长县', 3, 'yanchang', '0911', '717100', 'Y', '110.01083', '36.57904'),
(2961, 2958, '延川', '延川县', '中国,陕西省,延安市,延川县', 3, 'yanchuan', '0911', '717200', 'Y', '110.19415', '36.87817'),
(2962, 2958, '子长', '子长县', '中国,陕西省,延安市,子长县', 3, 'zichang', '0911', '717300', 'Z', '109.67532', '37.14253'),
(2963, 2958, '安塞', '安塞县', '中国,陕西省,延安市,安塞县', 3, 'ansai', '0911', '717400', 'A', '109.32708', '36.86507'),
(2964, 2958, '志丹', '志丹县', '中国,陕西省,延安市,志丹县', 3, 'zhidan', '0911', '717500', 'Z', '108.76815', '36.82177'),
(2965, 2958, '吴起', '吴起县', '中国,陕西省,延安市,吴起县', 3, 'wuqi', '0911', '717600', 'W', '108.17611', '36.92785'),
(2966, 2958, '甘泉', '甘泉县', '中国,陕西省,延安市,甘泉县', 3, 'ganquan', '0911', '716100', 'G', '109.35012', '36.27754'),
(2967, 2958, '富县', '富县', '中国,陕西省,延安市,富县', 3, 'fuxian', '0911', '727500', 'F', '109.37927', '35.98803'),
(2968, 2958, '洛川', '洛川县', '中国,陕西省,延安市,洛川县', 3, 'luochuan', '0911', '727400', 'L', '109.43286', '35.76076'),
(2969, 2958, '宜川', '宜川县', '中国,陕西省,延安市,宜川县', 3, 'yichuan', '0911', '716200', 'Y', '110.17196', '36.04732'),
(2970, 2958, '黄龙', '黄龙县', '中国,陕西省,延安市,黄龙县', 3, 'huanglong', '0911', '715700', 'H', '109.84259', '35.58349'),
(2971, 2958, '黄陵', '黄陵县', '中国,陕西省,延安市,黄陵县', 3, 'huangling', '0911', '727300', 'H', '109.26333', '35.58357'),
(2972, 2898, '汉中', '汉中市', '中国,陕西省,汉中市', 2, 'hanzhong', '0916', '723000', 'H', '107.028621', '33.077668'),
(2973, 2972, '汉台', '汉台区', '中国,陕西省,汉中市,汉台区', 3, 'hantai', '0916', '723000', 'H', '107.03187', '33.06774'),
(2974, 2972, '南郑', '南郑县', '中国,陕西省,汉中市,南郑县', 3, 'nanzheng', '0916', '723100', 'N', '106.94024', '33.00299'),
(2975, 2972, '城固', '城固县', '中国,陕西省,汉中市,城固县', 3, 'chenggu', '0916', '723200', 'C', '107.33367', '33.15661'),
(2976, 2972, '洋县', '洋县', '中国,陕西省,汉中市,洋县', 3, 'yangxian', '0916', '723300', 'Y', '107.54672', '33.22102'),
(2977, 2972, '西乡', '西乡县', '中国,陕西省,汉中市,西乡县', 3, 'xixiang', '0916', '723500', 'X', '107.76867', '32.98411'),
(2978, 2972, '勉县', '勉县', '中国,陕西省,汉中市,勉县', 3, 'mianxian', '0916', '724200', 'M', '106.67584', '33.15273'),
(2979, 2972, '宁强', '宁强县', '中国,陕西省,汉中市,宁强县', 3, 'ningqiang', '0916', '724400', 'N', '106.25958', '32.82881'),
(2980, 2972, '略阳', '略阳县', '中国,陕西省,汉中市,略阳县', 3, 'lueyang', '0916', '724300', 'L', '106.15399', '33.33009'),
(2981, 2972, '镇巴', '镇巴县', '中国,陕西省,汉中市,镇巴县', 3, 'zhenba', '0916', '723600', 'Z', '107.89648', '32.53487'),
(2982, 2972, '留坝', '留坝县', '中国,陕西省,汉中市,留坝县', 3, 'liuba', '0916', '724100', 'L', '106.92233', '33.61606'),
(2983, 2972, '佛坪', '佛坪县', '中国,陕西省,汉中市,佛坪县', 3, 'foping', '0916', '723400', 'F', '107.98974', '33.52496'),
(2984, 2898, '榆林', '榆林市', '中国,陕西省,榆林市', 2, 'yulin', '0912', '719000', 'Y', '109.741193', '38.290162'),
(2985, 2984, '榆阳', '榆阳区', '中国,陕西省,榆林市,榆阳区', 3, 'yuyang', '0912', '719000', 'Y', '109.73473', '38.27843'),
(2986, 2984, '神木', '神木县', '中国,陕西省,榆林市,神木县', 3, 'shenmu', '0912', '719300', 'S', '110.4989', '38.84234'),
(2987, 2984, '府谷', '府谷县', '中国,陕西省,榆林市,府谷县', 3, 'fugu', '0912', '719400', 'F', '111.06723', '39.02805'),
(2988, 2984, '横山', '横山县', '中国,陕西省,榆林市,横山县', 3, 'hengshan', '0912', '719100', 'H', '109.29568', '37.958'),
(2989, 2984, '靖边', '靖边县', '中国,陕西省,榆林市,靖边县', 3, 'jingbian', '0912', '718500', 'J', '108.79412', '37.59938'),
(2990, 2984, '定边', '定边县', '中国,陕西省,榆林市,定边县', 3, 'dingbian', '0912', '718600', 'D', '107.59793', '37.59037'),
(2991, 2984, '绥德', '绥德县', '中国,陕西省,榆林市,绥德县', 3, 'suide', '0912', '718000', 'S', '110.26126', '37.49778'),
(2992, 2984, '米脂', '米脂县', '中国,陕西省,榆林市,米脂县', 3, 'mizhi', '0912', '718100', 'M', '110.18417', '37.75529'),
(2993, 2984, '佳县', '佳县', '中国,陕西省,榆林市,佳县', 3, 'jiaxian', '0912', '719200', 'J', '110.49362', '38.02248'),
(2994, 2984, '吴堡', '吴堡县', '中国,陕西省,榆林市,吴堡县', 3, 'wubu', '0912', '718200', 'W', '110.74533', '37.45709'),
(2995, 2984, '清涧', '清涧县', '中国,陕西省,榆林市,清涧县', 3, 'qingjian', '0912', '718300', 'Q', '110.12173', '37.08854'),
(2996, 2984, '子洲', '子洲县', '中国,陕西省,榆林市,子洲县', 3, 'zizhou', '0912', '718400', 'Z', '110.03488', '37.61238'),
(2997, 2898, '安康', '安康市', '中国,陕西省,安康市', 2, 'ankang', '0915', '725000', 'A', '109.029273', '32.6903'),
(2998, 2997, '汉滨', '汉滨区', '中国,陕西省,安康市,汉滨区', 3, 'hanbin', '0915', '725000', 'H', '109.02683', '32.69517'),
(2999, 2997, '汉阴', '汉阴县', '中国,陕西省,安康市,汉阴县', 3, 'hanyin', '0915', '725100', 'H', '108.51098', '32.89129'),
(3000, 2997, '石泉', '石泉县', '中国,陕西省,安康市,石泉县', 3, 'shiquan', '0915', '725200', 'S', '108.24755', '33.03971'),
(3001, 2997, '宁陕', '宁陕县', '中国,陕西省,安康市,宁陕县', 3, 'ningshan', '0915', '711600', 'N', '108.31515', '33.31726'),
(3002, 2997, '紫阳', '紫阳县', '中国,陕西省,安康市,紫阳县', 3, 'ziyang', '0915', '725300', 'Z', '108.5368', '32.52115'),
(3003, 2997, '岚皋', '岚皋县', '中国,陕西省,安康市,岚皋县', 3, 'langao', '0915', '725400', NULL, '108.90289', '32.30794'),
(3004, 2997, '平利', '平利县', '中国,陕西省,安康市,平利县', 3, 'pingli', '0915', '725500', 'P', '109.35775', '32.39111'),
(3005, 2997, '镇坪', '镇坪县', '中国,陕西省,安康市,镇坪县', 3, 'zhenping', '0915', '725600', 'Z', '109.52456', '31.8833'),
(3006, 2997, '旬阳', '旬阳县', '中国,陕西省,安康市,旬阳县', 3, 'xunyang', '0915', '725700', 'X', '109.3619', '32.83207'),
(3007, 2997, '白河', '白河县', '中国,陕西省,安康市,白河县', 3, 'baihe', '0915', '725800', 'B', '110.11315', '32.80955'),
(3008, 2898, '商洛', '商洛市', '中国,陕西省,商洛市', 2, 'shangluo', '0914', '726000', 'S', '109.939776', '33.868319'),
(3009, 3008, '商州', '商州区', '中国,陕西省,商洛市,商州区', 3, 'shangzhou', '0914', '726000', 'S', '109.94126', '33.8627'),
(3010, 3008, '洛南', '洛南县', '中国,陕西省,商洛市,洛南县', 3, 'luonan', '0914', '726100', 'L', '110.14645', '34.08994'),
(3011, 3008, '丹凤', '丹凤县', '中国,陕西省,商洛市,丹凤县', 3, 'danfeng', '0914', '726200', 'D', '110.33486', '33.69468'),
(3012, 3008, '商南', '商南县', '中国,陕西省,商洛市,商南县', 3, 'shangnan', '0914', '726300', 'S', '110.88375', '33.52581'),
(3013, 3008, '山阳', '山阳县', '中国,陕西省,商洛市,山阳县', 3, 'shanyang', '0914', '726400', 'S', '109.88784', '33.52931'),
(3014, 3008, '镇安', '镇安县', '中国,陕西省,商洛市,镇安县', 3, 'zhen\'an', '0914', '711500', 'Z', '109.15374', '33.42366'),
(3015, 3008, '柞水', '柞水县', '中国,陕西省,商洛市,柞水县', 3, 'zhashui', '0914', '711400', 'Z', '109.11105', '33.6831'),
(3016, 2898, '西咸', '西咸新区', '中国,陕西省,西咸新区', 2, 'xixian', '029', '712000', 'X', '108.810654', '34.307144'),
(3017, 3016, '空港', '空港新城', '中国,陕西省,西咸新区,空港新城', 3, 'konggang', '0374', '461000', 'K', '108.760529', '34.440894'),
(3018, 3016, '沣东', '沣东新城', '中国,陕西省,西咸新区,沣东新城', 3, 'fengdong', '029', '710000', NULL, '108.82988', '34.267431'),
(3019, 3016, '秦汉', '秦汉新城', '中国,陕西省,西咸新区,秦汉新城', 3, 'qinhan', '029', '712000', 'Q', '108.83812', '34.386513'),
(3020, 3016, '沣西', '沣西新城', '中国,陕西省,西咸新区,沣西新城', 3, 'fengxi', '029', '710000', NULL, '108.71215', '34.190453'),
(3021, 3016, '泾河', '泾河新城', '中国,陕西省,西咸新区,泾河新城', 3, 'jinghe', '029', '713700', NULL, '109.049603', '34.460587'),
(3022, 0, '甘肃', '甘肃省', '中国,甘肃省', 1, 'gansu', '', '', 'G', '103.823557', '36.058039'),
(3023, 3022, '兰州', '兰州市', '中国,甘肃省,兰州市', 2, 'lanzhou', '0931', '730030', 'L', '103.823557', '36.058039'),
(3024, 3023, '城关', '城关区', '中国,甘肃省,兰州市,城关区', 3, 'chengguan', '0931', '730030', 'C', '103.8252', '36.05725'),
(3025, 3023, '七里河', '七里河区', '中国,甘肃省,兰州市,七里河区', 3, 'qilihe', '0931', '730050', 'Q', '103.78564', '36.06585'),
(3026, 3023, '西固', '西固区', '中国,甘肃省,兰州市,西固区', 3, 'xigu', '0931', '730060', 'X', '103.62811', '36.08858'),
(3027, 3023, '安宁', '安宁区', '中国,甘肃省,兰州市,安宁区', 3, 'anning', '0931', '730070', 'A', '103.7189', '36.10384'),
(3028, 3023, '红古', '红古区', '中国,甘肃省,兰州市,红古区', 3, 'honggu', '0931', '730084', 'H', '102.85955', '36.34537'),
(3029, 3023, '永登', '永登县', '中国,甘肃省,兰州市,永登县', 3, 'yongdeng', '0931', '730300', 'Y', '103.26055', '36.73522'),
(3030, 3023, '皋兰', '皋兰县', '中国,甘肃省,兰州市,皋兰县', 3, 'gaolan', '0931', '730200', 'G', '103.94506', '36.33215'),
(3031, 3023, '榆中', '榆中县', '中国,甘肃省,兰州市,榆中县', 3, 'yuzhong', '0931', '730100', 'Y', '104.1145', '35.84415'),
(3032, 3022, '嘉峪关', '嘉峪关市', '中国,甘肃省,嘉峪关市', 2, 'jiayuguan', '0937', '735100', 'J', '98.277304', '39.786529'),
(3033, 3032, '雄关', '雄关区', '中国,甘肃省,嘉峪关市,雄关区', 3, 'xiongguan', '0937', '735100', 'X', '98.277398', '39.77925'),
(3034, 3032, '长城', '长城区', '中国,甘肃省,嘉峪关市,长城区', 3, 'changcheng', '0937', '735106', 'C', '98.273523', '39.787431'),
(3035, 3032, '镜铁', '镜铁区', '中国,甘肃省,嘉峪关市,镜铁区', 3, 'jingtie', '0937', '735100', 'J', '98.277304', '39.786529'),
(3036, 3022, '金昌', '金昌市', '中国,甘肃省,金昌市', 2, 'jinchang', '0935', '737100', 'J', '102.187888', '38.514238'),
(3037, 3036, '金川', '金川区', '中国,甘肃省,金昌市,金川区', 3, 'jinchuan', '0935', '737100', 'J', '102.19376', '38.52101'),
(3038, 3036, '永昌', '永昌县', '中国,甘肃省,金昌市,永昌县', 3, 'yongchang', '0935', '737200', 'Y', '101.97222', '38.24711'),
(3039, 3022, '白银', '白银市', '中国,甘肃省,白银市', 2, 'baiyin', '0943', '730900', 'B', '104.173606', '36.54568'),
(3040, 3039, '白银', '白银区', '中国,甘肃省,白银市,白银区', 3, 'baiyin', '0943', '730900', 'B', '104.17355', '36.54411'),
(3041, 3039, '平川', '平川区', '中国,甘肃省,白银市,平川区', 3, 'pingchuan', '0943', '730913', 'P', '104.82498', '36.7277'),
(3042, 3039, '靖远', '靖远县', '中国,甘肃省,白银市,靖远县', 3, 'jingyuan', '0943', '730600', 'J', '104.68325', '36.56602'),
(3043, 3039, '会宁', '会宁县', '中国,甘肃省,白银市,会宁县', 3, 'huining', '0943', '730700', 'H', '105.05297', '35.69626'),
(3044, 3039, '景泰', '景泰县', '中国,甘肃省,白银市,景泰县', 3, 'jingtai', '0943', '730400', 'J', '104.06295', '37.18359'),
(3045, 3022, '天水', '天水市', '中国,甘肃省,天水市', 2, 'tianshui', '0938', '741000', 'T', '105.724998', '34.578529'),
(3046, 3045, '秦州', '秦州区', '中国,甘肃省,天水市,秦州区', 3, 'qinzhou', '0938', '741000', 'Q', '105.72421', '34.58089'),
(3047, 3045, '麦积', '麦积区', '中国,甘肃省,天水市,麦积区', 3, 'maiji', '0938', '741020', 'M', '105.89013', '34.57069'),
(3048, 3045, '清水', '清水县', '中国,甘肃省,天水市,清水县', 3, 'qingshui', '0938', '741400', 'Q', '106.13671', '34.75032'),
(3049, 3045, '秦安', '秦安县', '中国,甘肃省,天水市,秦安县', 3, 'qin\'an', '0938', '741600', 'Q', '105.66955', '34.85894'),
(3050, 3045, '甘谷', '甘谷县', '中国,甘肃省,天水市,甘谷县', 3, 'gangu', '0938', '741200', 'G', '105.33291', '34.73665'),
(3051, 3045, '武山', '武山县', '中国,甘肃省,天水市,武山县', 3, 'wushan', '0938', '741300', 'W', '104.88382', '34.72123'),
(3052, 3045, '张家川', '张家川回族自治县', '中国,甘肃省,天水市,张家川回族自治县', 3, 'zhangjiachuan', '0938', '741500', 'Z', '106.21582', '34.99582'),
(3053, 3022, '武威', '武威市', '中国,甘肃省,武威市', 2, 'wuwei', '0935', '733000', 'W', '102.634697', '37.929996'),
(3054, 3053, '凉州', '凉州区', '中国,甘肃省,武威市,凉州区', 3, 'liangzhou', '0935', '733000', 'L', '102.64203', '37.92832'),
(3055, 3053, '民勤', '民勤县', '中国,甘肃省,武威市,民勤县', 3, 'minqin', '0935', '733300', 'M', '103.09011', '38.62487'),
(3056, 3053, '古浪', '古浪县', '中国,甘肃省,武威市,古浪县', 3, 'gulang', '0935', '733100', 'G', '102.89154', '37.46508'),
(3057, 3053, '天祝', '天祝藏族自治县', '中国,甘肃省,武威市,天祝藏族自治县', 3, 'tianzhu', '0935', '733200', 'T', '103.1361', '36.97715'),
(3058, 3022, '张掖', '张掖市', '中国,甘肃省,张掖市', 2, 'zhangye', '0936', '734000', 'Z', '100.455472', '38.932897'),
(3059, 3058, '甘州', '甘州区', '中国,甘肃省,张掖市,甘州区', 3, 'ganzhou', '0936', '734000', 'G', '100.4527', '38.92947'),
(3060, 3058, '肃南', '肃南裕固族自治县', '中国,甘肃省,张掖市,肃南裕固族自治县', 3, 'sunan', '0936', '734400', 'S', '99.61407', '38.83776'),
(3061, 3058, '民乐', '民乐县', '中国,甘肃省,张掖市,民乐县', 3, 'minle', '0936', '734500', 'M', '100.81091', '38.43479'),
(3062, 3058, '临泽', '临泽县', '中国,甘肃省,张掖市,临泽县', 3, 'linze', '0936', '734200', 'L', '100.16445', '39.15252'),
(3063, 3058, '高台', '高台县', '中国,甘肃省,张掖市,高台县', 3, 'gaotai', '0936', '734300', 'G', '99.81918', '39.37829'),
(3064, 3058, '山丹', '山丹县', '中国,甘肃省,张掖市,山丹县', 3, 'shandan', '0936', '734100', 'S', '101.09359', '38.78468'),
(3065, 3022, '平凉', '平凉市', '中国,甘肃省,平凉市', 2, 'pingliang', '0933', '744000', 'P', '106.684691', '35.54279'),
(3066, 3065, '崆峒', '崆峒区', '中国,甘肃省,平凉市,崆峒区', 3, 'kongtong', '0933', '744000', NULL, '106.67483', '35.54262'),
(3067, 3065, '泾川', '泾川县', '中国,甘肃省,平凉市,泾川县', 3, 'jingchuan', '0933', '744300', NULL, '107.36581', '35.33223'),
(3068, 3065, '灵台', '灵台县', '中国,甘肃省,平凉市,灵台县', 3, 'lingtai', '0933', '744400', 'L', '107.6174', '35.06768'),
(3069, 3065, '崇信', '崇信县', '中国,甘肃省,平凉市,崇信县', 3, 'chongxin', '0933', '744200', 'C', '107.03738', '35.30344'),
(3070, 3065, '华亭', '华亭县', '中国,甘肃省,平凉市,华亭县', 3, 'huating', '0933', '744100', 'H', '106.65463', '35.2183'),
(3071, 3065, '庄浪', '庄浪县', '中国,甘肃省,平凉市,庄浪县', 3, 'zhuanglang', '0933', '744600', 'Z', '106.03662', '35.20235'),
(3072, 3065, '静宁', '静宁县', '中国,甘肃省,平凉市,静宁县', 3, 'jingning', '0933', '743400', 'J', '105.72723', '35.51991'),
(3073, 3022, '酒泉', '酒泉市', '中国,甘肃省,酒泉市', 2, 'jiuquan', '0937', '735000', 'J', '98.510795', '39.744023'),
(3074, 3073, '肃州', '肃州区', '中国,甘肃省,酒泉市,肃州区', 3, 'suzhou', '0937', '735000', 'S', '98.50775', '39.74506'),
(3075, 3073, '金塔', '金塔县', '中国,甘肃省,酒泉市,金塔县', 3, 'jinta', '0937', '735300', 'J', '98.90002', '39.97733'),
(3076, 3073, '瓜州', '瓜州县', '中国,甘肃省,酒泉市,瓜州县', 3, 'guazhou', '0937', '736100', 'G', '95.78271', '40.51548'),
(3077, 3073, '肃北', '肃北蒙古族自治县', '中国,甘肃省,酒泉市,肃北蒙古族自治县', 3, 'subei', '0937', '736300', 'S', '94.87649', '39.51214'),
(3078, 3073, '阿克塞', '阿克塞哈萨克族自治县', '中国,甘肃省,酒泉市,阿克塞哈萨克族自治县', 3, 'akesai', '0937', '736400', 'A', '94.34097', '39.63435'),
(3079, 3073, '玉门', '玉门市', '中国,甘肃省,酒泉市,玉门市', 3, 'yumen', '0937', '735200', 'Y', '97.04538', '40.29172'),
(3080, 3073, '敦煌', '敦煌市', '中国,甘肃省,酒泉市,敦煌市', 3, 'dunhuang', '0937', '736200', 'D', '94.66159', '40.14211'),
(3081, 3022, '庆阳', '庆阳市', '中国,甘肃省,庆阳市', 2, 'qingyang', '0934', '745000', 'Q', '107.638372', '35.734218'),
(3082, 3081, '西峰', '西峰区', '中国,甘肃省,庆阳市,西峰区', 3, 'xifeng', '0934', '745000', 'X', '107.65107', '35.73065'),
(3083, 3081, '庆城', '庆城县', '中国,甘肃省,庆阳市,庆城县', 3, 'qingcheng', '0934', '745100', 'Q', '107.88272', '36.01507'),
(3084, 3081, '环县', '环县', '中国,甘肃省,庆阳市,环县', 3, 'huanxian', '0934', '745700', 'H', '107.30835', '36.56846'),
(3085, 3081, '华池', '华池县', '中国,甘肃省,庆阳市,华池县', 3, 'huachi', '0934', '745600', 'H', '107.9891', '36.46108'),
(3086, 3081, '合水', '合水县', '中国,甘肃省,庆阳市,合水县', 3, 'heshui', '0934', '745400', 'H', '108.02032', '35.81911'),
(3087, 3081, '正宁', '正宁县', '中国,甘肃省,庆阳市,正宁县', 3, 'zhengning', '0934', '745300', 'Z', '108.36007', '35.49174'),
(3088, 3081, '宁县', '宁县', '中国,甘肃省,庆阳市,宁县', 3, 'ningxian', '0934', '745200', 'N', '107.92517', '35.50164'),
(3089, 3081, '镇原', '镇原县', '中国,甘肃省,庆阳市,镇原县', 3, 'zhenyuan', '0934', '744500', 'Z', '107.199', '35.67712'),
(3090, 3022, '定西', '定西市', '中国,甘肃省,定西市', 2, 'dingxi', '0932', '743000', 'D', '104.626294', '35.579578'),
(3091, 3090, '安定', '安定区', '中国,甘肃省,定西市,安定区', 3, 'anding', '0932', '743000', 'A', '104.6106', '35.58066'),
(3092, 3090, '通渭', '通渭县', '中国,甘肃省,定西市,通渭县', 3, 'tongwei', '0932', '743300', 'T', '105.24224', '35.21101'),
(3093, 3090, '陇西', '陇西县', '中国,甘肃省,定西市,陇西县', 3, 'longxi', '0932', '748100', 'L', '104.63446', '35.00238'),
(3094, 3090, '渭源', '渭源县', '中国,甘肃省,定西市,渭源县', 3, 'weiyuan', '0932', '748200', 'W', '104.21435', '35.13649'),
(3095, 3090, '临洮', '临洮县', '中国,甘肃省,定西市,临洮县', 3, 'lintao', '0932', '730500', 'L', '103.86196', '35.3751'),
(3096, 3090, '漳县', '漳县', '中国,甘肃省,定西市,漳县', 3, 'zhangxian', '0932', '748300', 'Z', '104.46704', '34.84977'),
(3097, 3090, '岷县', '岷县', '中国,甘肃省,定西市,岷县', 3, 'minxian', '0932', '748400', NULL, '104.03772', '34.43444'),
(3098, 3022, '陇南', '陇南市', '中国,甘肃省,陇南市', 2, 'longnan', '0939', '746000', 'L', '104.929379', '33.388598'),
(3099, 3098, '武都', '武都区', '中国,甘肃省,陇南市,武都区', 3, 'wudu', '0939', '746000', 'W', '104.92652', '33.39239'),
(3100, 3098, '成县', '成县', '中国,甘肃省,陇南市,成县', 3, 'chengxian', '0939', '742500', 'C', '105.72586', '33.73925'),
(3101, 3098, '文县', '文县', '中国,甘肃省,陇南市,文县', 3, 'wenxian', '0939', '746400', 'W', '104.68362', '32.94337'),
(3102, 3098, '宕昌', '宕昌县', '中国,甘肃省,陇南市,宕昌县', 3, 'dangchang', '0939', '748500', NULL, '104.39349', '34.04732'),
(3103, 3098, '康县', '康县', '中国,甘肃省,陇南市,康县', 3, 'kangxian', '0939', '746500', 'K', '105.60711', '33.32912'),
(3104, 3098, '西和', '西和县', '中国,甘肃省,陇南市,西和县', 3, 'xihe', '0939', '742100', 'X', '105.30099', '34.01432'),
(3105, 3098, '礼县', '礼县', '中国,甘肃省,陇南市,礼县', 3, 'lixian', '0939', '742200', 'L', '105.17785', '34.18935'),
(3106, 3098, '徽县', '徽县', '中国,甘肃省,陇南市,徽县', 3, 'huixian', '0939', '742300', 'H', '106.08529', '33.76898'),
(3107, 3098, '两当', '两当县', '中国,甘肃省,陇南市,两当县', 3, 'liangdang', '0939', '742400', 'L', '106.30484', '33.9096'),
(3108, 3022, '临夏', '临夏回族自治州', '中国,甘肃省,临夏回族自治州', 2, 'linxia', '0930', '731100', 'L', '103.212006', '35.599446'),
(3109, 3108, '临夏', '临夏市', '中国,甘肃省,临夏回族自治州,临夏市', 3, 'linxia', '0930', '731100', 'L', '103.21', '35.59916'),
(3110, 3108, '临夏', '临夏县', '中国,甘肃省,临夏回族自治州,临夏县', 3, 'linxia', '0930', '731800', 'L', '102.9938', '35.49519'),
(3111, 3108, '康乐', '康乐县', '中国,甘肃省,临夏回族自治州,康乐县', 3, 'kangle', '0930', '731500', 'K', '103.71093', '35.37219'),
(3112, 3108, '永靖', '永靖县', '中国,甘肃省,临夏回族自治州,永靖县', 3, 'yongjing', '0930', '731600', 'Y', '103.32043', '35.93835'),
(3113, 3108, '广河', '广河县', '中国,甘肃省,临夏回族自治州,广河县', 3, 'guanghe', '0930', '731300', 'G', '103.56933', '35.48097'),
(3114, 3108, '和政', '和政县', '中国,甘肃省,临夏回族自治州,和政县', 3, 'hezheng', '0930', '731200', 'H', '103.34936', '35.42592'),
(3115, 3108, '东乡族', '东乡族自治县', '中国,甘肃省,临夏回族自治州,东乡族自治县', 3, 'dongxiangzu', '0930', '731400', 'D', '103.39477', '35.66471'),
(3116, 3108, '积石山', '积石山保安族东乡族撒拉族自治县', '中国,甘肃省,临夏回族自治州,积石山保安族东乡族撒拉族自治县', 3, 'jishishan', '0930', '731700', 'J', '102.87374', '35.7182'),
(3117, 3022, '甘南', '甘南藏族自治州', '中国,甘肃省,甘南藏族自治州', 2, 'gannan', '0941', '747000', 'G', '102.911008', '34.986354'),
(3118, 3117, '合作', '合作市', '中国,甘肃省,甘南藏族自治州,合作市', 3, 'hezuo', '0941', '747000', 'H', '102.91082', '35.00016'),
(3119, 3117, '临潭', '临潭县', '中国,甘肃省,甘南藏族自治州,临潭县', 3, 'lintan', '0941', '747500', 'L', '103.35287', '34.69515'),
(3120, 3117, '卓尼', '卓尼县', '中国,甘肃省,甘南藏族自治州,卓尼县', 3, 'zhuoni', '0941', '747600', 'Z', '103.50811', '34.58919'),
(3121, 3117, '舟曲', '舟曲县', '中国,甘肃省,甘南藏族自治州,舟曲县', 3, 'zhouqu', '0941', '746300', 'Z', '104.37155', '33.78468'),
(3122, 3117, '迭部', '迭部县', '中国,甘肃省,甘南藏族自治州,迭部县', 3, 'diebu', '0941', '747400', 'D', '103.22274', '34.05623'),
(3123, 3117, '玛曲', '玛曲县', '中国,甘肃省,甘南藏族自治州,玛曲县', 3, 'maqu', '0941', '747300', 'M', '102.0754', '33.997'),
(3124, 3117, '碌曲', '碌曲县', '中国,甘肃省,甘南藏族自治州,碌曲县', 3, 'luqu', '0941', '747200', 'L', '102.49176', '34.58872'),
(3125, 3117, '夏河', '夏河县', '中国,甘肃省,甘南藏族自治州,夏河县', 3, 'xiahe', '0941', '747100', 'X', '102.52215', '35.20487'),
(3126, 0, '青海', '青海省', '中国,青海省', 1, 'qinghai', '', '', 'Q', '101.778916', '36.623178'),
(3127, 3126, '西宁', '西宁市', '中国,青海省,西宁市', 2, 'xining', '0971', '810000', 'X', '101.778916', '36.623178'),
(3128, 3127, '城东', '城东区', '中国,青海省,西宁市,城东区', 3, 'chengdong', '0971', '810007', 'C', '101.80373', '36.59969'),
(3129, 3127, '城中', '城中区', '中国,青海省,西宁市,城中区', 3, 'chengzhong', '0971', '810000', 'C', '101.78394', '36.62279'),
(3130, 3127, '城西', '城西区', '中国,青海省,西宁市,城西区', 3, 'chengxi', '0971', '810001', 'C', '101.76588', '36.62828'),
(3131, 3127, '城北', '城北区', '中国,青海省,西宁市,城北区', 3, 'chengbei', '0971', '810003', 'C', '101.7662', '36.65014'),
(3132, 3127, '大通', '大通回族土族自治县', '中国,青海省,西宁市,大通回族土族自治县', 3, 'datong', '0971', '810100', 'D', '101.70236', '36.93489'),
(3133, 3127, '湟中', '湟中县', '中国,青海省,西宁市,湟中县', 3, 'huangzhong', '0971', '811600', NULL, '101.57159', '36.50083'),
(3134, 3127, '湟源', '湟源县', '中国,青海省,西宁市,湟源县', 3, 'huangyuan', '0971', '812100', NULL, '101.25643', '36.68243'),
(3135, 3126, '海东', '海东市', '中国,青海省,海东市', 2, 'haidong', '0972', '810700', 'H', '102.10327', '36.502916'),
(3136, 3135, '乐都', '乐都区', '中国,青海省,海东市,乐都区', 3, 'ledu', '0972', '810700', 'L', '102.402431', '36.480291'),
(3137, 3135, '平安', '平安县', '中国,青海省,海东市,平安县', 3, 'ping\'an', '0972', '810600', 'P', '102.104295', '36.502714'),
(3138, 3135, '民和', '民和回族土族自治县', '中国,青海省,海东市,民和回族土族自治县', 3, 'minhe', '0972', '810800', 'M', '102.804209', '36.329451'),
(3139, 3135, '互助', '互助土族自治县', '中国,青海省,海东市,互助土族自治县', 3, 'huzhu', '0972', '810500', 'H', '101.956734', '36.83994'),
(3140, 3135, '化隆', '化隆回族自治县', '中国,青海省,海东市,化隆回族自治县', 3, 'hualong', '0972', '810900', 'H', '102.262329', '36.098322'),
(3141, 3135, '循化', '循化撒拉族自治县', '中国,青海省,海东市,循化撒拉族自治县', 3, 'xunhua', '0972', '811100', 'X', '102.486534', '35.847247'),
(3142, 3126, '海北', '海北藏族自治州', '中国,青海省,海北藏族自治州', 2, 'haibei', '0970', '812200', 'H', '100.901059', '36.959435'),
(3143, 3142, '门源', '门源回族自治县', '中国,青海省,海北藏族自治州,门源回族自治县', 3, 'menyuan', '0970', '810300', 'M', '101.62228', '37.37611'),
(3144, 3142, '祁连', '祁连县', '中国,青海省,海北藏族自治州,祁连县', 3, 'qilian', '0970', '810400', 'Q', '100.24618', '38.17901'),
(3145, 3142, '海晏', '海晏县', '中国,青海省,海北藏族自治州,海晏县', 3, 'haiyan', '0970', '812200', 'H', '100.9927', '36.89902'),
(3146, 3142, '刚察', '刚察县', '中国,青海省,海北藏族自治州,刚察县', 3, 'gangcha', '0970', '812300', 'G', '100.14675', '37.32161'),
(3147, 3126, '黄南', '黄南藏族自治州', '中国,青海省,黄南藏族自治州', 2, 'huangnan', '0973', '811300', 'H', '102.019988', '35.517744'),
(3148, 3147, '同仁', '同仁县', '中国,青海省,黄南藏族自治州,同仁县', 3, 'tongren', '0973', '811300', 'T', '102.0184', '35.51603'),
(3149, 3147, '尖扎', '尖扎县', '中国,青海省,黄南藏族自治州,尖扎县', 3, 'jianzha', '0973', '811200', 'J', '102.03411', '35.93947'),
(3150, 3147, '泽库', '泽库县', '中国,青海省,黄南藏族自治州,泽库县', 3, 'zeku', '0973', '811400', 'Z', '101.46444', '35.03519'),
(3151, 3147, '河南', '河南蒙古族自治县', '中国,青海省,黄南藏族自治州,河南蒙古族自治县', 3, 'henan', '0973', '811500', 'H', '101.60864', '34.73476'),
(3152, 3126, '海南', '海南藏族自治州', '中国,青海省,海南藏族自治州', 2, 'hainan', '0974', '813000', 'H', '100.619542', '36.280353'),
(3153, 3152, '共和', '共和县', '中国,青海省,海南藏族自治州,共和县', 3, 'gonghe', '0974', '813000', 'G', '100.62003', '36.2841'),
(3154, 3152, '同德', '同德县', '中国,青海省,海南藏族自治州,同德县', 3, 'tongde', '0974', '813200', 'T', '100.57159', '35.25488'),
(3155, 3152, '贵德', '贵德县', '中国,青海省,海南藏族自治州,贵德县', 3, 'guide', '0974', '811700', 'G', '101.432', '36.044'),
(3156, 3152, '兴海', '兴海县', '中国,青海省,海南藏族自治州,兴海县', 3, 'xinghai', '0974', '813300', 'X', '99.98846', '35.59031'),
(3157, 3152, '贵南', '贵南县', '中国,青海省,海南藏族自治州,贵南县', 3, 'guinan', '0974', '813100', 'G', '100.74716', '35.58667'),
(3158, 3126, '果洛', '果洛藏族自治州', '中国,青海省,果洛藏族自治州', 2, 'golog', '0975', '814000', 'G', '100.242143', '34.4736'),
(3159, 3158, '玛沁', '玛沁县', '中国,青海省,果洛藏族自治州,玛沁县', 3, 'maqin', '0975', '814000', 'M', '100.23901', '34.47746'),
(3160, 3158, '班玛', '班玛县', '中国,青海省,果洛藏族自治州,班玛县', 3, 'banma', '0975', '814300', 'B', '100.73745', '32.93253'),
(3161, 3158, '甘德', '甘德县', '中国,青海省,果洛藏族自治州,甘德县', 3, 'gande', '0975', '814100', 'G', '99.90246', '33.96838'),
(3162, 3158, '达日', '达日县', '中国,青海省,果洛藏族自治州,达日县', 3, 'dari', '0975', '814200', 'D', '99.65179', '33.75193'),
(3163, 3158, '久治', '久治县', '中国,青海省,果洛藏族自治州,久治县', 3, 'jiuzhi', '0975', '624700', 'J', '101.48342', '33.42989'),
(3164, 3158, '玛多', '玛多县', '中国,青海省,果洛藏族自治州,玛多县', 3, 'maduo', '0975', '813500', 'M', '98.20996', '34.91567'),
(3165, 3126, '玉树', '玉树藏族自治州', '中国,青海省,玉树藏族自治州', 2, 'yushu', '0976', '815000', 'Y', '97.008522', '33.004049'),
(3166, 3165, '玉树', '玉树市', '中国,青海省,玉树藏族自治州,玉树市', 3, 'yushu', '0976', '815000', 'Y', '97.008762', '33.00393'),
(3167, 3165, '杂多', '杂多县', '中国,青海省,玉树藏族自治州,杂多县', 3, 'zaduo', '0976', '815300', 'Z', '95.29864', '32.89318'),
(3168, 3165, '称多', '称多县', '中国,青海省,玉树藏族自治州,称多县', 3, 'chenduo', '0976', '815100', 'C', '97.10788', '33.36899'),
(3169, 3165, '治多', '治多县', '中国,青海省,玉树藏族自治州,治多县', 3, 'zhiduo', '0976', '815400', 'Z', '95.61572', '33.8528'),
(3170, 3165, '囊谦', '囊谦县', '中国,青海省,玉树藏族自治州,囊谦县', 3, 'nangqian', '0976', '815200', 'N', '96.47753', '32.20359'),
(3171, 3165, '曲麻莱', '曲麻莱县', '中国,青海省,玉树藏族自治州,曲麻莱县', 3, 'qumalai', '0976', '815500', 'Q', '95.79757', '34.12609'),
(3172, 3126, '海西', '海西蒙古族藏族自治州', '中国,青海省,海西蒙古族藏族自治州', 2, 'haixi', '0977', '817000', 'H', '97.370785', '37.374663'),
(3173, 3172, '格尔木', '格尔木市', '中国,青海省,海西蒙古族藏族自治州,格尔木市', 3, 'geermu', '0977', '816000', 'G', '94.90329', '36.40236'),
(3174, 3172, '德令哈', '德令哈市', '中国,青海省,海西蒙古族藏族自治州,德令哈市', 3, 'delingha', '0977', '817000', 'D', '97.36084', '37.36946'),
(3175, 3172, '乌兰', '乌兰县', '中国,青海省,海西蒙古族藏族自治州,乌兰县', 3, 'wulan', '0977', '817100', 'W', '98.48196', '36.93471'),
(3176, 3172, '都兰', '都兰县', '中国,青海省,海西蒙古族藏族自治州,都兰县', 3, 'dulan', '0977', '816100', 'D', '98.09228', '36.30135'),
(3177, 3172, '天峻', '天峻县', '中国,青海省,海西蒙古族藏族自治州,天峻县', 3, 'tianjun', '0977', '817200', 'T', '99.02453', '37.30326'),
(3178, 0, '宁夏', '宁夏回族自治区', '中国,宁夏回族自治区', 1, 'ningxia', '', '', 'N', '106.278179', '38.46637'),
(3179, 3178, '银川', '银川市', '中国,宁夏回族自治区,银川市', 2, 'yinchuan', '0951', '750004', 'Y', '106.278179', '38.46637'),
(3180, 3179, '兴庆', '兴庆区', '中国,宁夏回族自治区,银川市,兴庆区', 3, 'xingqing', '0951', '750001', 'X', '106.28872', '38.47392'),
(3181, 3179, '西夏', '西夏区', '中国,宁夏回族自治区,银川市,西夏区', 3, 'xixia', '0951', '750021', 'X', '106.15023', '38.49137'),
(3182, 3179, '金凤', '金凤区', '中国,宁夏回族自治区,银川市,金凤区', 3, 'jinfeng', '0951', '750011', 'J', '106.24261', '38.47294'),
(3183, 3179, '永宁', '永宁县', '中国,宁夏回族自治区,银川市,永宁县', 3, 'yongning', '0951', '750100', 'Y', '106.2517', '38.27559'),
(3184, 3179, '贺兰', '贺兰县', '中国,宁夏回族自治区,银川市,贺兰县', 3, 'helan', '0951', '750200', 'H', '106.34982', '38.5544'),
(3185, 3179, '灵武', '灵武市', '中国,宁夏回族自治区,银川市,灵武市', 3, 'lingwu', '0951', '750004', 'L', '106.33999', '38.10266'),
(3186, 3178, '石嘴山', '石嘴山市', '中国,宁夏回族自治区,石嘴山市', 2, 'shizuishan', '0952', '753000', 'S', '106.376173', '39.01333'),
(3187, 3186, '大武口', '大武口区', '中国,宁夏回族自治区,石嘴山市,大武口区', 3, 'dawukou', '0952', '753000', 'D', '106.37717', '39.01226'),
(3188, 3186, '惠农', '惠农区', '中国,宁夏回族自治区,石嘴山市,惠农区', 3, 'huinong', '0952', '753600', 'H', '106.71145', '39.13193'),
(3189, 3186, '平罗', '平罗县', '中国,宁夏回族自治区,石嘴山市,平罗县', 3, 'pingluo', '0952', '753400', 'P', '106.54538', '38.90429'),
(3190, 3178, '吴忠', '吴忠市', '中国,宁夏回族自治区,吴忠市', 2, 'wuzhong', '0953', '751100', 'W', '106.199409', '37.986165'),
(3191, 3190, '利通', '利通区', '中国,宁夏回族自治区,吴忠市,利通区', 3, 'litong', '0953', '751100', 'L', '106.20311', '37.98512'),
(3192, 3190, '红寺堡', '红寺堡区', '中国,宁夏回族自治区,吴忠市,红寺堡区', 3, 'hongsibao', '0953', '751900', 'H', '106.19822', '37.99747'),
(3193, 3190, '盐池', '盐池县', '中国,宁夏回族自治区,吴忠市,盐池县', 3, 'yanchi', '0953', '751500', 'Y', '107.40707', '37.7833'),
(3194, 3190, '同心', '同心县', '中国,宁夏回族自治区,吴忠市,同心县', 3, 'tongxin', '0953', '751300', 'T', '105.91418', '36.98116'),
(3195, 3190, '青铜峡', '青铜峡市', '中国,宁夏回族自治区,吴忠市,青铜峡市', 3, 'qingtongxia', '0953', '751600', 'Q', '106.07489', '38.02004'),
(3196, 3178, '固原', '固原市', '中国,宁夏回族自治区,固原市', 2, 'guyuan', '0954', '756000', 'G', '106.285241', '36.004561'),
(3197, 3196, '原州', '原州区', '中国,宁夏回族自治区,固原市,原州区', 3, 'yuanzhou', '0954', '756000', 'Y', '106.28778', '36.00374'),
(3198, 3196, '西吉', '西吉县', '中国,宁夏回族自治区,固原市,西吉县', 3, 'xiji', '0954', '756200', 'X', '105.73107', '35.96616'),
(3199, 3196, '隆德', '隆德县', '中国,宁夏回族自治区,固原市,隆德县', 3, 'longde', '0954', '756300', 'L', '106.12426', '35.61718'),
(3200, 3196, '泾源', '泾源县', '中国,宁夏回族自治区,固原市,泾源县', 3, 'jingyuan', '0954', '756400', NULL, '106.33902', '35.49072'),
(3201, 3196, '彭阳', '彭阳县', '中国,宁夏回族自治区,固原市,彭阳县', 3, 'pengyang', '0954', '756500', 'P', '106.64462', '35.85076'),
(3202, 3178, '中卫', '中卫市', '中国,宁夏回族自治区,中卫市', 2, 'zhongwei', '0955', '751700', 'Z', '105.189568', '37.514951'),
(3203, 3202, '沙坡头', '沙坡头区', '中国,宁夏回族自治区,中卫市,沙坡头区', 3, 'shapotou', '0955', '755000', 'S', '105.18962', '37.51044'),
(3204, 3202, '中宁', '中宁县', '中国,宁夏回族自治区,中卫市,中宁县', 3, 'zhongning', '0955', '751200', 'Z', '105.68515', '37.49149'),
(3205, 3202, '海原', '海原县', '中国,宁夏回族自治区,中卫市,海原县', 3, 'haiyuan', '0955', '751800', 'H', '105.64712', '36.56498'),
(3206, 0, '新疆', '新疆维吾尔自治区', '中国,新疆维吾尔自治区', 1, 'xinjiang', '', '', 'X', '87.617733', '43.792818'),
(3207, 3206, '乌鲁木齐', '乌鲁木齐市', '中国,新疆维吾尔自治区,乌鲁木齐市', 2, 'urumqi', '0991', '830002', 'W', '87.617733', '43.792818'),
(3208, 3207, '天山', '天山区', '中国,新疆维吾尔自治区,乌鲁木齐市,天山区', 3, 'tianshan', '0991', '830002', 'T', '87.63167', '43.79439'),
(3209, 3207, '沙依巴克', '沙依巴克区', '中国,新疆维吾尔自治区,乌鲁木齐市,沙依巴克区', 3, 'shayibake', '0991', '830000', 'S', '87.59788', '43.80118'),
(3210, 3207, '新市', '新市区', '中国,新疆维吾尔自治区,乌鲁木齐市,新市区', 3, 'xinshi', '0991', '830011', 'X', '87.57406', '43.84348'),
(3211, 3207, '水磨沟', '水磨沟区', '中国,新疆维吾尔自治区,乌鲁木齐市,水磨沟区', 3, 'shuimogou', '0991', '830017', 'S', '87.64249', '43.83247'),
(3212, 3207, '头屯河', '头屯河区', '中国,新疆维吾尔自治区,乌鲁木齐市,头屯河区', 3, 'toutunhe', '0991', '830022', 'T', '87.29138', '43.85487'),
(3213, 3207, '达坂城', '达坂城区', '中国,新疆维吾尔自治区,乌鲁木齐市,达坂城区', 3, 'dabancheng', '0991', '830039', 'D', '88.30697', '43.35797'),
(3214, 3207, '米东', '米东区', '中国,新疆维吾尔自治区,乌鲁木齐市,米东区', 3, 'midong', '0991', '830019', 'M', '87.68583', '43.94739'),
(3215, 3207, '乌鲁木齐', '乌鲁木齐县', '中国,新疆维吾尔自治区,乌鲁木齐市,乌鲁木齐县', 3, 'wulumuqi', '0991', '830063', 'W', '87.40939', '43.47125'),
(3216, 3206, '克拉玛依', '克拉玛依市', '中国,新疆维吾尔自治区,克拉玛依市', 2, 'karamay', '0990', '834000', 'K', '84.873946', '45.595886'),
(3217, 3216, '独山子', '独山子区', '中国,新疆维吾尔自治区,克拉玛依市,独山子区', 3, 'dushanzi', '0992', '834021', 'D', '84.88671', '44.32867'),
(3218, 3216, '克拉玛依', '克拉玛依区', '中国,新疆维吾尔自治区,克拉玛依市,克拉玛依区', 3, 'kelamayi', '0990', '834000', 'K', '84.86225', '45.59089'),
(3219, 3216, '白碱滩', '白碱滩区', '中国,新疆维吾尔自治区,克拉玛依市,白碱滩区', 3, 'baijiantan', '0990', '834008', 'B', '85.13244', '45.68768'),
(3220, 3216, '乌尔禾', '乌尔禾区', '中国,新疆维吾尔自治区,克拉玛依市,乌尔禾区', 3, 'wuerhe', '0990', '834012', 'W', '85.69143', '46.09006'),
(3221, 3206, '吐鲁番', '吐鲁番地区', '中国,新疆维吾尔自治区,吐鲁番地区', 2, 'turpan', '0995', '838000', 'T', '89.184078', '42.947613'),
(3222, 3221, '吐鲁番', '吐鲁番市', '中国,新疆维吾尔自治区,吐鲁番地区,吐鲁番市', 3, 'tulufan', '0995', '838000', 'T', '89.18579', '42.93505'),
(3223, 3221, '鄯善', '鄯善县', '中国,新疆维吾尔自治区,吐鲁番地区,鄯善县', 3, 'shanshan', '0995', '838200', NULL, '90.21402', '42.8635'),
(3224, 3221, '托克逊', '托克逊县', '中国,新疆维吾尔自治区,吐鲁番地区,托克逊县', 3, 'tuokexun', '0995', '838100', 'T', '88.65823', '42.79231'),
(3225, 3206, '哈密', '哈密地区', '中国,新疆维吾尔自治区,哈密地区', 2, 'hami', '0902', '839000', 'H', '93.51316', '42.833248'),
(3226, 3225, '哈密', '哈密市', '中国,新疆维吾尔自治区,哈密地区,哈密市', 3, 'hami', '0902', '839000', 'H', '93.51452', '42.82699'),
(3227, 3225, '巴里坤', '巴里坤哈萨克自治县', '中国,新疆维吾尔自治区,哈密地区,巴里坤哈萨克自治县', 3, 'balikun', '0902', '839200', 'B', '93.01236', '43.59993'),
(3228, 3225, '伊吾', '伊吾县', '中国,新疆维吾尔自治区,哈密地区,伊吾县', 3, 'yiwu', '0902', '839300', 'Y', '94.69403', '43.2537'),
(3229, 3206, '昌吉', '昌吉回族自治州', '中国,新疆维吾尔自治区,昌吉回族自治州', 2, 'changji', '0994', '831100', 'C', '87.304012', '44.014577'),
(3230, 3229, '昌吉', '昌吉市', '中国,新疆维吾尔自治区,昌吉回族自治州,昌吉市', 3, 'changji', '0994', '831100', 'C', '87.30249', '44.01267'),
(3231, 3229, '阜康', '阜康市', '中国,新疆维吾尔自治区,昌吉回族自治州,阜康市', 3, 'fukang', '0994', '831500', 'F', '87.98529', '44.1584'),
(3232, 3229, '呼图壁', '呼图壁县', '中国,新疆维吾尔自治区,昌吉回族自治州,呼图壁县', 3, 'hutubi', '0994', '831200', 'H', '86.89892', '44.18977'),
(3233, 3229, '玛纳斯', '玛纳斯县', '中国,新疆维吾尔自治区,昌吉回族自治州,玛纳斯县', 3, 'manasi', '0994', '832200', 'M', '86.2145', '44.30438'),
(3234, 3229, '奇台', '奇台县', '中国,新疆维吾尔自治区,昌吉回族自治州,奇台县', 3, 'qitai', '0994', '831800', 'Q', '89.5932', '44.02221'),
(3235, 3229, '吉木萨尔', '吉木萨尔县', '中国,新疆维吾尔自治区,昌吉回族自治州,吉木萨尔县', 3, 'jimusaer', '0994', '831700', 'J', '89.18078', '44.00048'),
(3236, 3229, '木垒', '木垒哈萨克自治县', '中国,新疆维吾尔自治区,昌吉回族自治州,木垒哈萨克自治县', 3, 'mulei', '0994', '831900', 'M', '90.28897', '43.83508'),
(3237, 3206, '博尔塔拉', '博尔塔拉蒙古自治州', '中国,新疆维吾尔自治区,博尔塔拉蒙古自治州', 2, 'bortala', '0909', '833400', 'B', '82.074778', '44.903258'),
(3238, 3237, '博乐', '博乐市', '中国,新疆维吾尔自治区,博尔塔拉蒙古自治州,博乐市', 3, 'bole', '0909', '833400', 'B', '82.0713', '44.90052'),
(3239, 3237, '阿拉山口', '阿拉山口市', '中国,新疆维吾尔自治区,博尔塔拉蒙古自治州,阿拉山口市', 3, 'alashankou', '0909', '833400', 'A', '82.567721', '45.170616'),
(3240, 3237, '精河', '精河县', '中国,新疆维吾尔自治区,博尔塔拉蒙古自治州,精河县', 3, 'jinghe', '0909', '833300', 'J', '82.89419', '44.60774'),
(3241, 3237, '温泉', '温泉县', '中国,新疆维吾尔自治区,博尔塔拉蒙古自治州,温泉县', 3, 'wenquan', '0909', '833500', 'W', '81.03134', '44.97373'),
(3242, 3206, '巴音郭楞', '巴音郭楞蒙古自治州', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州', 2, 'bayingol', '0996', '841000', 'B', '86.150969', '41.768552'),
(3243, 3242, '库尔勒', '库尔勒市', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,库尔勒市', 3, 'kuerle', '0996', '841000', 'K', '86.15528', '41.76602'),
(3244, 3242, '轮台', '轮台县', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,轮台县', 3, 'luntai', '0996', '841600', 'L', '84.26101', '41.77642'),
(3245, 3242, '尉犁', '尉犁县', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,尉犁县', 3, 'yuli', '0996', '841500', 'W', '86.25903', '41.33632'),
(3246, 3242, '若羌', '若羌县', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,若羌县', 3, 'ruoqiang', '0996', '841800', 'R', '88.16812', '39.0179'),
(3247, 3242, '且末', '且末县', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,且末县', 3, 'qiemo', '0996', '841900', 'Q', '85.52975', '38.14534'),
(3248, 3242, '焉耆', '焉耆回族自治县', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,焉耆回族自治县', 3, 'yanqi', '0996', '841100', 'Y', '86.5744', '42.059'),
(3249, 3242, '和静', '和静县', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,和静县', 3, 'hejing', '0996', '841300', 'H', '86.39611', '42.31838'),
(3250, 3242, '和硕', '和硕县', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,和硕县', 3, 'heshuo', '0996', '841200', 'H', '86.86392', '42.26814'),
(3251, 3242, '博湖', '博湖县', '中国,新疆维吾尔自治区,巴音郭楞蒙古自治州,博湖县', 3, 'bohu', '0996', '841400', 'B', '86.63333', '41.98014'),
(3252, 3206, '阿克苏', '阿克苏地区', '中国,新疆维吾尔自治区,阿克苏地区', 2, 'aksu', '0997', '843000', 'A', '80.265068', '41.170712'),
(3253, 3252, '阿克苏', '阿克苏市', '中国,新疆维吾尔自治区,阿克苏地区,阿克苏市', 3, 'akesu', '0997', '843000', 'A', '80.26338', '41.16754'),
(3254, 3252, '温宿', '温宿县', '中国,新疆维吾尔自治区,阿克苏地区,温宿县', 3, 'wensu', '0997', '843100', 'W', '80.24173', '41.27679'),
(3255, 3252, '库车', '库车县', '中国,新疆维吾尔自治区,阿克苏地区,库车县', 3, 'kuche', '0997', '842000', 'K', '82.96209', '41.71793'),
(3256, 3252, '沙雅', '沙雅县', '中国,新疆维吾尔自治区,阿克苏地区,沙雅县', 3, 'shaya', '0997', '842200', 'S', '82.78131', '41.22497'),
(3257, 3252, '新和', '新和县', '中国,新疆维吾尔自治区,阿克苏地区,新和县', 3, 'xinhe', '0997', '842100', 'X', '82.61053', '41.54964'),
(3258, 3252, '拜城', '拜城县', '中国,新疆维吾尔自治区,阿克苏地区,拜城县', 3, 'baicheng', '0997', '842300', 'B', '81.87564', '41.79801'),
(3259, 3252, '乌什', '乌什县', '中国,新疆维吾尔自治区,阿克苏地区,乌什县', 3, 'wushi', '0997', '843400', 'W', '79.22937', '41.21569'),
(3260, 3252, '阿瓦提', '阿瓦提县', '中国,新疆维吾尔自治区,阿克苏地区,阿瓦提县', 3, 'awati', '0997', '843200', 'A', '80.38336', '40.63926'),
(3261, 3252, '柯坪', '柯坪县', '中国,新疆维吾尔自治区,阿克苏地区,柯坪县', 3, 'keping', '0997', '843600', 'K', '79.04751', '40.50585'),
(3262, 3206, '克孜勒苏', '克孜勒苏柯尔克孜自治州', '中国,新疆维吾尔自治区,克孜勒苏柯尔克孜自治州', 2, 'kizilsu', '0908', '845350', 'K', '76.172825', '39.713431'),
(3263, 3262, '阿图什', '阿图什市', '中国,新疆维吾尔自治区,克孜勒苏柯尔克孜自治州,阿图什市', 3, 'atushi', '0908', '845350', 'A', '76.16827', '39.71615'),
(3264, 3262, '阿克陶', '阿克陶县', '中国,新疆维吾尔自治区,克孜勒苏柯尔克孜自治州,阿克陶县', 3, 'aketao', '0908', '845550', 'A', '75.94692', '39.14892'),
(3265, 3262, '阿合奇', '阿合奇县', '中国,新疆维吾尔自治区,克孜勒苏柯尔克孜自治州,阿合奇县', 3, 'aheqi', '0997', '843500', 'A', '78.44848', '40.93947'),
(3266, 3262, '乌恰', '乌恰县', '中国,新疆维吾尔自治区,克孜勒苏柯尔克孜自治州,乌恰县', 3, 'wuqia', '0908', '845450', 'W', '75.25839', '39.71984'),
(3267, 3206, '喀什', '喀什地区', '中国,新疆维吾尔自治区,喀什地区', 2, 'kashgar', '0998', '844000', 'K', '75.989138', '39.467664'),
(3268, 3267, '喀什', '喀什市', '中国,新疆维吾尔自治区,喀什地区,喀什市', 3, 'kashi', '0998', '844000', 'K', '75.99379', '39.46768'),
(3269, 3267, '疏附', '疏附县', '中国,新疆维吾尔自治区,喀什地区,疏附县', 3, 'shufu', '0998', '844100', 'S', '75.86029', '39.37534'),
(3270, 3267, '疏勒', '疏勒县', '中国,新疆维吾尔自治区,喀什地区,疏勒县', 3, 'shule', '0998', '844200', 'S', '76.05398', '39.40625'),
(3271, 3267, '英吉沙', '英吉沙县', '中国,新疆维吾尔自治区,喀什地区,英吉沙县', 3, 'yingjisha', '0998', '844500', 'Y', '76.17565', '38.92968'),
(3272, 3267, '泽普', '泽普县', '中国,新疆维吾尔自治区,喀什地区,泽普县', 3, 'zepu', '0998', '844800', 'Z', '77.27145', '38.18935'),
(3273, 3267, '莎车', '莎车县', '中国,新疆维吾尔自治区,喀什地区,莎车县', 3, 'shache', '0998', '844700', 'S', '77.24316', '38.41601'),
(3274, 3267, '叶城', '叶城县', '中国,新疆维吾尔自治区,喀什地区,叶城县', 3, 'yecheng', '0998', '844900', 'Y', '77.41659', '37.88324'),
(3275, 3267, '麦盖提', '麦盖提县', '中国,新疆维吾尔自治区,喀什地区,麦盖提县', 3, 'maigaiti', '0998', '844600', 'M', '77.64224', '38.89662'),
(3276, 3267, '岳普湖', '岳普湖县', '中国,新疆维吾尔自治区,喀什地区,岳普湖县', 3, 'yuepuhu', '0998', '844400', 'Y', '76.77233', '39.23561'),
(3277, 3267, '伽师', '伽师县', '中国,新疆维吾尔自治区,喀什地区,伽师县', 3, 'jiashi', '0998', '844300', NULL, '76.72372', '39.48801'),
(3278, 3267, '巴楚', '巴楚县', '中国,新疆维吾尔自治区,喀什地区,巴楚县', 3, 'bachu', '0998', '843800', 'B', '78.54888', '39.7855'),
(3279, 3267, '塔什库尔干塔吉克', '塔什库尔干塔吉克自治县', '中国,新疆维吾尔自治区,喀什地区,塔什库尔干塔吉克自治县', 3, 'tashikuergantajike', '0998', '845250', 'T', '75.23196', '37.77893'),
(3280, 3206, '和田', '和田地区', '中国,新疆维吾尔自治区,和田地区', 2, 'hotan', '0903', '848000', 'H', '79.92533', '37.110687'),
(3281, 3280, '和田市', '和田市', '中国,新疆维吾尔自治区,和田地区,和田市', 3, 'hetianshi', '0903', '848000', 'H', '79.91353', '37.11214'),
(3282, 3280, '和田县', '和田县', '中国,新疆维吾尔自治区,和田地区,和田县', 3, 'hetianxian', '0903', '848000', 'H', '79.82874', '37.08922'),
(3283, 3280, '墨玉', '墨玉县', '中国,新疆维吾尔自治区,和田地区,墨玉县', 3, 'moyu', '0903', '848100', 'M', '79.74035', '37.27248'),
(3284, 3280, '皮山', '皮山县', '中国,新疆维吾尔自治区,和田地区,皮山县', 3, 'pishan', '0903', '845150', 'P', '78.28125', '37.62007'),
(3285, 3280, '洛浦', '洛浦县', '中国,新疆维吾尔自治区,和田地区,洛浦县', 3, 'luopu', '0903', '848200', 'L', '80.18536', '37.07364'),
(3286, 3280, '策勒', '策勒县', '中国,新疆维吾尔自治区,和田地区,策勒县', 3, 'cele', '0903', '848300', 'C', '80.80999', '36.99843'),
(3287, 3280, '于田', '于田县', '中国,新疆维吾尔自治区,和田地区,于田县', 3, 'yutian', '0903', '848400', 'Y', '81.66717', '36.854'),
(3288, 3280, '民丰', '民丰县', '中国,新疆维吾尔自治区,和田地区,民丰县', 3, 'minfeng', '0903', '848500', 'M', '82.68444', '37.06577'),
(3289, 3206, '伊犁', '伊犁哈萨克自治州', '中国,新疆维吾尔自治区,伊犁哈萨克自治州', 2, 'ili', '0999', '835100', 'Y', '81.317946', '43.92186'),
(3290, 3289, '伊宁', '伊宁市', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,伊宁市', 3, 'yining', '0999', '835000', 'Y', '81.32932', '43.91294'),
(3291, 3289, '奎屯', '奎屯市', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,奎屯市', 3, 'kuitun', '0992', '833200', 'K', '84.90228', '44.425'),
(3292, 3289, '霍尔果斯', '霍尔果斯市', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,霍尔果斯市', 3, 'huoerguosi', '0999', '835221', 'H', '80.418189', '44.205778'),
(3293, 3289, '伊宁', '伊宁县', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,伊宁县', 3, 'yining', '0999', '835100', 'Y', '81.52764', '43.97863'),
(3294, 3289, '察布查尔锡伯', '察布查尔锡伯自治县', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,察布查尔锡伯自治县', 3, 'chabuchaerxibo', '0999', '835300', 'C', '81.14956', '43.84023'),
(3295, 3289, '霍城', '霍城县', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,霍城县', 3, 'huocheng', '0999', '835200', 'H', '80.87826', '44.0533'),
(3296, 3289, '巩留', '巩留县', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,巩留县', 3, 'gongliu', '0999', '835400', 'G', '82.22851', '43.48429'),
(3297, 3289, '新源', '新源县', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,新源县', 3, 'xinyuan', '0999', '835800', 'X', '83.26095', '43.4284'),
(3298, 3289, '昭苏', '昭苏县', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,昭苏县', 3, 'zhaosu', '0999', '835600', 'Z', '81.1307', '43.15828'),
(3299, 3289, '特克斯', '特克斯县', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,特克斯县', 3, 'tekesi', '0999', '835500', 'T', '81.84005', '43.21938'),
(3300, 3289, '尼勒克', '尼勒克县', '中国,新疆维吾尔自治区,伊犁哈萨克自治州,尼勒克县', 3, 'nileke', '0999', '835700', 'N', '82.51184', '43.79901'),
(3301, 3206, '塔城', '塔城地区', '中国,新疆维吾尔自治区,塔城地区', 2, 'qoqek', '0901', '834700', 'T', '82.985732', '46.746301'),
(3302, 3301, '塔城', '塔城市', '中国,新疆维吾尔自治区,塔城地区,塔城市', 3, 'tacheng', '0901', '834700', 'T', '82.97892', '46.74852');
INSERT INTO `sf_area` (`id`, `pid`, `shortname`, `name`, `mergename`, `level`, `pinyin`, `code`, `zip`, `first`, `lng`, `lat`) VALUES
(3303, 3301, '乌苏', '乌苏市', '中国,新疆维吾尔自治区,塔城地区,乌苏市', 3, 'wusu', '0992', '833000', 'W', '84.68258', '44.43729'),
(3304, 3301, '额敏', '额敏县', '中国,新疆维吾尔自治区,塔城地区,额敏县', 3, 'emin', '0901', '834600', 'E', '83.62872', '46.5284'),
(3305, 3301, '沙湾', '沙湾县', '中国,新疆维吾尔自治区,塔城地区,沙湾县', 3, 'shawan', '0993', '832100', 'S', '85.61932', '44.33144'),
(3306, 3301, '托里', '托里县', '中国,新疆维吾尔自治区,塔城地区,托里县', 3, 'tuoli', '0901', '834500', 'T', '83.60592', '45.93623'),
(3307, 3301, '裕民', '裕民县', '中国,新疆维吾尔自治区,塔城地区,裕民县', 3, 'yumin', '0901', '834800', 'Y', '82.99002', '46.20377'),
(3308, 3301, '和布克赛尔', '和布克赛尔蒙古自治县', '中国,新疆维吾尔自治区,塔城地区,和布克赛尔蒙古自治县', 3, 'hebukesaier', '0990', '834400', 'H', '85.72662', '46.79362'),
(3309, 3206, '阿勒泰', '阿勒泰地区', '中国,新疆维吾尔自治区,阿勒泰地区', 2, 'altay', '0906', '836500', 'A', '88.13963', '47.848393'),
(3310, 3309, '阿勒泰', '阿勒泰市', '中国,新疆维吾尔自治区,阿勒泰地区,阿勒泰市', 3, 'aletai', '0906', '836500', 'A', '88.13913', '47.8317'),
(3311, 3309, '布尔津', '布尔津县', '中国,新疆维吾尔自治区,阿勒泰地区,布尔津县', 3, 'buerjin', '0906', '836600', 'B', '86.85751', '47.70062'),
(3312, 3309, '富蕴', '富蕴县', '中国,新疆维吾尔自治区,阿勒泰地区,富蕴县', 3, 'fuyun', '0906', '836100', 'F', '89.52679', '46.99444'),
(3313, 3309, '福海', '福海县', '中国,新疆维吾尔自治区,阿勒泰地区,福海县', 3, 'fuhai', '0906', '836400', 'F', '87.49508', '47.11065'),
(3314, 3309, '哈巴河', '哈巴河县', '中国,新疆维吾尔自治区,阿勒泰地区,哈巴河县', 3, 'habahe', '0906', '836700', 'H', '86.42092', '48.06046'),
(3315, 3309, '青河', '青河县', '中国,新疆维吾尔自治区,阿勒泰地区,青河县', 3, 'qinghe', '0906', '836200', 'Q', '90.38305', '46.67382'),
(3316, 3309, '吉木乃', '吉木乃县', '中国,新疆维吾尔自治区,阿勒泰地区,吉木乃县', 3, 'jimunai', '0906', '836800', 'J', '85.87814', '47.43359'),
(3317, 3206, ' ', '直辖县级', '中国,新疆维吾尔自治区,直辖县级', 2, '', '', '', 'Z', '91.132212', '29.660361'),
(3318, 3317, '石河子', '石河子市', '中国,新疆维吾尔自治区,直辖县级,石河子市', 3, 'shihezi', '0993', '832000', 'S', '86.041075', '44.305886'),
(3319, 3317, '阿拉尔', '阿拉尔市', '中国,新疆维吾尔自治区,直辖县级,阿拉尔市', 3, 'aral', '0997', '843300', 'A', '81.285884', '40.541914'),
(3320, 3317, '图木舒克', '图木舒克市', '中国,新疆维吾尔自治区,直辖县级,图木舒克市', 3, 'tumxuk', '0998', '843806', 'T', '79.077978', '39.867316'),
(3321, 3317, '五家渠', '五家渠市', '中国,新疆维吾尔自治区,直辖县级,五家渠市', 3, 'wujiaqu', '0994', '831300', 'W', '87.526884', '44.167401'),
(3322, 3317, '北屯', '北屯市', '中国,新疆维吾尔自治区,直辖县级,北屯市', 3, 'beitun', '0906', '836000', 'B', '87.808456', '47.362308'),
(3323, 3317, '铁门关', '铁门关市', '中国,新疆维吾尔自治区,直辖县级,铁门关市', 3, 'tiemenguan', '0906', '836000', 'T', '86.194687', '41.811007'),
(3324, 3317, '双河', '双河市', '中国,新疆维吾尔自治区,直辖县级,双河市', 3, 'shuanghe', '0909', '833408', 'S', '91.132212', '29.660361'),
(3325, 0, '台湾', '台湾', '中国,台湾', 1, 'taiwan', '', '', 'T', '121.509062', '25.044332'),
(3326, 3325, '台北', '台北市', '中国,台湾,台北市', 2, 'taipei', '02', '1', 'T', '121.565170', '25.037798'),
(3327, 3326, '松山', '松山区', '中国,台湾,台北市,松山区', 3, 'songshan', '02', '105', 'S', '121.577206', '25.049698'),
(3328, 3326, '信义', '信义区', '中国,台湾,台北市,信义区', 3, 'xinyi', '02', '110', 'X', '121.751381', '25.129407'),
(3329, 3326, '大安', '大安区', '中国,台湾,台北市,大安区', 3, 'da\'an', '02', '106', 'D', '121.534648', '25.026406'),
(3330, 3326, '中山', '中山区', '中国,台湾,台北市,中山区', 3, 'zhongshan', '02', '104', 'Z', '121.533468', '25.064361'),
(3331, 3326, '中正', '中正区', '中国,台湾,台北市,中正区', 3, 'zhongzheng', '02', '100', 'Z', '121.518267', '25.032361'),
(3332, 3326, '大同', '大同区', '中国,台湾,台北市,大同区', 3, 'datong', '02', '103', 'D', '121.515514', '25.065986'),
(3333, 3326, '万华', '万华区', '中国,台湾,台北市,万华区', 3, 'wanhua', '02', '108', 'W', '121.499332', '25.031933'),
(3334, 3326, '文山', '文山区', '中国,台湾,台北市,文山区', 3, 'wenshan', '02', '116', 'W', '121.570458', '24.989786'),
(3335, 3326, '南港', '南港区', '中国,台湾,台北市,南港区', 3, 'nangang', '02', '115', 'N', '121.606858', '25.054656'),
(3336, 3326, '内湖', '内湖区', '中国,台湾,台北市,内湖区', 3, 'nahu', '02', '114', 'N', '121.588998', '25.069664'),
(3337, 3326, '士林', '士林区', '中国,台湾,台北市,士林区', 3, 'shilin', '02', '111', 'S', '121.519874', '25.092822'),
(3338, 3326, '北投', '北投区', '中国,台湾,台北市,北投区', 3, 'beitou', '02', '112', 'B', '121.501379', '25.132419'),
(3339, 3325, '高雄', '高雄市', '中国,台湾,高雄市', 2, 'kaohsiung', '07', '8', 'G', '120.311922', '22.620856'),
(3340, 3339, '盐埕', '盐埕区', '中国,台湾,高雄市,盐埕区', 3, 'yancheng', '07', '803', 'Y', '120.286795', '22.624666'),
(3341, 3339, '鼓山', '鼓山区', '中国,台湾,高雄市,鼓山区', 3, 'gushan', '07', '804', 'G', '120.281154', '22.636797'),
(3342, 3339, '左营', '左营区', '中国,台湾,高雄市,左营区', 3, 'zuoying', '07', '813', 'Z', '120.294958', '22.690124'),
(3343, 3339, '楠梓', '楠梓区', '中国,台湾,高雄市,楠梓区', 3, 'nanzi', '07', '811', NULL, '120.326314', '22.728401'),
(3344, 3339, '三民', '三民区', '中国,台湾,高雄市,三民区', 3, 'sanmin', '07', '807', 'S', '120.299622', '22.647695'),
(3345, 3339, '新兴', '新兴区', '中国,台湾,高雄市,新兴区', 3, 'xinxing', '07', '800', 'X', '120.309535', '22.631147'),
(3346, 3339, '前金', '前金区', '中国,台湾,高雄市,前金区', 3, 'qianjin', '07', '801', 'Q', '120.294159', '22.627421'),
(3347, 3339, '苓雅', '苓雅区', '中国,台湾,高雄市,苓雅区', 3, 'lingya', '07', '802', NULL, '120.312347', '22.621770'),
(3348, 3339, '前镇', '前镇区', '中国,台湾,高雄市,前镇区', 3, 'qianzhen', '07', '806', 'Q', '120.318583', '22.586425'),
(3349, 3339, '旗津', '旗津区', '中国,台湾,高雄市,旗津区', 3, 'qijin', '07', '805', 'Q', '120.284429', '22.590565'),
(3350, 3339, '小港', '小港区', '中国,台湾,高雄市,小港区', 3, 'xiaogang', '07', '812', 'X', '120.337970', '22.565354'),
(3351, 3339, '凤山', '凤山区', '中国,台湾,高雄市,凤山区', 3, 'fengshan', '07', '830', 'F', '120.356892', '22.626945'),
(3352, 3339, '林园', '林园区', '中国,台湾,高雄市,林园区', 3, 'linyuan', '07', '832', 'L', '120.395977', '22.501490'),
(3353, 3339, '大寮', '大寮区', '中国,台湾,高雄市,大寮区', 3, 'daliao', '07', '831', 'D', '120.395422', '22.605386'),
(3354, 3339, '大树', '大树区', '中国,台湾,高雄市,大树区', 3, 'dashu', '07', '840', 'D', '120.433095', '22.693394'),
(3355, 3339, '大社', '大社区', '中国,台湾,高雄市,大社区', 3, 'dashe', '07', '815', 'D', '120.346635', '22.729966'),
(3356, 3339, '仁武', '仁武区', '中国,台湾,高雄市,仁武区', 3, 'renwu', '07', '814', 'R', '120.347779', '22.701901'),
(3357, 3339, '鸟松', '鸟松区', '中国,台湾,高雄市,鸟松区', 3, 'niaosong', '07', '833', 'N', '120.364402', '22.659340'),
(3358, 3339, '冈山', '冈山区', '中国,台湾,高雄市,冈山区', 3, 'gangshan', '07', '820', 'G', '120.295820', '22.796762'),
(3359, 3339, '桥头', '桥头区', '中国,台湾,高雄市,桥头区', 3, 'qiaotou', '07', '825', 'Q', '120.305741', '22.757501'),
(3360, 3339, '燕巢', '燕巢区', '中国,台湾,高雄市,燕巢区', 3, 'yanchao', '07', '824', 'Y', '120.361956', '22.793370'),
(3361, 3339, '田寮', '田寮区', '中国,台湾,高雄市,田寮区', 3, 'tianliao', '07', '823', 'T', '120.359636', '22.869307'),
(3362, 3339, '阿莲', '阿莲区', '中国,台湾,高雄市,阿莲区', 3, 'alian', '07', '822', 'A', '120.327036', '22.883703'),
(3363, 3339, '路竹', '路竹区', '中国,台湾,高雄市,路竹区', 3, 'luzhu', '07', '821', 'L', '120.261828', '22.856851'),
(3364, 3339, '湖内', '湖内区', '中国,台湾,高雄市,湖内区', 3, 'huna', '07', '829', 'H', '120.211530', '22.908188'),
(3365, 3339, '茄萣', '茄萣区', '中国,台湾,高雄市,茄萣区', 3, 'qieding', '07', '852', NULL, '120.182815', '22.906556'),
(3366, 3339, '永安', '永安区', '中国,台湾,高雄市,永安区', 3, 'yong\'an', '07', '828', 'Y', '120.225308', '22.818580'),
(3367, 3339, '弥陀', '弥陀区', '中国,台湾,高雄市,弥陀区', 3, 'mituo', '07', '827', 'M', '120.247344', '22.782879'),
(3368, 3339, '梓官', '梓官区', '中国,台湾,高雄市,梓官区', 3, 'ziguan', '07', '826', NULL, '120.267322', '22.760475'),
(3369, 3339, '旗山', '旗山区', '中国,台湾,高雄市,旗山区', 3, 'qishan', '07', '842', 'Q', '120.483550', '22.888491'),
(3370, 3339, '美浓', '美浓区', '中国,台湾,高雄市,美浓区', 3, 'meinong', '07', '843', 'M', '120.541530', '22.897880'),
(3371, 3339, '六龟', '六龟区', '中国,台湾,高雄市,六龟区', 3, 'liugui', '07', '844', 'L', '120.633418', '22.997914'),
(3372, 3339, '甲仙', '甲仙区', '中国,台湾,高雄市,甲仙区', 3, 'jiaxian', '07', '847', 'J', '120.591185', '23.084688'),
(3373, 3339, '杉林', '杉林区', '中国,台湾,高雄市,杉林区', 3, 'shanlin', '07', '846', 'S', '120.538980', '22.970712'),
(3374, 3339, '内门', '内门区', '中国,台湾,高雄市,内门区', 3, 'namen', '07', '845', 'N', '120.462351', '22.943437'),
(3375, 3339, '茂林', '茂林区', '中国,台湾,高雄市,茂林区', 3, 'maolin', '07', '851', 'M', '120.663217', '22.886248'),
(3376, 3339, '桃源', '桃源区', '中国,台湾,高雄市,桃源区', 3, 'taoyuan', '07', '848', 'T', '120.760049', '23.159137'),
(3377, 3339, '那玛夏', '那玛夏区', '中国,台湾,高雄市,那玛夏区', 3, 'namaxia', '07', '849', 'N', '120.692799', '23.216964'),
(3378, 3325, '基隆', '基隆市', '中国,台湾,基隆市', 2, 'keelung', '02', '2', 'J', '121.746248', '25.130741'),
(3379, 3378, '中正', '中正区', '中国,台湾,基隆市,中正区', 3, 'zhongzheng', '02', '202', 'Z', '121.518267', '25.032361'),
(3380, 3378, '七堵', '七堵区', '中国,台湾,基隆市,七堵区', 3, 'qidu', '02', '206', 'Q', '121.713032', '25.095739'),
(3381, 3378, '暖暖', '暖暖区', '中国,台湾,基隆市,暖暖区', 3, 'nuannuan', '02', '205', 'N', '121.736102', '25.099777'),
(3382, 3378, '仁爱', '仁爱区', '中国,台湾,基隆市,仁爱区', 3, 'renai', '02', '200', 'R', '121.740940', '25.127526'),
(3383, 3378, '中山', '中山区', '中国,台湾,基隆市,中山区', 3, 'zhongshan', '02', '203', 'Z', '121.739132', '25.133991'),
(3384, 3378, '安乐', '安乐区', '中国,台湾,基隆市,安乐区', 3, 'anle', '02', '204', 'A', '121.723203', '25.120910'),
(3385, 3378, '信义', '信义区', '中国,台湾,基隆市,信义区', 3, 'xinyi', '02', '201', 'X', '121.751381', '25.129407'),
(3386, 3325, '台中', '台中市', '中国,台湾,台中市', 2, 'taichung', '04', '4', 'T', '120.679040', '24.138620'),
(3387, 3386, '中区', '中区', '中国,台湾,台中市,中区', 3, 'zhongqu', '04', '400', 'Z', '120.679510', '24.143830'),
(3388, 3386, '东区', '东区', '中国,台湾,台中市,东区', 3, 'dongqu', '04', '401', 'D', '120.704', '24.13662'),
(3389, 3386, '南区', '南区', '中国,台湾,台中市,南区', 3, 'nanqu', '04', '402', 'N', '120.188648', '22.960944'),
(3390, 3386, '西区', '西区', '中国,台湾,台中市,西区', 3, 'xiqu', '04', '403', 'X', '120.67104', '24.14138'),
(3391, 3386, '北区', '北区', '中国,台湾,台中市,北区', 3, 'beiqu', '04', '404', 'B', '120.682410', '24.166040'),
(3392, 3386, '西屯', '西屯区', '中国,台湾,台中市,西屯区', 3, 'xitun', '04', '407', 'X', '120.639820', '24.181340'),
(3393, 3386, '南屯', '南屯区', '中国,台湾,台中市,南屯区', 3, 'nantun', '04', '408', 'N', '120.643080', '24.138270'),
(3394, 3386, '北屯', '北屯区', '中国,台湾,台中市,北屯区', 3, 'beitun', '04', '406', 'B', '120.686250', '24.182220'),
(3395, 3386, '丰原', '丰原区', '中国,台湾,台中市,丰原区', 3, 'fengyuan', '04', '420', 'F', '120.718460', '24.242190'),
(3396, 3386, '东势', '东势区', '中国,台湾,台中市,东势区', 3, 'dongshi', '04', '423', 'D', '120.827770', '24.258610'),
(3397, 3386, '大甲', '大甲区', '中国,台湾,台中市,大甲区', 3, 'dajia', '04', '437', 'D', '120.622390', '24.348920'),
(3398, 3386, '清水', '清水区', '中国,台湾,台中市,清水区', 3, 'qingshui', '04', '436', 'Q', '120.559780', '24.268650'),
(3399, 3386, '沙鹿', '沙鹿区', '中国,台湾,台中市,沙鹿区', 3, 'shalu', '04', '433', 'S', '120.565700', '24.233480'),
(3400, 3386, '梧栖', '梧栖区', '中国,台湾,台中市,梧栖区', 3, 'wuqi', '04', '435', 'W', '120.531520', '24.254960'),
(3401, 3386, '后里', '后里区', '中国,台湾,台中市,后里区', 3, 'houli', '04', '421', 'H', '120.710710', '24.304910'),
(3402, 3386, '神冈', '神冈区', '中国,台湾,台中市,神冈区', 3, 'shengang', '04', '429', 'S', '120.661550', '24.257770'),
(3403, 3386, '潭子', '潭子区', '中国,台湾,台中市,潭子区', 3, 'tanzi', '04', '427', 'T', '120.705160', '24.209530'),
(3404, 3386, '大雅', '大雅区', '中国,台湾,台中市,大雅区', 3, 'daya', '04', '428', 'D', '120.647780', '24.229230'),
(3405, 3386, '新社', '新社区', '中国,台湾,台中市,新社区', 3, 'xinshe', '04', '426', 'X', '120.809500', '24.234140'),
(3406, 3386, '石冈', '石冈区', '中国,台湾,台中市,石冈区', 3, 'shigang', '04', '422', 'S', '120.780410', '24.274980'),
(3407, 3386, '外埔', '外埔区', '中国,台湾,台中市,外埔区', 3, 'waipu', '04', '438', 'W', '120.654370', '24.332010'),
(3408, 3386, '大安', '大安区', '中国,台湾,台中市,大安区', 3, 'da\'an', '04', '439', 'D', '120.58652', '24.34607'),
(3409, 3386, '乌日', '乌日区', '中国,台湾,台中市,乌日区', 3, 'wuri', '04', '414', 'W', '120.623810', '24.104500'),
(3410, 3386, '大肚', '大肚区', '中国,台湾,台中市,大肚区', 3, 'dadu', '04', '432', 'D', '120.540960', '24.153660'),
(3411, 3386, '龙井', '龙井区', '中国,台湾,台中市,龙井区', 3, 'longjing', '04', '434', 'L', '120.545940', '24.192710'),
(3412, 3386, '雾峰', '雾峰区', '中国,台湾,台中市,雾峰区', 3, 'wufeng', '04', '413', 'W', '120.700200', '24.061520'),
(3413, 3386, '太平', '太平区', '中国,台湾,台中市,太平区', 3, 'taiping', '04', '411', 'T', '120.718523', '24.126472'),
(3414, 3386, '大里', '大里区', '中国,台湾,台中市,大里区', 3, 'dali', '04', '412', 'D', '120.677860', '24.099390'),
(3415, 3386, '和平', '和平区', '中国,台湾,台中市,和平区', 3, 'heping', '04', '424', 'H', '120.88349', '24.17477'),
(3416, 3325, '台南', '台南市', '中国,台湾,台南市', 2, 'tainan', '06', '7', 'T', '120.279363', '23.172478'),
(3417, 3416, '东区', '东区', '中国,台湾,台南市,东区', 3, 'dongqu', '06', '701', 'D', '120.224198', '22.980072'),
(3418, 3416, '南区', '南区', '中国,台湾,台南市,南区', 3, 'nanqu', '06', '702', 'N', '120.188648', '22.960944'),
(3419, 3416, '北区', '北区', '中国,台湾,台南市,北区', 3, 'beiqu', '06', '704', 'B', '120.682410', '24.166040'),
(3420, 3416, '安南', '安南区', '中国,台湾,台南市,安南区', 3, 'annan', '06', '709', 'A', '120.184617', '23.047230'),
(3421, 3416, '安平', '安平区', '中国,台湾,台南市,安平区', 3, 'anping', '06', '708', 'A', '120.166810', '23.000763'),
(3422, 3416, '中西', '中西区', '中国,台湾,台南市,中西区', 3, 'zhongxi', '06', '700', 'Z', '120.205957', '22.992152'),
(3423, 3416, '新营', '新营区', '中国,台湾,台南市,新营区', 3, 'xinying', '06', '730', 'X', '120.316698', '23.310274'),
(3424, 3416, '盐水', '盐水区', '中国,台湾,台南市,盐水区', 3, 'yanshui', '06', '737', 'Y', '120.266398', '23.319828'),
(3425, 3416, '白河', '白河区', '中国,台湾,台南市,白河区', 3, 'baihe', '06', '732', 'B', '120.415810', '23.351221'),
(3426, 3416, '柳营', '柳营区', '中国,台湾,台南市,柳营区', 3, 'liuying', '06', '736', 'L', '120.311286', '23.278133'),
(3427, 3416, '后壁', '后壁区', '中国,台湾,台南市,后壁区', 3, 'houbi', '06', '731', 'H', '120.362726', '23.366721'),
(3428, 3416, '东山', '东山区', '中国,台湾,台南市,东山区', 3, 'dongshan', '06', '733', 'D', '120.403984', '23.326092'),
(3429, 3416, '麻豆', '麻豆区', '中国,台湾,台南市,麻豆区', 3, 'madou', '06', '721', 'M', '120.248179', '23.181680'),
(3430, 3416, '下营', '下营区', '中国,台湾,台南市,下营区', 3, 'xiaying', '06', '735', 'X', '120.264484', '23.235413'),
(3431, 3416, '六甲', '六甲区', '中国,台湾,台南市,六甲区', 3, 'liujia', '06', '734', 'L', '120.347600', '23.231931'),
(3432, 3416, '官田', '官田区', '中国,台湾,台南市,官田区', 3, 'guantian', '06', '720', 'G', '120.314374', '23.194652'),
(3433, 3416, '大内', '大内区', '中国,台湾,台南市,大内区', 3, 'dana', '06', '742', 'D', '120.348853', '23.119460'),
(3434, 3416, '佳里', '佳里区', '中国,台湾,台南市,佳里区', 3, 'jiali', '06', '722', 'J', '120.177211', '23.165121'),
(3435, 3416, '学甲', '学甲区', '中国,台湾,台南市,学甲区', 3, 'xuejia', '06', '726', 'X', '120.180255', '23.232348'),
(3436, 3416, '西港', '西港区', '中国,台湾,台南市,西港区', 3, 'xigang', '06', '723', 'X', '120.203618', '23.123057'),
(3437, 3416, '七股', '七股区', '中国,台湾,台南市,七股区', 3, 'qigu', '06', '724', 'Q', '120.140003', '23.140545'),
(3438, 3416, '将军', '将军区', '中国,台湾,台南市,将军区', 3, 'jiangjun', '06', '725', 'J', '120.156871', '23.199543'),
(3439, 3416, '北门', '北门区', '中国,台湾,台南市,北门区', 3, 'beimen', '06', '727', 'B', '120.125821', '23.267148'),
(3440, 3416, '新化', '新化区', '中国,台湾,台南市,新化区', 3, 'xinhua', '06', '712', 'X', '120.310807', '23.038533'),
(3441, 3416, '善化', '善化区', '中国,台湾,台南市,善化区', 3, 'shanhua', '06', '741', 'S', '120.296895', '23.132261'),
(3442, 3416, '新市', '新市区', '中国,台湾,台南市,新市区', 3, 'xinshi', '06', '744', 'X', '120.295138', '23.07897'),
(3443, 3416, '安定', '安定区', '中国,台湾,台南市,安定区', 3, 'anding', '06', '745', 'A', '120.237083', '23.121498'),
(3444, 3416, '山上', '山上区', '中国,台湾,台南市,山上区', 3, 'shanshang', '06', '743', 'S', '120.352908', '23.103223'),
(3445, 3416, '玉井', '玉井区', '中国,台湾,台南市,玉井区', 3, 'yujing', '06', '714', 'Y', '120.460110', '23.123859'),
(3446, 3416, '楠西', '楠西区', '中国,台湾,台南市,楠西区', 3, 'nanxi', '06', '715', NULL, '120.485396', '23.173454'),
(3447, 3416, '南化', '南化区', '中国,台湾,台南市,南化区', 3, 'nanhua', '06', '716', 'N', '120.477116', '23.042614'),
(3448, 3416, '左镇', '左镇区', '中国,台湾,台南市,左镇区', 3, 'zuozhen', '06', '713', 'Z', '120.407309', '23.057955'),
(3449, 3416, '仁德', '仁德区', '中国,台湾,台南市,仁德区', 3, 'rende', '06', '717', 'R', '120.251520', '22.972212'),
(3450, 3416, '归仁', '归仁区', '中国,台湾,台南市,归仁区', 3, 'guiren', '06', '711', 'G', '120.293791', '22.967081'),
(3451, 3416, '关庙', '关庙区', '中国,台湾,台南市,关庙区', 3, 'guanmiao', '06', '718', 'G', '120.327689', '22.962949'),
(3452, 3416, '龙崎', '龙崎区', '中国,台湾,台南市,龙崎区', 3, 'longqi', '06', '719', 'L', '120.360824', '22.965681'),
(3453, 3416, '永康', '永康区', '中国,台湾,台南市,永康区', 3, 'yongkang', '06', '710', 'Y', '120.257069', '23.026061'),
(3454, 3325, '新竹', '新竹市', '中国,台湾,新竹市', 2, 'hsinchu', '03', '3', 'X', '120.968798', '24.806738'),
(3455, 3454, '东区', '东区', '中国,台湾,新竹市,东区', 3, 'dongqu', '03', '300', 'D', '120.970239', '24.801337'),
(3456, 3454, '北区', '北区', '中国,台湾,新竹市,北区', 3, 'beiqu', '03', '', 'B', '120.682410', '24.166040'),
(3457, 3454, '香山', '香山区', '中国,台湾,新竹市,香山区', 3, 'xiangshan', '03', '', 'X', '120.956679', '24.768933'),
(3458, 3325, '嘉义', '嘉义市', '中国,台湾,嘉义市', 2, 'chiayi', '05', '6', 'J', '120.452538', '23.481568'),
(3459, 3458, '东区', '东区', '中国,台湾,嘉义市,东区', 3, 'dongqu', '05', '600', 'D', '120.458009', '23.486213'),
(3460, 3458, '西区', '西区', '中国,台湾,嘉义市,西区', 3, 'xiqu', '05', '600', 'X', '120.437493', '23.473029'),
(3461, 3325, '新北', '新北市', '中国,台湾,新北市', 2, 'newtaipei', '02', '2', 'X', '121.465746', '25.012366'),
(3462, 3461, '板桥', '板桥区', '中国,台湾,新北市,板桥区', 3, 'banqiao', '02', '220', 'B', '121.459084', '25.009578'),
(3463, 3461, '三重', '三重区', '中国,台湾,新北市,三重区', 3, 'sanzhong', '02', '241', 'S', '121.488102', '25.061486'),
(3464, 3461, '中和', '中和区', '中国,台湾,新北市,中和区', 3, 'zhonghe', '02', '235', 'Z', '121.498980', '24.999397'),
(3465, 3461, '永和', '永和区', '中国,台湾,新北市,永和区', 3, 'yonghe', '02', '234', 'Y', '121.513660', '25.007802'),
(3466, 3461, '新庄', '新庄区', '中国,台湾,新北市,新庄区', 3, 'xinzhuang', '02', '242', 'X', '121.450413', '25.035947'),
(3467, 3461, '新店', '新店区', '中国,台湾,新北市,新店区', 3, 'xindian', '02', '231', 'X', '121.541750', '24.967558'),
(3468, 3461, '树林', '树林区', '中国,台湾,新北市,树林区', 3, 'shulin', '02', '238', 'S', '121.420533', '24.990706'),
(3469, 3461, '莺歌', '莺歌区', '中国,台湾,新北市,莺歌区', 3, 'yingge', '02', '239', NULL, '121.354573', '24.955413'),
(3470, 3461, '三峡', '三峡区', '中国,台湾,新北市,三峡区', 3, 'sanxia', '02', '237', 'S', '121.368905', '24.934339'),
(3471, 3461, '淡水', '淡水区', '中国,台湾,新北市,淡水区', 3, 'danshui', '02', '251', 'D', '121.440915', '25.169452'),
(3472, 3461, '汐止', '汐止区', '中国,台湾,新北市,汐止区', 3, 'xizhi', '02', '221', 'X', '121.629470', '25.062999'),
(3473, 3461, '瑞芳', '瑞芳区', '中国,台湾,新北市,瑞芳区', 3, 'ruifang', '02', '224', 'R', '121.810061', '25.108895'),
(3474, 3461, '土城', '土城区', '中国,台湾,新北市,土城区', 3, 'tucheng', '02', '236', 'T', '121.443348', '24.972201'),
(3475, 3461, '芦洲', '芦洲区', '中国,台湾,新北市,芦洲区', 3, 'luzhou', '02', '247', 'L', '121.473700', '25.084923'),
(3476, 3461, '五股', '五股区', '中国,台湾,新北市,五股区', 3, 'wugu', '02', '248', 'W', '121.438156', '25.082743'),
(3477, 3461, '泰山', '泰山区', '中国,台湾,新北市,泰山区', 3, 'taishan', '02', '243', 'T', '121.430811', '25.058864'),
(3478, 3461, '林口', '林口区', '中国,台湾,新北市,林口区', 3, 'linkou', '02', '244', 'L', '121.391602', '25.077531'),
(3479, 3461, '深坑', '深坑区', '中国,台湾,新北市,深坑区', 3, 'shenkeng', '02', '222', 'S', '121.615670', '25.002329'),
(3480, 3461, '石碇', '石碇区', '中国,台湾,新北市,石碇区', 3, 'shiding', '02', '223', 'S', '121.658567', '24.991679'),
(3481, 3461, '坪林', '坪林区', '中国,台湾,新北市,坪林区', 3, 'pinglin', '02', '232', 'P', '121.711185', '24.937388'),
(3482, 3461, '三芝', '三芝区', '中国,台湾,新北市,三芝区', 3, 'sanzhi', '02', '252', 'S', '121.500866', '25.258047'),
(3483, 3461, '石门', '石门区', '中国,台湾,新北市,石门区', 3, 'shimen', '02', '253', 'S', '121.568491', '25.290412'),
(3484, 3461, '八里', '八里区', '中国,台湾,新北市,八里区', 3, 'bali', '02', '249', 'B', '121.398227', '25.146680'),
(3485, 3461, '平溪', '平溪区', '中国,台湾,新北市,平溪区', 3, 'pingxi', '02', '226', 'P', '121.738255', '25.025725'),
(3486, 3461, '双溪', '双溪区', '中国,台湾,新北市,双溪区', 3, 'shuangxi', '02', '227', 'S', '121.865676', '25.033409'),
(3487, 3461, '贡寮', '贡寮区', '中国,台湾,新北市,贡寮区', 3, 'gongliao', '02', '228', 'G', '121.908185', '25.022388'),
(3488, 3461, '金山', '金山区', '中国,台湾,新北市,金山区', 3, 'jinshan', '02', '208', 'J', '121.636427', '25.221883'),
(3489, 3461, '万里', '万里区', '中国,台湾,新北市,万里区', 3, 'wanli', '02', '207', 'W', '121.688687', '25.181234'),
(3490, 3461, '乌来', '乌来区', '中国,台湾,新北市,乌来区', 3, 'wulai', '02', '233', 'W', '121.550531', '24.865296'),
(3491, 3325, '宜兰', '宜兰县', '中国,台湾,宜兰县', 2, 'yilan', '03', '2', 'Y', '121.500000', '24.600000'),
(3492, 3491, '宜兰', '宜兰市', '中国,台湾,宜兰县,宜兰市', 3, 'yilan', '03', '260', 'Y', '121.753476', '24.751682'),
(3493, 3491, '罗东', '罗东镇', '中国,台湾,宜兰县,罗东镇', 3, 'luodong', '03', '265', 'L', '121.766919', '24.677033'),
(3494, 3491, '苏澳', '苏澳镇', '中国,台湾,宜兰县,苏澳镇', 3, 'suao', '03', '270', 'S', '121.842656', '24.594622'),
(3495, 3491, '头城', '头城镇', '中国,台湾,宜兰县,头城镇', 3, 'toucheng', '03', '261', 'T', '121.823307', '24.859217'),
(3496, 3491, '礁溪', '礁溪乡', '中国,台湾,宜兰县,礁溪乡', 3, 'jiaoxi', '03', '262', 'J', '121.766680', '24.822345'),
(3497, 3491, '壮围', '壮围乡', '中国,台湾,宜兰县,壮围乡', 3, 'zhuangwei', '03', '263', 'Z', '121.781619', '24.744949'),
(3498, 3491, '员山', '员山乡', '中国,台湾,宜兰县,员山乡', 3, 'yuanshan', '03', '264', 'Y', '121.721733', '24.741771'),
(3499, 3491, '冬山', '冬山乡', '中国,台湾,宜兰县,冬山乡', 3, 'dongshan', '03', '269', 'D', '121.792280', '24.634514'),
(3500, 3491, '五结', '五结乡', '中国,台湾,宜兰县,五结乡', 3, 'wujie', '03', '268', 'W', '121.798297', '24.684640'),
(3501, 3491, '三星', '三星乡', '中国,台湾,宜兰县,三星乡', 3, 'sanxing', '03', '266', 'S', '121.003418', '23.775291'),
(3502, 3491, '大同', '大同乡', '中国,台湾,宜兰县,大同乡', 3, 'datong', '03', '267', 'D', '121.605557', '24.675997'),
(3503, 3491, '南澳', '南澳乡', '中国,台湾,宜兰县,南澳乡', 3, 'nanao', '03', '272', 'N', '121.799810', '24.465393'),
(3504, 3325, '桃园', '桃园县', '中国,台湾,桃园县', 2, 'taoyuan', '03', '3', 'T', '121.083000', '25.000000'),
(3505, 3504, '桃园', '桃园市', '中国,台湾,桃园县,桃园市', 3, 'taoyuan', '03', '330', 'T', '121.301337', '24.993777'),
(3506, 3504, '中坜', '中坜市', '中国,台湾,桃园县,中坜市', 3, 'zhongli', '03', '320', 'Z', '121.224926', '24.965353'),
(3507, 3504, '平镇', '平镇市', '中国,台湾,桃园县,平镇市', 3, 'pingzhen', '03', '324', 'P', '121.218359', '24.945752'),
(3508, 3504, '八德', '八德市', '中国,台湾,桃园县,八德市', 3, 'bade', '03', '334', 'B', '121.284655', '24.928651'),
(3509, 3504, '杨梅', '杨梅市', '中国,台湾,桃园县,杨梅市', 3, 'yangmei', '03', '326', 'Y', '121.145873', '24.907575'),
(3510, 3504, '芦竹', '芦竹市', '中国,台湾,桃园县,芦竹市', 3, 'luzhu', '03', '338', 'L', '121.292064', '25.045392'),
(3511, 3504, '大溪', '大溪镇', '中国,台湾,桃园县,大溪镇', 3, 'daxi', '03', '335', 'D', '121.286962', '24.880584'),
(3512, 3504, '大园', '大园乡', '中国,台湾,桃园县,大园乡', 3, 'dayuan', '03', '337', 'D', '121.196292', '25.064471'),
(3513, 3504, '龟山', '龟山乡', '中国,台湾,桃园县,龟山乡', 3, 'guishan', '03', '333', 'G', '121.337767', '24.992517'),
(3514, 3504, '龙潭', '龙潭乡', '中国,台湾,桃园县,龙潭乡', 3, 'longtan', '03', '325', 'L', '121.216392', '24.863851'),
(3515, 3504, '新屋', '新屋乡', '中国,台湾,桃园县,新屋乡', 3, 'xinwu', '03', '327', 'X', '121.105801', '24.972203'),
(3516, 3504, '观音', '观音乡', '中国,台湾,桃园县,观音乡', 3, 'guanyin', '03', '328', 'G', '121.077519', '25.033303'),
(3517, 3504, '复兴', '复兴乡', '中国,台湾,桃园县,复兴乡', 3, 'fuxing', '03', '336', 'F', '121.352613', '24.820908'),
(3518, 3325, '新竹', '新竹县', '中国,台湾,新竹县', 2, 'hsinchu', '03', '3', 'X', '121.160000', '24.600000'),
(3519, 3518, '竹北', '竹北市', '中国,台湾,新竹县,竹北市', 3, 'zhubei', '03', '302', 'Z', '121.004317', '24.839652'),
(3520, 3518, '竹东', '竹东镇', '中国,台湾,新竹县,竹东镇', 3, 'zhudong', '03', '310', 'Z', '121.086418', '24.733601'),
(3521, 3518, '新埔', '新埔镇', '中国,台湾,新竹县,新埔镇', 3, 'xinpu', '03', '305', 'X', '121.072804', '24.824820'),
(3522, 3518, '关西', '关西镇', '中国,台湾,新竹县,关西镇', 3, 'guanxi', '03', '306', 'G', '121.177301', '24.788842'),
(3523, 3518, '湖口', '湖口乡', '中国,台湾,新竹县,湖口乡', 3, 'hukou', '03', '303', 'H', '121.043691', '24.903943'),
(3524, 3518, '新丰', '新丰乡', '中国,台湾,新竹县,新丰乡', 3, 'xinfeng', '03', '304', 'X', '120.983006', '24.899600'),
(3525, 3518, '芎林', '芎林乡', '中国,台湾,新竹县,芎林乡', 3, 'xionglin', '03', '307', NULL, '121.076924', '24.774436'),
(3526, 3518, '横山', '横山乡', '中国,台湾,新竹县,横山乡', 3, 'hengshan', '03', '312', 'H', '121.116244', '24.720807'),
(3527, 3518, '北埔', '北埔乡', '中国,台湾,新竹县,北埔乡', 3, 'beipu', '03', '314', 'B', '121.053156', '24.697126'),
(3528, 3518, '宝山', '宝山乡', '中国,台湾,新竹县,宝山乡', 3, 'baoshan', '03', '308', 'B', '120.985752', '24.760975'),
(3529, 3518, '峨眉', '峨眉乡', '中国,台湾,新竹县,峨眉乡', 3, 'emei', '03', '315', 'E', '121.015291', '24.686127'),
(3530, 3518, '尖石', '尖石乡', '中国,台湾,新竹县,尖石乡', 3, 'jianshi', '03', '313', 'J', '121.197802', '24.704360'),
(3531, 3518, '五峰', '五峰乡', '中国,台湾,新竹县,五峰乡', 3, 'wufeng', '03', '311', 'W', '121.003418', '23.775291'),
(3532, 3325, '苗栗', '苗栗县', '中国,台湾,苗栗县', 2, 'miaoli', '037', '3', 'M', '120.750000', '24.500000'),
(3533, 3532, '苗栗', '苗栗市', '中国,台湾,苗栗县,苗栗市', 3, 'miaoli', '037', '360', 'M', '120.818869', '24.561472'),
(3534, 3532, '苑里', '苑里镇', '中国,台湾,苗栗县,苑里镇', 3, 'yuanli', '037', '358', 'Y', '120.648907', '24.441750'),
(3535, 3532, '通霄', '通霄镇', '中国,台湾,苗栗县,通霄镇', 3, 'tongxiao', '037', '357', 'T', '120.676700', '24.489087'),
(3536, 3532, '竹南', '竹南镇', '中国,台湾,苗栗县,竹南镇', 3, 'zhunan', '037', '350', 'Z', '120.872641', '24.685513'),
(3537, 3532, '头份', '头份镇', '中国,台湾,苗栗县,头份镇', 3, 'toufen', '037', '351', 'T', '120.895188', '24.687993'),
(3538, 3532, '后龙', '后龙镇', '中国,台湾,苗栗县,后龙镇', 3, 'houlong', '037', '356', 'H', '120.786480', '24.612617'),
(3539, 3532, '卓兰', '卓兰镇', '中国,台湾,苗栗县,卓兰镇', 3, 'zhuolan', '037', '369', 'Z', '120.823441', '24.309509'),
(3540, 3532, '大湖', '大湖乡', '中国,台湾,苗栗县,大湖乡', 3, 'dahu', '037', '364', 'D', '120.863641', '24.422547'),
(3541, 3532, '公馆', '公馆乡', '中国,台湾,苗栗县,公馆乡', 3, 'gongguan', '037', '363', 'G', '120.822983', '24.499108'),
(3542, 3532, '铜锣', '铜锣乡', '中国,台湾,苗栗县,铜锣乡', 3, 'tongluo', '037', '366', 'T', '121.003418', '23.775291'),
(3543, 3532, '南庄', '南庄乡', '中国,台湾,苗栗县,南庄乡', 3, 'nanzhuang', '037', '353', 'N', '120.994957', '24.596835'),
(3544, 3532, '头屋', '头屋乡', '中国,台湾,苗栗县,头屋乡', 3, 'touwu', '037', '362', 'T', '120.846616', '24.574249'),
(3545, 3532, '三义', '三义乡', '中国,台湾,苗栗县,三义乡', 3, 'sanyi', '037', '367', 'S', '120.742340', '24.350270'),
(3546, 3532, '西湖', '西湖乡', '中国,台湾,苗栗县,西湖乡', 3, 'xihu', '037', '368', 'X', '121.003418', '23.775291'),
(3547, 3532, '造桥', '造桥乡', '中国,台湾,苗栗县,造桥乡', 3, 'zaoqiao', '037', '361', 'Z', '120.862399', '24.637537'),
(3548, 3532, '三湾', '三湾乡', '中国,台湾,苗栗县,三湾乡', 3, 'sanwan', '037', '352', 'S', '120.951484', '24.651051'),
(3549, 3532, '狮潭', '狮潭乡', '中国,台湾,苗栗县,狮潭乡', 3, 'shitan', '037', '354', 'S', '120.918024', '24.540004'),
(3550, 3532, '泰安', '泰安乡', '中国,台湾,苗栗县,泰安乡', 3, 'tai\'an', '037', '365', 'T', '120.904441', '24.442600'),
(3551, 3325, '彰化', '彰化县', '中国,台湾,彰化县', 2, 'changhua', '04', '5', 'Z', '120.416000', '24.000000'),
(3552, 3551, '彰化市', '彰化市', '中国,台湾,彰化县,彰化市', 3, 'zhanghuashi', '04', '500', 'Z', '120.542294', '24.080911'),
(3553, 3551, '鹿港', '鹿港镇', '中国,台湾,彰化县,鹿港镇', 3, 'lugang', '04', '505', 'L', '120.435392', '24.056937'),
(3554, 3551, '和美', '和美镇', '中国,台湾,彰化县,和美镇', 3, 'hemei', '04', '508', 'H', '120.500265', '24.110904'),
(3555, 3551, '线西', '线西乡', '中国,台湾,彰化县,线西乡', 3, 'xianxi', '04', '507', 'X', '120.465921', '24.128653'),
(3556, 3551, '伸港', '伸港乡', '中国,台湾,彰化县,伸港乡', 3, 'shengang', '04', '509', 'S', '120.484224', '24.146081'),
(3557, 3551, '福兴', '福兴乡', '中国,台湾,彰化县,福兴乡', 3, 'fuxing', '04', '506', 'F', '120.443682', '24.047883'),
(3558, 3551, '秀水', '秀水乡', '中国,台湾,彰化县,秀水乡', 3, 'xiushui', '04', '504', 'X', '120.502658', '24.035267'),
(3559, 3551, '花坛', '花坛乡', '中国,台湾,彰化县,花坛乡', 3, 'huatan', '04', '503', 'H', '120.538403', '24.029399'),
(3560, 3551, '芬园', '芬园乡', '中国,台湾,彰化县,芬园乡', 3, 'fenyuan', '04', '502', 'F', '120.629024', '24.013658'),
(3561, 3551, '员林', '员林镇', '中国,台湾,彰化县,员林镇', 3, 'yuanlin', '04', '510', 'Y', '120.574625', '23.958999'),
(3562, 3551, '溪湖', '溪湖镇', '中国,台湾,彰化县,溪湖镇', 3, 'xihu', '04', '514', 'X', '120.479144', '23.962315'),
(3563, 3551, '田中', '田中镇', '中国,台湾,彰化县,田中镇', 3, 'tianzhong', '04', '520', 'T', '120.580629', '23.861718'),
(3564, 3551, '大村', '大村乡', '中国,台湾,彰化县,大村乡', 3, 'dacun', '04', '515', 'D', '120.540713', '23.993726'),
(3565, 3551, '埔盐', '埔盐乡', '中国,台湾,彰化县,埔盐乡', 3, 'puyan', '04', '516', 'P', '120.464044', '24.000346'),
(3566, 3551, '埔心', '埔心乡', '中国,台湾,彰化县,埔心乡', 3, 'puxin', '04', '513', 'P', '120.543568', '23.953019'),
(3567, 3551, '永靖', '永靖乡', '中国,台湾,彰化县,永靖乡', 3, 'yongjing', '04', '512', 'Y', '120.547775', '23.924703'),
(3568, 3551, '社头', '社头乡', '中国,台湾,彰化县,社头乡', 3, 'shetou', '04', '511', 'S', '120.582681', '23.896686'),
(3569, 3551, '二水', '二水乡', '中国,台湾,彰化县,二水乡', 3, 'ershui', '04', '530', 'E', '120.618788', '23.806995'),
(3570, 3551, '北斗', '北斗镇', '中国,台湾,彰化县,北斗镇', 3, 'beidou', '04', '521', 'B', '120.520449', '23.870911'),
(3571, 3551, '二林', '二林镇', '中国,台湾,彰化县,二林镇', 3, 'erlin', '04', '526', 'E', '120.374468', '23.899751'),
(3572, 3551, '田尾', '田尾乡', '中国,台湾,彰化县,田尾乡', 3, 'tianwei', '04', '522', 'T', '120.524717', '23.890735'),
(3573, 3551, '埤头', '埤头乡', '中国,台湾,彰化县,埤头乡', 3, 'pitou', '04', '523', NULL, '120.462599', '23.891324'),
(3574, 3551, '芳苑', '芳苑乡', '中国,台湾,彰化县,芳苑乡', 3, 'fangyuan', '04', '528', 'F', '120.320329', '23.924222'),
(3575, 3551, '大城', '大城乡', '中国,台湾,彰化县,大城乡', 3, 'dacheng', '04', '527', 'D', '120.320934', '23.852382'),
(3576, 3551, '竹塘', '竹塘乡', '中国,台湾,彰化县,竹塘乡', 3, 'zhutang', '04', '525', 'Z', '120.427499', '23.860112'),
(3577, 3551, '溪州', '溪州乡', '中国,台湾,彰化县,溪州乡', 3, 'xizhou', '04', '524', 'X', '120.498706', '23.851229'),
(3578, 3325, '南投', '南投县', '中国,台湾,南投县', 2, 'nantou', '049', '5', 'N', '120.830000', '23.830000'),
(3579, 3578, '南投市', '南投市', '中国,台湾,南投县,南投市', 3, 'nantoushi', '049', '540', 'N', '120.683706', '23.909956'),
(3580, 3578, '埔里', '埔里镇', '中国,台湾,南投县,埔里镇', 3, 'puli', '049', '545', 'P', '120.964648', '23.964789'),
(3581, 3578, '草屯', '草屯镇', '中国,台湾,南投县,草屯镇', 3, 'caotun', '049', '542', 'C', '120.680343', '23.973947'),
(3582, 3578, '竹山', '竹山镇', '中国,台湾,南投县,竹山镇', 3, 'zhushan', '049', '557', 'Z', '120.672007', '23.757655'),
(3583, 3578, '集集', '集集镇', '中国,台湾,南投县,集集镇', 3, 'jiji', '049', '552', 'J', '120.783673', '23.829013'),
(3584, 3578, '名间', '名间乡', '中国,台湾,南投县,名间乡', 3, 'mingjian', '049', '551', 'M', '120.702797', '23.838427'),
(3585, 3578, '鹿谷', '鹿谷乡', '中国,台湾,南投县,鹿谷乡', 3, 'lugu', '049', '558', 'L', '120.752796', '23.744471'),
(3586, 3578, '中寮', '中寮乡', '中国,台湾,南投县,中寮乡', 3, 'zhongliao', '049', '541', 'Z', '120.766654', '23.878935'),
(3587, 3578, '鱼池', '鱼池乡', '中国,台湾,南投县,鱼池乡', 3, 'yuchi', '049', '555', 'Y', '120.936060', '23.896356'),
(3588, 3578, '国姓', '国姓乡', '中国,台湾,南投县,国姓乡', 3, 'guoxing', '049', '544', 'G', '120.858541', '24.042298'),
(3589, 3578, '水里', '水里乡', '中国,台湾,南投县,水里乡', 3, 'shuili', '049', '553', 'S', '120.855912', '23.812086'),
(3590, 3578, '信义', '信义乡', '中国,台湾,南投县,信义乡', 3, 'xinyi', '049', '556', 'X', '120.855257', '23.699922'),
(3591, 3578, '仁爱', '仁爱乡', '中国,台湾,南投县,仁爱乡', 3, 'renai', '049', '546', 'R', '121.133543', '24.024429'),
(3592, 3325, '云林', '云林县', '中国,台湾,云林县', 2, 'yunlin', '05', '6', 'Y', '120.250000', '23.750000'),
(3593, 3592, '斗六', '斗六市', '中国,台湾,云林县,斗六市', 3, 'douliu', '05', '640', 'D', '120.527360', '23.697651'),
(3594, 3592, '斗南', '斗南镇', '中国,台湾,云林县,斗南镇', 3, 'dounan', '05', '630', 'D', '120.479075', '23.679731'),
(3595, 3592, '虎尾', '虎尾镇', '中国,台湾,云林县,虎尾镇', 3, 'huwei', '05', '632', 'H', '120.445339', '23.708182'),
(3596, 3592, '西螺', '西螺镇', '中国,台湾,云林县,西螺镇', 3, 'xiluo', '05', '648', 'X', '120.466010', '23.797984'),
(3597, 3592, '土库', '土库镇', '中国,台湾,云林县,土库镇', 3, 'tuku', '05', '633', 'T', '120.392572', '23.677822'),
(3598, 3592, '北港', '北港镇', '中国,台湾,云林县,北港镇', 3, 'beigang', '05', '651', 'B', '120.302393', '23.575525'),
(3599, 3592, '古坑', '古坑乡', '中国,台湾,云林县,古坑乡', 3, 'gukeng', '05', '646', 'G', '120.562043', '23.642568'),
(3600, 3592, '大埤', '大埤乡', '中国,台湾,云林县,大埤乡', 3, 'dapi', '05', '631', 'D', '120.430516', '23.645908'),
(3601, 3592, '莿桐', '莿桐乡', '中国,台湾,云林县,莿桐乡', 3, 'citong', '05', '647', NULL, '120.502374', '23.760784'),
(3602, 3592, '林内', '林内乡', '中国,台湾,云林县,林内乡', 3, 'linna', '05', '643', 'L', '120.611365', '23.758712'),
(3603, 3592, '二仑', '二仑乡', '中国,台湾,云林县,二仑乡', 3, 'erlun', '05', '649', 'E', '120.415077', '23.771273'),
(3604, 3592, '仑背', '仑背乡', '中国,台湾,云林县,仑背乡', 3, 'lunbei', '05', '637', 'L', '120.353895', '23.758840'),
(3605, 3592, '麦寮', '麦寮乡', '中国,台湾,云林县,麦寮乡', 3, 'mailiao', '05', '638', 'M', '120.252043', '23.753841'),
(3606, 3592, '东势', '东势乡', '中国,台湾,云林县,东势乡', 3, 'dongshi', '05', '635', 'D', '120.252672', '23.674679'),
(3607, 3592, '褒忠', '褒忠乡', '中国,台湾,云林县,褒忠乡', 3, 'baozhong', '05', '634', 'B', '120.310488', '23.694245'),
(3608, 3592, '台西', '台西乡', '中国,台湾,云林县,台西乡', 3, 'taixi', '05', '636', 'T', '120.196141', '23.702819'),
(3609, 3592, '元长', '元长乡', '中国,台湾,云林县,元长乡', 3, 'yuanchang', '05', '655', 'Y', '120.315124', '23.649458'),
(3610, 3592, '四湖', '四湖乡', '中国,台湾,云林县,四湖乡', 3, 'sihu', '05', '654', 'S', '120.225741', '23.637740'),
(3611, 3592, '口湖', '口湖乡', '中国,台湾,云林县,口湖乡', 3, 'kouhu', '05', '653', 'K', '120.185370', '23.582406'),
(3612, 3592, '水林', '水林乡', '中国,台湾,云林县,水林乡', 3, 'shuilin', '05', '652', 'S', '120.245948', '23.572634'),
(3613, 3325, '嘉义', '嘉义县', '中国,台湾,嘉义县', 2, 'chiayi', '05', '6', 'J', '120.300000', '23.500000'),
(3614, 3613, '太保', '太保市', '中国,台湾,嘉义县,太保市', 3, 'taibao', '05', '612', 'T', '120.332876', '23.459647'),
(3615, 3613, '朴子', '朴子市', '中国,台湾,嘉义县,朴子市', 3, 'puzi', '05', '613', 'P', '120.247014', '23.464961'),
(3616, 3613, '布袋', '布袋镇', '中国,台湾,嘉义县,布袋镇', 3, 'budai', '05', '625', 'B', '120.166936', '23.377979'),
(3617, 3613, '大林', '大林镇', '中国,台湾,嘉义县,大林镇', 3, 'dalin', '05', '622', 'D', '120.471336', '23.603815'),
(3618, 3613, '民雄', '民雄乡', '中国,台湾,嘉义县,民雄乡', 3, 'minxiong', '05', '621', 'M', '120.428577', '23.551456'),
(3619, 3613, '溪口', '溪口乡', '中国,台湾,嘉义县,溪口乡', 3, 'xikou', '05', '623', 'X', '120.393822', '23.602223'),
(3620, 3613, '新港', '新港乡', '中国,台湾,嘉义县,新港乡', 3, 'xingang', '05', '616', 'X', '120.347647', '23.551806'),
(3621, 3613, '六脚', '六脚乡', '中国,台湾,嘉义县,六脚乡', 3, 'liujiao', '05', '615', 'L', '120.291083', '23.493942'),
(3622, 3613, '东石', '东石乡', '中国,台湾,嘉义县,东石乡', 3, 'dongshi', '05', '614', 'D', '120.153822', '23.459235'),
(3623, 3613, '义竹', '义竹乡', '中国,台湾,嘉义县,义竹乡', 3, 'yizhu', '05', '624', 'Y', '120.243423', '23.336277'),
(3624, 3613, '鹿草', '鹿草乡', '中国,台湾,嘉义县,鹿草乡', 3, 'lucao', '05', '611', 'L', '120.308370', '23.410784'),
(3625, 3613, '水上', '水上乡', '中国,台湾,嘉义县,水上乡', 3, 'shuishang', '05', '608', 'S', '120.397936', '23.428104'),
(3626, 3613, '中埔', '中埔乡', '中国,台湾,嘉义县,中埔乡', 3, 'zhongpu', '05', '606', 'Z', '120.522948', '23.425148'),
(3627, 3613, '竹崎', '竹崎乡', '中国,台湾,嘉义县,竹崎乡', 3, 'zhuqi', '05', '604', 'Z', '120.551466', '23.523184'),
(3628, 3613, '梅山', '梅山乡', '中国,台湾,嘉义县,梅山乡', 3, 'meishan', '05', '603', 'M', '120.557192', '23.584915'),
(3629, 3613, '番路', '番路乡', '中国,台湾,嘉义县,番路乡', 3, 'fanlu', '05', '602', 'F', '120.555043', '23.465222'),
(3630, 3613, '大埔', '大埔乡', '中国,台湾,嘉义县,大埔乡', 3, 'dapu', '05', '607', 'D', '120.593795', '23.296715'),
(3631, 3613, '阿里山', '阿里山乡', '中国,台湾,嘉义县,阿里山乡', 3, 'alishan', '05', '605', 'A', '120.732520', '23.467950'),
(3632, 3325, '屏东', '屏东县', '中国,台湾,屏东县', 2, 'pingtung', '08', '9', 'P', '120.487928', '22.682802'),
(3633, 3632, '屏东', '屏东市', '中国,台湾,屏东县,屏东市', 3, 'pingdong', '08', '900', 'P', '120.488465', '22.669723'),
(3634, 3632, '潮州', '潮州镇', '中国,台湾,屏东县,潮州镇', 3, 'chaozhou', '08', '920', 'C', '120.542854', '22.550536'),
(3635, 3632, '东港', '东港镇', '中国,台湾,屏东县,东港镇', 3, 'donggang', '08', '928', 'D', '120.454489', '22.466626'),
(3636, 3632, '恒春', '恒春镇', '中国,台湾,屏东县,恒春镇', 3, 'hengchun', '08', '946', 'H', '120.745451', '22.002373'),
(3637, 3632, '万丹', '万丹乡', '中国,台湾,屏东县,万丹乡', 3, 'wandan', '08', '913', 'W', '120.484533', '22.589839'),
(3638, 3632, '长治', '长治乡', '中国,台湾,屏东县,长治乡', 3, 'changzhi', '08', '908', 'C', '120.527614', '22.677062'),
(3639, 3632, '麟洛', '麟洛乡', '中国,台湾,屏东县,麟洛乡', 3, 'linluo', '08', '909', NULL, '120.527283', '22.650604'),
(3640, 3632, '九如', '九如乡', '中国,台湾,屏东县,九如乡', 3, 'jiuru', '08', '904', 'J', '120.490142', '22.739778'),
(3641, 3632, '里港', '里港乡', '中国,台湾,屏东县,里港乡', 3, 'ligang', '08', '905', 'L', '120.494490', '22.779220'),
(3642, 3632, '盐埔', '盐埔乡', '中国,台湾,屏东县,盐埔乡', 3, 'yanpu', '08', '907', 'Y', '120.572849', '22.754783'),
(3643, 3632, '高树', '高树乡', '中国,台湾,屏东县,高树乡', 3, 'gaoshu', '08', '906', 'G', '120.600214', '22.826789'),
(3644, 3632, '万峦', '万峦乡', '中国,台湾,屏东县,万峦乡', 3, 'wanluan', '08', '923', 'W', '120.566477', '22.571965'),
(3645, 3632, '内埔', '内埔乡', '中国,台湾,屏东县,内埔乡', 3, 'napu', '08', '912', 'N', '120.566865', '22.611967'),
(3646, 3632, '竹田', '竹田乡', '中国,台湾,屏东县,竹田乡', 3, 'zhutian', '08', '911', 'Z', '120.544038', '22.584678'),
(3647, 3632, '新埤', '新埤乡', '中国,台湾,屏东县,新埤乡', 3, 'xinpi', '08', '925', 'X', '120.549546', '22.469976'),
(3648, 3632, '枋寮', '枋寮乡', '中国,台湾,屏东县,枋寮乡', 3, 'fangliao', '08', '940', NULL, '120.593438', '22.365560'),
(3649, 3632, '新园', '新园乡', '中国,台湾,屏东县,新园乡', 3, 'xinyuan', '08', '932', 'X', '120.461739', '22.543952'),
(3650, 3632, '崁顶', '崁顶乡', '中国,台湾,屏东县,崁顶乡', 3, 'kanding', '08', '924', NULL, '120.514571', '22.514795'),
(3651, 3632, '林边', '林边乡', '中国,台湾,屏东县,林边乡', 3, 'linbian', '08', '927', 'L', '120.515091', '22.434015'),
(3652, 3632, '南州', '南州乡', '中国,台湾,屏东县,南州乡', 3, 'nanzhou', '08', '926', 'N', '120.509808', '22.490192'),
(3653, 3632, '佳冬', '佳冬乡', '中国,台湾,屏东县,佳冬乡', 3, 'jiadong', '08', '931', 'J', '120.551544', '22.417653'),
(3654, 3632, '琉球', '琉球乡', '中国,台湾,屏东县,琉球乡', 3, 'liuqiu', '08', '929', 'L', '120.369020', '22.342366'),
(3655, 3632, '车城', '车城乡', '中国,台湾,屏东县,车城乡', 3, 'checheng', '08', '944', 'C', '120.710979', '22.072077'),
(3656, 3632, '满州', '满州乡', '中国,台湾,屏东县,满州乡', 3, 'manzhou', '08', '947', 'M', '120.838843', '22.020853'),
(3657, 3632, '枋山', '枋山乡', '中国,台湾,屏东县,枋山乡', 3, 'fangshan', '08', '941', NULL, '120.656356', '22.260338'),
(3658, 3632, '三地门', '三地门乡', '中国,台湾,屏东县,三地门乡', 3, 'sandimen', '08', '901', 'S', '120.654486', '22.713877'),
(3659, 3632, '雾台', '雾台乡', '中国,台湾,屏东县,雾台乡', 3, 'wutai', '08', '902', 'W', '120.732318', '22.744877'),
(3660, 3632, '玛家', '玛家乡', '中国,台湾,屏东县,玛家乡', 3, 'majia', '08', '903', 'M', '120.644130', '22.706718'),
(3661, 3632, '泰武', '泰武乡', '中国,台湾,屏东县,泰武乡', 3, 'taiwu', '08', '921', 'T', '120.632856', '22.591819'),
(3662, 3632, '来义', '来义乡', '中国,台湾,屏东县,来义乡', 3, 'laiyi', '08', '922', 'L', '120.633601', '22.525866'),
(3663, 3632, '春日', '春日乡', '中国,台湾,屏东县,春日乡', 3, 'chunri', '08', '942', 'C', '120.628793', '22.370672'),
(3664, 3632, '狮子', '狮子乡', '中国,台湾,屏东县,狮子乡', 3, 'shizi', '08', '943', 'S', '120.704617', '22.201917'),
(3665, 3632, '牡丹', '牡丹乡', '中国,台湾,屏东县,牡丹乡', 3, 'mudan', '08', '945', 'M', '120.770108', '22.125687'),
(3666, 3325, '台东', '台东县', '中国,台湾,台东县', 2, 'taitung', '089', '9', 'T', '120.916000', '23.000000'),
(3667, 3666, '台东', '台东市', '中国,台湾,台东县,台东市', 3, 'taidong', '089', '950', 'T', '121.145654', '22.756045'),
(3668, 3666, '成功', '成功镇', '中国,台湾,台东县,成功镇', 3, 'chenggong', '089', '961', 'C', '121.379571', '23.100223'),
(3669, 3666, '关山', '关山镇', '中国,台湾,台东县,关山镇', 3, 'guanshan', '089', '956', 'G', '121.163134', '23.047450'),
(3670, 3666, '卑南', '卑南乡', '中国,台湾,台东县,卑南乡', 3, 'beinan', '089', '954', 'B', '121.083503', '22.786039'),
(3671, 3666, '鹿野', '鹿野乡', '中国,台湾,台东县,鹿野乡', 3, 'luye', '089', '955', 'L', '121.135982', '22.913951'),
(3672, 3666, '池上', '池上乡', '中国,台湾,台东县,池上乡', 3, 'chishang', '089', '958', 'C', '121.215139', '23.122393'),
(3673, 3666, '东河', '东河乡', '中国,台湾,台东县,东河乡', 3, 'donghe', '089', '959', 'D', '121.300334', '22.969934'),
(3674, 3666, '长滨', '长滨乡', '中国,台湾,台东县,长滨乡', 3, 'changbin', '089', '962', 'C', '121.451522', '23.315041'),
(3675, 3666, '太麻里', '太麻里乡', '中国,台湾,台东县,太麻里乡', 3, 'taimali', '089', '963', 'T', '121.007394', '22.615383'),
(3676, 3666, '大武', '大武乡', '中国,台湾,台东县,大武乡', 3, 'dawu', '089', '965', 'D', '120.889938', '22.339919'),
(3677, 3666, '绿岛', '绿岛乡', '中国,台湾,台东县,绿岛乡', 3, 'lvdao', '089', '951', 'L', '121.492596', '22.661676'),
(3678, 3666, '海端', '海端乡', '中国,台湾,台东县,海端乡', 3, 'haiduan', '089', '957', 'H', '121.172008', '23.101074'),
(3679, 3666, '延平', '延平乡', '中国,台湾,台东县,延平乡', 3, 'yanping', '089', '953', 'Y', '121.084499', '22.902358'),
(3680, 3666, '金峰', '金峰乡', '中国,台湾,台东县,金峰乡', 3, 'jinfeng', '089', '964', 'J', '120.971292', '22.595511'),
(3681, 3666, '达仁', '达仁乡', '中国,台湾,台东县,达仁乡', 3, 'daren', '089', '966', 'D', '120.884131', '22.294869'),
(3682, 3666, '兰屿', '兰屿乡', '中国,台湾,台东县,兰屿乡', 3, 'lanyu', '089', '952', 'L', '121.532473', '22.056736'),
(3683, 3325, '花莲', '花莲县', '中国,台湾,花莲县', 2, 'hualien', '03', '9', 'H', '121.300000', '23.830000'),
(3684, 3683, '花莲', '花莲市', '中国,台湾,花莲县,花莲市', 3, 'hualian', '03', '970', 'H', '121.606810', '23.982074'),
(3685, 3683, '凤林', '凤林镇', '中国,台湾,花莲县,凤林镇', 3, 'fenglin', '03', '975', 'F', '121.451687', '23.744648'),
(3686, 3683, '玉里', '玉里镇', '中国,台湾,花莲县,玉里镇', 3, 'yuli', '03', '981', 'Y', '121.316445', '23.336509'),
(3687, 3683, '新城', '新城乡', '中国,台湾,花莲县,新城乡', 3, 'xincheng', '03', '971', 'X', '121.640512', '24.128133'),
(3688, 3683, '吉安', '吉安乡', '中国,台湾,花莲县,吉安乡', 3, 'ji\'an', '03', '973', 'J', '121.568005', '23.961635'),
(3689, 3683, '寿丰', '寿丰乡', '中国,台湾,花莲县,寿丰乡', 3, 'shoufeng', '03', '974', 'S', '121.508955', '23.870680'),
(3690, 3683, '光复', '光复乡', '中国,台湾,花莲县,光复乡', 3, 'guangfu', '03', '976', 'G', '121.423496', '23.669084'),
(3691, 3683, '丰滨', '丰滨乡', '中国,台湾,花莲县,丰滨乡', 3, 'fengbin', '03', '977', 'F', '121.518639', '23.597080'),
(3692, 3683, '瑞穗', '瑞穗乡', '中国,台湾,花莲县,瑞穗乡', 3, 'ruisui', '03', '978', 'R', '121.375992', '23.496817'),
(3693, 3683, '富里', '富里乡', '中国,台湾,花莲县,富里乡', 3, 'fuli', '03', '983', 'F', '121.250124', '23.179984'),
(3694, 3683, '秀林', '秀林乡', '中国,台湾,花莲县,秀林乡', 3, 'xiulin', '03', '972', 'X', '121.620381', '24.116642'),
(3695, 3683, '万荣', '万荣乡', '中国,台湾,花莲县,万荣乡', 3, 'wanrong', '03', '979', 'W', '121.407493', '23.715346'),
(3696, 3683, '卓溪', '卓溪乡', '中国,台湾,花莲县,卓溪乡', 3, 'zhuoxi', '03', '982', 'Z', '121.303422', '23.346369'),
(3697, 3325, '澎湖', '澎湖县', '中国,台湾,澎湖县', 2, 'penghu', '06', '8', 'P', '119.566417', '23.569733'),
(3698, 3697, '马公', '马公市', '中国,台湾,澎湖县,马公市', 3, 'magong', '06', '880', 'M', '119.566499', '23.565845'),
(3699, 3697, '湖西', '湖西乡', '中国,台湾,澎湖县,湖西乡', 3, 'huxi', '06', '885', 'H', '119.659666', '23.583358'),
(3700, 3697, '白沙', '白沙乡', '中国,台湾,澎湖县,白沙乡', 3, 'baisha', '06', '884', 'B', '119.597919', '23.666060'),
(3701, 3697, '西屿', '西屿乡', '中国,台湾,澎湖县,西屿乡', 3, 'xiyu', '06', '881', 'X', '119.506974', '23.600836'),
(3702, 3697, '望安', '望安乡', '中国,台湾,澎湖县,望安乡', 3, 'wang\'an', '06', '882', 'W', '119.500538', '23.357531'),
(3703, 3697, '七美', '七美乡', '中国,台湾,澎湖县,七美乡', 3, 'qimei', '06', '883', 'Q', '119.423929', '23.206018'),
(3704, 3325, '金门', '金门县', '中国,台湾,金门县', 2, 'jinmen', '082', '8', 'J', '118.317089', '24.432706'),
(3705, 3704, '金城', '金城镇', '中国,台湾,金门县,金城镇', 3, 'jincheng', '082', '893', 'J', '118.316667', '24.416667'),
(3706, 3704, '金湖', '金湖镇', '中国,台湾,金门县,金湖镇', 3, 'jinhu', '082', '891', 'J', '118.419743', '24.438633'),
(3707, 3704, '金沙', '金沙镇', '中国,台湾,金门县,金沙镇', 3, 'jinsha', '082', '890', 'J', '118.427993', '24.481109'),
(3708, 3704, '金宁', '金宁乡', '中国,台湾,金门县,金宁乡', 3, 'jinning', '082', '892', 'J', '118.334506', '24.45672'),
(3709, 3704, '烈屿', '烈屿乡', '中国,台湾,金门县,烈屿乡', 3, 'lieyu', '082', '894', 'L', '118.247255', '24.433102'),
(3710, 3704, '乌丘', '乌丘乡', '中国,台湾,金门县,乌丘乡', 3, 'wuqiu', '082', '896', 'W', '118.319578', '24.435038'),
(3711, 3325, '连江', '连江县', '中国,台湾,连江县', 2, 'lienchiang', '0836', '2', 'L', '119.539704', '26.197364'),
(3712, 3711, '南竿', '南竿乡', '中国,台湾,连江县,南竿乡', 3, 'nangan', '0836', '209', 'N', '119.944267', '26.144035'),
(3713, 3711, '北竿', '北竿乡', '中国,台湾,连江县,北竿乡', 3, 'beigan', '0836', '210', 'B', '120.000572', '26.221983'),
(3714, 3711, '莒光', '莒光乡', '中国,台湾,连江县,莒光乡', 3, 'juguang', '0836', '211', NULL, '119.940405', '25.976256'),
(3715, 3711, '东引', '东引乡', '中国,台湾,连江县,东引乡', 3, 'dongyin', '0836', '212', 'D', '120.493955', '26.366164'),
(3716, 0, '香港', '香港特别行政区', '中国,香港特别行政区', 1, 'hongkong', '', '', 'X', '114.173355', '22.320048'),
(3717, 3716, '香港岛', '香港岛', '中国,香港特别行政区,香港岛', 2, 'hongkongisland', '00852', '999077', 'X', '114.177314', '22.266416'),
(3718, 3717, '中西区', '中西区', '中国,香港特别行政区,香港岛,中西区', 3, 'centralandwesterndistrict', '00852', '999077', 'Z', '114.154374', '22.281981'),
(3719, 3717, '湾仔区', '湾仔区', '中国,香港特别行政区,香港岛,湾仔区', 3, 'wanchaidistrict', '00852', '999077', 'W', '114.182915', '22.276389'),
(3720, 3717, '东区', '东区', '中国,香港特别行政区,香港岛,东区', 3, 'easterndistrict', '00852', '999077', 'D', '114.255993', '22.262755'),
(3721, 3717, '南区', '南区', '中国,香港特别行政区,香港岛,南区', 3, 'southerndistrict', '00852', '999077', 'N', '114.174134', '22.24676'),
(3722, 3716, '九龙', '九龙', '中国,香港特别行政区,九龙', 2, 'kowloon', '00852', '999077', 'J', '114.17495', '22.327115'),
(3723, 3722, '油尖旺', '油尖旺区', '中国,香港特别行政区,九龙,油尖旺区', 3, 'yautsimmong', '00852', '999077', 'Y', '114.173332', '22.311704'),
(3724, 3722, '深水埗', '深水埗区', '中国,香港特别行政区,九龙,深水埗区', 3, 'shamshuipo', '00852', '999077', NULL, '114.16721', '22.328171'),
(3725, 3722, '九龙城', '九龙城区', '中国,香港特别行政区,九龙,九龙城区', 3, 'jiulongcheng', '00852', '999077', 'J', '114.195053', '22.32673'),
(3726, 3722, '黄大仙', '黄大仙区', '中国,香港特别行政区,九龙,黄大仙区', 3, 'wongtaisin', '00852', '999077', 'H', '114.19924', '22.336313'),
(3727, 3722, '观塘', '观塘区', '中国,香港特别行政区,九龙,观塘区', 3, 'kwuntong', '00852', '999077', 'G', '114.231268', '22.30943'),
(3728, 3716, '新界', '新界', '中国,香港特别行政区,新界', 2, 'newterritories', '00852', '999077', 'X', '114.202408', '22.341766'),
(3729, 3728, '荃湾', '荃湾区', '中国,香港特别行政区,新界,荃湾区', 3, 'tsuenwan', '00852', '999077', NULL, '114.122952', '22.370973'),
(3730, 3728, '屯门', '屯门区', '中国,香港特别行政区,新界,屯门区', 3, 'tuenmun', '00852', '999077', 'T', '113.977416', '22.391047'),
(3731, 3728, '元朗', '元朗区', '中国,香港特别行政区,新界,元朗区', 3, 'yuenlong', '00852', '999077', 'Y', '114.039796', '22.443342'),
(3732, 3728, '北区', '北区', '中国,香港特别行政区,新界,北区', 3, 'northdistrict', '00852', '999077', 'B', '114.148959', '22.494086'),
(3733, 3728, '大埔', '大埔区', '中国,香港特别行政区,新界,大埔区', 3, 'taipo', '00852', '999077', 'D', '114.171743', '22.445653'),
(3734, 3728, '西贡', '西贡区', '中国,香港特别行政区,新界,西贡区', 3, 'saikung', '00852', '999077', 'X', '114.27854', '22.37944'),
(3735, 3728, '沙田', '沙田区', '中国,香港特别行政区,新界,沙田区', 3, 'shatin', '00852', '999077', 'S', '114.191941', '22.379294'),
(3736, 3728, '葵青', '葵青区', '中国,香港特别行政区,新界,葵青区', 3, 'kwaitsing', '00852', '999077', 'K', '114.13932', '22.363877'),
(3737, 3728, '离岛', '离岛区', '中国,香港特别行政区,新界,离岛区', 3, 'outlyingislands', '00852', '999077', 'L', '113.945842', '22.281508'),
(3738, 0, '澳门', '澳门特别行政区', '中国,澳门特别行政区', 1, 'macau', '', '', 'A', '113.54909', '22.198951'),
(3739, 3738, '澳门半岛', '澳门半岛', '中国,澳门特别行政区,澳门半岛', 2, 'macaupeninsula', '00853', '999078', 'A', '113.549134', '22.198751'),
(3740, 3739, '花地玛堂区', '花地玛堂区', '中国,澳门特别行政区,澳门半岛,花地玛堂区', 3, 'nossasenhoradefatima', '00853', '999078', 'H', '113.552284', '22.208067'),
(3741, 3739, '圣安多尼堂区', '圣安多尼堂区', '中国,澳门特别行政区,澳门半岛,圣安多尼堂区', 3, 'santoantonio', '00853', '999078', 'S', '113.564301', '22.12381'),
(3742, 3739, '大堂', '大堂区', '中国,澳门特别行政区,澳门半岛,大堂区', 3, 'sé', '00853', '999078', 'D', '113.552971', '22.188359'),
(3743, 3739, '望德堂区', '望德堂区', '中国,澳门特别行政区,澳门半岛,望德堂区', 3, 'saolazaro', '00853', '999078', 'W', '113.550568', '22.194081'),
(3744, 3739, '风顺堂区', '风顺堂区', '中国,澳门特别行政区,澳门半岛,风顺堂区', 3, 'saolourenco', '00853', '999078', 'F', '113.541928', '22.187368'),
(3745, 3738, '氹仔岛', '氹仔岛', '中国,澳门特别行政区,氹仔岛', 2, 'taipa', '00853', '999078', NULL, '113.577669', '22.156838'),
(3746, 3745, '嘉模堂区', '嘉模堂区', '中国,澳门特别行政区,氹仔岛,嘉模堂区', 3, 'ourladyofcarmel\'sparish', '00853', '999078', 'J', '113.565303', '22.149029'),
(3747, 3738, '路环岛', '路环岛', '中国,澳门特别行政区,路环岛', 2, 'coloane', '00853', '999078', 'L', '113.564857', '22.116226'),
(3748, 3747, '圣方济各堂区', '圣方济各堂区', '中国,澳门特别行政区,路环岛,圣方济各堂区', 3, 'stfrancisxavier\'sparish', '00853', '999078', 'S', '113.559954', '22.123486');

-- --------------------------------------------------------

--
-- 表的结构 `sf_attachment`
--

CREATE TABLE `sf_attachment` (
  `id` int(20) UNSIGNED NOT NULL COMMENT 'ID',
  `category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '类别',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filename` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '文件名称',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '透传数据',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建日期',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `uploadtime` bigint(16) DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '文件 sha1编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='附件表';

--
-- 转存表中的数据 `sf_attachment`
--

INSERT INTO `sf_attachment` (`id`, `category`, `admin_id`, `user_id`, `url`, `imagewidth`, `imageheight`, `imagetype`, `imageframes`, `filename`, `filesize`, `mimetype`, `extparam`, `createtime`, `updatetime`, `uploadtime`, `storage`, `sha1`) VALUES
(1, '', 1, 0, '/assets/img/qrcode.png', '150', '150', 'png', 0, 'qrcode.png', 21859, 'image/png', '', 1491635035, 1491635035, 1491635035, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');

-- --------------------------------------------------------

--
-- 表的结构 `sf_auth_group`
--

CREATE TABLE `sf_auth_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '组名',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '规则ID',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分组表';

--
-- 转存表中的数据 `sf_auth_group`
--

INSERT INTO `sf_auth_group` (`id`, `pid`, `name`, `rules`, `createtime`, `updatetime`, `status`) VALUES
(1, 0, 'Admin group', '*', 1491635035, 1491635035, 'normal'),
(2, 1, 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', 1491635035, 1491635035, 'normal'),
(3, 2, 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', 1491635035, 1491635035, 'normal'),
(4, 1, 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', 1491635035, 1491635035, 'normal'),
(5, 2, 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', 1491635035, 1491635035, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `sf_auth_group_access`
--

CREATE TABLE `sf_auth_group_access` (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '会员ID',
  `group_id` int(10) UNSIGNED NOT NULL COMMENT '级别ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='权限分组表';

--
-- 转存表中的数据 `sf_auth_group_access`
--

INSERT INTO `sf_auth_group_access` (`uid`, `group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sf_auth_rule`
--

CREATE TABLE `sf_auth_rule` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('menu','file') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图标',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则URL',
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '条件',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `menutype` enum('addtabs','blank','dialog','ajax') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '菜单类型',
  `extend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '扩展属性',
  `py` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '拼音首字母',
  `pinyin` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '拼音',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='节点表';

--
-- 转存表中的数据 `sf_auth_rule`
--

INSERT INTO `sf_auth_rule` (`id`, `type`, `pid`, `name`, `title`, `icon`, `url`, `condition`, `remark`, `ismenu`, `menutype`, `extend`, `py`, `pinyin`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 'file', 0, 'dashboard', 'Dashboard', 'fa fa-dashboard', '', '', 'Dashboard tips', 1, NULL, '', 'kzt', 'kongzhitai', 1491635035, 1491635035, 143, 'normal'),
(2, 'file', 0, 'general', 'General', 'fa fa-cogs', '', '', '', 1, NULL, '', 'cggl', 'changguiguanli', 1491635035, 1491635035, 137, 'normal'),
(3, 'file', 0, 'category', 'Category', 'fa fa-leaf', '', '', 'Category tips', 0, NULL, '', 'flgl', 'fenleiguanli', 1491635035, 1491635035, 119, 'normal'),
(4, 'file', 0, 'addon', 'Addon', 'fa fa-rocket', '', '', 'Addon tips', 1, NULL, '', 'cjgl', 'chajianguanli', 1491635035, 1491635035, 0, 'normal'),
(5, 'file', 0, 'auth', 'Auth', 'fa fa-group', '', '', '', 1, NULL, '', 'qxgl', 'quanxianguanli', 1491635035, 1491635035, 99, 'normal'),
(6, 'file', 2, 'general/config', 'Config', 'fa fa-cog', '', '', 'Config tips', 1, NULL, '', 'xtpz', 'xitongpeizhi', 1491635035, 1491635035, 60, 'normal'),
(7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', '', 'Attachment tips', 1, NULL, '', 'fjgl', 'fujianguanli', 1491635035, 1491635035, 53, 'normal'),
(8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user', '', '', '', 1, NULL, '', 'grzl', 'gerenziliao', 1491635035, 1491635035, 34, 'normal'),
(9, 'file', 5, 'auth/admin', 'Admin', 'fa fa-user', '', '', 'Admin tips', 1, NULL, '', 'glygl', 'guanliyuanguanli', 1491635035, 1491635035, 118, 'normal'),
(10, 'file', 5, 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', '', 'Admin log tips', 1, NULL, '', 'glyrz', 'guanliyuanrizhi', 1491635035, 1491635035, 113, 'normal'),
(11, 'file', 5, 'auth/group', 'Group', 'fa fa-group', '', '', 'Group tips', 1, NULL, '', 'jsz', 'juesezu', 1491635035, 1491635035, 109, 'normal'),
(12, 'file', 5, 'auth/rule', 'Rule', 'fa fa-bars', '', '', 'Rule tips', 1, NULL, '', 'cdgz', 'caidanguize', 1491635035, 1491635035, 104, 'normal'),
(13, 'file', 1, 'dashboard/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 136, 'normal'),
(14, 'file', 1, 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 135, 'normal'),
(15, 'file', 1, 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 133, 'normal'),
(16, 'file', 1, 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 134, 'normal'),
(17, 'file', 1, 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 132, 'normal'),
(18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 52, 'normal'),
(19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 51, 'normal'),
(20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 50, 'normal'),
(21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 49, 'normal'),
(22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 48, 'normal'),
(23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', '', 'Attachment tips', 0, NULL, '', '', '', 1491635035, 1491635035, 59, 'normal'),
(24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 58, 'normal'),
(25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 57, 'normal'),
(26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 56, 'normal'),
(27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 55, 'normal'),
(28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 54, 'normal'),
(29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 33, 'normal'),
(30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 32, 'normal'),
(31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 31, 'normal'),
(32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 30, 'normal'),
(33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 29, 'normal'),
(34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 28, 'normal'),
(35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', '', 'Category tips', 0, NULL, '', '', '', 1491635035, 1491635035, 142, 'normal'),
(36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 141, 'normal'),
(37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 140, 'normal'),
(38, 'file', 3, 'category/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 139, 'normal'),
(39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 138, 'normal'),
(40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', '', 'Admin tips', 0, NULL, '', '', '', 1491635035, 1491635035, 117, 'normal'),
(41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 116, 'normal'),
(42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 115, 'normal'),
(43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 114, 'normal'),
(44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', '', 'Admin log tips', 0, NULL, '', '', '', 1491635035, 1491635035, 112, 'normal'),
(45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 111, 'normal'),
(46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 110, 'normal'),
(47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', '', 'Group tips', 0, NULL, '', '', '', 1491635035, 1491635035, 108, 'normal'),
(48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 107, 'normal'),
(49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 106, 'normal'),
(50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 105, 'normal'),
(51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', '', 'Rule tips', 0, NULL, '', '', '', 1491635035, 1491635035, 103, 'normal'),
(52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 102, 'normal'),
(53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 101, 'normal'),
(54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 100, 'normal'),
(55, 'file', 4, 'addon/index', 'View', 'fa fa-circle-o', '', '', 'Addon tips', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(56, 'file', 4, 'addon/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(57, 'file', 4, 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(58, 'file', 4, 'addon/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(59, 'file', 4, 'addon/downloaded', 'Local addon', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(60, 'file', 4, 'addon/state', 'Update state', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(63, 'file', 4, 'addon/config', 'Setting', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(64, 'file', 4, 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(65, 'file', 4, 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(66, 'file', 0, 'user', 'User', 'fa fa-user-circle', '', '', '', 1, NULL, '', 'hygl', 'huiyuanguanli', 1491635035, 1491635035, 0, 'normal'),
(67, 'file', 66, 'user/user', 'User', 'fa fa-user', '', '', '', 1, NULL, '', 'hygl', 'huiyuanguanli', 1491635035, 1491635035, 0, 'normal'),
(68, 'file', 67, 'user/user/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(69, 'file', 67, 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(70, 'file', 67, 'user/user/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(71, 'file', 67, 'user/user/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(72, 'file', 67, 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(73, 'file', 66, 'user/group', 'User group', 'fa fa-users', '', '', '', 1, NULL, '', 'hyfz', 'huiyuanfenzu', 1491635035, 1491635035, 0, 'normal'),
(74, 'file', 73, 'user/group/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(75, 'file', 73, 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(76, 'file', 73, 'user/group/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(77, 'file', 73, 'user/group/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(78, 'file', 73, 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(79, 'file', 66, 'user/rule', 'User rule', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'hygz', 'huiyuanguize', 1491635035, 1491635035, 0, 'normal'),
(80, 'file', 79, 'user/rule/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(81, 'file', 79, 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(82, 'file', 79, 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(83, 'file', 79, 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(84, 'file', 79, 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(85, 'file', 0, 'example', '开发示例管理', 'fa fa-magic', '', '', '', 1, NULL, '', 'kfslgl', 'kaifashiliguanli', 1663671598, 1663671598, 0, 'normal'),
(86, 'file', 85, 'example/bootstraptable', '表格完整示例', 'fa fa-table', '', '', '', 1, NULL, '', 'bgwzsl', 'biaogewanzhengshili', 1663671598, 1663671598, 0, 'normal'),
(87, 'file', 86, 'example/bootstraptable/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671598, 1663671598, 0, 'normal'),
(88, 'file', 86, 'example/bootstraptable/detail', '详情', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xq', 'xiangqing', 1663671598, 1663671598, 0, 'normal'),
(89, 'file', 86, 'example/bootstraptable/change', '变更', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bg', 'biangeng', 1663671598, 1663671598, 0, 'normal'),
(90, 'file', 86, 'example/bootstraptable/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1663671598, 1663671598, 0, 'normal'),
(91, 'file', 86, 'example/bootstraptable/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1663671598, 1663671598, 0, 'normal'),
(92, 'file', 85, 'example/customsearch', '自定义搜索', 'fa fa-table', '', '', '', 1, NULL, '', 'zdyss', 'zidingyisousuo', 1663671598, 1663671598, 0, 'normal'),
(93, 'file', 92, 'example/customsearch/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671598, 1663671598, 0, 'normal'),
(94, 'file', 92, 'example/customsearch/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1663671598, 1663671598, 0, 'normal'),
(95, 'file', 92, 'example/customsearch/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1663671598, 1663671598, 0, 'normal'),
(96, 'file', 85, 'example/customform', '自定义表单示例', 'fa fa-edit', '', '', '', 1, NULL, '', 'zdybdsl', 'zidingyibiaodanshili', 1663671598, 1663671598, 0, 'normal'),
(97, 'file', 96, 'example/customform/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671598, 1663671598, 0, 'normal'),
(98, 'file', 85, 'example/tablelink', '表格联动示例', 'fa fa-table', '', '', '点击左侧日志列表，右侧的表格数据会显示指定管理员的日志列表', 1, NULL, '', 'bgldsl', 'biaogeliandongshili', 1663671598, 1663671598, 0, 'normal'),
(99, 'file', 98, 'example/tablelink/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671598, 1663671598, 0, 'normal'),
(100, 'file', 85, 'example/colorbadge', '彩色角标', 'fa fa-table', '', '', '左侧彩色的角标会根据当前数据量的大小进行更新', 1, NULL, '', 'csjb', 'caisejiaobiao', 1663671598, 1663671598, 0, 'normal'),
(101, 'file', 100, 'example/colorbadge/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671598, 1663671598, 0, 'normal'),
(102, 'file', 100, 'example/colorbadge/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1663671598, 1663671598, 0, 'normal'),
(103, 'file', 100, 'example/colorbadge/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1663671598, 1663671598, 0, 'normal'),
(104, 'file', 85, 'example/controllerjump', '控制器间跳转', 'fa fa-table', '', '', '点击IP地址可以跳转到新的选项卡中查看指定IP的数据', 1, NULL, '', 'kzqjtz', 'kongzhiqijiantiaozhuan', 1663671598, 1663671598, 0, 'normal'),
(105, 'file', 104, 'example/controllerjump/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671598, 1663671598, 0, 'normal'),
(106, 'file', 104, 'example/controllerjump/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1663671598, 1663671598, 0, 'normal'),
(107, 'file', 104, 'example/controllerjump/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1663671598, 1663671598, 0, 'normal'),
(108, 'file', 85, 'example/cxselect', '多级联动', 'fa fa-table', '', '', '基于jquery.cxselect实现的多级联动', 1, NULL, '', 'djld', 'duojiliandong', 1663671598, 1663671598, 0, 'normal'),
(109, 'file', 108, 'example/cxselect/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671598, 1663671598, 0, 'normal'),
(110, 'file', 108, 'example/cxselect/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1663671598, 1663671598, 0, 'normal'),
(111, 'file', 108, 'example/cxselect/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1663671598, 1663671598, 0, 'normal'),
(112, 'file', 85, 'example/multitable', '多表格示例', 'fa fa-table', '', '', '展示在一个页面显示多个Bootstrap-table表格', 1, NULL, '', 'dbgsl', 'duobiaogeshili', 1663671598, 1663671598, 0, 'normal'),
(113, 'file', 112, 'example/multitable/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671598, 1663671598, 0, 'normal'),
(114, 'file', 112, 'example/multitable/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1663671598, 1663671598, 0, 'normal'),
(115, 'file', 112, 'example/multitable/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1663671598, 1663671598, 0, 'normal'),
(116, 'file', 85, 'example/relationmodel', '关联模型示例', 'fa fa-table', '', '', '列表中的头像、用户名和昵称字段均从关联表中取出', 1, NULL, '', 'glmxsl', 'guanlianmoxingshili', 1663671598, 1663671598, 0, 'normal'),
(117, 'file', 116, 'example/relationmodel/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671598, 1663671598, 0, 'normal'),
(118, 'file', 116, 'example/relationmodel/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1663671598, 1663671598, 0, 'normal'),
(119, 'file', 116, 'example/relationmodel/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1663671598, 1663671598, 0, 'normal'),
(120, 'file', 85, 'example/tabletemplate', '表格模板示例', 'fa fa-table', '', '', '', 1, NULL, '', 'bgmbsl', 'biaogemubanshili', 1663671598, 1663671598, 0, 'normal'),
(121, 'file', 120, 'example/tabletemplate/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671598, 1663671598, 0, 'normal'),
(122, 'file', 120, 'example/tabletemplate/detail', '详情', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xq', 'xiangqing', 1663671598, 1663671598, 0, 'normal'),
(123, 'file', 120, 'example/tabletemplate/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1663671598, 1663671598, 0, 'normal'),
(124, 'file', 120, 'example/tabletemplate/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1663671598, 1663671598, 0, 'normal'),
(125, 'file', 85, 'example/baidumap', '百度地图示例', 'fa fa-map-pin', '', '', '', 1, NULL, '', 'bddtsl', 'baiduditushili', 1663671598, 1663671598, 0, 'normal'),
(126, 'file', 125, 'example/baidumap/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671598, 1663671598, 0, 'normal'),
(127, 'file', 125, 'example/baidumap/map', '详情', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xq', 'xiangqing', 1663671598, 1663671598, 0, 'normal'),
(128, 'file', 125, 'example/baidumap/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1663671598, 1663671598, 0, 'normal'),
(129, 'file', 85, 'example/echarts', '统计图表示例', 'fa fa-bar-chart', '', '', '', 1, NULL, '', 'tjtbsl', 'tongjitubiaoshili', 1663671598, 1663671598, 0, 'normal'),
(130, 'file', 129, 'example/echarts/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671598, 1663671598, 0, 'normal'),
(131, 'file', 0, 'command', '在线命令管理', 'fa fa-terminal', '', '', '', 1, NULL, '', 'zxmlgl', 'zaixianminglingguanli', 1663671610, 1663671610, 0, 'normal'),
(132, 'file', 131, 'command/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671610, 1663671610, 0, 'normal'),
(133, 'file', 131, 'command/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1663671610, 1663671610, 0, 'normal'),
(134, 'file', 131, 'command/detail', '详情', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xq', 'xiangqing', 1663671610, 1663671610, 0, 'normal'),
(135, 'file', 131, 'command/execute', '运行', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'yx', 'yunxing', 1663671610, 1663671610, 0, 'normal'),
(136, 'file', 131, 'command/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1663671610, 1663671610, 0, 'normal'),
(137, 'file', 131, 'command/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1663671610, 1663671610, 0, 'normal'),
(138, 'file', 0, 'buiapi', 'API接口生成器', 'fa fa-ravelry', '', '', '', 1, NULL, '', 'Ajkscq', 'APIjiekoushengchengqi', 1663671614, 1663671614, 0, 'normal'),
(139, 'file', 138, 'buiapi/index', '数据库列表', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sjklb', 'shujukuliebiao', 1663671614, 1663671614, 0, 'normal'),
(140, 'file', 138, 'buiapi/add', '同步数据库', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tbsjk', 'tongbushujuku', 1663671614, 1663671614, 0, 'normal'),
(141, 'file', 138, 'buiapi/del', '删除数据库', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'scsjk', 'shanchushujuku', 1663671614, 1663671614, 0, 'normal'),
(142, 'file', 138, 'buiapi/rulelist', '规则列表', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'gzlb', 'guizeliebiao', 1663671614, 1663671614, 0, 'normal'),
(143, 'file', 138, 'buiapi/ruleadd', '字段添加规则', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zdtjgz', 'ziduantianjiaguize', 1663671614, 1663671614, 0, 'normal'),
(144, 'file', 138, 'buiapi/rule_del', '字段规则删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zdgzsc', 'ziduanguizeshanchu', 1663671614, 1663671614, 0, 'normal'),
(145, 'file', 138, 'buiapi/field_hidden', '字段隐藏', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zdyc', 'ziduanyincang', 1663671614, 1663671614, 0, 'normal'),
(146, 'file', 138, 'buiapi/fieldview', '字段显示', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zdxs', 'ziduanxianshi', 1663671614, 1663671614, 0, 'normal'),
(147, 'file', 138, 'buiapi/buildindex', '生成模版', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'scmb', 'shengchengmoban', 1663671614, 1663671614, 0, 'normal'),
(148, 'file', 138, 'buiapi/get_field_list', '字段列表', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zdlb', 'ziduanliebiao', 1663671614, 1663671614, 0, 'normal'),
(149, 'file', 138, 'buiapi/buildcommand', '生成命令', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'scml', 'shengchengmingling', 1663671614, 1663671614, 0, 'normal'),
(150, 'file', 138, 'buiapi/execcommand', '执行命令', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zxml', 'zhixingmingling', 1663671614, 1663671614, 0, 'normal'),
(151, 'file', 2, 'general/logs', '日志管理', 'fa fa-pied-piper-alt', '', '', '', 1, NULL, '', 'rzgl', 'rizhiguanli', 1663671834, 1663671834, 0, 'normal'),
(152, 'file', 151, 'general/logs/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671834, 1663671834, 0, 'normal'),
(153, 'file', 151, 'general/logs/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1663671834, 1663671834, 0, 'normal'),
(154, 'file', 151, 'general/logs/detail', '详情', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xq', 'xiangqing', 1663671834, 1663671834, 0, 'normal'),
(155, 'file', 2, 'general/database', '数据库管理', 'fa fa-database', '', '', '可进行一些简单的数据库表优化或修复，查看表结构和数据，也可以进行SQL语句的操作', 1, NULL, '', 'sjkgl', 'shujukuguanli', 1663671848, 1663671848, 0, 'normal'),
(156, 'file', 155, 'general/database/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671848, 1663671848, 0, 'normal'),
(157, 'file', 155, 'general/database/query', '查询', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'cx', 'chaxun', 1663671848, 1663671848, 0, 'normal'),
(158, 'file', 155, 'general/database/backup', '备份', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bf', 'beifen', 1663671848, 1663671848, 0, 'normal'),
(159, 'file', 155, 'general/database/restore', '恢复', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'hf', 'huifu', 1663671848, 1663671848, 0, 'normal'),
(160, 'file', 0, 'department', 'Organizational', 'fa fa-sitemap', '', '', '', 1, 'addtabs', '', 'O', 'Organizational', 1663671927, 1663671927, 8, 'normal'),
(161, 'file', 160, 'department/admin', 'Employee', 'fa fa-users', '', '', '', 1, NULL, '', 'E', 'Employee', 1663671927, 1663671927, 0, 'normal'),
(162, 'file', 161, 'department/admin/index', 'View', 'fa fa-users', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671927, 1663671927, 0, 'normal'),
(163, 'file', 161, 'department/admin/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1663671927, 1663671927, 0, 'normal'),
(164, 'file', 161, 'department/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1663671927, 1663671927, 0, 'normal'),
(165, 'file', 161, 'department/admin/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1663671927, 1663671927, 0, 'normal'),
(166, 'file', 161, 'department/admin/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1663671927, 1663671927, 0, 'normal'),
(167, 'file', 161, 'department/admin/principal', 'Principal set', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'Ps', 'Principalset', 1663671927, 1663671927, 0, 'normal'),
(168, 'file', 160, 'department/index', 'Department list', 'fa fa-sliders', '', '', '', 1, NULL, '', 'Dl', 'Departmentlist', 1663671927, 1663671927, 0, 'normal'),
(169, 'file', 168, 'department/index/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1663671927, 1663671927, 0, 'normal'),
(170, 'file', 168, 'department/index/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1663671927, 1663671927, 0, 'normal'),
(171, 'file', 168, 'department/index/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1663671927, 1663671927, 0, 'normal'),
(172, 'file', 168, 'department/index/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1663671927, 1663671927, 0, 'normal'),
(173, 'file', 168, 'department/index/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1663671927, 1663671927, 0, 'normal'),
(174, 'file', 0, 'tablemake', '自建表管理', 'fa fa-cubes', '', '', '', 1, NULL, '', 'zjbgl', 'zijianbiaoguanli', 1663672019, 1663672019, 0, 'normal'),
(175, 'file', 174, 'tablemake/index', '查看列表', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zklb', 'zhakanliebiao', 1663672019, 1663672019, 0, 'normal'),
(176, 'file', 174, 'tablemake/add', '创建新表', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'cjxb', 'chuangjianxinbiao', 1663672019, 1663672019, 0, 'normal'),
(177, 'file', 174, 'tablemake/edit', '编辑表', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bjb', 'bianjibiao', 1663672019, 1663672019, 0, 'normal'),
(178, 'file', 174, 'tablemake/del', '删除模块', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'scmk', 'shanchumokuai', 1663672019, 1663672019, 0, 'normal'),
(179, 'file', 174, 'tablemake/fields', '字段管理', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zdgl', 'ziduanguanli', 1663672019, 1663672019, 0, 'normal'),
(180, 'file', 174, 'tablemake/field_add', '添加字段', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tjzd', 'tianjiaziduan', 1663672019, 1663672019, 0, 'normal'),
(181, 'file', 174, 'tablemake/field_del', '删除字段', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sczd', 'shanchuziduan', 1663672019, 1663672019, 0, 'normal'),
(182, 'file', 0, 'catgory', '服务分类管理', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'fwflgl', 'fuwufenleiguanli', 1664023919, 1664023919, 0, 'normal'),
(183, 'file', 182, 'catgory/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1664023919, 1664023919, 0, 'normal'),
(184, 'file', 182, 'catgory/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1664023919, 1664023919, 0, 'normal'),
(185, 'file', 182, 'catgory/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1664023919, 1664023919, 0, 'normal'),
(186, 'file', 182, 'catgory/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1664023919, 1664023919, 0, 'normal'),
(187, 'file', 182, 'catgory/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664023919, 1664023919, 0, 'normal'),
(188, 'file', 0, 'cms', 'CMS管理', 'fa fa-list', '', '', '', 1, NULL, '', 'Cgl', 'CMSguanli', 1664035114, 1664035114, 0, 'normal'),
(189, 'file', 188, 'cms/config', '站点配置', 'fa fa-gears', '', '', '', 1, NULL, '', 'zdpz', 'zhandianpeizhi', 1664035114, 1664035114, 22, 'normal'),
(190, 'file', 189, 'cms/config/index', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(191, 'file', 188, 'cms/statistics', '统计控制台', 'fa fa-bar-chart', '', '', '', 1, NULL, '', 'tjkzt', 'tongjikongzhitai', 1664035114, 1664035114, 21, 'normal'),
(192, 'file', 191, 'cms/statistics/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1664035114, 1664035114, 0, 'normal'),
(193, 'file', 188, 'cms/channel', '栏目管理', 'fa fa-list', '', '', '用于管理网站的分类、设置导航分类', 1, NULL, '', 'lmgl', 'lanmuguanli', 1664035114, 1664035114, 20, 'normal'),
(194, 'file', 193, 'cms/channel/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1664035114, 1664035114, 0, 'normal'),
(195, 'file', 193, 'cms/channel/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1664035114, 1664035114, 0, 'normal'),
(196, 'file', 193, 'cms/channel/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(197, 'file', 193, 'cms/channel/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1664035114, 1664035114, 0, 'normal'),
(198, 'file', 193, 'cms/channel/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664035114, 1664035114, 0, 'normal'),
(199, 'file', 193, 'cms/channel/admin', '栏目授权', 'fa fa-circle-o', '', '', '分配管理员可管理的栏目数据，此功能需要先开启站点配置栏目授权开关', 0, NULL, '', 'lmsq', 'lanmushouquan', 1664035114, 1664035114, 0, 'normal'),
(200, 'file', 188, 'cms/archives', '内容管理', 'fa fa-file-text-o', '', '', '', 1, NULL, '', 'nrgl', 'neirongguanli', 1664035114, 1664035114, 19, 'normal'),
(201, 'file', 200, 'cms/archives/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1664035114, 1664035114, 0, 'normal'),
(202, 'file', 200, 'cms/archives/content', '副表管理', 'fa fa-circle-o', '', '', '用于管理模型副表的数据列表,不建议在此进行删除操作', 0, NULL, '', 'fbgl', 'fubiaoguanli', 1664035114, 1664035114, 0, 'normal'),
(203, 'file', 200, 'cms/archives/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1664035114, 1664035114, 0, 'normal'),
(204, 'file', 200, 'cms/archives/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(205, 'file', 200, 'cms/archives/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1664035114, 1664035114, 0, 'normal'),
(206, 'file', 200, 'cms/archives/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664035114, 1664035114, 0, 'normal'),
(207, 'file', 200, 'cms/archives/recyclebin', '回收站', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'hsz', 'huishouzhan', 1664035114, 1664035114, 0, 'normal'),
(208, 'file', 200, 'cms/archives/restore', '还原', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'hy', 'huanyuan', 1664035114, 1664035114, 0, 'normal'),
(209, 'file', 200, 'cms/archives/destroy', '真实删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zssc', 'zhenshishanchu', 1664035114, 1664035114, 0, 'normal'),
(210, 'file', 188, 'cms/modelx', '模型管理', 'fa fa-th', '', '', '在线添加修改删除模型，管理模型字段和相关模型数据', 1, NULL, '', 'mxgl', 'moxingguanli', 1664035114, 1664035114, 18, 'normal'),
(211, 'file', 210, 'cms/modelx/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1664035114, 1664035114, 0, 'normal'),
(212, 'file', 210, 'cms/modelx/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1664035114, 1664035114, 0, 'normal'),
(213, 'file', 210, 'cms/modelx/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(214, 'file', 210, 'cms/modelx/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1664035114, 1664035114, 0, 'normal'),
(215, 'file', 210, 'cms/modelx/duplicate', '复制', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'fz', 'fuzhi', 1664035114, 1664035114, 0, 'normal'),
(216, 'file', 210, 'cms/modelx/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664035114, 1664035114, 0, 'normal'),
(217, 'file', 188, 'cms/fields', '字段管理', 'fa fa-fields', '', '', '用于管理模型或表单的字段，灰色为主表字段无法修改', 0, NULL, '', 'zdgl', 'ziduanguanli', 1664035114, 1664035114, 0, 'normal'),
(218, 'file', 217, 'cms/fields/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1664035114, 1664035114, 0, 'normal'),
(219, 'file', 217, 'cms/fields/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1664035114, 1664035114, 0, 'normal'),
(220, 'file', 217, 'cms/fields/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(221, 'file', 217, 'cms/fields/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1664035114, 1664035114, 0, 'normal'),
(222, 'file', 217, 'cms/fields/duplicate', '复制', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'fz', 'fuzhi', 1664035114, 1664035114, 0, 'normal'),
(223, 'file', 217, 'cms/fields/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664035114, 1664035114, 0, 'normal'),
(224, 'file', 188, 'cms/tag', '标签管理', 'fa fa-tags', '', '', '用于管理文章关联的标签,标签的添加在添加文章时自动维护,无需手动添加标签', 1, NULL, '', 'bqgl', 'biaoqianguanli', 1664035114, 1664035114, 17, 'normal'),
(225, 'file', 224, 'cms/tag/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1664035114, 1664035114, 0, 'normal'),
(226, 'file', 224, 'cms/tag/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1664035114, 1664035114, 0, 'normal'),
(227, 'file', 224, 'cms/tag/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(228, 'file', 224, 'cms/tag/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1664035114, 1664035114, 0, 'normal'),
(229, 'file', 224, 'cms/tag/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664035114, 1664035114, 0, 'normal'),
(230, 'file', 188, 'cms/block', '区块管理', 'fa fa-th-large', '', '', '用于管理站点的自定义区块内容，常用于广告、JS脚本、焦点图、片段代码等', 1, NULL, '', 'qkgl', 'qukuaiguanli', 1664035114, 1664035114, 16, 'normal'),
(231, 'file', 230, 'cms/block/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1664035114, 1664035114, 0, 'normal'),
(232, 'file', 230, 'cms/block/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1664035114, 1664035114, 0, 'normal'),
(233, 'file', 230, 'cms/block/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(234, 'file', 230, 'cms/block/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1664035114, 1664035114, 0, 'normal'),
(235, 'file', 230, 'cms/block/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664035114, 1664035114, 0, 'normal'),
(236, 'file', 188, 'cms/page', '单页管理', 'fa fa-file', '', '', '用于管理网站的单页面', 1, NULL, '', 'dygl', 'danyeguanli', 1664035114, 1664035114, 15, 'normal'),
(237, 'file', 236, 'cms/page/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1664035114, 1664035114, 0, 'normal'),
(238, 'file', 236, 'cms/page/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1664035114, 1664035114, 0, 'normal'),
(239, 'file', 236, 'cms/page/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(240, 'file', 236, 'cms/page/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1664035114, 1664035114, 0, 'normal'),
(241, 'file', 236, 'cms/page/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664035114, 1664035114, 0, 'normal'),
(242, 'file', 236, 'cms/page/recyclebin', '回收站', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'hsz', 'huishouzhan', 1664035114, 1664035114, 0, 'normal'),
(243, 'file', 236, 'cms/page/restore', '还原', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'hy', 'huanyuan', 1664035114, 1664035114, 0, 'normal'),
(244, 'file', 236, 'cms/page/destroy', '真实删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zssc', 'zhenshishanchu', 1664035114, 1664035114, 0, 'normal'),
(245, 'file', 188, 'cms/search_log', '搜索记录管理', 'fa fa-history', '', '', '用于管理网站的搜索记录日志', 1, NULL, '', 'ssjlgl', 'sousuojiluguanli', 1664035114, 1664035114, 15, 'normal'),
(246, 'file', 245, 'cms/search_log/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1664035114, 1664035114, 0, 'normal'),
(247, 'file', 245, 'cms/search_log/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1664035114, 1664035114, 0, 'normal'),
(248, 'file', 245, 'cms/search_log/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(249, 'file', 245, 'cms/search_log/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1664035114, 1664035114, 0, 'normal'),
(250, 'file', 245, 'cms/search_log/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664035114, 1664035114, 0, 'normal'),
(251, 'file', 188, 'cms/comment', '评论管理', 'fa fa-comment', '', '', '用于管理用户在网站上发表的评论', 1, NULL, '', 'plgl', 'pinglunguanli', 1664035114, 1664035114, 14, 'normal'),
(252, 'file', 251, 'cms/comment/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1664035114, 1664035114, 0, 'normal'),
(253, 'file', 251, 'cms/comment/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1664035114, 1664035114, 0, 'normal'),
(254, 'file', 251, 'cms/comment/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(255, 'file', 251, 'cms/comment/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1664035114, 1664035114, 0, 'normal'),
(256, 'file', 251, 'cms/comment/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664035114, 1664035114, 0, 'normal'),
(257, 'file', 251, 'cms/comment/recyclebin', '回收站', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'hsz', 'huishouzhan', 1664035114, 1664035114, 0, 'normal'),
(258, 'file', 251, 'cms/comment/restore', '还原', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'hy', 'huanyuan', 1664035114, 1664035114, 0, 'normal'),
(259, 'file', 251, 'cms/comment/destroy', '真实删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zssc', 'zhenshishanchu', 1664035114, 1664035114, 0, 'normal'),
(260, 'file', 188, 'cms/diyform', '自定义表单管理', 'fa fa-list', '', '', '可在线创建自定义表单，管理表单字段和数据列表', 1, NULL, '', 'zdybdgl', 'zidingyibiaodanguanli', 1664035114, 1664035114, 13, 'normal'),
(261, 'file', 260, 'cms/diyform/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1664035114, 1664035114, 0, 'normal'),
(262, 'file', 260, 'cms/diyform/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1664035114, 1664035114, 0, 'normal'),
(263, 'file', 260, 'cms/diyform/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(264, 'file', 260, 'cms/diyform/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1664035114, 1664035114, 0, 'normal'),
(265, 'file', 260, 'cms/diyform/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664035114, 1664035114, 0, 'normal'),
(266, 'file', 188, 'cms/diydata', '自定义表单数据管理', 'fa fa-list', '', '', '可在线管理自定义表单的数据列表', 0, NULL, '', 'zdybdsjgl', 'zidingyibiaodanshujuguanli', 1664035114, 1664035114, 12, 'normal'),
(267, 'file', 266, 'cms/diydata/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1664035114, 1664035114, 0, 'normal'),
(268, 'file', 266, 'cms/diydata/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1664035114, 1664035114, 0, 'normal'),
(269, 'file', 266, 'cms/diydata/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(270, 'file', 266, 'cms/diydata/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1664035114, 1664035114, 0, 'normal'),
(271, 'file', 266, 'cms/diydata/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664035114, 1664035114, 0, 'normal'),
(272, 'file', 266, 'cms/diydata/import', '导入', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'dr', 'daoru', 1664035114, 1664035114, 0, 'normal'),
(273, 'file', 188, 'cms/order', '订单管理', 'fa fa-cny', '', '', '可在线管理付费查看所产生的订单', 1, NULL, '', 'ddgl', 'dingdanguanli', 1664035114, 1664035114, 11, 'normal'),
(274, 'file', 273, 'cms/order/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1664035114, 1664035114, 0, 'normal'),
(275, 'file', 273, 'cms/order/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1664035114, 1664035114, 0, 'normal'),
(276, 'file', 273, 'cms/order/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(277, 'file', 273, 'cms/order/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1664035114, 1664035114, 0, 'normal'),
(278, 'file', 273, 'cms/order/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664035114, 1664035114, 0, 'normal'),
(279, 'file', 188, 'cms/special', '专题管理', 'fa fa-newspaper-o', '', '', '可在线管理专题列表', 1, NULL, '', 'ztgl', 'zhuantiguanli', 1664035114, 1664035114, 10, 'normal'),
(280, 'file', 279, 'cms/special/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1664035114, 1664035114, 0, 'normal'),
(281, 'file', 279, 'cms/special/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1664035114, 1664035114, 0, 'normal'),
(282, 'file', 279, 'cms/special/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(283, 'file', 279, 'cms/special/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1664035114, 1664035114, 0, 'normal'),
(284, 'file', 279, 'cms/special/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664035114, 1664035114, 0, 'normal'),
(285, 'file', 279, 'cms/special/recyclebin', '回收站', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'hsz', 'huishouzhan', 1664035114, 1664035114, 0, 'normal'),
(286, 'file', 279, 'cms/special/restore', '还原', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'hy', 'huanyuan', 1664035114, 1664035114, 0, 'normal'),
(287, 'file', 279, 'cms/special/destroy', '真实删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zssc', 'zhenshishanchu', 1664035114, 1664035114, 0, 'normal'),
(288, 'file', 188, 'cms/builder', '标签生成器', 'fa fa-code', '', '', '可在线生成模板标签并进行渲染标签', 1, NULL, '', 'bqscq', 'biaoqianshengchengqi', 1664035114, 1664035114, 10, 'normal'),
(289, 'file', 288, 'cms/builder/index', '生成', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shengcheng', 1664035114, 1664035114, 0, 'normal'),
(290, 'file', 288, 'cms/builder/parse', '解析', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'jx', 'jiexi', 1664035114, 1664035114, 0, 'normal'),
(291, 'file', 188, 'cms/autolink', '自动链接管理', 'fa fa-link', '', '', '管理文章正文内文本自动链接', 1, NULL, '', 'zdljgl', 'zidonglianjieguanli', 1664035114, 1664035114, 11, 'normal'),
(292, 'file', 291, 'cms/autolink/index', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(293, 'file', 291, 'cms/autolink/add', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(294, 'file', 291, 'cms/autolink/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(295, 'file', 291, 'cms/autolink/del', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(296, 'file', 291, 'cms/autolink/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664035114, 1664035114, 0, 'normal'),
(297, 'file', 188, 'cms/spider_log', '搜索引擎来访管理', 'fa fa-search', '', '', '可在线管理搜索引擎蜘蛛来访记录', 1, NULL, '', 'ssyqlfgl', 'sousuoyinqinglaifangguanli', 1664035114, 1664035114, 14, 'normal'),
(298, 'file', 297, 'cms/spider_log/index', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(299, 'file', 297, 'cms/spider_log/add', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(300, 'file', 297, 'cms/spider_log/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(301, 'file', 297, 'cms/spider_log/del', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xg', 'xiugai', 1664035114, 1664035114, 0, 'normal'),
(302, 'file', 297, 'cms/spider_log/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664035114, 1664035114, 0, 'normal'),
(303, 'file', 0, 'services', '服务管理', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'fwgl', 'fuwuguanli', 1664036435, 1664036435, 0, 'normal'),
(304, 'file', 303, 'services/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1664036435, 1664036435, 0, 'normal'),
(305, 'file', 303, 'services/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1664036435, 1664036435, 0, 'normal'),
(306, 'file', 303, 'services/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1664036435, 1664036435, 0, 'normal'),
(307, 'file', 303, 'services/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1664036435, 1664036435, 0, 'normal'),
(308, 'file', 303, 'services/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1664036435, 1664036435, 0, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `sf_buiapi_field`
--

CREATE TABLE `sf_buiapi_field` (
  `id` int(11) NOT NULL COMMENT '主键ID',
  `table` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表名称',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '字段标题',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '字段名称',
  `field` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '字段名',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '字段类型',
  `length` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '字段长度',
  `default` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '默认值',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '字段备注',
  `field_string` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '只有单选多选才有字段String格式',
  `field_json` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '只有单选多选才有字段JSON格式',
  `rule_add` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规则添加',
  `rule_edit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规则修改',
  `is_show` int(1) DEFAULT '1' COMMENT '是否显示',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `is_byedit` tinyint(1) DEFAULT '1' COMMENT '是编辑参数 0不是 1是',
  `is_byadd` tinyint(1) DEFAULT '1' COMMENT '是添加参数 0不是 1是'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='字段管理表';

--
-- 转存表中的数据 `sf_buiapi_field`
--

INSERT INTO `sf_buiapi_field` (`id`, `table`, `title`, `name`, `field`, `type`, `length`, `default`, `remark`, `field_string`, `field_json`, `rule_add`, `rule_edit`, `is_show`, `createtime`, `updatetime`, `is_byedit`, `is_byadd`) VALUES
(1, 'catgory', '分类名称', 'name', 'name', 'varchar', '200', '', '分类名称', '', '', NULL, NULL, 1, 1664024524, 1664024524, 1, 1),
(2, 'catgory', '分类图标', 'thumbimages', 'thumbimages', 'varchar', '2000', '', '分类图标', '', '', NULL, NULL, 1, 1664024524, 1664024524, 1, 1),
(3, 'catgory', '分类描述', 'describe', 'describe', 'varchar', '255', '', '分类描述', '', '', NULL, NULL, 1, 1664024524, 1664024524, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sf_buiapi_table`
--

CREATE TABLE `sf_buiapi_table` (
  `id` int(11) NOT NULL COMMENT '主键ID',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表中文名称',
  `table` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '表名称',
  `desc` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '模型名称',
  `remark` varchar(122) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `is_show` tinyint(1) DEFAULT NULL,
  `command` text COLLATE utf8mb4_unicode_ci COMMENT '命令'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='模型管理表';

--
-- 转存表中的数据 `sf_buiapi_table`
--

INSERT INTO `sf_buiapi_table` (`id`, `name`, `table`, `desc`, `remark`, `createtime`, `updatetime`, `is_show`, `command`) VALUES
(1, 'Catgory', 'catgory', '服务分类表', NULL, 1664024524, 1664024524, 1, '--table=catgory --func=index --vlogin=not');

-- --------------------------------------------------------

--
-- 表的结构 `sf_category`
--

CREATE TABLE `sf_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `flag` set('hot','index','recommend') COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '关键字',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '自定义名称',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分类表';

--
-- 转存表中的数据 `sf_category`
--

INSERT INTO `sf_category` (`id`, `pid`, `type`, `name`, `nickname`, `flag`, `image`, `keywords`, `description`, `diyname`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1491635035, 1491635035, 1, 'normal'),
(2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1491635035, 1491635035, 2, 'normal'),
(3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1491635035, 1491635035, 3, 'normal'),
(4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1491635035, 1491635035, 4, 'normal'),
(5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1491635035, 1491635035, 5, 'normal'),
(6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1491635035, 1491635035, 6, 'normal'),
(7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1491635035, 1491635035, 7, 'normal'),
(8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1491635035, 1491635035, 8, 'normal'),
(9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1491635035, 1491635035, 9, 'normal'),
(10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1491635035, 1491635035, 10, 'normal'),
(11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1491635035, 1491635035, 11, 'normal'),
(12, 0, 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', 1491635035, 1491635035, 12, 'normal'),
(13, 0, 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', 1491635035, 1491635035, 13, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `sf_catgory`
--

CREATE TABLE `sf_catgory` (
  `id` bigint(11) NOT NULL COMMENT 'ID',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '分类名称',
  `thumbimages` varchar(2000) NOT NULL DEFAULT '' COMMENT '分类图标',
  `describe` varchar(2000) NOT NULL DEFAULT '' COMMENT '分类描述',
  `createtime` bigint(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` bigint(11) NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务分类表';

--
-- 转存表中的数据 `sf_catgory`
--

INSERT INTO `sf_catgory` (`id`, `name`, `thumbimages`, `describe`, `createtime`, `updatetime`) VALUES
(1, '地产服务', '/assets/img/qrcode.png,/assets/img/qrcode.png', '地产服务', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_addondownload`
--

CREATE TABLE `sf_cms_addondownload` (
  `id` int(10) NOT NULL,
  `content` longtext NOT NULL,
  `os` set('windows','linux','mac','ubuntu') DEFAULT '' COMMENT '操作系统',
  `version` varchar(255) DEFAULT '' COMMENT '最新版本',
  `filesize` varchar(255) DEFAULT '' COMMENT '文件大小',
  `language` set('zh-cn','en') DEFAULT '' COMMENT '语言',
  `downloadurl` varchar(1500) DEFAULT '' COMMENT '下载地址',
  `screenshots` varchar(1500) DEFAULT '' COMMENT '预览截图',
  `downloads` varchar(10) DEFAULT '0' COMMENT '下载次数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='下载';

--
-- 转存表中的数据 `sf_cms_addondownload`
--

INSERT INTO `sf_cms_addondownload` (`id`, `content`, `os`, `version`, `filesize`, `language`, `downloadurl`, `screenshots`, `downloads`) VALUES
(40, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>Qbserve 知道生产力费率为数以千计的网站和应用程序，具有独特的能力来区分在 Skype、 可宽延时间和电报，YouTube 视频聊天和 subreddits。您还可以设置警报，通知你，当你达到你的目标或花太多时间使人分心。</p><ul><li>automatic 识别的应用程序和受欢迎的网站，在 Chrome，Safari 和 Opera 浏览器中打开</li><li>separate 队的效率可宽延时间，聊天在 Skype，电报;YouTube 视频，Reddit.com subreddits;在一个应用程序内的不同窗口</li><li>show 应用程序窗口，作为独立活动的</li><li>view 所有登录 windows 为每个应用程序的记录的</li><li>ignore 任何应用程序、 网站、 窗口等。</li><li>enable 动态停靠图标和 （或） 菜单栏项的状态</li><li>搜索活动筛选器名称、 小丽、 类别、 应用程序或时间段</li><li>edit 未分类活动：不被 Qbserve</li><li>set 空闲时间限制和关闭\"视频\"等几种类型</li><li>view 详细的图表：与在一年之内任何时期的效率</li><li>get 反馈：效率变化相比前一天、 几周、 几个月的</li><li>pause 和跟踪的简历</li><li>track 仅选定的工作日或时间段</li></ul>', 'windows,mac', '1.0.0', '10M', 'en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/167/800/600', '2264'),
(41, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>Sublime Text 是一个代码编辑器.也是HTML和散文先进的文本编辑器。漂亮的用户界面和非凡的功能，例如迷你地图，多选择，Python的插件，代码段，等等。完全可自定义键绑定，菜单和工具栏。</p><p>Sublime Text的主要功能包括：拼写检查，书签，完整的 Python API ， Goto 功能，即时项目切换，多选择，多窗口等等</p><h2>更新日志</h2><ul><li>Sublime Text 3 beta is now available from<br /><a href=\"http://www.sublimetext.com/3\" target=\"_blank\">http://www.sublimetext.com/3</a></li><li>Removed expiry date</li><li>Backported various fixes from Sublime Text 3</li><li>Improved minimap click behavior. The old behavior is available via<br />the minimap_scroll_to_clicked_text setting</li><li>Added copy_with_empty_selection setting, to control the behavior of<br />the copy and cut commands when no text is selected</li><li></li></ul>', 'windows,linux,mac', '1.0.0', '12M', 'zh-cn,en', '{\"local\":\"\\/uploads\\/demo\\/test.zip\",\"baidu\":\"https:\\/\\/pan.baidu.com\\/s\\/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/287/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/265/800/600', '3393'),
(42, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>Secret Folder 并不会修改你的原始数据，只是想办法把文件夹给隐藏了而已，所以它的加密速度极快，即便文件夹包含大量文件也不会有影响。当 Secret Folder 工作之后，它会保护自己不被他人随意卸载，也不能通过命令行来访问到你加密了的文件夹。</p><p>虽然 Secret Folder 并不对数据进行加密，仅仅是将文件夹隐藏了，但相信这对于大部分人来说已经足够了，毕竟很多人也仅仅希望如此。</p>', 'windows,linux,mac', '1.0.1', '2M', 'en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/287/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600', '173'),
(43, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>THE ULTRA BOLD字体编辑器，适用于MAC和WINDOWS</p><p>使用FontLab VI，您可以创建，打开，修改，绘制，空间，文字，提示和导出桌面，网页，颜色和可变字体。该应用程序是一个全能的字体编辑器，但也支持与其他字体创建工具的数据交换，使其易于集成到您现有的工作流程中。</p><p>我们已将我们的全部放入FontLab VI中。我们与来自世界各地的设计师进行了交谈，并观察他们的工作。我们保留了经典应用程序FontLab Studio和Fontographer的最佳功能，包括许多熟悉的键盘FontLab快捷键。但是我们重新考虑并精简了每个功能。</p><p>我们也提出了一些新的，超大胆的想法。FontLab VI带来了开创性的新绘图工具和响应式轮廓操作，使您的设计过程更轻松，更高效，无论您是专家还是初学者。</p><p>FontLab现在支持颜色和可变性，因此您可以探索这些新的可能性并扩大您的创意范围。我们已经集成了行业标准的软件组件，并将已建立的最佳实践整理到应用程序中，以帮助您的字体在技术上一流。</p>', 'linux,ubuntu', '1.2.1', '3M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/197/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/167/800/600', '683'),
(44, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>功能强大的 Final Cut Pro 编码<br />• 使用 Compressor 自定 Final Cut Pro 中可用的编码设置<br />• 从形形色色的编解码器、大小、帧速率和其他参数中进行选取<br />• 在 Compressor 中存储您的自定设置；它们将自动出现在 Final Cut Pro 中<br />• 与其他编辑器共享设置，即便他们的工作站上未安装 Compressor<br />• 轻松创建 iTunes Store 项目包用于 iTunes Store 提交</p><p>省时的编码工作流程<br />• 使用现代化的单窗口界面并为常见编码任务预先设定目的位置，从而快速地完成工作<br />• 自由试用编码选项并放大“检视器”来查看真实像素精度的内容<br />• 显示通道并将其分配给优先进行处理的 QuickTime 音轨<br />• 设置批处理进程，从而简化大批量文件的编码操作<br />• 构建自定目的位置来将编码与任务（如移动或拷贝文件）合并<br />• 创建自包含的 Droplet，通过简单的拖放操作在桌面上进行编码<br />• 支持符合行业标准的编码<br />• 编码成各种符合行业标准的格式，如 MPEG-2、H.264 和 ProRes<br />• 使用适用于 Apple 设备及 Vimeo、YouTube 和 Facebook 等网站的一步设置<br />• 选择与主题菜单配合使用来进行编码，以及刻录 DVD 或 Blu-ray 光盘<br />• 一步生成用于 HTTP 实时流化的文件<br />• 导入 Targa、DPX、TIFF、PSD 或 PNG 图像序列并将它们编码成任意设置<br />• 利用高级编码功能来添加隐藏式字幕、元数据等等</p><p>无损格式转换<br />• 将任意文件从其源格式转换成其他格式，如 NTSC 到 PAL，或 SD 到 HD<br />• 使用图像滤镜、时间码叠层和水印来整理和自定您的内容<br />• 将视频加速、减速或调整帧速率以使其时间长度与运行时相匹配</p><p>分布式编码<br />• 通过在多个工作站之间分布编码作业来节省时间<br />• 在任意 Mac 上安装 Compressor 以将其激活成节点，从而进行分布式编码<br />• 通过选取共享电脑群组进行导出来提高 Final Cut Pro 编码速度</p><p>系统要求：OS X v10.10.4 或更高版本 、4GB 内存（建议 8GB 以用于 4K 效果和 3D 字幕）、支持 OpenCL 的图形卡或者 Intel HD Graphics 3000 或新款产品、256MB 显存（建议 1GB 以用于 4K 效果和 3D 字幕）、1.25GB 磁盘空间。</p><h2>更新日志</h2><p>版本 4.2.2 中的新功能<br />• 4K 导出预置用以创建适用于 Apple 设备的视频文件<br />• 修正了在创建 iTunes Store 项目包时，“隐藏式字幕”文件可能被错误地标记为 SDH 字幕的问题<br />• 修正了在缩放预览窗口时，导航窗口无法显示源片段的问题<br />• 启动屏幕可在 OS X El Capitan 中正确显示<br />• 将 iPhone 6s、iPhone 6s Plus、iPad Pro 和 Apple TV（第 4 代）添加到“Apple 设备”兼容性列表</p><p>版本 4.2 中介绍的新功能<br />• 创建 iTunes Store 项目包用于 iTunes Store 提交<br />• 轻松将影片、预告片、隐藏式字幕和字幕添加到 iTunes Store 项目包<br />• 检视器中对隐藏式字幕和字幕进行预览<br />• 放大检视器来查看真实像素精度的内容<br />• 使用“发送到 Compressor”可通过 GPU 进行渲染（支持双 GPU 渲染）<br />• 兼容系统上支持硬件加速多通路 H.264 编码<br />• MPEG-4 和 H.264 QuickTime 影片设置支持自动位速率计算<br />• 显示通道并将其分配给优先进行处理的 QuickTime 音轨<br />• 处理 QuickTime 输出环绕声时矩阵立体声降混音可用<br />• 用于多通路编码的 CABAC 熵模式</p>', 'windows,linux', '2.0.0', '20M', 'en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/1005/800/600', '2897'),
(45, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>TextMate的Bundles是TextMate的一个亮点，可以有效的提高开发速度。</p><p>包括DHH在内的Rails核心开发者一直都使用TextMate进行开发，原因就是他们主要都在使用Mac OS系统，并且TextMate具备出色的界面、强大的宏定义、以及可下载和编辑的宏定义包（bundles），这些都帮助开发者将编码的效率提升到最高。</p>', 'linux,mac', '1.0.2', '20M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/450/800/600', '2436'),
(46, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><span>Sketch（</span><span><em>App Store 精华</em></span><span>） 是最强大的移动应用矢量绘图设计工具，对于网页设计和移动设计者来说，比PhotoShop好用N倍！尤其是在移动应用设计方面，Sketch 的优点在于使用简单，学习曲线低，并且功能更加强大易用，支持自动切图，并且具有移动设计模板，能够大大节省设计师的时间和工作量，非常适合进行网站设计、移动应用设计、图标设计等。</span>', 'windows,linux,mac', '2.0.2', '19M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/866/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/450/800/600', '3489'),
(47, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>Pikka是一个易于使用的专为开发人员和设计师开发屏幕色软件。</p><p><span>功能介绍</span></p><ul><li>彩色文件夹</li></ul><p>&emsp;&emsp;在不同的文件夹之间共享颜色，以轻松组织调色板。 在文件夹之间拖放颜色。 双击从库中复制颜色。</p><ul><li>调色板发生器</li></ul><p>&emsp;&emsp;在几秒钟内生成完美的调色板。</p><ul><li>颜色色调</li></ul><p>&emsp;&emsp;选择一种颜色，并查看/复制此颜色的不同色调。</p><ul><li>格式</li></ul><p>&emsp;&emsp;提供了许多内置格式。 选择颜色并将选择的颜色直接粘贴到您使用的环境中。 选择：HEX，RGB，Swift UIColor，Swift NSColor，Objective-C UIColor，Obecjtive-C NSColor，Android XML，Android（A）RGB等等。</p><p>&emsp;Pikka不仅看起来不错，但有一个很酷的方式处理集的项目。 欢迎添加到任何开发人员颜色框。</p>', 'mac', '1.0.1', '5M', 'en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/197/800/600', '135'),
(48, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>Pixelmator 不仅仅是一款好软件，相对于 photoshop ，它的制作者也是目前为止最善待新手、最负责任的开发商。官方为了能让新手快速上手，针对各个功能前后制作了大量精简易懂的教程。（各大视频网站都能搜到）</p><p>Pixelmator在2011年登陆了Mac App Store，此前这款软件一直在网站销售或者在Apple Store通过盒装方式销售。自Mac App Store出现后，团队再也不用担心分发的问题了。团队的努力同时还得到了苹果的认可，除了获得苹果设计大奖外，Pixelmator还出现在了全新Mac Pro的营销材料中。</p><p>Pixelmator的开发者认为，公司将重点放在软件工程质量上，这些努力终于让苹果开始关注。Pixelmator总是能第一时间支持苹果最新的软件和硬件技术，当新功能出现后，Pixelmator总会第一时间升级，包括Retina MacBook Pro开售后，Pixelmator开始支持高DPI，以及在10.9发布后开始支持OS X Mavericks系统基于OpenCL的Core Image。</p><p>团队认为，Pixelmator是真正的原生Mac软件，这与Adobe跨平台的软件形成了鲜明的对比。Adobe的软件不能第一时间集成苹果最新的技术，不够灵活。对于Pixelmator的未来，Dailide认为团队的目标只有一个，开发最好的软件，创造更好的用户体验。</p><div><br /></div>', 'mac', '2.0.1', '40M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/287/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/866/800/600', '206'),
(49, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>除了支持普通的屏幕录像外，iShowU Instant 还支持同时录制屏幕和摄像头，方便我们制作视频教程、课程讲解、网页演示、游戏录制等等，此外，鼠标指针的高亮光晕显示、一键发布分享、音频混合录制、iPhoto集成等等功能，录像分辨率也能完全根据自己的需求自定义，非常强大!</p><p><span>特点</span></p><ul><li><p>简单易用的用户界面</p></li><li><p>可定制的设置和预置</p></li><li><p>伟大的股票期权，利用内置的OS X的共享服务，包括YouTube</p></li><li><p>创建GIF动画！</p></li><li><p>画中画（PIP）支持相机同时记录</p></li><li><p>灵活的输出，以60fps捕捉了</p></li><li><p>创建QuickTime和MP4电影</p></li><li><p>内置的调度记录</p></li><li><p>实时预览</p></li></ul>', 'windows,mac', '1.0.0', '3M', 'en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/1005/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/265/800/600', '627'),
(50, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>VideoProc 是一款专为4K UHD时代而设计的转换应用，它是您必备的视频工具箱，可以处理从HD到3D，UHD 4K，5K和8K的最苛刻任务，无论是来自iPhone，GoPro，Dji，三星，DVD光盘或其他来源的视频文件。</p><p>VideoProc 处理您的媒体文件以适应各种社交网站，iPhone，iPad，电视，PS4等设备，灵活地编辑原始片段到更具吸引力的故事，在5分钟内备份和翻录完整的DVD，以最快的速度完成转换，而不会损失视频的质量。</p>', 'linux,mac', '1.0.0', '8M', 'en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/197/800/600', '2514'),
(51, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>RightFont是 Mac OS X 上一款非常轻巧的字体管理工具，打开后将会看到一个非常简洁的字体列表窗口。通过搜索你可以找到你所安装过的字体进行预览，而且RightFont被设计成始终处于窗口最上方，所以它看上去很像设计软件中的一个字体窗口。用起来也毫无违和感。</p><p>目前RightFont已经完成了与 PhotoShop、Sketch 两大设计应用的集成。如果我想为设计稿中某一段文字更换一下新的字体，在Sketch 中的选择该这段文本，双击RightFont中选择的字体，设计稿中的文字将会被替换为选择字体。</p>', 'windows,linux', '1.0.0', '30M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/287/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/450/800/600', '692'),
(52, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>帮助全球用户解决语言鸿沟问题,特长是对字幕支持(自动获取字幕) :<br />包括可自动识别字幕文件的语言编码;<br />避免字幕显示成乱码;<br />双字幕切换;<br />实时字幕延时调整等功能.</p><p>支持播放的视频格式包括但不限于: mpg, mpeg, mpeg 2, vob, dat, mp4, m4v, ts, rm, rmvb, wmv, asf, mkv, avi, 3gp, 3g2, flv, mov, 各种H264高清影片以及各类音频文件等等</p><p>支持字幕格式包括但不限于: srt, ssa, ass, idx+sub, sub, smi 等</p>', 'windows', '1.0.0', '10M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/265/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/368/800/600', '5914'),
(53, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><span><span>Sidify Apple Music Converter 是一个精心设计的音频转换器的iTunes音乐为Mac用户。它可以删除DRM从苹果音乐歌曲，并有可能以MP3，AAC或WAV格式保存到您的本地计算机或您的音乐播放器。此外，您可以使用Sidify Apple Music Converter转换成有声读物和M4P音乐。这是一个简单的应用程序，任何用户都应该得到的时刻。所有您需要做的是添加您要转换的歌曲，并选择所需的输出格式。与Sidify Apple Music Converter，您可以选择不同的预设质量。您还可以更改转换速度，这可能会影响输出内容的质量。最大20x转换速度是一个可行的选择。更重要的是，ID标签，如曲目的标题，艺术家，专辑，流派，和持续时间后保持转换。</span></span>', 'mac', '1.0.0', '5M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/251/800/600', '7494'),
(54, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>Meta帮助你管理你不断增长的数字音乐收藏。用它来轻松地编辑信息，如歌曲的标题，艺术家，专辑，专辑封面，等它支持大多数的音频格式，如MP3，MP4，M4A，FLAC，OGG、WAV、AIFF鹿，SPX，编辑，以及多种元数据格式包括ID3v1，ID3v2.3，id3v2.4，iTunes MP4，Vorbis评论，和APE标签。</p><p><span>特征</span></p><ul><li>采用了OS X标准的抛光直观的用户界面</li><li>将元数据一次性写入多个文件（批量标记编辑）</li><li>从文件中删除所有元数据（带标签）</li><li>改变铅字盘（大写，大写/小写，titlecase），带下划线</li><li>重命名基于元数据或者文件，将文件的元数据</li><li>在正则表达式（模式）的支持下查找和替换元数据中的字符、单词或字符串。</li><li>将选定的曲目添加到iTunes中，或者使用简单的键盘快捷方式刷新它们的元数据</li><li>自动生成磁道号</li><li>从内置文件管理操作中获益（移动、删除、查找中显示）</li><li>接口与视网膜显示器兼容。</li><li>相册封面可以很容易地通过拖放来设置或导出，并且可以配置元数据，以便在每次设置新图像时对其进行缩放、压缩和压缩图像，以便将音频文件的大小保持在最低限度。</li></ul>', 'mac', '1.0.0', '8M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/197/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/1005/800/600', '9726'),
(55, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>DRmare Audio Converter是一款适用于Apple Music，iTunes歌曲，Audible有声读物等的全功能DRM音频移除解决方案。作为最全面的流式音频转换器，它能够删除DRM并将保护和非DRM音频转换为MP3，AAC，WAV，FLAC，M4A等，并保留原始质量和ID3标签。</p><p>DRM版权可防止用户充分利用在线下载的数字音乐文件，如Apple Music，iTunes M4P歌曲和Audible AA，AAX有声读物。为了帮助您获得这些DRM编辑音频文件的真实所有权，全功能的DRM Audio Converter for Mac即将面世。 它专门开发的，可以让您完全摆脱流式音频的DRM保护，使您可以无限制地在任何流行设备和播放器上自由享受任何Apple音乐，iTunes音乐和Audible有声读物。</p>', 'linux', '1.0.0', '3M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/197/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/368/800/600', '6151'),
(56, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><span>Joyoshare Screen Recorder 是一款全功能，易于使用的屏幕录像工具。不仅可以录制所有屏幕视频和音频，还可将录制内容保存为流行格式，如MP4，MPG，MOV，MKV，AVI，FLV，WMV，MP3，OGG，AAC，WAV等，并且无损 保存质量。这是一个完美的视频解决方案，可以捕捉屏幕，制作教程视频，记录游戏内容，抓住在线聊天等等。</span>', 'mac,ubuntu', '1.0.0', '5M', 'en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/197/800/600', '1575'),
(57, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><span>Camtasia 是一款专门捕捉屏幕影音的工具软件。它能在任何模式下轻地记录屏幕动作，包括影像、声音、鼠标移动的轨迹，解说声音等等，另外，它还具有及时播放和编辑压缩的功能，可对影像片段进行剪接、添加转场效果。它输出的文件格式很多，有常用的AVI 及GIF 格式，还可输出为WMV 及MOV 格式。</span>', 'linux,mac,ubuntu', '2.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/368/800/600', '9420'),
(58, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>iRingg几乎可以将您从互联网找到的任何声音制作为个性化铃声，操作简单，简单几秒即可完成铃声制作，十分好用。还可以添加声音效果或录制自己的声音并使用滤镜创建极个性化的铃声，然后将铃声直接推送至iPhone（有线或无线连接），并且制作好的铃声会显示在默认铃声里面。</p><p>传统的铃声制作软件只会让你提供 mp3 或 m4r 源文件，然后拖入其中进行编辑导出，iRingg 除了能帮你剪辑音频，还给用户提供了选择歌曲源的渠道：启动 iRingg，主界面 For You 界面会根据用户本机音乐文件的风格来判断用户的视听口味，并从音源挑取音频或视频文件推送给用户，这就是前面提到的 6-Sense 技术… 选择一个进行铃声编辑记录（如果没有遇到喜欢的歌曲，可以单击右上角的“Suggest More Tracks”换一批推荐歌曲）</p><div><br /></div>', 'windows,linux,mac', '1.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/287/800/600', '2374'),
(59, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>Autodesk Maya是美国Autodesk公司出品的世界顶级的三维动画软件，应用对象是专业的影视广告，角色动画，电影特技等。Maya功能完善，工作灵活，易学易用，制作效率极高，渲染真实感极强，是电影级别的高端制作软件。</p><p>Maya售价高昂，声名显赫，是制作者梦寐以求的制作工具，掌握了Maya，会极大的提高制作效率和品质，调节出仿真的角色动画，渲染出电影一般的真实效果，向世界顶级动画师迈进。</p>', 'windows,linux,mac,ubuntu', '2.0.0', '8M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/197/800/600', '3610'),
(60, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>使用 Cinemagraph Pro 来创作活照片，吸引你的观众。</p><p>Cinemagraph Pro 是一款专为创作活照片设计的专业工具程序。艺术家可以使用应用程序独有的“实时蒙版”技术来实时通过高清（1080）甚至超高清（4K）输出来预览他们的混合照片。</p><p>编辑功能众多且强大，但是界面直观，浏览颇为容易；而且只需轻点几下即可与世界共享你的活照片。创作精美的专业 Cinemagraph 图像从未如此简单。<br /><br />直观创作。极速成像。</p><p>&emsp;&emsp;● Cinemagraph Pro 提供一整套编辑工具，方便用户快速、轻易地进行创作。<br />&emsp;&emsp;● 修剪：只需几秒钟即可找到最佳排列并设定静帧来制作完美循环。<br />&emsp;&emsp;● 静帧：导出静帧让你轻易自定和修改。<br />&emsp;&emsp;● 蒙版：选取照片中的指定区域，使用“实时蒙版”来为图像添加动感。<br />&emsp;&emsp;● 循环：选择循环、更改循环模式、交叉淡入淡出和速度。在循环之间添加延迟、效果可能更加使人惊奇。<br />&emsp;&emsp;● 效果：近 30 中内置滤镜，可实时预览。</p><div><br /></div>', 'windows,linux,mac', '1.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/197/800/600', '928'),
(61, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><ol><li><p>结合音频源<br />来自多个源的配置一个虚拟音频设备是容易的。只需添加物理音频设备要包括音频源表开始应用。</p></li><li><p>可用的系统<br />你的Mac会回送的虚拟设备完全一样的物理设备。找到他们列在系统偏好其他设备之间或选择在任何音频应用程序的输入或输出。</p></li><li><p>发送音频应用程序之间<br />环也可以通过设备，将音频从一个应用程序到另一个。设置环回设备作为输出在一个应用程序，输入另一个使音频流之间的直接应用。</p></li></ol>', 'windows,linux,mac,ubuntu', '2.0.0', '5M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/368/800/600', '3807'),
(62, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>MacX DVD Video Converter Pro 支持几乎所有的视频格式之间的互相转换。像MKV、 M2TS、 MP4、 MOV、 WMV、 AVI、 FLV……等。 能将文件依照读取装置的需求做转换，支持iPad, iPhone, Android, iMovie, QT等。 另外还能下载串流影音文件，包含：YouTube, Vimeo, Myspace等等。</p><p>MacX Video Converter Pro内置超过420种视频、音频编解码器和先进的高清视频解码引擎，MacX Video Converter Pro 支持各种高清（如MKV, M2TS, AVCHD, H.264/MPEG-4 AVC等）和标清（AVI, MPEG, MP4, H.264, MOV, FLV, F4V, RM, RMVB, WebM, Google TV等）视频之间的格式转换。经过转换的视频可以完美支持Mac电脑，iMovie, iTunes, iPhone 4, iPhone 3GS, iPad/iPad 2, iPod touch 4, iPod classic, iPod nano, Apple TV, PSP等移动设备。</p><div><br /></div>', 'windows,mac', '1.0.0', '5M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/866/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/197/800/600', '6254'),
(63, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><ul><li><p>支持FLAC、Ogg Vorbis和MP3，AAC，WAV、APE、AC3、wavpack，的WMA，和线索。</p></li><li><p>从iPod和iPhone的复制轨道。</p></li><li><p>手表的新文件的文件夹。</p></li><li><p>fetches专辑。</p></li><li><p>快速控制窗口。</p></li><li><p>进口的iTunes图书馆。</p></li><li><p>在airtunes回放。</p></li><li><p>重复的发现。</p></li><li><p>批量编辑标签与正则表达式支持。</p></li></ul>', 'windows,linux,mac', '2.0.0', '8M', 'en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/450/800/600', '9848'),
(64, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><span>ProPresenter是一个跨平台（MAC和Windows）的现场演出和媒体演示工具，适用于演出现场控制视频/音频/图像/PPT文件播放也可用于各类聚会，体育赛事，会议，或电视广播场合。和ProVideoPlayer一样ProPresenter可以实现软件控制与实时输出屏幕分开。这样你可以把精力放在工作上而不影响大屏幕的输出画面。</span>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/866/800/600', '478'),
(65, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p><span>无需通过iTunes即可同步你的iPhone的iPod的音乐</span></p><p>&emsp;&emsp;有你喜欢的歌曲保存在多台计算机上，但您的iPod或iPhone，只能同步一个呢？primomusic可以转移你的音乐、电影、电视节目、播客、iTunes U，有声读物，多到你的苹果设备，而iTunes的麻烦。这样，你不会担心你的原始媒体内容在您的iPhone，iPad或iPod，得到覆盖。</p><p><span>重建的iTunes音乐库</span></p><p>&emsp;&emsp;iTunes是组织和享受你的播客、电影的最佳方式，和电视节目，尤其是你的音乐和个性化的播放，收视率和播放次数。在任何情况下，突如其来的“灾难”发生在您的iTunes资料库，primomusic带来两简单有效的帮助你重建起来的解决方案。</p>', 'windows,linux,mac', '2.0.0', '8M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/197/800/600', '2846'),
(66, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>要听你喜欢的歌曲，电台节目和视频随时随地，而无需连接到互联网？刚刚与专业的Mac录音机， AllMyMusic是一款Mac上的音频录制工具，由Wondershare出品，这款软件可以录制电脑内播放的任何声音，比如你在线播放的音乐、在线的视频等都可以通过这款软件录制下载，然后保存到本地，日后即可离线播放，其最大的特点是无损录制，能够最大程度保证音频的原来的质量，非常不错！</p><p><span>特色</span></p><ul><li><p>记录从任何网上电台的音乐</p></li><li><p>从YouTube，潘多拉，Napster公司，Spotify的，等录制音频</p></li><li><p>记录并保存MP3/M4A音频文件与零质量损失</p></li><li><p>智能检索跟踪信息，包括标题，艺术家和专辑封面</p></li><li><p>音轨之间自动拆分，并过滤掉的广告</p></li></ul>', 'windows,linux,mac,ubuntu', '2.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/450/800/600', '2794'),
(67, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>Jutoh让你可以很容易地创建流行格式的电子书，你可以在很多电子书网站上销售，包括亚马逊的Kindle和苹果的iBooks。</p><p>使用NewProjectWizard在几秒钟内从现有文件中创建项目；或者使用内置样式文本编辑器从头开始创建您的书。</p><p>从Jutoh的模板中选择一个书籍封面设计，或者用内置的封面设计师创建您自己的。</p><p>Jutoh允许您快速开始创建电子书，但是有许多特性和配置可供更高级的使用，包括支持内容、索引和尾注页面。</p>', 'windows,linux,mac,ubuntu', '1.0.0', '10M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/167/800/600', '5434'),
(68, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>Adobe Acrobat Pro DC将解决文件处理过程产生的浪费与低效率问题，无论在台式电脑或移动设备，人们都能够创建、查阅、审批和签署文件。Adobe Acrobat Pro DC最大亮点在于可将纸质图片、文字迅速转化成PDF或文档格式，比如人们通过手机拍照，可让纸质版文字转化成电子版，用户可直接对文档进行修改。另外，通过移动端和PC端，Adobe Acrobat Pro DC可让Excel、Word和PDF之间的相互转化更为便利。</p><p>Adobe Acrobat Pro DC将全球最佳的PDF解决方案提升到一个新的高度。Adobe Acrobat Pro DC配有直观的触控式界面，通过开发强大的新功能，使用户能够在任何地方完成工作。新的工具中心可使用户更简单迅速的访问最常使用的工具。Acrobat DC可利用Photoshop强大的图像编辑功能，将任何纸质文件转换为可编辑的电子文件，用于传输、签字。</p><p>Adobe Acrobat Pro DC所倡导的移动办公，正是跨设备和应用程序的。Adobe Acrobat Pro DC的使用界面非常友好，在不同设备上，Adobe Acrobat Pro DC的界面始终保持一致。而它的UI设计也非常易于客户使用，文档归类和文件搜索做的非常人性化。Adobe Acrobat Pro DC主画面上可以直接看到使用者最近开启过的档案列表。工具选单内，都采用了图示化的功能选项，直接点选需要的功能就可以开始作业。</p>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/265/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/265/800/600', '8785'),
(69, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>MarsEdit是Mac os平台上的一款博客写作软件，MarsEdit支持离线管理几乎所有的blog，包括WordPress、Blogger、Movable Type等数十种类型的博客网站，支持实时预览，提供了图文混排的编辑功能，图片等媒体文件一键即可轻松插入。</p><p><span>特色</span></p><ul><li>以最好的方式来编写、预览和发布博客，适用于WordPress 。</li><li>支持离线工作预览格式和内容的发布。</li><li>可以非常方便的从iPhoto、Aperture、 Lightroom媒体库浏览照片并能嵌入博客文章中自动上传 。</li><li>适合基于web的接口不想被复杂的页面影响分散注意力的职业博客写手和休闲作者。</li></ul>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/287/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/197/800/600', '7624'),
(70, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><span>Devonthink Pro Office 是一款Mac平台的文件管理工具，现在世界已被数字化，从购物的收据，到重要的调查文件，生活已经逐渐被各种形式的数字文件填满，如邮件、PDF、Word文件、多媒体文件等等，这么大的数据量和海量的文章都能通过这款应用来轻松搞定，我们可以直接向DEVONthink窗口中拖拽文件，非常简单的操作，拖拽操作在DEVONthink里可以运用的非常完美，也更加人我们用户觉得人性化。各种文件的格式、大小、最后修改时间、文件名称、是否拥有URL指向都可以作为查询的要素，并且可以进行依次排序，我们不必担心某个文件夹中有什么查询不到。换句话说DEVONthink的搜索功能就是小型的Spotlight，而且功能更加强大。</span>', 'windows,linux,mac,ubuntu', '2.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/251/800/600', '1765'),
(71, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>Downcast 是Mac os平台上的一款Podcast订阅工具，它的很多功能都直指原版Podcast的弱点。。</p><p>订阅功能<br />• 搜索、 订阅和下载音频和视频播客<br />• 通过 URL手动订阅播客<br />• 自动下载播客 （包括恢复下载）<br />• 浏览和下载更旧的播客节目<br />• 基于日程安排自动更新播客源<br />• 设置为自动下载和事件的保留 (全球和每个播客）<br />• 通过 OPML导入和导出播客源<br />• 导入支持音频和视频媒体文件<br />• 支持受密码保护的源<br />• 创建和编辑\"聪明\"的播放列表<br />• 查看播客详细信息和插曲显示注释<br />• 重命名播客订阅名称</p><p>iCloud 同步<br />• 同步播客订阅、 播放、 设置和与其他 Mac 和 iOS 设备 * * 通过 iCloud 的集信息</p>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/368/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/197/800/600', '5951'),
(72, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>Mate Translate 可以在你的所有设备之间轻松同步，并且直接通过你的Mac菜单栏访问和使用。Mate Translate是即时文本到文本翻译的最好的翻译应用。</p><p>Mate Translate 允许您翻译超过100种语言的单词和短语，使用文本到语音转换，并浏览历史上已完成的翻译。您可以使用Control + S在弹出窗口中快速交换语言。</p>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/265/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/866/800/600', '4459'),
(74, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>资金管理的第一步是在一个地方集中你所有的财产。Banktivity的设置助理会导入你的旧数据。你可以通过Banktivity的内置的浏览器来查看您的帐户和免费下载你的数据。</p><p>Banktivity的可选的直接访问全球10000多家银行，自动传递最新的交易数据到你的MAC当中。</p><p><span>看到钱哪里去了</span></p><p>  Banktivity还需要设置的帐户，工具，储蓄，信用卡，贷款，投资和。然后跟踪每一笔交易：微调它们的分类，分割或自定义编辑或让交易的模板，你做的工作。附上收据或任何文件交易；调和纸质报表；搜索帐户；任何货币的支付和转移，并跟踪；管理重复事件与预定的交易。</p><p>  Banktivity 5也可以让你在线支付！整合计划的交易与提醒，不要错过再付款。建立的收款人，送检查，跟踪他们的进展和看到他们出现在您的注册。您可以打印支票，太。</p><p>更新您的帐户在一次与Banktivity的更新所有的按钮，同步装置取直接访问数据和证券价格。和聪明的账户让你查看记录的账户，收款人，备忘录，范畴或更多。</p><p><span>建立储蓄</span></p><p>  Banktivity的预算工具帮助你设定储蓄和消费的目标，跟踪开支，削减债务并建立一个更安全的未来。通过将你的可用现金特定目的，包络预算可以让你对不同类别分配资金和进行储蓄。</p><p>  Banktivity自动预算预定的交易像支票和票据，所以通过分类每个费用和编辑预算本身，你可以看到你的钱，如何让它走的更远！这种视觉Banktivity这样你可以看到你每天的进步；比过去，当前或预期的预算；把它所有的预算与实际的报告。</p><p><span>确保你的未来</span></p><p>  Banktivity的投资特点管理股票，债券，基金，IRAS，401ks，CD和其他资产。你可以跟踪购买，出售，分裂，红利，期权，投资交易等；分类；检索引用雅虎！财务或投资回报率和更多的外汇；分析。</p><p>  内置的报表模板（收入与支出，净资产，收款人的总结和更多）动态分析您的财务状况。转让税码的交易产生的税收总结报告（或出口数据处理）；或查看您的控股投资组合中总结或投资总结报告。</p><p>  Banktivity的报告立即生成图表。你可以向下钻取一点细节，以电子表格导出表的数据，并打印报告，或将其保存为PDF文档。</p><div><br /></div>', 'windows,linux,mac', '1.0.0', '8M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/368/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/1005/800/600', '4442'),
(75, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p><span>支持读取格式</span><br />zip, rar, 7z, gz, iso, tgz, lzh, apk, xz, z, bz2, tar, lzma, zst, lz4,<br />cab, xar, ar, gnutar, cpio, lzip, lzop, zstd, uu, mtree, pax, shar</p><ul><li>按空格键，进入预览模式！</li><li>Quick Look 预览压缩包！</li><li>支持 Mojave 深色模式</li><li>支持 rar, zip, 7z 加密压缩格式</li><li>Finder 右键，一键压缩、解压文档</li><li>批量加密、解密文件</li><li></li></ul>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/320/800/600', '8834'),
(76, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><span>AutoCAD具有良好的用户界面，通过交互菜单或命令行方式便可以进行各种操作。它的多文档设计环境，让非计算机专业人员也能很快地学会使用。在不断实践的过程中更好地掌握它的各种应用和开发技巧，从而不断提高工作效率。AutoCAD具有广泛的适应性，它可以在各种操作系统支持的微型计算机和工作站上运行。</span>', 'windows,linux,mac', '1.0.0', '8M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/197/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/368/800/600', '841'),
(77, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><span>iTubeDownloader 是目前 Mac OS 平台上一款非常好用的视频下载软件，你可以通过 iTubeDownloader 下载国外的在线视频，如果你经常逛 youtube 等网站的话，可以通过 iTubeDownloader 来下载视频哦！</span>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/320/800/600', '7704'),
(78, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>Downie 是 Mac OS X 上的一个超级易于使用的视频下载工具，支持YouTube，Vimeo 等大部分主流视频网站。它不会因为大量的选项而让用户困扰 - 它使用起来非常简单。支持国内的优酷和土豆以及国外的Youtube，如果你对视频下载有强烈的需求，那么Downie 是一个简单易用的视频下载工具。</p><h2>支持正版</h2><ol><li><a href=\"https://software.charliemonroe.net/downie.php\" target=\"_blank\">官网购买</a></li></ol>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/368/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/287/800/600', '5997'),
(79, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>一个非常容易使用，直观，以及跨平台的应用程序，允许您从多个视频托管网站下载视频到您的mac硬盘驱动器。</p><p>如果您需要脱机访问，或者如果您的互联网连接很差，无法处理流，则需要从YouTube视频共享平台下载内容。</p><p>YouTube Downloader是一个简单的OSX实用程序，它可以帮助您以一种高效的方式处理任务：可以同时处理多个视频，只能提取音频，并且可以将歌曲发送到iTunes库。</p><p>可用于多个视频共享平台的下载工具</p><p>尽管Youtube DownLoader应用程序基本上是为了处理YouTube链接而开发的，但您也可以使用它的功能来传输其他媒体共享平台(如Vimeo、SoundCloud、DailyMotion等)上的内容。</p><p>为了您的方便，Youtube DownLoader将监视您的剪贴板，一旦它检测到合适的URL，就会为您提供将任务添加到下载队列中的选项。</p><p>在这里，您可以指定是否要下载视频并选择视频质量和输出格式，或者选择只提取音频。</p><p>在查看了每个任务的配置之后，只需启动下载过程，Youtube Downloader将允许您监视其主窗口中的进度。此时，不需要进一步的用户交互。</p><p>转移到mac的整个播放列表，并完全控制输出质量。</p><p>为了优化您的工作流程，Youtube DownLoader允许您同时加载要下载的播放列表和频道，并可以监视它们以获取新的内容。这意味着，如果有互联网连接，应用程序可以自动下载新发布的视频。</p><p>同时，该实用工具还可以将下载的内容发送到iTunes库，甚至可以检测到元数据信息，如艺术家名称或视频或轨道标题。请注意，您可以选择使用与某些设备兼容的输出格式，以消除进一步处理文件的需要。</p><p>使在线内容脱机可用，而不浪费太多时间</p><p>YouTube Downloader为将各种在线平台上的媒体内容传输到您自己的计算机上提供了一个简化的解决方案。</p><p>YouTube Downloader可以处理整个播放列表或频道，可以使输出与不同的设备兼容，并且只能从视频中提取音频内容。</p><div><br /></div>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/866/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/167/800/600', '6870'),
(80, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><span>Jump Desktop 是一款Mac上非常强大和易用的远程桌面控制软件，支持RDP、VNC协议，无论速度、性能和流畅度上都非常不错，支持全屏、文本粘贴复制、快捷键发送等功能，在各种细节上要比微软的远程桌面优秀很多，可以用它远程连接Windows电脑，推荐使用！</span>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/197/800/600', '6361'),
(82, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>WiFi资源管理器Pro采用WiFi Explorer的代码库，并添加了一组功能，使其成为WLAN和IT专业人员的正确工具。您可以使用WiFi Explorer Pro进行初步评估，帮助设计和验证无线网络安装，以及识别信道冲突、重叠、信号质量差和其他可能影响您的家庭、办公室或企业无线网络的连接或性能的问题。</p><p><span>特征</span></p><ul><li>无源定向扫描模式</li><li>频谱分析集成</li><li>自定义过滤器</li><li>对远程传感器的支持</li><li>支持具有隐藏SSID的网络</li><li>具有高级信息的其他列</li><li>扫描结果的其他组织选项</li><li>dark与light主题</li></ul>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/368/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600', '1193'),
(83, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>WiFi扫描仪一款功能最为丰富和完整的WiFi扫描应用程序，WiFi扫描仪是可以在一个802.11 / WiFi~802.11 A / B / G / N /频段之间扫描网络信号。</p><p>WiFi扫描仪是一个易于使用的工具，设计，验证，和故障排除的WiFi覆盖。该工具提供的信息，这样的信号强度，噪声，制造商名称基于设备的MAC地址前缀（是的），和WiFi接入点AP的信道分配可以节约与他人分享。</p>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/265/800/600', '6883'),
(84, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>4K视频下载允许从YouTube的高品质，并以最快的速度为您的计算机和连接将允许下载的视频，音频和字幕。只要复制从您的浏览器视频链接，然后单击“选择性粘贴网址”。完成了！</p><p>想要省事的朋友，还可开启［Smart Mode（智能模式）］，勾选默认的视频下载配置。往后只需复制粘贴 YouTube 链接，4K Video Downloader 将会根据配置自动下载，算是软件的加分项。</p>', 'windows,linux,mac', '1.0.0', '5M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/287/800/600', '834'),
(85, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>使用VideoDuke点击下载任何您喜欢的视频！只需将链接粘贴到其中，VideoDuke将完成剩下的工作。在简单模式下，您可以快速访问音乐视频，电影，电视节目，还有Dailymotion等等提供的漫画。下载的文件可以保存为3GP，MP4，M4V，FLV视频格式，并且可以以首选分辨率保存，支持分辨率有360p，高清720p，高清1080p或其他。</p><p>在VideoDuke的高级模式下，您可以在下载内容时获得更多深层的选择。例如，您可以看到从网页获取的所有资源，包括视频，音频，Flash动画，图像等。切换到所需的选项卡，可以查看您需要下载的文件类型。</p>', 'windows,linux,mac,ubuntu', '1.0.0', '10M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/265/800/600', '3520'),
(86, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><span>Paw HTTP Client 是一款Mac上的HTTP客户端模拟测试工具，可以让Web开发者设置各种请求Header和参数，模拟发送HTTP请求，测试响应数据，支持OAuth, HTTP Basic Auth, Cookies等，设置HTTP标头，URL参数，JSON，url编码的表单，或多体。在馆藏档案整理你的请求，并生成客户端代码。这对于开发Web服务的应用很有帮助，非常实用的一款Web开发辅助工具。</span>', 'linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/287/800/600', '5099'),
(87, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><span>MAC地址修改器是一款小巧的工具，日常网络应用中，由于各种原因计算机的mac地址有时需要修改，如网卡地址被屏蔽等，需要更换新的mac地址。</span><br style=\"box-sizing:border-box;color:#3D464D;font-family:sans-serif;font-size:15px;white-space:normal;background-color:#FFFFFF;\" /><span>使用本软件使您跳过“如何修改mac地址”的烦恼。轻松实现新MAC地址输入、一键设定。并且支持原硬件MAC地址一键还原，操作简单明了。</span>', 'windows,linux,mac', '1.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/866/800/600', '4934'),
(89, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>Mac Video Ripper Pro 可以支持音频和视频文件的独立下载，只需要将你需要下载的音视频文件的链接URL地址直接拖入到应用界面之中即可开始文件的下载。</p><p>除了支持在线链接下载音视频的方式，还支持本地链接的音视频文件的下载，打开找到你的本地音视频地址，即可开始下载。</p>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/265/800/600', '9373'),
(90, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>CrossFTP 是一款非常给力的Mac OS FTP客户端软件，简直就是Mac上的FlashFXP。CrossFTP支持中文，且免费，而且在界面和功能上和FlashFXP以及CuteFTP类似。</p><p>软件使用双栏界面上传或下载文件，非常的方便，支持 FTP, SFTP, WebDav, Amazon S3, Amazon Glacier, Google storage等存储服务</p><p><span>主要功能：</span></p><ul><li>优良的CJK/中文/Unicode支持</li><li>站点管理,配置文件远程备份</li><li>多标签支持</li><li>压缩文档浏览，解压，压缩，直接上传</li><li>退出位置的自动记忆</li><li>队列恢复</li><li>文件本地和Web搜索</li><li>自动重连和anti-idle</li><li>队列编辑</li><li>命令控制</li><li>Amazon S3传输[pro]</li><li>SSH/SSL/TSL加密传输[pro]</li><li>iDisk/WebDav(s)协议[pro]</li><li>多线程传输[pro]</li><li>FXP传输[pro]</li><li>IPV6支持[pro]</li><li>同步文件夹[pro]</li><li>同步浏览[pro]</li><li>CRC检验[pro]</li><li></li></ul>', 'linux,ubuntu', '1.0.0', '8M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/320/800/600', '2064'),
(91, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>TeamViewer 是功能齐全的完整版本，拥有该系列软件的全部所有功能，既可以当作服务器端供其他人进行连接，也可以当作控制端连接其它作为终端的服务器端。</p><p>为了连接到另一台计算机，只需要在两台计算机上同时运行 TeamViewer 即可，而不需要进行安装（也可以选择安装，安装后可以设置开机运行）。该软件第一次启动在两台计算机上自动生成伙伴 ID。只需要输入你的伙伴的ID到TeamViewer，然后就会立即建立起连接。</p>', 'windows,linux,mac', '1.0.0', '8M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/1005/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600', '2200'),
(93, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>PeakHour是Mac平台的网络监控工具,是一款位于您Mac菜单栏的网络实时监控工具.PeakHour for Mac (网络监控软件)提供了你的网络或无线网络活动实时的即时视图.</p><p>是完美的监控网络设备:网络,无线网络,NAS服务器等.<br />给你众多的带宽设备使用进行实时的可视化视图.<br />还可以跟踪单个总使用量<br />也可以跟踪您的互联网使用,如果你是一个上限,或有限的每月流量.</p>', 'windows,linux,mac,ubuntu', '2.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/265/800/600', '4805'),
(94, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><span>Instashare 利用AirDrop技术可以让Mac通过Wi-Fi或蓝牙向同网内其他Apple Device发送文本，图片，音频，视频等类型文件，将文件拖入Menubar上的菜单即可开始传送；同时在装有Instashare iOS版的iPhone上也能将照片集里的图片或视频分享给Mac等其他设备。</span>', 'windows,linux,mac', '1.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/265/800/600', '7428'),
(95, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>Little Snitch允许你拦截这些多余的连接尝试，并让你决定如何进行。</p><p>Little Snitch通知您，当一个程序试图建立一个传出的互联网连接。然后，您可以选择允许或拒绝就此，或定义一个规则如何处理类似的，未来的连接尝试。这可靠地防止在您不知情的情况下被送到私人数据。不显眼的小飞贼运行在后台，它也可以检测网络病毒，木马和其他恶意软件的相关活动。</p>', 'windows,linux,mac', '1.0.0', '8M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/450/800/600', '2723'),
(97, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>Yummy FTP Alias可在你的桌面上建立一个快捷方便的拖放 FTP ，拖放您的文件到Yummy FTP 在 Finder 或 Dock 中的图标，将上传它们到您的 FTP/S + SFTP + WebDAV/S 的服务器！</p><p>因其上传是由备受赞誉的&nbsp;Yummy FTP&nbsp;程序的文件传输引擎提供的动力，所以是可保证您所期待的传输速度和可靠性的。</p>', 'windows,mac', '1.0.0', '5M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/265/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/197/800/600', '1328'),
(99, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><span>只需将任何类型的文件的URL地址添加到你的 iPhone、 iPad 或 iPod 上的Transloader客户端，轻轻点击它，即可将它们同步到您的Mac上并开始下载 。</span>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/368/800/600', '8474'),
(101, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><ol><li>SSH和Telnet协议。</li><li>用户名/密码和公共/私人密钥认证。</li><li>标签式界面多会话。</li><li>iCloud、Dropbox连接，宏和其他视频信号采样与保持应用程序共享密钥（用于iPhone，ipad&emsp;OS X）。</li><li>支持宏变量。</li><li>选择并复制/粘贴文本。</li><li>定制的字体和颜色。</li><li>多窗口的标签式界面。</li><li>自动滚动设置。</li></ol>', 'windows,linux,mac', '1.0.0', '5M', 'zh-cn', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/1005/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600', '8385'),
(102, '<p><div class=\"alert alert-warning\">此页面所有软件内容、截图、价格、介绍等仅用于站点功能测试，不提供相关软件下载。</div></p><p>Royal TSX是一款帮助用户管理桌面的Mac桌面管理软件，Royal TSX为你提供方便安全的访问远程系统。Royal TSX专为服务器管理员、系统工程师、开发人员和IT信息工作者开发设计，是一款访问远程系统使用不同协议的完美工具。</p><p><span>功能介绍</span></p><ul><li>访问和管理您的连接。</li><li>凭证管理。</li><li>选项卡式用户界面。</li><li>连接插件（目前可提供：远程桌面，VNC，苹果远程桌面，SSH，远程登录，网络）。</li></ul>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '[{\"name\":\"local\",\"url\":\"/uploads/demo/test.zip\"},{\"name\":\"baidu\",\"url\":\"https://pan.baidu.com\",\"password\":\"1a3c\"}]', 'https://picsum.photos/id/287/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/368/800/600', '6502');

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_addonnews`
--

CREATE TABLE `sf_cms_addonnews` (
  `id` int(10) NOT NULL,
  `content` longtext NOT NULL,
  `author` varchar(50) DEFAULT '' COMMENT '作者'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='新闻';

--
-- 转存表中的数据 `sf_cms_addonnews`
--

INSERT INTO `sf_cms_addonnews` (`id`, `content`, `author`) VALUES
(1, '<p>据悉，驰为 HiGame 迷你 PC 配备了英特尔八代酷睿 i5-8305G 处理器，集成了移动版 Radeon Vega M 显卡和 4GB HMB 显存，性能不弱于 Nvidia GTX 1050 。</p><p><img src=\"https://picsum.photos/id/1005/800/600\" /></p><p>存储方面，入门机型从 8GB DDR4 RAM + 128GB M.2 SSD 起跳，消费者可根据实际需要后续升级，此外厂家宣称该机支持 VR 与 AR 系统。</p><p><img src=\"https://picsum.photos/id/197/800/600\" /></p><p>扩展性方面，该机提供了 1×雷电 3、5×USB 3.0、2×HDMI 2.0、2×DisplayPort 1.3、以及耳机 / 麦克风插孔。</p><p>驰为将于 5 月中旬发起 Indiegogo 众筹，感兴趣的朋友可以拿出 999 美元支持下，且可享受早鸟特惠。</p>', ''),
(2, '<p>Chromebox CXI3 价钱实惠，很适合在课堂上使用。但在教育市场之外，它也有着一番用武之地。</p>\r\n<p>宏碁为该系列机型提供了多种配置，入门款搭载的是英特尔赛扬 3865U 处理器，顶配版则是英特尔八代酷睿 i7-8550U 。</p>\r\n<p>存储方面，其提供了 4~16GB RAM + 32~64GB ROM 的组合。扩展方面，则有 2&times;USB 2.1、3&times;USB 3.0、1&times; USB-C 端口，以及 HDMI&nbsp;输出、以太网、音频复合插孔。</p>\r\n<p><img src=\"https://picsum.photos/id/320/800/600\" /></p>\r\n<p>Chromebox CXI3 支持 VESA 壁挂、垂直摆放、还有一根无线天线。</p>\r\n<p>CXI3 最先由 Chrome Unboxed 在 TigerDirect 上发现，网页给出的发货时间为 4 月 19 号起。赛扬版本售价 279 美元，酷睿 i3 / i5 / i7 版本则是 279 / 469 / 511 / 744 美元。</p>\r\n<p>[编译自：<a href=\"https://www.slashgear.com/acer-chromebox-cxi3-mini-chrome-os-desktops-go-up-for-preorder-12527240/\" target=\"_self\">SlashGear</a>&nbsp;, 来源：<a href=\"https://chromeunboxed.com/acer-chromebox-cxi3-available-shipping-april-19\" target=\"_self\">Chrome Unboxed</a>]</p>', ''),
(3, '<p>您可以跟踪您的步数，睡眠，消耗的卡路里以及全天行走的距离，并将所有数据同步到Misfit的移动应用程序。它的防水深度可达50米，可以使用可更换的纽扣电池，使用寿命长达六个月。</p>\r\n<p>混合手表变得越来越流行，因为它们看起来比传统智能手表更时尚。对于那些觉得自己不能持续充电的人来说，它们也特别方便。当然，你必须放弃一些功能，以便照顾它们圆滑的外观，比如阅读和回复邮件或电子邮件的能力。</p>\r\n<p><img src=\"https://picsum.photos/id/167/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/265/800/600\" /></p>\r\n<p><img title=\"\" src=\"https://picsum.photos/id/450/800/600\" alt=\"\" /><img title=\"\" src=\"https://picsum.photos/id/320/800/600\" /></p>', ''),
(4, '<p>大多数消费者可能熟悉UE推出的色彩鲜艳的蓝牙音箱，<strong>但该公司也有一系列定制入耳式耳机，UE刚刚推出了一款新的顶级旗舰机型：2,200美元的UE Live。</strong>UE Live耳机是该公司以前的旗舰UE18 Pro型号的进化版本，将每个耳机的扬声器数量从6个增加到8个，共计6个平衡电枢，一个True Tone Plus驱动器和一个6mm钕制动态扬声器，以提供更好的声音。</p>\r\n<p>但是，这些改进需要付出代价：UE Live耳机的起价为2,199美元，自定义选项价格可能会更高。</p>\r\n<p>Ultimate Ears的定制入耳式耳机倾向于专业音乐家在工作室或舞台上使用，而UE Live也不例外。 Ultimate Ears表示，新款耳机专为在音乐节，舞台和体育场举办音乐会的音乐家而设计 - 尽管如果您只是在家里听音乐，他们听起来也会非常出色。</p>\r\n<p>与UE Live一起，Ultimate Ears还宣布推出Ultimate Ears 6 PRO，这是一款价格为699美元的入耳式监听音箱，该监听音箱专为鼓手，贝斯手，DJ和嘻哈音乐家设计，并配有两个动态驱动程序中音和低音。</p>\r\n<p>这两款耳返将于2018年5月开始发货。</p>\r\n<p><img src=\"https://picsum.photos/id/1005/800/600\" alt=\"QQ图片20180413011632.png\" /></p>', ''),
(5, '<p>想必大家都遇到过这样尴尬的事情：家里有很多电池，用的时候也分不清哪个有电、哪个没电，扔了又怕浪费。于是旧的不丢掉，新的买来用，这样家里的电池越积攒越多，造成恶性循环。而现在，南孚带来了一款全新产品&mdash;&mdash;南孚测电器装电池，包含南孚测电器和南孚碱性电池，轻轻松松测一测，电池电量一目了然。</p>\r\n<p>而且测电器5号电池和7号电池均可以测量，一器双用。</p>\r\n<p>这款南孚测电器体积非常小巧，仅有iPhone&nbsp;8手机的四分之一大小（长60mm、宽36mm、厚12mm）。测电器通体白色，侧边有纹路处理，方便持握。</p>\r\n<p>正面有&ldquo;南孚聚能环&rdquo;字样、电池放置正负极标志、电池剩余电量指示灯；背面有测试结果说明&mdash;&mdash;3灯全亮表示电量充足，2灯为还能用，1灯为建议更换，不亮则代表没电，显示结果简单易懂，学习成本几乎为0。</p>\r\n<p>对于正在使用的电池，我们也可以用南孚测电器去测试它的剩余电量，以达到心中有数的目的。比如家里孩子玩的玩具车，对于电池电量要求比较高，我们可以在玩具使用一段时间后，测试电池剩余电量，若指示为&ldquo;2灯亮&rdquo;及以下时，将该电池换到那些功率小的玩具上继续使用，让电池不至于浪费，物尽其用。</p>\r\n<p>最关键的是，这个测电器是南孚免费赠送的。从18年开始，南孚将狂送150万个测电器。只要在线下商超或者线上旗舰店购买南孚大包装，就能免费获得测电器。</p>\r\n<p><img src=\"https://picsum.photos/id/167/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/287/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/866/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/368/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/251/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/197/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/167/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/320/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/251/800/600\" /></p>', ''),
(7, '<p>据 Variety 报道，FCC 辐射实验室刚刚证实了一副来自 Snap 的新眼镜。<strong>今日曝光的这款穿戴设备的文档称，这是一款由 Snap Inc. 制作的穿戴式视频拍摄装置。从印刷标签来看，其品牌名称为 Spectacles，型号为 Model 002 。</strong>尽管文件中所附的大部分内容都以保密为由被遮掩，但还是可以知道它支持低功耗蓝牙 4.2 和 802.11ac Wi-Fi 。</p>\r\n<p><img src=\"https://picsum.photos/id/368/800/600\" alt=\"DSC_2124_2040b.0.jpg\" /></p>\r\n<p>2016 年发布的初代 Spectacles 眼镜</p>\r\n<p>上个月的时候，Cheddar 爆料了两款即将到来的 Spectacles 眼镜。其中一款是计划在 2018 年发布的二代产品，改进了性能并修复了 bug 。</p>\r\n<p>另外还有一款计划在 2019 年发布的第三代产品，据说它配备了 2 个摄像头、支持 GPS、售价 300 美元。</p>\r\n<p><img src=\"https://picsum.photos/id/866/800/600\" alt=\"screenshot_2018_04_11_08.31.06_1024.png.jpg\" /></p>\r\n<p>2016 年发布的初代 Spectacles 在营销上一度相当成功，很多人排着长队、甚至愿意出高价购买一副。即便炒作的热度很快就消散，但至少为该公司赚到了 4000 万美元。</p>\r\n<p>从 FCC 文件来看，Spectacles 二代产品的发布应该无需等待太久。当然，通过 FCC 认证也不见得产品会真的上市。</p>\r\n<p>[编译自：<a href=\"https://www.theverge.com/circuitbreaker/2018/4/11/17223426/snapchat-spectacles-second-generation-model-002\" target=\"_self\">TheVerge</a>]</p>', ''),
(8, '<p>云存储服务商Dropbox今日宣布，由于投资者需求强劲，现将IPO(数次公开招股)发行价区间调高2美元。上周一，Dropbox宣布将IPO发行价区间定为每股16美元至18美元，最高融资6.48亿美元，公司市值将达到约71亿美元。</p>\r\n<p><img src=\"https://picsum.photos/id/450/800/600\" /></p>\r\n<p>但Dropbox今日宣布，由于投资者需求强劲，现将发行价区间调高2美元，至每股18美元至20美元。这意味着Dropbox此次IPO最多将融资7.2亿美元，公司市值将达到约78.5亿美元。</p>\r\n<p>业内专家杰伊&middot;瑞特(Jay Ritter)称，与Box等竞争对手相比，Dropbox最初给出的IPO发行价区间确实有些保守。</p>\r\n<p>虽然调高了发行价区间，但Dropbox当前估值仍低于2014年100亿美元的估值。</p>\r\n<p>昨日就有报道称，Dropbox IPO股票已被超额认购，表明今年市场对第一大科技股的需求十分旺盛。</p>\r\n<p>Dropbox成立于2007年，上个月提交了IPO招股书。Dropbox计划在纳斯达克上市，证券代码为&ldquo;DBX&rdquo;。</p>', ''),
(9, '<p>著名云存储服务提供商Dropbox在上市交易首日股价大涨36%，开盘定价为21美元每股，在当日最高时达到31.6美元每股，最终以28.48美元每股的价格收盘，现在市值超过120亿美元。可以明显看出公开市场投资者十分看好Dropbox这家主营业务为云存储服务和内容协作平台的公司。Dropbox最先对自己股价的预期是16到18美元每股，后来提升到18到20美元每股。而由于上市交易首日表现出色，超过了2014年私募时100亿美元的估值。</p>\r\n<p><img src=\"https://picsum.photos/id/287/800/600\" /></p>\r\n<p>在2017年，Dropbox实现营收11亿美元。较2016年的8.45亿美元和2015年的6.04亿美元的年度总营收增长不少。不过，Dropbox至今尚未实现盈利，去年净亏损为1.12亿美元。该数字在2016年和2015年分别是2.1亿美元和3.26亿美元，可以看出其净亏损在逐年减少。其从每个付费用户获得的平均收入为111.91美元。</p>\r\n<div id=\"cbhahaha\" class=\"otherContent_01\">&nbsp;</div>\r\n<p>由于Dropbox采用的是免费+付费模式，既有面向消费者的业务也有面向企业的业务。Dropbox曾表示其所有5亿注册用户中只有1100万为其产品付费。</p>\r\n<p>著名风投公司红杉资本合伙人、Dropbox董事会成员布莱恩&middot;施莱尔（Bryan Schreier）称：&ldquo;Dropbox结合了一家消费者公司该有的规模和影响力和一家软件公司该有的长期收益的优势。&rdquo;他表示现在正是Dropbox上市的最佳时机，因为&ldquo;其业务规模和现金流都已经达到一定程度，足以支撑其上市计划&rdquo;。</p>\r\n<p>作为Dropbox的早期投资机构，红杉资本如今持有Dropbox 23.2%的股份。另一家风投公司Accel是第二大机构股东，持有5%的股份。Dropbox创始人兼首席执行官德鲁&middot;休斯敦（Drew Houston）持有公司25.3%的股份。</p>\r\n<p>投资机构Greylock Partners也拥有少量Dropbox股份，其合伙人约翰&middot;里利（John Lilly）说：&ldquo;之所以投资Dropbox，是因为德鲁和他的团队对未来的工作模式有着清晰的认识，并打造了一个满足现代生产力需求的产品。&rdquo;</p>\r\n<p>不过，目前市场上有大量与Dropbox相似的产品。Dropbox称：&ldquo;内容协作平台市场竞争激烈且变化很快。在云存储业务方面，我们面临来自亚马逊、苹果、谷歌、和微软公司同类产品的竞争。而在内容协作市场则有来自Atlassian、谷歌、和微软公司的竞争。我们与Box的竞争则主要局限在面向大型企业用户的云存储服务领域。&rdquo;</p>\r\n<p>Box是一家从事与Dropbox类似业务的公司，经常与Dropbox一起被提到。不过Box商业模式与Dropbox不同，其更专注于企业用户。在Dropbox上市首日，Box股价下跌了8.2%。</p>', ''),
(10, '<p><strong>云存储公司Dropbox周五向美国证券交易委员会（SEC）提交了IPO（首次公开招股）申请文件，寻求筹集5亿美元资金。</strong>Dropbox的IPO交易长期以来备受市场期待，该公司四年前在私募投资市场上的估值就已高达100亿美元。</p>\r\n<p><img src=\"https://picsum.photos/id/265/800/600\" /></p>\r\n<p>这家硅谷创业公司成立于2007年。在IPO申请文件中，该公司披露信息称其过去三年的营收分别为6.038亿美元、8.448亿美元和11.1亿美元，而亏损则从3.259亿美元渐次收窄到了2.102亿美元和1.117亿美元。</p>\r\n<p>据《华尔街日报》报道，Dropbox此前通过私募融资回合已经筹集到6亿美元资金。在2014年1月进行的最后一个融资回合中，该公司估值达100亿美元。</p>\r\n<div id=\"cbhahaha\" class=\"otherContent_01\">&nbsp;</div>\r\n<p>Dropbox计划在纳斯达克挂牌上市，股票代码为&ldquo;DBX&rdquo;。共有12家银行将担任该公司IPO交易的承销商，其中主承销商是高盛集团和摩根大通。</p>\r\n<p>文件还披露信息称，Dropbox去年每付费用户平均收入为11.91美元，高于2016年，但低于2015年；注册用户总数达5亿人，自2017年初以来的新注册用户人数为1亿人；付费用户总数达1100万人以上；毛利率为67%。</p>\r\n<p>Dropbox此前就已秘密向美国证券交易委员会提交了IPO申请文件，后者在周五对外公布了该文件。文件显示，Dropbox联合创始人及CEO德鲁&middot;休斯顿（Drew Houston）持有24.4%具备投票权的股票，风投公司红杉资本（Sequoia Capital）持有24.8%股权。</p>\r\n<p>受研发预算扩大的影响，Dropbox的支出有所增长，但该公司已在2016年实现了正向的自由现金流。很多云公司都依靠企业销售团队来获取收入，但Dropbox则与众不同，该公司90%以上营收都来自购买自己的订阅服务的用户。不过，这家仍未摆脱亏损的公司仍面临约17亿美元的合同义务，如租约和未偿还债务等。</p>\r\n<p>另外，Dropbox还面临着严峻的竞争压力，其各方面业务与亚马逊、苹果公司、谷歌和微软等科技巨头之间存在竞争关系。</p>\r\n<p>来自于IPO交易的收入将被用于融资一项扩张计划，内容包括将更多用户升级至订阅用户，以及扩大与第三方软件之间的整合等。</p>\r\n<p>在Dropbox的IPO申请文件公布以后，其竞争对手Box的股价上涨2.8%。Dropbox曾五次入选&ldquo;CNBC Disruptor 50&rdquo;榜单，该榜单每年公布一次，评选出50家最有影响力、最具有开拓精神的创业公司。</p>', ''),
(11, '<p>通用电气（GE）为推广Predix云平台的应用开发，在国内推出首期\"Predix星火计划\"，以奖励基于该平台的工业互联网开发者。首期有4家企业获奖，将进驻GE孵化器并获得技术支持和潜在投资机会。</p>\r\n<p><img title=\"\" src=\"https://picsum.photos/id/1005/800/600\" /></p>\r\n<p>参与该计划的团队需基于GE Predix平台，开发适合工业领域的资产绩效管理（APM）应用，用于工业企业实时、安全地收集和分析数据，增加正常运行时间、降低成本、减少运营风险。</p>\r\n<p>GE Predix是一个基于Cloud Foundry(CF)的云平台，专攻制造业。跟Azure，AWS的PaaS服务相比，Predix的优势在于对于工业数据的导入做了专门优化。</p>\r\n<p>2017年\"Predix星火计划\"采用提名邀请，共有16家GE合作伙伴及创业公司提交了内容涵盖包括能源、医疗、设备制造等领域的工业应用项目方案。</p>\r\n<p>获奖企业中，广采科技由思科参与投资，提供货物与集装箱的全球跟踪服务。实视科技面向汽车、装备制造等客户开发用于智能眼镜的AR应用。华瑞特信息主要开发企业业务管理流程整合应用。华中思能主要针对电力企业开发节能减排、运营优化、故障诊断应用。</p>\r\n<p>四家获奖企业将获得的资源支持包括，进驻位于上海的GE数字创新坊孵化1个月、期间将有GE技术团队支持和GE创投部门考察进一步投资机会。</p>', ''),
(13, '<p>当英特尔上周推出更多更多 Coffee Lake CPU 和配套主板时，传说中的 Z390 芯片组却意外缺席了。<strong>不过有眼尖的人们发现，主板厂商映泰（Biostar）在自家 B360 Racing GT5 手册中，竟然清楚地列明了另一款名叫&ldquo;Z390GT5&rdquo;主板的存在。</strong>作为一个二线品牌，映泰的产品主打平价而不是古怪的设计。不过它与现有的 Z370 系列没有太大差别，而且最高支持的 CPU TDP 也仅为 95W，刚好够酷睿 i7-8700K 使用而已。</p>\r\n<p><img src=\"https://picsum.photos/id/197/800/600\" alt=\"Biostar-Z390-Racing-GT3-1000x658.jpg\" /></p>\r\n<p>此前有传闻称，某款八核 Coffee Lake 芯片的 TDP 可能超过这个数值。若真如此，Z390 芯片组存在的意义，可能就是比 H370 系列多一些 PCIe 通道、内建 USB 3.1 Gen 2、以及 CNVi Wi-Fi 支持。</p>\r\n<p><img src=\"https://picsum.photos/id/866/800/600\" alt=\"z390gt5.png\" /></p>\r\n<p>映泰的公告中并未详细给出这些特性，所以仍有待证实。去年的泄露似乎表明，该公司的 Z390 芯片组会包含自家的音频硬件，但这块板子仍然采用了老旧的瑞昱（Realtek）编解码器。</p>\r\n<p><img src=\"https://picsum.photos/id/197/800/600\" alt=\"Biostar-Z390-GT5-layout.png\" /></p>\r\n<p>[编译自：<a href=\"https://techreport.com/news/33492/rumor-biostar-manual-tips-off-the-existence-of-a-z390-chipset\" target=\"_self\">TechReport</a>&nbsp;, 来源：<a href=\"https://videocardz.com/75858/biostar-confirms-z390-racing-gt3-gt5-motherboards\" target=\"_self\">VideoCardz</a>]</p>', ''),
(14, '<p>4 月 11 日，Valve 宣布旗下著名的 PC 游戏发行平台 Steam 会推出新的用户数据隐私安全措施。今后玩家们可以选择隐藏你的游戏库内容，也可以隐藏你的活动细节，具体到最近收藏什么游戏，买了什么游戏，玩了什么游戏以及在某游戏上花了多少小时等等。</p>\r\n<p>此前，这些信息全部是公开的，不仅你的好友可以看到，发表评论的时候社区用户可以看到，而且第三方可以采用 Steam API 轻而易举的获得，那些 PC 游戏数据提供商（Steam Spy 之类）就是依靠这些用户数据提供服务的。</p>\r\n<p>新的隐私措施实行后，不管是其他用户还是第三方，将无法轻易获取这些数据。也就是说，如果你想要隐藏，那就永远不会有第三者知道你在某成人视觉小说游戏上面花了多少时间。</p>\r\n<div id=\"cbhahaha\" class=\"otherContent_01\">&nbsp;</div>\r\n<p>这对 Steam 用户当然是个不错的消息，而受影响最大的是 Steam Spy 这种收集并分析数据的第三方。Steam Spy 说起来大家都不会太陌生，很多相关新闻也会引用 Steam Spy 的数据报告。他们根据过滤器筛选数据，然后将 Steam 上的游戏统计呈现给更多人浏览，但随着 Valve 关闭 Steam 可用库数据，包括 Steam Spy 在内的第三方可能都要面临倒闭。</p>\r\n<p>目前还未清楚 Valve 有没有其他替代方案，用以让第三方继续提供数据服务，或者单独推出面向开发者的数据统计工具。</p>\r\n<p>Steam Spy 的创始人 Sergey Galyonkin 在接受外媒采访时说，&ldquo;如果他们真的想遵守法律，应该隐藏所有的个人资料信息。目前他们有默认情况下暴露的敏感信息，只有游戏库被隐藏。这并不合理。&rdquo;默认情况下，你的 Steam 个人资料仍会向所有人显示识别信息，例如你的社交媒体帐户。</p>\r\n<p>Steam Spy 创始人提到的&ldquo;法律&rdquo;，其实是 5 月 25 日生效的欧盟&ldquo;GPDR&rdquo;，全称&ldquo;通用数据保护条例&rdquo;，欧盟的新规定要求公司加密所有&ldquo;非公开信息&rdquo;。</p>\r\n<p><img src=\"https://picsum.photos/id/167/800/600\" /></p>\r\n<p>所以我们可以认为 Valve 做出这一决定并不绝对与近期爆发的 Facebook 数据泄露事件有关，但是这一事件肯定推动了 G 胖尽快落实自己的隐私安全措施。在这个时期，恰到好处地透露给用户&ldquo;我们是一家坚定保护用户信息安全的公司&rdquo;这样的信息，就是一颗很好的定心丸了。</p>\r\n<p>可以想见 Facebook 数据泄露以及后来的 Cambridge Analytica 丑闻给各大科技公司带来了怎样的压力。尽管 Steam 光是卖游戏就能保证自己足够赚钱，看起来完全没有出卖数据的必要，Steam Spy 上收集的游戏数据和用户游戏行为，于操弄政治的 Cambridge Analytica（剑桥分析公司）之流也产生不了什么价值，但谁敢说有朝一日不会因金钱诱惑发生与 Facebook 丑闻类似的事情呢？</p>\r\n<p>Valve 宁愿让一家第三方数据服务商去死，也不会冒着 G 胖走进国会接受听证的风险，无数玩家还在苦苦等待《半条命3》呢。放整个业界来讲，不管是哪家公司，都不敢再承担一次这样的&ldquo;风暴潮&rdquo;。</p>\r\n<p><strong>Facebook的教训</strong></p>\r\n<p>Facebook 身处争议漩涡，人们的抗议达到了顶峰。有人怀疑它的用处，有人直接否认它的用处，在当前的信任危机下，一切情绪都持续放大，公司和公司的使命被极端质疑。Facebook的市值自从指控以来已经减少超过500亿美元，情况简直糟糕。</p>\r\n<p>上个月，根据纽约时报、卫报曝光 Facebook 发生了严重的数据泄露，波及用户有 5000 万人之多，外泄信息被商业公司利用建立成性格模型，用来操纵了 2016 年的美国大选。</p>\r\n<p>Facebook 日前承诺 ，对于受 Cambridge Analytica 数据丑闻影响的用户，该公司会专门进行通知。毫无疑问，自 Facebook 泄密丑闻曝光以来，许多人都在等待这样的消息。随着马克&middot;扎克伯格（Mark Zuckerberg）在美国参议院听证会上作证，更多关于数据丑闻的细节浮出水面。</p>\r\n<p>在过去一年的动荡中，Facebook 广告的基本理念，即基于用户隐藏性格特征来投放广告，已被证明是一种恶意利用用户信息，且容易遭到滥用的做法。Facebook 对此的回应与其他科技行业巨头的态度类似：感到震惊，向用户保证这绝对不是有意的行为，以及承诺采取行动。</p>\r\n<p>扎克伯格面对数不清的镜头提出的观点也颇有意思，他说经过此事希望美国数据处理和隐私规则能发生演化，其中包括直接呼吁放松监管来避免美国公司落后于中国竞争对手&mdash;&mdash;在西方人的脑子里，中国好像是毫无个人信息隐私而言的地方。</p>\r\n<p>他谈到了&ldquo;让人们完全控制&rdquo;自己所分享内容的概念，声称这是&ldquo;Facebook 最重要的原则&rdquo;。</p>\r\n<p>&ldquo;你在 Facebook 上分享的所有内容都归你自己所有，而且你完全控制着谁能看到它以及如何进行分享。此外，你还可以随时删除它。&rdquo;扎克伯格说道，并未提及该公司在其发展早期阶段距离这样的原则有多遥远。</p>\r\n<p>国外媒体纷纷认为扎克伯格的辩解不太含蓄，因为其他平台泄漏数据的规模都比不上 Facebook，而用户是否会买扎克伯格这个账还有待观察。</p>\r\n<p><strong>怼怼苹果 更开心</strong></p>\r\n<p>一般大公司的 CEO 都充当了企业发言人的角色，经常在各种访谈、社交媒体上发表自己的言论，甚至是向竞争对手开炮。</p>\r\n<p>Facebook 因为用户隐私泄露被网友围攻的时候，苹果 CEO 库克自然也被媒体围着追问对这件事情的看法，库克的回答十分尖锐：</p>\r\n<p>&ldquo;对我们来说用户隐私等同于用户的权利和公民自由，但是 Facebook 是一个免费服务，所以用户在这个服务中反而成了卖给广告商的商品，如果苹果这么做，我们将能赚到很多钱，但苹果最好不、也永远不会这么做。&rdquo;</p>\r\n<p>在隐私方面，苹果一直奉行着严格的标准，而且它自己也一直以这种严格为傲，苹果的隐私方案多次承诺&ldquo;我们不会根据你的电子邮件内容或网页浏览习惯来建立档案，然后出售给广告商。我们不会用你存放在&nbsp;iPhone&nbsp;或 iCloud 上的信息来赚钱。&rdquo;</p>\r\n<p>他们有时甚至把美国政府搞得灰头土脸。在对发生在加利福尼亚州圣贝纳迪诺的大规模枪击案调查期间，苹果拒绝帮助美国联邦调查局解锁一名嫌犯的 iPhone，甚至不惜为此与政府对簿公堂。解锁嫌犯的 iPhone 要求开发专门软件，苹果认为影响所有用户手机的安全功能。美国司法部随后在没有苹果帮助的情况下自己找到解锁嫌犯手机的方法。</p>\r\n<p>直到现在，FBI 还在想方设法的要破解 iPhone。库克的态度肯定是&mdash;&mdash;抗争到底。</p>\r\n<p>当然，苹果对用户隐私的严格保护也是经过惨痛教训的，2014 年好莱坞女星照片泄露事件波及众多大腕，在全球引起了极大的注意，让苹果和 iCloud 都摊上了大事。虽然那一次隐私泄露是由于黑客行为，和今天说的用户数据泄露、滥用态度有所区别，但那一次事件让所有人开始思考应该如何给个人信息添加更严实的门锁，更谨慎细致地保护云端安全。</p>\r\n<p>所以，记住这些教训，可以让苹果和 Facebook 们以后不再那么惨痛。这次也一样。</p>', ''),
(15, '<p>今天，W3C和FIDO联盟标准机构宣布，Web浏览器正在构建一种新的登录方式。这款名为WebAuthn所呈现的新开放标准将在最新版本的Firefox中得到支持，并将在未来几个月发布的Chrome和Edge的版本中得到支持。<strong>这是多年来的最新举措，目的是让用户远离密码，转向更安全的登录方式，如生物识别和USB令牌。</strong></p>\r\n<p>该系统已经在谷歌和Facebook等主要服务上就位，在那里你可以使用符合FIDO标准的Yubikey设备登录。</p>\r\n<p><img src=\"https://picsum.photos/id/265/800/600\" alt=\"Security-Key-by-Yubico.png\" /></p>\r\n<p>WebAuthn将无疑将加速安全登录的实现，无论是将这些技术作为备用登陆方式，还是完全取代密码。随着更多的开源代码为新标准而编写出来，开发者将更容易实现新的登录方式。</p>\r\n<p>&ldquo;以前，USB令牌登陆的模式只运用于谷歌、微软和Facebook等大公司，&rdquo;参与Firefox工作的Selena Deckelmann说。&ldquo;现在，通过WebAuthn，更多的用户将能够体验安全登录。&rdquo;</p>\r\n<p>因为FIDO标准是建立在零知识的基础上的，所以没有一串字符可以保证对一个账户的访问，这使得传统的钓鱼攻击变得更加困难。它为有安全意识的用户和企业提供了保护自己的重要途径。随着越来越多的服务转向支持更安全的登录方式，FIDO-ready用户的数量会越来越多。</p>\r\n<p>Deckelmann说：&ldquo;它能真正的规避安全隐患，但现在我们还没到那一步，这将是我们的美好未来。&rdquo;</p>', ''),
(16, '<p>Github 去年推出的<a href=\"https://www.oschina.net/news/90737/security-alerts-on-github\">安全警告</a>，极大减少了开发人员消除 Ruby 和 JavaScript 项目漏洞的时间。<strong>GitHub 安全警告服务，可以搜索依赖寻找已知漏洞然后通过开发者，以便帮助开发者尽可能快的打上补丁修复漏洞，消除有漏洞的依赖或者转到安全版本。</strong></p>\r\n<p><img src=\"https://picsum.photos/id/251/800/600\" alt=\"36836206-97565a64-1ced-11e8-990f-d12cb4b003e5.png\" /></p>\r\n<p>根据 Github 的说法，目前安全警告已经报告了 50 多万个库中的 400 多万个漏洞。在所有显示的警告中，有将近一半的在一周之内得到了响应，前7天的漏洞解决率大约为30%。实际上，情况可能更好，因为当把统计限制在最近有贡献的库时，也就是说过去90天中有贡献的库，98%的库在7天之内打上了补丁。</p>\r\n<p>这个安全警报服务会扫描所有公共库，对于私有库，只扫描依赖图。每当发现有漏洞，库管理员都可以收到消息提示，其中还有漏洞级别及解决步骤提供。</p>\r\n<p>安全警告服务现在只支持 Ruby 和 JavaScript，不过 Github 表示 2018 年计划支持 Python。</p>', ''),
(20, '<p><strong>针对新兴市场，Google希望通过Google Go轻量级应用帮助身处网络速度慢、流量资费高昂地区的用户获得更流畅的网络搜索体验</strong>。现在谷歌正向在26个撒哈拉以南非洲国家/地区推广，Google Go轻量级应用可以让搜索数据用流量减少40%，并且支持对以往搜索记录的脱机访问。</p>\r\n<p><img src=\"https://picsum.photos/id/368/800/600\" alt=\"TIM截图20180413142756.png\" /></p>\r\n<p>Google Go 应用本身只有 5MB 大小，对于低存储空间设备很友好，这款应用也是不意外地有离线模式，主要针对的是网络条件不好地区的用户。除了应用本身的性能优化以外，Google Go 还能显示搜索结果的主题摘要信息，同时也会向用户推荐更多可能会感兴趣的内容，也拥有当前流行趋势主题推荐和语音搜索功能。</p>\r\n<p>Google Go 还可配合 YouTube Go 和文件管理应用 Files Go 使用，该应用将在 Android Oreo（ Go Edition ）设备中预装进行分发，让非洲等新兴市场的消费者得到更流畅、更便捷的 Android 系统体验。</p>', ''),
(21, '<p>尽管已经研发两年多时间，但对于Fuchsia系统Google始终缄口不言。不过今天，公司发表了名为&ldquo;The Book&rdquo;的深度解析文档，详细介绍了这款计划取代Android和Chrome OS的操作系统。 目前Android和Chrome OS都是使用Linux内核，不过在最新发布的文档中谷歌明确Fuchsia并非基于Linux内核。</p>\r\n<p><img src=\"https://picsum.photos/id/1005/800/600\" alt=\"google-says-its-upcoming-fuchsia-os-is-not-linux-uses-zircon-kernel-520641-2.jpg\" /></p>\r\n<p>根据公布的文档，Fuchsia是基于功能的模块化系统，使用名为&ldquo;Zircon&rdquo;（锆石）的内核，该微内核为Fuchsia系统提供核心驱动以及C Library（libc）实例。</p>\r\n<p>虽然文档仍未完成，但是我们也注意到Google正在打造的Fuchsia OS非常独特，极具创新且前途无限。这款系统从头构建自己的库和组件，通过POSIX向后兼容性和使用基于Vulkan的驱动打造出类UNIX系统。</p>\r\n<p>Fuchsia系统使用名为&ldquo;Escher&rdquo;的物理渲染器，提供物体的Soft Shadows，镜头特效、光影扩散和色彩外溢等功能。此外Fuchsia的文件系统完全在用户空间之间进行操作，并没有链接或者加载到内核中。</p>\r\n<p>在文档中写道：&ldquo;Fuchsia的文件系统本身可以很容易的进行更改--修改不需要重新编译内核。事实上，对Fuchsia的文件系统更新可以不需要重启。&rdquo;</p>', ''),
(22, '<p>谷歌手机应用程序在2月份收到了主要更新，为快速通话控件添加了便捷的聊天功能。<strong>在接下来的几周里，Pixel，Nexus和Android One设备的默认拨号程序正在添加垃圾邮件过滤功能，并附带一个新的测试版程序，现在就可以试用该功能。</strong></p>\r\n<p>2016年，该应用程序开始通过将来电屏幕以鲜红色闪烁，并通过电话号码下方的另一个&ldquo;怀疑垃圾邮件来电者&rdquo;警报来提醒用户潜在的垃圾邮件来电者。现在，测试中新的垃圾邮件过滤功能更进一步增强，不再打扰用户。当检测到潜在的垃圾邮件呼叫时，将直接把它发送到语音邮件。因此，手机不会响铃，用户也不会被打搅。</p>\r\n<p>同时，用户不会收到未接电话或语音邮件通知，但已过滤的电话将出现在通话记录中，并且任何留下的语音邮件仍将显示在相应的选项卡中。此功能将在未来几周内在全球范围内推出，但加入新版测试户可以率先使用该功能。和其他程序一样，Google指出允许用户在发布之前使用这种实验性功能。</p>\r\n<p>谷歌警告说，功能仍然在开发中，可能不稳定，并且存在&ldquo;一些问题&rdquo;。同时，用户将需要有能力在整个过程中提交应用内反馈。想要参与测试的用户可以前往电话应用的Google Play列表，然后向下滚动到&ldquo;成为测试人员&rdquo;以加入。</p>\r\n<p><img src=\"https://picsum.photos/id/450/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/287/800/600\" /></p>', ''),
(24, '<p>谷歌正在与美国医学协会（美国的一个医师游说团体）进行合作，双方达成一项挑战计划，其内容是让初创企业能够想出“促进健康监测设备数据共享的最佳新思路”。美国医学协会于周一表示，最终的挑战成果将会是一款手机应用或可穿戴设备。</p>\r\n<p><img src=\"https://picsum.photos/id/320/800/600\" /></p>\r\n<p>这两者可以让慢性病患者更轻松地与医生分享数据。</p>\r\n<div id=\"cbhahaha\" class=\"otherContent_01\"> </div>\r\n<p>该声明称：“获奖作品将展示申请人是如何通过病人的健康数据，借助有效的方式，改善医生工作流程临床效果、降低医疗保健系统成本的。”</p>\r\n<p>为了在3万亿美元的医疗保健市场中分得一杯羹，一些科技巨头对于医疗保健该行业的公司展开跨界合作显示出越来越强烈的意向，以促进创新。</p>\r\n<p> </p>\r\n<p>去年，亚马逊公司与默克公司共同发起了一项创新挑战计划，以鼓励Alexa的开发人员们提出新的“技能”，以帮助在家中接受治疗以及医院中接受治疗的糖尿病患者。</p>\r\n<p>亚马逊并没有过多透露其意图，但CNBC在3月份报道了该公司下一步的宏伟目标：针对老龄人口发展其技术。与年轻人相比，老年人在不同程度上更容易罹患糖尿病等慢性病。</p>\r\n<p>Alphabet选择将本次挑战计划集中在医疗数据的互操作性问题上。这样做的目的，是让患者和提供者能够更容易以计算机可读的格式（而不是PDF格式）共享实验室结果或医学成像这样的数据。从历史角度看，许多医院和他们的技术供应商都倾向于选择将病人“锁定”到他们独家的设备上，而不是为病人提供便捷的数据访问服务。</p>\r\n<p>值得一提的是，苹果公司也正在通过其医疗记录产品来解决这个问题。</p>\r\n<p>本次“谷歌——美国医疗协会”挑战赛最终将会产生出3个最佳创意，来共同分享5万美元的谷歌云奖金。</p>', ''),
(33, '<p>据外媒报道，去年，GitHub 向安全研究人员支付了总计 166495 美元的奖励，针对&nbsp;GitHub 这个为期四年的&ldquo;漏洞赏金&rdquo;项目，安全研究人员会上报自己发现的系统问题和漏洞。2016 年，GitHub 一共支付了81.7万美元，而去年的支出总额显然已经翻了一倍多，几乎相当于前三年的总支出（17.7万美元）。在 2014 和 2015 两年时间里，他们一共支付了95.3万美元的奖金。</p>\r\n<p><img src=\"https://picsum.photos/id/287/800/600\" /></p>\r\n<p>2017 年，GitHub 一共收到了 840 份漏洞报告意见书，但是最终解决问题并获得奖金的比例只有15%（约121份）。2016年，GitHub 共收到了 795 份漏洞报告意见书，最终获得奖励的只有 73 份，而其中只有 48 份有效报告最终被罗列在了漏洞赏金项目的主页上。</p>\r\n<p>有效报告的数量上升推动了总支出的增加，也导致了 GitHub 在去年十月重新评估其支付结构。结果就是，奖金增加了一倍，其中最低奖金为 555 美元，最高奖金高达 20000 美元。</p>\r\n<p>GitHub 的 Greg Ose 指出，随着参与的项目、计划和研究人员规模不断增加，去年是迄今为止支付赏金最多的一年。不仅如此，他们还把 GitHub Enterprise 引入到漏洞赏金项目之中，让研究人员能够在 GitHub.com 平台上一些未公开的、或是特定于某个企业部署的领域里找到漏洞。Ose说道：</p>\r\n<blockquote>\r\n<p>&ldquo;去年年初，很多漏洞报告涉及到了我们的企业认证方法，这也促使我们不得不在内部关注这个问题，而且我们也在研究如何让研究人员也关注这个功能。&rdquo;</p>\r\n</blockquote>\r\n<p>此外，Ose还表示，GitHub 已经发布了首个研究人员捐赠，也是他们长期以来关注的一项举措。这项工作会为挖掘应用程序特定功能或领域的研究人员支付固定金额。当然，其他任何发现漏洞的人也能够通过漏洞赏金项目获得奖励。</p>\r\n<p>去年，GitHub 还推出了私人漏洞补丁服务，让用户能够限制生产漏洞的影响范围。不仅如此，他们还进行了内部改进，以更有效进行漏洞分类和修复提交，并计划在今年进一步完善流程。</p>\r\n<p>现在，GitHub 希望进一步扩大 2017 年所取得成绩，推出更多私人奖励和研究补助金，以便在代码公开发布之前及之后引起大家的关注。该公司还计划在今年晚些时候，推出额外的奖励计划。Ose总结道：</p>\r\n<blockquote>\r\n<p>&ldquo;鉴于漏洞赏金项目取得了成功，我们现在正考虑如何扩大其范围，为我们的生产服务提供更多帮助，同时保护整个GitHub生态系统。我们很期待下一步工作，并且会在今年对提交的漏洞内容进行分类和修正。&rdquo;</p>\r\n</blockquote>', 'Github'),
(34, '<p>本周我们正在研究Leap Motion为增强现实带来的新东西。<strong>我们已经看到他们之前创造了一些令人难以置信的技术，尤其是当涉及到运动跟踪和控制时。现在看起来他们认为他们是以面向优先的方式进入AR增强现实世界。</strong></p><p>Leap Motion有一款在性能和外形之间达到平衡的头显，这款头显达到了Leap Motion所说最高技术规格所在的平衡点。换句话说，他们创造了一款人们可以使用的产品，与当今世界上大多数其他消费类产品不同。</p><p>$$paidbegin$$</p><p>为了制造这款头显，Leap Motion的团队使用了几款5.5英寸的智能手机。他们将这些智能手机放在佩戴者脸部的两侧，并将其内部的图像反映出来。通过这种设置，最终他们发现他们需要创建自己的LED显示系统。他们决定采用Analogix显示驱动器和两个“快速切换”BOE 3.5英寸显示屏的架构。</p><p>$$paidend$$</p><p>他们已经创造了一款头显，正如他们所描述的那样，它会让所有其他头显（VR，AR等）感到羞耻。两个120 fps，1600x1440显示屏，100+视角范围和150 fps手动追踪180 x 180度FOV，打开这个头显，当今系统的分辨率，等待时间和视野限制就会消失。</p><p>那么你可以在哪里购买这种现代技术的奇迹？你不能。目前，Leap Motion将此项目称为“北极星计划”，并将其作为一个跳板点。他们正在使用这个项目来表明我们所有人都关注于AR硬件是错误的，他们的产品可以带来最佳体验。</p><p><img src=\"https://picsum.photos/id/1005/800/600\" /></p><p><img src=\"https://picsum.photos/id/320/800/600\" /></p>', 'Leap');

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_addonproduct`
--

CREATE TABLE `sf_cms_addonproduct` (
  `id` int(10) NOT NULL,
  `content` longtext NOT NULL,
  `productdata` varchar(1500) DEFAULT '' COMMENT '产品列表'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='产品表';

--
-- 转存表中的数据 `sf_cms_addonproduct`
--

INSERT INTO `sf_cms_addonproduct` (`id`, `content`, `productdata`) VALUES
(18, '<p>小米蓝牙耳机mini非常迷你，仅有4.9g，内置麦克风，支持语音通话。侧入耳贴合佩戴，稳固不易掉。一键式多控操作，仅有的一个按键即可实现双击唤醒小爱同学、轻按播放/暂停等多种功能。这款耳机支持IPX4防水，适合运动佩戴，带3副硅胶耳帽。小米蓝牙耳机mini配备充电底座，但充电底座并未内置电池，需要连接充电器，1小时充满</p>', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/866/800/600'),
(23, '随着智能穿戴设备越来越普及，市场上相关的智能手环和智能手表类产品层出不穷，不过提起好用又便宜的高性价比智能手环，几乎所有人都会第一个想到小米科技带来的小米手环系列，现如今小米手环已经发布到了第四代，可以说从功能到设计都已经趋于完美。华米科技是小米手环的生产商，在小米生态链中它是非常重要的存在之一！2014 年，华米推出小米手环1代。虽然仅有计步、监测睡眠等少量功能，但在那个国外品牌可穿戴设备价格动辄高达千元的时代，小米手环1代以 79 元的超低定价，迅速收拢了一大批国内用户的心！', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/251/800/600'),
(28, '虽然iphone已经上新款，但iphonex仍是你能买到的最棒的智能手机，为什么这么说呢，由于现在新款iPhone X XR、XS 以及max以及陆续可以接受预定，据我所知XR的屏幕没有iPhone 好，但是价格却更贵，记得乔布斯还在的时候，他的设计理念一直围绕着用户的使用感受，max确实太大了，其实小编最爱的是5s的大小，不知道有没有人有同感。', 'https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/197/800/600'),
(36, '<p>2018年，4K机顶盒被层出不穷的人工智能新品消息所淹没，微创新不足的4K机顶盒行情显得有些疲乏。海美迪针对快速发展的潮流，推出了一款人工智能复合型产品。海美迪小白盒兼具了Q5四代的解码优势以及视听机器人的人工智能，是一款极具创新的复合产品，结合了海美迪旗舰电视盒的优势和高端蓝牙音箱的特色，是智能AI系统+Q5四代+蓝牙音箱的全新形态产品，让消费者重拾对4K机顶盒的关注。通过海美迪小白盒，不光可以看电视，听音乐，问天气，长知识，还可以作为智能家居的入口，可谓是一强有力的破局者。</p>', 'https://picsum.photos/id/866/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/197/800/600'),
(73, '手表在今天已经不再是一件简单的计时工具，它能反射出佩戴者的气质、品味和性格。极简风格腕表是现在年轻人最喜欢的手表风格之一，简单洁白的表盘成为了文艺青年们个性与思想的表达。今天就为大家介绍十二款最好看的极简手表，如果您也喜欢极简手表，那就一起来看看吧。', 'https://picsum.photos/id/1005/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/1005/800/600'),
(81, 'WiFi是一种无线局域网运用技术，其出现以来，凭借组网方便、易于扩展等特点，有着广泛的应用前景。而无线接入和高速传输是WiFi的主要技术优点，WiFi技术与机器人技术的结合便产生了WiFiRobot。WiFi Robot是集远程无线通讯、音视频传输、数据采集、多向机械云台、灯光控制、环境检测、超声波测距、红外壁障、超声波领航、动力四驱、摄像头云台等功能为一体的多功能智能遥感机器人，以WiFi网络作为数据传输平台，以高速MCU为数据处理中心，可通过电脑、智能手机、平板电脑等设备进行远程控制，并可拓展更多功能。', 'https://picsum.photos/id/287/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/320/800/600'),
(88, '从2005年一代的512MB闪存到2008年四代的2GB闪存，从一代的口香糖式外形设计到四代的背夹式小巧设计，4年时间的发展奠定了iPod shuffle在播放器领域的地位，一种代表时尚与青春的态度，可以说风靡万千少男少女，真正的做到深入人心！', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/1005/800/600'),
(92, 'MacBook Pro Retina拥有更先进的元件，更先进的技术——最新的第四代双核与四核Intel处理器、速度高达700MB/s 的基于PCIe闪存、被称为5G网络的802.11ac无线网络技术、高达20Gb/s速度的Thunderbolt 2端口。', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/866/800/600'),
(96, '玩自拍，玩高清摄影，玩极限摄影，有一个牌子不得不提，这就是GoPro，也就是近期这个玩具开始时兴起来，无论是一些孩子通过GoPro拍到了外太空上地球的影像，还是飞行员用GoPro玩自拍搞得机毁人亡，还是100岁老太跳伞，都有GoPro的身影，同样越来越多的人开始发掘GoPro的潜力和可玩性。', 'https://picsum.photos/id/197/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/450/800/600'),
(98, '据外媒最新消息，美国权威消费者杂志《消费者报告》对全球最新智能手机进行了评比，三星Galaxy S10+以90分拿下榜单第一。而苹果iPhone XS Max和三星Galaxy S10虽分数同样也是90分，但却以小数点的差距，分别位列第二位和第三位。另外，第四位和第五位则分别是iPhone XS和Galaxy S10e(89分)。也就是说，三星Galaxy S10系列的三款机型均进入了榜单前五名，可谓实至名归。', 'https://picsum.photos/id/866/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/1005/800/600'),
(100, '从 2015 年，苹果推出第一代 Apple Watch 后，在这 3 年时间里，Apple Watch 已经凭借着较准确的定位、合理的迭代升级逐渐成为了目前智能手表行业相对较优的选择。\r\n\r\n今天凌晨发布的 Apple Watch 4 更是如此，我们认为在加入了「全面屏」设计的元素、ECG 心电监测功能以及更强的苹果 S4 双核芯片之后，它的竞争力有了显著的提升。', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600'),
(103, '在蓝牙4.2时代，续航、延迟与偶尔的断线是真无线耳机无法解决的问题，即使是价值超过千元的大品牌，比如苹果的airpod、索尼WF-1000X降噪豆、BOSESoundsportFree也无法幸免，毕竟蓝牙4.2的硬件条件并不十分完善。', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/167/800/600'),
(104, '游戏手柄品种琳琅满目，而游戏手柄除了可以在电脑上进行有线连接以外，很多手柄厂商也设计出了无线连接的手柄，毕竟厂商和消费者心知肚明：无线才是未来。与手机去除掉耳机孔不同，手柄的无线设计非常受欢迎。索尼、微软、任天堂三家游戏主机厂商招牌主机的手柄已经都是无线的设计了。而很多游戏手柄厂商也设计了很多无线连接的手柄。', 'https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/368/800/600'),
(105, '2017四川航展无人机专项展可谓异彩纷呈，既有像翼龙、彩虹、鹞鹰这样的空中“大块头”，也有新晋的太阳能Wifi无人机、以及貌似怪兽的软体无人机。更多的，当然还是应用范围涵盖安防、测绘、巡线、植保等行业应用的各种款式工业无人机，以及与此相关的行业上下游企业。', 'https://picsum.photos/id/1005/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600'),
(106, '相较上一代九号平衡车，九号平衡车Plus拥有八大改进，脚踏面积相较上一代提升19%，底盘高度离地增加17%，采用11英寸高性能防滑胎，新一代平衡车电机功率为800W。', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/251/800/600'),
(107, '从2017年推出首款激光电视以来，小米正式“扎根”智能微投领域，目前已经推出了三款家用投影产品，其中9999元的激光电视主要针对的还是高端家庭用户，而米家投影仪系列的两款产品则更多的面向普通家庭和年轻消费群体，尤其是最新发布的这款米家投影仪青春版，更是将价格拉至2199元（众筹价），不仅降低了用户选购的门槛，也更加符合入门级产品本身的定位，下面我们就来看看这款产品的实际体验效果。', 'https://picsum.photos/id/287/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/320/800/600'),
(108, '小米近日正式发布米家互联网洗烘一体机10kg版。米家互联网洗烘一体机10kg版采用BLDC变频电机、1400高转速、一级能效、以及包含智能空气洗在内的21种洗涤模式，性能强劲、功能齐全。米家互联网洗烘一体机还有“自定义”功能，用户可以调节并保存自己最喜爱的洗涤方式，轻松搞定家庭日常生活中的各种洗烘需求。当然，也可远程操控，不耽误出门买菜逛街，拿起手机随时监控工作状态，洗烘完成后会发出通知，一个APP就可以完全掌控这台洗烘一体机。', 'https://picsum.photos/id/197/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/450/800/600'),
(109, '<p>加湿器可以说是目前家里比较常见的生活用品之一了，特别是爱美的女性朋友们，为了能保持容颜润泽，经常会在身旁备用一台。其实对于更多的用户来说，加湿器的主要作用还是放在空调房里，用来调节房间湿度的，因为空调房的空气非常干燥，用户长期待在房间里会产生皮肤干涩的感觉，老一辈人都是在床底下放一盆水来起到加湿作用，现在人们生活水平提高了，自然更愿意花钱购买专门的加湿器来使用了。今天给大家介绍一款来自ORICO的空气加湿器，它的体积小巧，便于搬动，而且还能当小夜灯来使用，一举两得，实用性很不错。</p>', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/167/800/600');

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_archives`
--

CREATE TABLE `sf_cms_archives` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `channel_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `channel_ids` varchar(100) DEFAULT '' COMMENT '副栏目ID集合',
  `model_id` int(10) NOT NULL DEFAULT '0' COMMENT '模型ID',
  `special_ids` varchar(100) DEFAULT '' COMMENT '专题ID集合',
  `admin_id` int(10) UNSIGNED DEFAULT '0' COMMENT '管理员ID',
  `title` varchar(255) DEFAULT '' COMMENT '文章标题',
  `flag` varchar(100) DEFAULT '' COMMENT '标志',
  `style` varchar(100) DEFAULT '' COMMENT '样式',
  `image` varchar(255) DEFAULT '' COMMENT '缩略图',
  `images` varchar(1500) DEFAULT '' COMMENT '组图',
  `seotitle` varchar(255) DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `tags` varchar(255) DEFAULT '' COMMENT 'TAG',
  `price` decimal(10,2) UNSIGNED DEFAULT '0.00' COMMENT '价格',
  `outlink` varchar(255) DEFAULT '' COMMENT '外部链接',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论次数',
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点赞数',
  `dislikes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点踩数',
  `diyname` varchar(100) DEFAULT '' COMMENT '自定义URL',
  `isguest` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '是否访客访问',
  `iscomment` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '是否允许评论',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `publishtime` bigint(16) DEFAULT NULL COMMENT '发布时间',
  `deletetime` bigint(16) DEFAULT NULL COMMENT '删除时间',
  `memo` varchar(100) DEFAULT '' COMMENT '备注',
  `status` enum('normal','hidden','rejected','pulloff') NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='内容表';

--
-- 转存表中的数据 `sf_cms_archives`
--

INSERT INTO `sf_cms_archives` (`id`, `user_id`, `channel_id`, `channel_ids`, `model_id`, `special_ids`, `admin_id`, `title`, `flag`, `style`, `image`, `images`, `seotitle`, `keywords`, `description`, `tags`, `price`, `outlink`, `weigh`, `views`, `comments`, `likes`, `dislikes`, `diyname`, `isguest`, `iscomment`, `createtime`, `updatetime`, `publishtime`, `deletetime`, `memo`, `status`) VALUES
(1, 1, 6, '', 1, '', 0, '驰为发布HiGame迷你PC新品 小身材大能量', 'recommend', 'b|u|#fast', 'https://picsum.photos/id/1005/800/600', '', '', '驰为,笔记本,HiGame', '说到驰为（Chuwi），很多人第一时间想到的就是该公司的 Windows 笔记本或 Android 平板电脑。但是最近，该厂家又凭借 HiGame 子品牌进军了迷你游戏 PC 市场。作为一款迷你 PC，它的三围只有 17.3×15.8×7.3 CM（约 7×6×3 英寸）。即便如此，它的硬件配置也让我们眼前一亮。', 'HiGame,PC,驰为', '0.00', '', 0, 7426, 0, 83, 0, '', 1, 1, 1523718809, 1597139826, 1523635200, NULL, '', 'normal'),
(2, 1, 6, '', 1, '', 0, '宏碁Chromebox CXI3迷你台式机现已开放预定', '', '', 'https://picsum.photos/id/866/800/600', '', '', '宏基,台式机', '今年 1 月的时候，宏碁（Acer）发布了多款新产品，其中就包括 Chromebox CXI3 。与 Chromebook 笔记本不同，Chromebox CXI3 是一款运行 Chrome OS 的小型台式机。不占地方，显然是它的最大卖点，用户甚至可以将它背挂到显示器后面。如果你想要拥有一台，那么现在宏碁也已经开放预定了。', 'Chromebox,台式机,宏基', '0.00', '', 0, 1352, 0, 258, 0, '', 1, 1, 1523718936, 1597139833, 1523635200, NULL, '', 'normal'),
(3, 1, 6, '', 1, '', 0, 'Misfit最新的混合动力手表Path现已上市', 'recommend', '', 'https://picsum.photos/id/368/800/600', '', '', '手表,混合动力', 'Misfit的混合动力手表今天通过公司网站发售。它的售价为149.99美元，将有四种颜色可供选择：不锈钢，玫瑰金，黄金和带金色调的不锈钢。该公司首先在CES首次推出手表，在那里我们看到了这款小巧的新设备。这是该公司最小的手表 -  38毫米 - 并没有触摸屏，但它通过蓝牙与智能手机配对。', '智能手表,混合动力', '0.00', '', 0, 8942, 0, 267, 0, '', 1, 1, 1523719020, 1597139837, 1523635200, NULL, '', 'normal'),
(4, 1, 6, '', 1, '', 0, 'UE为现场演出者推出了价值2200美元的舞台耳返设备', '', '', 'https://picsum.photos/id/450/800/600', '', '', '耳返,智能设备', '大多数消费者可能熟悉UE推出的色彩鲜艳的蓝牙音箱，但该公司也有一系列定制入耳式耳机，UE刚刚推出了一款新的顶级旗舰机型：2,200美元的UE Live。UE Live耳机是该公司以前的旗舰UE18 Pro型号的进化版本，将每个耳机的扬声器数量从6个增加到8个，共计6个平衡电枢，一个True Tone Plus驱动器和一个6mm钕制动态扬声器，以提供更好的声音。', '智能设备,耳返', '0.00', '', 0, 7678, 0, 51, 0, '', 1, 1, 1523719106, 1597139842, 1523635200, NULL, '', 'normal'),
(5, 1, 6, '', 1, '', 0, '南孚推出全球首款测电器装电池：可秒分电池新旧', 'recommend', '', 'https://picsum.photos/id/167/800/600', '', '', '电池,南孚', '想必大家都遇到过这样尴尬的事情：家里有很多电池，用的时候也分不清哪个有电、哪个没电，扔了又怕浪费。于是旧的不丢掉，新的买来用，这样家里的电池越积攒越多，造成恶性循环。而现在，南孚带来了一款全新产品——南孚测电器装电池，包含南孚测电器和南孚碱性电池，轻轻松松测一测，电池电量一目了然。', '南孚,电池', '0.00', '', 0, 5385, 0, 57, 0, '', 1, 1, 1523719198, 1597139851, 1523635200, NULL, '', 'normal'),
(7, 1, 6, '', 1, '', 0, 'Snap新一代Spectacles眼镜文档已被FCC曝光', '', '', 'https://picsum.photos/id/866/800/600', '', '', '', '据 Variety 报道，FCC 辐射实验室刚刚证实了一副来自 Snap 的新眼镜。今日曝光的这款穿戴设备的文档称，这是一款由 Snap Inc. 制作的穿戴式视频拍摄装置。从印刷标签来看，其品牌名称为 Spectacles，型号为 Model 002 。尽管文件中所附的大部分内容都以保密为由被遮掩，但还是可以知道它支持低功耗蓝牙 4.2 和 802.11ac Wi-Fi 。', '智能设备,眼镜', '0.00', '', 0, 3222, 0, 15, 0, '', 1, 1, 1523719403, 1597139855, 1523635200, NULL, '', 'normal'),
(8, 1, 5, '', 1, '', 0, '投资者需求旺盛 Dropbox将IPO发行价区间调高2美元', '', '', 'https://picsum.photos/id/251/800/600', '', '', '', '云存储服务商Dropbox今日宣布，由于投资者需求强劲，现将IPO(数次公开招股)发行价区间调高2美元。上周一，Dropbox宣布将IPO发行价区间定为每股16美元至18美元，最高融资6.48亿美元，公司市值将达到约71亿美元。', 'dropbox,投资', '0.00', '', 0, 2723, 0, 66, 0, '', 1, 1, 1523719527, 1597139861, 1523635200, NULL, '', 'normal'),
(9, 1, 5, '', 1, '', 0, 'Dropbox股价上市首日大涨36% 市值超120亿美元', 'recommend', '', 'https://picsum.photos/id/197/800/600', '', '', '', '著名云存储服务提供商Dropbox在上市交易首日股价大涨36%，开盘定价为21美元每股，在当日最高时达到31.6美元每股，最终以28.48美元每股的价格收盘，现在市值超过120亿美元。可以明显看出公开市场投资者十分看好Dropbox这家主营业务为云存储服务和内容协作平台的公司。Dropbox最先对自己股价的预期是16到18美元每股，后来提升到18到20美元每股。而由于上市交易首日表现出色，超过了2014年私募时100亿美元的估值。', 'dropbox,投资', '0.00', '', 0, 2732, 0, 214, 0, '', 1, 1, 1523719610, 1597139866, 1523635200, NULL, '', 'normal'),
(10, 1, 5, '', 1, '', 0, '云存储公司Dropbox在美提交IPO申请：拟筹资5亿美元', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', '云存储公司Dropbox周五向美国证券交易委员会（SEC）提交了IPO（首次公开招股）申请文件，寻求筹集5亿美元资金。Dropbox的IPO交易长期以来备受市场期待，该公司四年前在私募投资市场上的估值就已高达100亿美元。', 'dropbox', '0.00', '', 0, 7388, 0, 168, 0, '', 1, 1, 1523719716, 1597139873, 1523635200, NULL, '', 'normal'),
(11, 1, 5, '', 1, '', 0, '通用电气针对Predix云平台的创业者推出奖励计划', 'recommend', '', 'https://picsum.photos/id/1005/800/600', '', '', '', '通用电气（GE）为推广Predix云平台的应用开发，在国内推出首期\"Predix星火计划\"，以奖励基于该平台的工业互联网开发者。首期有4家企业获奖，将进驻GE孵化器并获得技术支持和潜在投资机会。', '云计算,互联网', '0.00', '', 0, 5796, 0, 66, 0, '', 1, 1, 1523719810, 1597139878, 1523635200, NULL, '', 'normal'),
(13, 1, 5, '', 1, '', 0, '映泰Z390GT5主板手册曝光 英特尔Z390芯片组或即将到来 当', '', '', 'https://picsum.photos/id/287/800/600', '', '', '', '当英特尔上周推出更多更多 Coffee Lake CPU 和配套主板时，传说中的 Z390 芯片组却意外缺席了。不过有眼尖的人们发现，主板厂商映泰（Biostar）在自家 B360 Racing GT5 手册中，竟然清楚地列明了另一款名叫“Z390GT5”主板的存在。作为一个二线品牌，映泰的产品主打平价而不是古怪的设计。不过它与现有的 Z370 系列没有太大差别，而且最高支持的 CPU TDP 也仅为 95W，刚好够酷睿 i7-8700K 使用而已。', '智能设备', '0.00', '', 0, 3607, 0, 44, 0, '', 1, 1, 1523720694, 1597139887, 1523635200, NULL, '', 'normal'),
(14, 1, 4, '', 1, '', 0, '在数据黑箱和信赖危机面前 谁更应该战战兢兢？', '', '', 'https://picsum.photos/id/368/800/600', '', '', '', '4 月 11 日，Valve 宣布旗下著名的 PC 游戏发行平台 Steam 会推出新的用户数据隐私安全措施。今后玩家们可以选择隐藏你的游戏库内容，也可以隐藏你的活动细节，具体到最近收藏什么游戏，买了什么游戏，玩了什么游戏以及在某游戏上花了多少小时等等。', '安全', '0.00', '', 0, 6375, 0, 227, 0, '', 1, 1, 1523720913, 1597139894, 1523635200, NULL, '', 'normal'),
(15, 1, 4, '', 1, '', 0, 'Google Chrome和Mozilla Firefox将支持全新无密码登录规范', 'recommend', '', 'https://picsum.photos/id/320/800/600', '', '', '', '今天，W3C和FIDO联盟标准机构宣布，Web浏览器正在构建一种新的登录方式。这款名为WebAuthn所呈现的新开放标准将在最新版本的Firefox中得到支持，并将在未来几个月发布的Chrome和Edge的版本中得到支持。这是多年来的最新举措，目的是让用户远离密码，转向更安全的登录方式，如生物识别和USB令牌。', '互联网,安全', '0.00', '', 0, 8640, 0, 17, 0, '', 1, 1, 1523720991, 1597139899, 1523635200, NULL, '', 'normal'),
(16, 1, 4, '', 1, '', 0, 'GitHub 安全警告计划已检测出 400 多万个漏洞', '', '', 'https://picsum.photos/id/265/800/600', '', '', '', 'Github 去年推出的安全警告，极大减少了开发人员消除 Ruby 和 JavaScript 项目漏洞的时间。GitHub 安全警告服务，可以搜索依赖寻找已知漏洞然后通过开发者，以便帮助开发者尽可能快的打上补丁修复漏洞，消除有漏洞的依赖或者转到安全版本。', '互联网,安全', '0.00', '', 0, 6792, 0, 70, 0, '', 1, 1, 1523721095, 1597139904, 1523635200, NULL, '', 'normal'),
(18, 1, 10, '', 2, '', 0, '小米无线蓝牙耳机mini', '', '', 'https://picsum.photos/id/320/800/600', '', '', '', '小米蓝牙耳机mini非常迷你，仅有4.9g，内置麦克风，支持语音通话。侧入耳贴合佩戴，稳固不易掉。一键式多控操作，仅有的一个按键即可实现双击唤醒小爱同学、轻按播放/暂停等多种功能。这款耳机支持IPX4防水，适合运动佩戴，带3副硅胶耳帽。', '互联网,安全', '0.00', '', 0, 1241, 0, 277, 0, '', 1, 1, 1523721203, 1597139969, 1523635200, NULL, '', 'normal'),
(20, 1, 3, '', 1, '', 0, '节省40%搜索流量:Google Go轻量级应用将于非洲市场推出', '', '', 'https://picsum.photos/id/866/800/600', '', '', '', '针对新兴市场，Google希望通过Google Go轻量级应用帮助身处网络速度慢、流量资费高昂地区的用户获得更流畅的网络搜索体验。现在谷歌正向在26个撒哈拉以南非洲国家/地区推广，Google Go轻量级应用可以让搜索数据用流量减少40%，并且支持对以往搜索记录的脱机访问。', 'Google,互联网', '0.00', '', 0, 2386, 0, 128, 0, '', 1, 1, 1523721344, 1597139972, 1523635200, NULL, '', 'normal'),
(21, 1, 3, '', 1, '', 0, '谷歌公布Fuchsia文档：并非Linux内核 从头构建自己的库和组件', 'recommend', '', 'https://picsum.photos/id/368/800/600', '', '', '', '尽管已经研发两年多时间，但对于Fuchsia系统Google始终缄口不言。不过今天，公司发表了名为“The Book”的深度解析文档，详细介绍了这款计划取代Android和Chrome OS的操作系统。 目前Android和Chrome OS都是使用Linux内核，不过在最新发布的文档中谷歌明确Fuchsia并非基于Linux内核。', 'Google,互联网', '0.00', '', 0, 4119, 0, 235, 0, '', 1, 1, 1523721408, 1597139976, 1523635200, NULL, '', 'normal'),
(22, 1, 3, '', 1, '', 0, '谷歌手机应用可直接过滤语音垃圾邮件', 'recommend', '', 'https://picsum.photos/id/251/800/600', '', '', '', '谷歌手机应用程序在2月份收到了主要更新，为快速通话控件添加了便捷的聊天功能。在接下来的几周里，Pixel，Nexus和Android One设备的默认拨号程序正在添加垃圾邮件过滤功能，并附带一个新的测试版程序，现在就可以试用该功能。', 'Google,互联网', '0.00', '', 0, 6818, 0, 16, 0, '', 1, 1, 1523721460, 1597139979, 1523635200, NULL, '', 'normal'),
(23, 1, 10, '', 2, '', 0, 'AMAZFIT米动手环2', '', '', 'https://picsum.photos/id/167/800/600', '', '', '', '随着智能穿戴设备越来越普及，市场上相关的智能手环和智能手表类产品层出不穷，不过提起好用又便宜的高性价比智能手环，几乎所有人都会第一个想到小米科技带来的小米手环系列，现如今小米手环已经发布到了第四代，可以说从功能到设计都已经趋于完美。', '互联网', '0.00', '', 0, 2121, 0, 273, 0, '', 1, 1, 1523721500, 1597139983, 1523635200, NULL, '', 'normal'),
(24, 1, 3, '', 1, '', 0, '谷歌携手美国医学协会 促进健康监测设备数据共享', '', '#f5058c', 'https://picsum.photos/id/287/800/600', '', '', '', '谷歌正在与美国医学协会（美国的一个医师游说团体）进行合作，双方达成一项挑战计划，其内容是让初创企业能够想出“促进健康监测设备数据共享的最佳新思路”。美国医学协会于周一表示，最终的挑战成果将会是一款手机应用或可穿戴设备。', 'Google,互联网', '0.00', '', 0, 9049, 0, 238, 0, '', 1, 1, 1523721555, 1597139986, 1523635200, NULL, '', 'normal'),
(28, 1, 9, '', 2, '', 0, 'iPhoneX 智能手机', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', '虽然iphone已经上新款，但iphonex仍是你能买到的最棒的智能手机，为什么这么说呢，由于现在新款iPhone X XR、XS 以及max以及陆续可以接受预定，据我所知XR的屏幕没有iPhone 好，但是价格却更贵', '互联网', '0.00', '', 0, 2532, 0, 267, 0, '', 1, 1, 1523755374, 1597139989, 1523721600, NULL, '', 'normal'),
(33, 1, 3, '', 1, '', 0, 'GitHub 去年为漏洞支付了 16.6 万美元赏金', '', '', 'https://picsum.photos/id/265/800/600', '', '', '', '据外媒报道，去年，GitHub 向安全研究人员支付了总计 166495 美元的奖励，针对 GitHub 这个为期四年的“漏洞赏金”项目，安全研究人员会上报自己发现的系统问题和漏洞。2016 年，GitHub 一共支付了81.7万美元，而去年的支出总额显然已经翻了一倍多，几乎相当于前三年的总支出（17.7万美元）。在 2014 和 2015 两年时间里，他们一共支付了95.3万美元的奖金。', '互联网,安全', '0.00', '', 0, 6834, 0, 225, 1, '', 1, 1, 1523895893, 1597139992, 1523894400, NULL, '', 'normal'),
(34, 1, 6, '', 1, '', 0, 'Leap Motion AR头显看起来很疯狂但可能是奇迹', 'top', '', 'https://picsum.photos/id/197/800/600', '', '', '', '本周我们正在研究Leap Motion为增强现实带来的新东西。我们已经看到他们之前创造了一些令人难以置信的技术，尤其是当涉及到运动跟踪和控制时。现在看起来他们认为他们是以面向优先的方式进入AR增强现实世界。', 'AR,互联网', '0.00', '', 9999, 7008, 3, 70, 0, '', 1, 1, 1523895990, 1597140218, 1523894400, NULL, '', 'normal'),
(36, 1, 10, '', 2, '', 0, '海美迪高清4K小白盒', '', '', 'https://picsum.photos/id/1005/800/600', '', '', '', '2018年，4K机顶盒被层出不穷的人工智能新品消息所淹没，微创新不足的4K机顶盒行情显得有些疲乏。海美迪针对快速发展的潮流，推出了一款人工智能复合型产品。', 'VR,互联网', '0.00', '', 0, 656, 0, 191, 0, '', 1, 1, 1545930397, 1553991181, 1545926400, NULL, '', 'normal'),
(40, 1, 12, '', 3, '', 0, 'Qbserve 1.82 追踪你在 Mac 上的时间消耗', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', '创建多页PDF文档 多功能3D建模器 Rhinoceros 5.5 多功能3D建模器 不受限制的自由形式三维建模工具。可以创建，编辑，分析，文档，渲染，动画和翻译NURBS曲线，曲面和实体', 'Mac', '0.00', '', 0, 9782, 0, 296, 0, '', 1, 1, 1553508797, 1597139997, 1553443200, NULL, '', 'normal'),
(41, 1, 12, '', 3, '', 0, 'Sublime Text 3.2 Build 3202', '', '', 'https://picsum.photos/id/251/800/600', '', '', '', 'Sublime Text被称作Mac下的TextMate，而根据其官网介绍，Sublime Text的特点如下：拥有高效、没有干扰的界面，在编辑方面的多选、宏、代码片段等功能，以及很有特色的Minimap。', 'Sublime', '0.00', '', 0, 9990, 0, 11, 0, '', 1, 1, 1553511117, 1597140005, 1553443200, NULL, '', 'normal'),
(42, 1, 12, '', 3, '', 0, 'Secret Folder Pro 9.7 文件夹加密', '', '', 'https://picsum.photos/id/866/800/600', '', '', '', 'Secret Folder能够帮助你隐藏文件夹和其内容。如果你有私密和敏感信息不想被被人看到、修改和删除，那么只要轻松的点击几下鼠标，再输入密码就完全可以办到了。', '安全', '0.00', '', 0, 1767, 0, 234, 0, '', 1, 1, 1553520215, 1597140008, 1553443200, NULL, '', 'normal'),
(43, 1, 12, '', 3, '', 0, 'FontLab VI 6.1.3(7013) 字体编辑器', '', '', 'https://picsum.photos/id/197/800/600', '', '', '', 'FontLab VI 是一款Mac上的字体编辑软件，可以自动计算字距和指标，还可以修改字体，字形和技术字体信息，也能在zip中打开BitFonter Photofont（PHF + PNG，+ SVG），Fontographer（FOG），Glyphs，Ikarus的任意一种。', '字体', '0.00', '', 0, 3653, 0, 147, 0, '', 1, 1, 1553520395, 1597140011, 1553443200, NULL, '', 'normal'),
(44, 1, 12, '', 3, '', 0, 'Compressor 4.4.4 苹果官方出品视频解码格式转换工具', 'recommend', '', 'https://picsum.photos/id/368/800/600', '', '', '', 'Compressor 为 Final Cut Pro X 导出增添了功能和灵活性。自定了输出设置，采用分布式编码，工作更快，同时接进了一套全面的传送功能。', 'Mac', '0.00', '', 0, 3498, 0, 85, 0, '', 1, 1, 1553526718, 1597140015, 1553443200, NULL, '', 'normal'),
(45, 1, 12, '', 3, '', 0, 'TextMate 2.0 RC 23 著名的文本编辑器', '', '', 'https://picsum.photos/id/265/800/600', '', '', '', 'TextMate是Mac下的著名的文本编辑器软件，与BBedit一起并称苹果机上的emacs和vim。尤其适合程序员使用，可以定制许多贴心使用的功能。', 'Mac', '0.00', '', 0, 3581, 0, 284, 0, '', 1, 1, 1553526799, 1597140018, 1553443200, NULL, '', 'normal'),
(46, 1, 12, '', 3, '', 0, 'Sketch 53.2 轻量易用的矢量设计工具', '', '', 'https://picsum.photos/id/287/800/600', '', '', '', 'Sketch（App Store 精华） 是最强大的移动应用矢量绘图设计工具，对于网页设计和移动设计者来说，比PhotoShop好用N倍！尤其是在移动应用设计方面，Sketch 3 的优点在于使用简单，学习曲线低，并且功能更加强大易用。能够大大节省设计师的时间和工作量，非常适合进行网站设计、移动应用设计、图标设计等', '', '0.00', '', 0, 6531, 0, 129, 0, '', 1, 1, 1553526941, 1597140021, 1553443200, NULL, '', 'normal'),
(47, 1, 12, '', 3, '', 0, 'Pikka 2.0.4 菜单栏屏幕取色器', 'recommend', '', 'https://picsum.photos/id/1005/800/600', '', '', '', 'Pikka 是一款出色的颜色采集软件，在菜单栏以图标的形式显示，非常的简洁，点击图标就可以直接选取你所需要的颜色，非常的高效；颜色采样时还会自带一个放大器，非常的精准。', '', '0.00', '', 0, 1858, 0, 193, 0, '', 1, 1, 1553527005, 1597140024, 1553443200, NULL, '', 'normal'),
(48, 1, 12, '', 3, '', 0, 'Pixelmator 3.8.2(90215) 能修图的不只有PS', '', '', 'https://picsum.photos/id/320/800/600', '', '', '', 'Mac OS X 专有的图像处理软件。Pixelmator 界面清爽，布局灵活，熟悉 Photoshop 的人可迅速上手。软件建立在一些开源和 Mac OS X 图形技术之上，可调用 Mac 图形加速。使用起来在界面交互和流畅感上均优于 Photoshop，且与 Mac 自带程序整合不错。', '', '0.00', '', 0, 6528, 0, 102, 0, '', 1, 1, 1553527091, 1597140027, 1553443200, NULL, '', 'normal'),
(49, 1, 13, '', 3, '', 0, 'iShowU Instant 1.2.11 实时屏幕录制软件', 'recommend', '', 'https://picsum.photos/id/167/800/600', '', '', '', 'iShowU Instant是一款macOS平台的功能强大的屏幕录像软件，可以帮助我们在mac电脑上实现多种录像需求，支持游戏录制、屏幕录制、摄像头录制，还可以帮助用户对视频进行编辑。', '', '0.00', '', 0, 7308, 0, 193, 0, '', 1, 1, 1553527292, 1597140030, 1553443200, NULL, '', 'normal'),
(50, 1, 13, '', 3, '', 0, 'VideoProc 3.2(2019013001) 视频格式转换', 'recommend', '', 'https://picsum.photos/id/866/800/600', '', '', '', 'VideoProc是Mac平台上的一款视频处理软件，旨在通过全硬件加速来剪切，修剪，合并，调整，转码，编辑4k视频。', '', '0.00', '', 0, 97, 0, 38, 0, '', 1, 1, 1553527351, 1597140033, 1553443200, NULL, '', 'normal'),
(51, 1, 13, '', 3, '', 0, 'RightFont 5.4.1(2474) 超级好用的字体管理工具', 'recommend', '', 'https://picsum.photos/id/1005/800/600', '', '', '', 'RightFont是 Mac OS X 上一款非常轻巧的字体管理工具，目前已经完成了与 PhotoShop、Sketch 两大设计应用的集成。', '字体', '0.00', '', 0, 6023, 0, 191, 0, '', 1, 1, 1553694054, 1597140037, 1553616000, NULL, '', 'normal'),
(52, 1, 13, '', 3, '', 0, 'SPlayerX 4.1.4 射手播放器', 'recommend', '', 'https://picsum.photos/id/265/800/600', '', '', '', '射手播放器, 国内著名字幕发布网站旗下的播放器', '播放器', '0.00', '', 0, 3561, 0, 265, 0, '', 1, 1, 1553694139, 1597140040, 1553616000, NULL, '', 'normal'),
(53, 1, 13, '', 3, '', 0, 'Sidify Music Converter 1.3.2 优秀的音乐转换工具', '', '', 'https://picsum.photos/id/368/800/600', '', '', '', 'Sidify Music Converter是一款苹果音乐转换软件，可以去除DRM的软件。它可以把苹果音乐转换为MP3或M4A格式，从而可以在其他设备播放。这个软件还可以将iTunes M4P音乐, M4A/M4B有声读物，以及AA/AAX 有声读物的DRM去掉，转换为自由播放的MP3, M4A和M4B。', '播放器', '0.00', '', 0, 3465, 0, 25, 0, '', 1, 1, 1553694196, 1597140043, 1553616000, NULL, '', 'normal'),
(54, 1, 13, '', 3, '', 0, 'Meta 1.9.2(2358) 音频元数据音乐标签信息编辑器', 'recommend', '', 'https://picsum.photos/id/167/800/600', '', '', '', 'Meta将帮助您管理不断增长的数字音乐收藏。它支持大多数音频格式的编辑，如MP3，MP4，M4A，FLAC，OGG，OGA，SPX，WAV等等。 AIFF和各种元数据格式，包括ID3v1，ID3v2.3，ID3v2.4，ITunes MP4，Vorbis注释和APE标签。', '', '0.00', '', 0, 3770, 0, 191, 0, '', 1, 1, 1553694251, 1597140047, 1553616000, NULL, '', 'normal'),
(55, 1, 13, '', 3, '', 0, 'DRmare Audio Converter 2.0.2.16 DRM音频清除转换应用', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', 'DRmare Audio Converter是mac平台上一款强大的DRM音频清除转换工具，它可以帮助您从受保护的Apple Music，iTunes歌曲和Audible有声读物中删除DRM，自定义输出音频格式和质量，整理专辑标签信息等。', '', '0.00', '', 0, 426, 0, 93, 0, '', 1, 1, 1553694301, 1597140049, 1553616000, NULL, '', 'normal'),
(56, 1, 13, '', 3, '', 0, 'Joyoshare Screen Recorder 2.0.0.22 Mac屏幕录制应用', '', '', 'https://picsum.photos/id/197/800/600', '', '', '', 'Joyoshare Screen Recorder可以用来录制视频、音频等任何屏幕上的活动，一键即可开始录制，非常便捷。', '屏幕录制', '0.00', '', 0, 4178, 0, 49, 0, '', 1, 1, 1553694911, 1597140059, 1553616000, NULL, '', 'normal'),
(57, 1, 13, '', 3, '', 0, 'Camtasia 2018.0.8(105822) 强大且易用的视频录制和剪辑软件', 'recommend', '', 'https://picsum.photos/id/251/800/600', '', '', '', 'Camtasia Studio是一套专业的屏幕录像软件，同时包含Camtasia 录像器、Camtasia Studio（编辑器）、Camtasia 菜单制作器、Camtasia 剧场、Camtasia 播放器和Screencast的内置功能。', '视频录制', '0.00', '', 0, 5514, 0, 83, 0, '', 1, 1, 1553695266, 1597140061, 1553616000, NULL, '', 'normal'),
(58, 1, 13, '', 3, '', 0, 'iRingg 1.0.38 iPhone铃声制作', '', '', 'https://picsum.photos/id/320/800/600', '', '', '', 'iRingg可以帮助我们在Mac电脑上非常方便高效地制作iPhone铃声，并且一键发送至设备。', '铃声制作', '0.00', '', 0, 7164, 0, 228, 0, '', 1, 1, 1553695576, 1597140064, 1553616000, NULL, '', 'normal'),
(59, 1, 13, '', 3, '', 0, 'Autodesk MayaLT 2019 最牛3D动画软件', '', '', 'https://picsum.photos/id/287/800/600', '', '', '', 'Autodesk Maya 是一款Mac OS平台上的业界顶级的三维动画软件，由todesk公司出品的。可以说是三维动画制作必备工具，集成 Bifrost , Bifrost Node Editor 材质编辑器, 渲染窗口, 建模工具, 菜单显示优化, 插件管理器优化, XGEN正是集成。', '动画软件', '0.00', '', 0, 6465, 0, 287, 0, '', 1, 1, 1553695767, 1597140068, 1553616000, NULL, '', 'normal'),
(60, 1, 13, '', 3, '', 0, 'Cinemagraph Pro 2.7.1 专业的动态图片与视频制作工具', 'recommend', '', 'https://picsum.photos/id/866/800/600', '', '', '', 'Cinemagraph Pro是一款专业的动态图片与视频制作工具, 全新的动态蒙版技术与预览技术. 将可以实时输出 HP 与 4K 图片效果.', '视频制作', '0.00', '', 0, 8369, 0, 96, 0, '', 1, 1, 1553695899, 1597140070, 1553616000, NULL, '', 'normal'),
(61, 1, 13, '', 3, '', 0, 'Loopback 2.0.0 高端虚拟录音工作室 ', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', 'Loopback 是一款Mac平台上的可以创建虚拟音频设备的工具，从应用程序和音频的输入的设备创建虚拟音频设备的声音，然后将其发送给音频处理应用程序。Loopback 会给了你一个高端录音工作室。', '虚拟录音', '0.00', '', 0, 821, 0, 137, 0, '', 1, 1, 1553696042, 1597140076, 1553616000, NULL, '', 'normal'),
(62, 1, 13, '', 3, '', 0, 'MacX Video Converter Pro 6.4.0(20181213) 视频转换器', 'recommend', '', 'https://picsum.photos/id/320/800/600', '', '', '', 'MacX DVD Video Converter Pro 是一款很好用的视频转换器，支持几乎所有的视频格式之间的互相转换。', '视频转换器', '0.00', '', 0, 280, 0, 233, 0, '', 1, 1, 1553696153, 1597140079, 1553616000, NULL, '', 'normal'),
(63, 1, 13, '', 3, '', 0, 'Swinsian 2.1.11 专业的好用的Mac音乐播放器', '', '', 'https://picsum.photos/id/167/800/600', '', '', '', 'Swinsian Mac版是Mac os平台上的一款专业的好用的Mac音乐播放器，Swinsian可以管理自己的音频文件，你可以自己根据自己的浏览方式浏览自己的音频文件，这款软件要比iTunes好用的多，不需要那么繁琐的操作，还可以通过这款软件下载文件到移动设备。', '音乐播放器', '0.00', '', 0, 7916, 0, 190, 0, '', 1, 1, 1553696252, 1597140082, 1553616000, NULL, '', 'normal'),
(64, 1, 13, '', 3, '', 0, 'ProPresenter 6.3.8 现场演出和媒体演示工具', '', '', 'https://picsum.photos/id/368/800/600', '', '', '', 'ProPresenter是一个演示系统，利用两个屏幕，使用户能够快速，轻松地在一个屏幕上演示幻灯片同时控制另一个屏幕演示文稿。', '媒体演示', '0.00', '', 0, 7860, 0, 10, 0, '', 1, 1, 1553696367, 1597140084, 1553616000, NULL, '', 'normal'),
(65, 1, 13, '', 3, '', 0, 'PrimoMusic 1.6-20181024 音乐管理工具', '', '', 'https://picsum.photos/id/251/800/600', '', '', '', 'PrimoMusic 是一款音乐管理工具，可以帮助管理iPhone、iPad、iPod上的音乐，支持导入导出音乐', '音乐管理', '0.00', '', 0, 8090, 0, 284, 0, '', 1, 1, 1553696539, 1597140087, 1553616000, NULL, '', 'normal'),
(66, 1, 13, '', 3, '', 0, 'Wondershare AllMyMusic 2.4.1 音频录制工具', '', '', 'https://picsum.photos/id/197/800/600', '', '', '', 'AllMyMusic是一款Mac上的音频录制工具，由Wondershare出品，这款软件可以录制电脑内播放的任何声音，比如你在线播放的音乐、在线的视频等都可以通过这款软件录制下载，然后保存到本地，日后即可离线播放。', '音频录制', '0.00', '', 0, 2933, 0, 191, 0, '', 1, 1, 1553696648, 1597140090, 1553616000, NULL, '', 'normal'),
(67, 1, 12, '', 3, '', 0, 'Jutoh 2.89.3 电子书设计制作软件', '', '', 'https://picsum.photos/id/1005/800/600', '', '', '', 'Jutoh 是一款电子书设计编辑制作软件，它可以很容易地创造流行的格式。通过现有的文件，使用新建项目向导，你可以在几秒钟内创建你的项目，或从头使用内置的样式文本编辑器，创造你的作品。通过内置的封面编辑器，你可以从Jutoh的模板或创建自己的封面。', '电子书设计制作', '0.00', '', 0, 2916, 0, 167, 0, '', 1, 1, 1553696834, 1597140093, 1553616000, NULL, '', 'normal'),
(68, 1, 12, '', 3, '', 0, 'Adobe Acrobat Pro DC 2019.010.20098 强大的PDF编辑软件', '', '', 'https://picsum.photos/id/265/800/600', '', '', '', '该产品颠覆了当今文件的处理方式，旨在提高文件处理效率！', 'PDF编辑软件', '0.00', '', 0, 9017, 0, 253, 0, '', 1, 1, 1553697041, 1597140097, 1553616000, NULL, '', 'normal'),
(69, 1, 12, '', 3, '', 0, 'MarsEdit 4.2.6 博客写作软件', '', '', 'https://picsum.photos/id/287/800/600', '', '', '', 'MarsEdit是一款博客写作软件，可同步博客到本地，预览、编辑、发布、分类、标签等一系列功能。可同步到常见博客上', '博客写作', '0.00', '', 0, 5071, 0, 3, 0, '', 1, 1, 1553697200, 1597140100, 1553616000, NULL, '', 'normal'),
(70, 1, 12, '', 3, '', 0, 'Devonthink Pro Office 2.11.2 文件管理用具', '', '', 'https://picsum.photos/id/368/800/600', '', '', '', 'DEVONthink Pro Office 是一款Mac上知名的数字多媒体资源管理工具，支持统一管理Mac上的所有多媒体文档，如PDF、Word、PPT、TXT等所有文档，并支持OCR图片文字识别、快速分享、只能搜索等功能', '文件管理', '0.00', '', 0, 5201, 0, 173, 0, '', 1, 1, 1553697475, 1597140103, 1553616000, NULL, '', 'normal'),
(71, 1, 12, '', 3, '', 0, 'Downcast 2.9.38 Podcast订阅工具', '', '', 'https://picsum.photos/id/251/800/600', '', '', '', 'Downcast 可以下载、 播放和同步你最喜欢的播客。', 'Podcast订阅', '0.00', '', 0, 3153, 0, 256, 0, '', 1, 1, 1553697600, 1597140107, 1553616000, NULL, '', 'normal'),
(72, 1, 12, '', 3, '', 0, 'Mate Translate 5.1.3 多国语言即时翻译工具', '', '', 'https://picsum.photos/id/167/800/600', '', '', '', 'Mate Translate是一款多国语言即时翻译工具，支持103种语言之间的即时互译。', '即时翻译', '0.00', '', 0, 3093, 0, 298, 0, '', 1, 1, 1553697685, 1597140110, 1553616000, NULL, '', 'normal'),
(73, 1, 8, '', 2, '', 0, '极简化设计手表', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', '手表在今天已经不再是一件简单的计时工具，它能反射出佩戴者的气质、品味和性格。极简风格腕表是现在年轻人最喜欢的手表风格之一，简单洁白的表盘成为了文艺青年们个性与思想的表达。今天就为大家介绍十二款最好看的极简手表，如果您也喜欢极简手表，那就一起来看看吧。', '智能手表', '0.00', '', 0, 366, 0, 62, 0, '', 1, 1, 1553697736, 1597140113, 1553616000, NULL, '', 'normal'),
(74, 1, 12, '', 3, '', 0, 'Banktivity 7.1.2 财务管理软件', '', '', 'https://picsum.photos/id/320/800/600', '', '', '', 'Banktivity是一款Mac上强大专业的财务管理软件，具有丰富的数据导入和导出功能、多账户管理、预算管理、数据同步、智能的报表等等功能', '财务管理', '0.00', '', 0, 9100, 0, 281, 0, '', 1, 1, 1553697775, 1597140116, 1553616000, NULL, '', 'normal'),
(75, 1, 12, '', 3, '', 0, 'eZip 粉丝力荐的压缩软件', '', '', 'https://picsum.photos/id/866/800/600', '', '', '', 'eZip是一款功能上跟 Betterzip 差不多，支持格式很多，支持不解压预览，支持QuickLook，支持拖拽解压。', '压缩软件', '0.00', '', 0, 9441, 0, 276, 0, '', 1, 1, 1553697894, 1597140119, 1553616000, NULL, '', 'normal'),
(76, 1, 12, '', 3, '', 0, 'Autodesk AutoCAD 2019 强大的CAD绘图工具', '', '', 'https://picsum.photos/id/197/800/600', '', '', '', 'AutoCAD 2015 for mac是用于mac OS平台二维绘图、详细绘制、设计文档和基本三维的设计软件。现已经成为国际上广为流行的绘图工具。', 'CAD绘图', '0.00', '', 0, 7556, 0, 6, 0, '', 1, 1, 1553698018, 1597140122, 1553616000, NULL, '', 'normal'),
(77, 1, 14, '', 3, '', 0, 'iTubeDownloader 6.4.8 在线视频下载工具', '', '', 'https://picsum.photos/id/1005/800/600', '', '', '', 'iTubeDownloader 是一款Mac上优秀的在线视频下载工具，操作简单，只需要复制网址到软件上就可以自动下载在线视频，支持1080高清视频下载，可以帮助用户轻松的下载Youtube等网站上的所有视频文件到本地浏览观看。', '在线视频下载', '0.00', '', 0, 8326, 0, 32, 0, '', 1, 1, 1553698196, 1597140125, 1553616000, NULL, '', 'normal'),
(78, 1, 14, '', 3, '', 0, 'Downie 3.6.4 视频下载工具', '', '', 'https://picsum.photos/id/265/800/600', '', '', '', '简单的拖放链接到Downie，它就会下载该网站上的视频。', '视频下载', '0.00', '', 0, 323, 0, 254, 0, '', 1, 1, 1553698506, 1597140128, 1553616000, NULL, '', 'normal'),
(79, 1, 14, '', 3, '', 0, 'MediaHuman Youtube Downloader 3.9.9.13(1803) 视频下载', '', '', 'https://picsum.photos/id/287/800/600', '', '', '', 'MediaHuman Youtube Downloader是一个简单的OSX实用程序，它可以帮助您以一种高效的方式处理任务：可以同时处理多个视频，只能提取音频，并且可以将歌曲发送到iTunes库。可用于多个视频共享平台的下载工具。', '视频下载', '0.00', '', 0, 1199, 0, 21, 0, '', 1, 1, 1553698704, 1597140131, 1553616000, NULL, '', 'normal'),
(80, 1, 14, '', 3, '', 0, 'Jump Desktop 8.2.14 远程桌面', '', '', 'https://picsum.photos/id/197/800/600', '', '', '', 'Jump Desktop 是MAC OS平台上的一款远程控制程序，支持Windows和Mac 双平台，通过邮件关联即可帮助设备自动找到桌面并进行操作。', '', '0.00', '', 0, 9870, 0, 219, 0, '', 1, 1, 1553698807, 1597140133, 1553616000, NULL, '', 'normal'),
(81, 1, 9, '', 2, '', 0, '无线WIFI智能机器人', '', '', 'https://picsum.photos/id/368/800/600', '', '', '', 'WiFi是一种无线局域网运用技术，其出现以来，凭借组网方便、易于扩展等特点，有着广泛的应用前景。而无线接入和高速传输是WiFi的主要技术优点，WiFi技术与机器人技术的结合便产生了WiFiRobot。', '机器人', '0.00', '', 0, 6738, 0, 57, 0, '', 1, 1, 1553698859, 1597140137, 1553616000, NULL, '', 'normal'),
(82, 1, 14, '', 3, '', 0, 'WiFi Explorer Pro 2.1.6 Mac上强大的WiFi无线扫描和管理工具', '', '', 'https://picsum.photos/id/287/800/600', '', '', '', 'WiFi Explorer Pro是一款运行在Mac平台上的WiFi资源管理器专业版，可以帮助用户监控和排除无线网络故障，还具备信息元素解码、注释和自定义颜色、频谱分析整合、增强过滤等实用的功能。', 'WiFi无线扫描和管理', '0.00', '', 0, 9189, 0, 10, 0, '', 1, 1, 1553698936, 1597140140, 1553616000, NULL, '', 'normal'),
(83, 1, 14, '', 3, '', 0, 'WiFi Scanner 2.9 无线WiFi网络管理工具', '', '', 'https://picsum.photos/id/265/800/600', '', '', '', 'WiFi Scanner是一款Mac平台的Wifi无线网络扫描管理软件，可以查找正在广播 SSID 的接入点和客户端。它可以用于WiFi现场调查，WiFi 的发现，并连接到的无线网络。该工具可以配合BSSID/MAC地址显示以dBm为单位的信号强度。', '无线WiFi网络管理', '0.00', '', 0, 3951, 0, 266, 0, '', 1, 1, 1553699076, 1597140143, 1553616000, NULL, '', 'normal'),
(84, 1, 14, '', 3, '', 0, '4K Video Downloader 4.5.0 下载高品质的YouTube视频', '', '', 'https://picsum.photos/id/368/800/600', '', '', '', '4K Video Downloader 是“一个视频下载工具，如此简单，就是一个视频下载工具该有的样子”。复制 YouTube 视频链接并点击界面左上角的 “Paste URL”，就能自动识别 4K 甚至是原始分辨率片源。接下来，选择分辨率、格式后就开始下载了。', 'YouTube视频', '0.00', '', 0, 2335, 0, 155, 0, '', 1, 1, 1553699199, 1597140146, 1553616000, NULL, '', 'normal'),
(85, 1, 14, '', 3, '', 0, 'VideoDuke 1.0(204) 视频下载', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', 'VideoDuke 支持在网站视频下载所有流行格式的视频文件，可以以各种文件格式保存。只需将链接粘贴到应用中即可完成。', '视频下载', '0.00', '', 0, 8787, 0, 254, 0, '', 1, 1, 1553699324, 1597140149, 1553616000, NULL, '', 'normal'),
(86, 1, 14, '', 3, '', 0, 'Paw 3.1.8 实用的HTTP/REST服务测试工具', '', '', 'https://picsum.photos/id/251/800/600', '', '', '', 'Paw 是一款Mac上实用的HTTP/REST服务测试工具，完美兼容最新的OS X El Capitan系统，Paw可以让Web开发者设置各种请求Header和参数，模拟发送HTTP请求，测试响应数据，支持OAuth, HTTP Basic Auth, Cookies，JSONP等，这对于开发Web服务的应用很有帮助，非常实用的一款Web开发辅助工具。', 'HTTP/REST服务测试', '0.00', '', 0, 5952, 0, 132, 0, '', 1, 1, 1553699458, 1597140152, 1553616000, NULL, '', 'normal'),
(87, 1, 14, '', 3, '', 0, 'WiFiSpoof 3.4.3 MAC地址修改工具', '', '', 'https://picsum.photos/id/866/800/600', '', '', '', 'WiFiSpoof是一款适用于Mac系统的wifi地址修改器，用户只需要安装WiFiSpoof for mac，点击打开就能很直观的修改Mac地址，很容易操作。', 'MAC地址修改', '0.00', '', 0, 4000, 0, 207, 0, '', 1, 1, 1553699589, 1597140155, 1553616000, NULL, '', 'normal'),
(88, 1, 9, '', 2, '', 0, 'iPod Shuffle 播放器', '', '', 'https://picsum.photos/id/1005/800/600', '', '', '', '从2005年一代的512MB闪存到2008年四代的2GB闪存，从一代的口香糖式外形设计到四代的背夹式小巧设计，4年时间的发展奠定了iPod shuffle在播放器领域的地位，一种代表时尚与青春的态度，可以说风靡万千少男少女，真正的做到深入人心！', '', '0.00', '', 0, 2434, 0, 45, 0, '', 1, 1, 1553699651, 1597140157, 1553616000, NULL, '', 'normal'),
(89, 1, 14, '', 3, '', 0, 'Mac VideoRipper Pro 1.0.8 在线视频下载工具', '', '', 'https://picsum.photos/id/167/800/600', '', '', '', 'Mac Video Ripper Pro是Mac平台上的一款在线视频下载工具，可以帮助用户在各大在线视频网站上下载自己需要的视频文件。', '在线视频下载', '0.00', '', 0, 179, 0, 193, 0, '', 1, 1, 1553699698, 1597140160, 1553616000, NULL, '', 'normal'),
(90, 1, 14, '', 3, '', 0, 'CrossFTP 1.99.0 非常给力的ftp/sftp工具', '', '', 'https://picsum.photos/id/368/800/600', '', '', '', 'CrossFTP 是一款非常给力的Mac OS FTP客户端软件，简直就是Mac上的FlashFXP。支持中文，且免费，而且在界面和功能上和FlashFXP以及CuteFTP类似。', '', '0.00', '', 0, 1528, 0, 252, 0, '', 1, 1, 1553699820, 1597140163, 1553616000, NULL, '', 'normal'),
(91, 1, 14, '', 3, '', 0, 'TeamViewer 远程支持、远程访问、在线协作和会议', '', '', 'https://picsum.photos/id/265/800/600', '', '', '', 'TeamViewer是一个能在任何防火墙和NAT代理的后台用于远程控制，桌面共享和文件传输的简单且快速的解决方案。', '远程访问', '0.00', '', 0, 7410, 0, 56, 0, '', 1, 1, 1553699971, 1597140167, 1553616000, NULL, '', 'normal'),
(92, 1, 9, '', 2, '', 0, 'Macbook Pro Retina 笔记本', '', '', 'https://picsum.photos/id/320/800/600', '', '', '', 'MacBook Pro Retina拥有更先进的元件，更先进的技术——最新的第四代双核与四核Intel处理器、速度高达700MB/s 的基于PCIe闪存、被称为5G网络的802.11ac无线网络技术、高达20Gb/s速度的Thunderbolt 2端口。', '', '0.00', '', 0, 7035, 0, 289, 0, '', 1, 1, 1553700006, 1597140169, 1553616000, NULL, '', 'normal'),
(93, 1, 14, '', 3, '', 0, 'PeakHour 4.0.12 实时了解您的网络状况', '', '', 'https://picsum.photos/id/287/800/600', '', '', '', 'Peakhour是Mac OS X平台上的一款帮助用户监控网络流量的Mac网络监控软件，提供您在实时互联网或无线网络的活动即时视图。', 'PeakHour', '0.00', '', 0, 6950, 0, 178, 0, '', 1, 1, 1553700072, 1597140172, 1553616000, NULL, '', 'normal'),
(94, 1, 14, '', 3, '', 0, 'Instashare 1.4.6 apple设备文件快传工具', '', '', 'https://picsum.photos/id/251/800/600', '', '', '', 'Instashare是一款帮助Apple设备互相快速传送文件的Mac工具， 支持Mac，iPhone，iPad三大设备，iDevice用户需要Instashare iOS App来配合使用。', '文件快传', '0.00', '', 0, 8732, 0, 178, 0, '', 1, 1, 1553700165, 1597140175, 1553616000, NULL, '', 'normal'),
(95, 1, 14, '', 3, '', 0, 'Little Snitch 4.0.3_CR2 防火墙工具', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', 'Little Snitch 是一款 Mac OS X 上的个人安全软件，能防止应用程序在你不知道的情况下自动访问网络，你可以定义不允许访问。如果你担心你的Mac连接到你不想去的地方，用它保护你。', '防火墙工具', '0.00', '', 0, 3364, 0, 273, 0, '', 1, 1, 1553700265, 1597140178, 1553616000, NULL, '', 'normal'),
(96, 1, 9, '', 2, '', 0, 'GoPro Hero4 Silver 高清摄像机', '', '', 'https://picsum.photos/id/866/800/600', '', '', '', '玩自拍，玩高清摄影，玩极限摄影，有一个牌子不得不提，这就是GoPro，也就是近期这个玩具开始时兴起来，无论是一些孩子通过GoPro拍到了外太空上地球的影像，还是飞行员用GoPro玩自拍搞得机毁人亡，还是100岁老太跳伞，都有GoPro的身影，同样越来越多的人开始发掘GoPro的潜力和可玩性。', '', '0.00', '', 0, 5324, 0, 281, 0, '', 1, 1, 1553700424, 1597140181, 1553616000, NULL, '', 'normal'),
(97, 1, 14, '', 3, '', 0, 'Yummy FTP Alias 2.2.13 FTP工具', '', '', 'https://picsum.photos/id/167/800/600', '', '', '', 'Yummy FTP Alias版是一款基于Yummy FTP的工具软件', 'FTP工具', '0.00', '', 0, 862, 0, 187, 0, '', 1, 1, 1553700484, 1597140184, 1553616000, NULL, '', 'normal'),
(98, 1, 9, '', 2, '', 0, 'Samsung Galaxy 智能手机', '', '', 'https://picsum.photos/id/197/800/600', '', '', '', '据外媒最新消息，美国权威消费者杂志《消费者报告》对全球最新智能手机进行了评比，三星Galaxy S10+以90分拿下榜单第一。而苹果iPhone XS Max和三星Galaxy S10虽分数同样也是90分，但却以小数点的差距，分别位列第二位和第三位。', '', '0.00', '', 0, 8470, 0, 112, 0, '', 1, 1, 1553700529, 1597140187, 1553616000, NULL, '', 'normal'),
(99, 1, 14, '', 3, '', 0, 'Transloader 2.1 MacOS、iOS多平台协作的下载工具', '', '', 'https://picsum.photos/id/1005/800/600', '', '', '', 'Transloader 可以让你从你的iPhone或iPad远程启动在你的Mac上的文件下载。', '多平台协作', '0.00', '', 0, 3166, 0, 141, 0, '', 1, 1, 1553700595, 1597140189, 1553616000, NULL, '', 'normal'),
(100, 1, 9, '', 2, '', 0, 'Apple watch 智能手表', '', '', 'https://picsum.photos/id/265/800/600', '', '', '', '从 2015 年，苹果推出第一代 Apple Watch 后，在这 3 年时间里，Apple Watch 已经凭借着较准确的定位、合理的迭代升级逐渐成为了目前智能手表行业相对较优的选择。', '', '0.00', '', 0, 3934, 0, 168, 0, '', 1, 1, 1553700683, 1597140192, 1553616000, NULL, '', 'normal'),
(101, 1, 14, '', 3, '', 0, 'vSSH 1.11.1 强大的多标签ssh工具', '', '', 'https://picsum.photos/id/197/800/600', '', '', '', 'Vssh for Mac是一款mac平台的SSH客户端工具，支持用户名和密码加密，非常实用的一款SSH客户端工具。', '多标签ssh工具', '0.00', '', 0, 6124, 0, 117, 0, '', 1, 1, 1553700703, 1597140196, 1553616000, NULL, '', 'normal'),
(102, 1, 14, '', 3, '', 0, 'Royal TSX 1.4.6 好用的多终端工具', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', 'Royal TSX专为服务器管理员、系统工程师、开发人员和IT信息工作者开发设计，是一款访问远程系统使用不同协议的完美工具。', '多终端工具', '0.00', '', 0, 1021, 0, 102, 0, '', 1, 1, 1553700786, 1597140199, 1553616000, NULL, '', 'normal'),
(103, 1, 9, '', 2, '', 0, '高保真无绳WIFI耳机', '', '', 'https://picsum.photos/id/368/800/600', '', '', '', '在蓝牙4.2时代，续航、延迟与偶尔的断线是真无线耳机无法解决的问题，即使是价值超过千元的大品牌，比如苹果的airpod、索尼WF-1000X降噪豆、BOSESoundsportFree也无法幸免，毕竟蓝牙4.2的硬件条件并不十分完善。', '', '0.00', '', 0, 3932, 0, 285, 0, '', 1, 1, 1553700875, 1597140201, 1553616000, NULL, '', 'normal'),
(104, 1, 10, '', 2, '', 0, '智能游戏WIFI无线手柄', '', '', 'https://picsum.photos/id/251/800/600', '', '', '', '游戏手柄品种琳琅满目，而游戏手柄除了可以在电脑上进行有线连接以外，很多手柄厂商也设计出了无线连接的手柄，毕竟厂商和消费者心知肚明：无线才是未来。与手机去除掉耳机孔不同，手柄的无线设计非常受欢迎。', '', '0.00', '', 0, 5667, 0, 296, 0, '', 1, 1, 1553702809, 1597140204, 1553702400, NULL, '', 'normal'),
(105, 1, 8, '', 2, '', 0, '智能WIFI无人机', '', '', 'https://picsum.photos/id/866/800/600', '', '', '', '2017四川航展无人机专项展可谓异彩纷呈，既有像翼龙、彩虹、鹞鹰这样的空中“大块头”，也有新晋的太阳能Wifi无人机、以及貌似怪兽的软体无人机。更多的，当然还是应用范围涵盖安防、测绘、巡线、植保等行业应用的各种款式工业无人机，以及与此相关的行业上下游企业。', '', '0.00', '', 0, 2248, 0, 50, 0, '', 1, 1, 1553737769, 1597140206, 1553702400, NULL, '', 'normal'),
(106, 1, 8, '', 2, '', 0, '米家九号平衡车Plus', '', '', 'https://picsum.photos/id/1005/800/600', '', '', '', '相较上一代九号平衡车，九号平衡车Plus拥有八大改进，脚踏面积相较上一代提升19%，底盘高度离地增加17%，采用11英寸高性能防滑胎，新一代平衡车电机功率为800W。', '', '0.00', '', 0, 1612, 0, 92, 0, '', 1, 1, 1553738716, 1597140209, 1553702400, NULL, '', 'normal'),
(107, 1, 8, '', 2, '', 0, '米家无线投影仪青春版', '', '', 'https://picsum.photos/id/287/800/600', '', '', '', '从2017年推出首款激光电视以来，小米正式“扎根”智能微投领域，目前已经推出了三款家用投影产品，其中9999元的激光电视主要针对的还是高端家庭用户，而米家投影仪系列的两款产品则更多的面向普通家庭和年轻消费群体', '', '0.00', '', 0, 381, 0, 83, 0, '', 1, 1, 1553738898, 1597140212, 1553702400, NULL, '', 'normal'),
(108, 1, 8, '', 2, '', 0, '米家互联网洗烘一体机', '', '', 'https://picsum.photos/id/320/800/600', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/368/800/600', '', '', '小米近日正式发布米家互联网洗烘一体机10kg版。米家互联网洗烘一体机10kg版采用BLDC变频电机、1400高转速、一级能效、以及包含智能空气洗在内的21种洗涤模式，性能强劲、功能齐全。', '', '0.00', '', 0, 2632, 0, 143, 0, '', 1, 1, 1553739057, 1597198822, 1553702400, NULL, '', 'normal'),
(109, 1, 8, '', 2, '', 0, '奥睿科ORICO HU3温室加湿器', 'top', 'b|#162ceb', 'https://picsum.photos/id/287/800/600', '', '', '', '加湿器可以说是目前家里比较常见的生活用品之一了，特别是爱美的女性朋友们，为了能保持容颜润泽，经常会在身旁备用一台。其实对于更多的用户来说，加湿器的主要作用还是放在空调房里，用来调节房间湿度', '', '0.00', '', 9999, 6014, 0, 168, 0, '', 1, 1, 1553739167, 1597140221, 1553702400, NULL, '', 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_autolink`
--

CREATE TABLE `sf_cms_autolink` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `url` varchar(255) DEFAULT '' COMMENT '链接',
  `target` enum('self','blank') DEFAULT 'blank' COMMENT '打开方式',
  `weigh` int(10) DEFAULT '0' COMMENT '排序',
  `views` int(10) UNSIGNED DEFAULT '0' COMMENT '点击次数',
  `createtime` bigint(16) DEFAULT NULL COMMENT '添加时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自动链接表';

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_block`
--

CREATE TABLE `sf_cms_block` (
  `id` smallint(8) UNSIGNED NOT NULL,
  `type` varchar(30) DEFAULT '' COMMENT '类型',
  `name` varchar(50) DEFAULT '' COMMENT '名称',
  `title` varchar(100) DEFAULT '' COMMENT '标题',
  `image` varchar(255) DEFAULT '' COMMENT '图片',
  `url` varchar(255) DEFAULT '' COMMENT '链接',
  `content` mediumtext COMMENT '内容',
  `parsetpl` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '解析模板标签',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `createtime` bigint(16) DEFAULT NULL COMMENT '添加时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `begintime` bigint(16) DEFAULT NULL COMMENT '开始时间',
  `endtime` bigint(16) DEFAULT NULL COMMENT '结束时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='区块表';

--
-- 转存表中的数据 `sf_cms_block`
--

INSERT INTO `sf_cms_block` (`id`, `type`, `name`, `title`, `image`, `url`, `content`, `parsetpl`, `weigh`, `createtime`, `updatetime`, `begintime`, `endtime`, `status`) VALUES
(1, '焦点图', 'indexfocus', '首页焦点图标题1', 'https://picsum.photos/id/368/650/270', '/', '', 0, 1, 1553606219, 1553606219, NULL, NULL, 'normal'),
(2, '焦点图', 'indexfocus', '首页焦点图标题2', 'https://picsum.photos/id/866/650/270', '/', '', 0, 2, 1553606219, 1553606219, NULL, NULL, 'normal'),
(3, '焦点图', 'indexfocus', '首页焦点图标题3', 'https://picsum.photos/id/450/650/270', '/', '', 0, 3, 1553606219, 1553606219, NULL, NULL, 'normal'),
(8, '边栏', 'sidebarad1', '边栏广告1', '', '', '<a href=\"https://www.baidu.com\" target=\"_blank\">\r\n    <img src=\"https://picsum.photos/id/206/720/300\" class=\"img-responsive\">\r\n</a>', 0, 8, 1553606219, 1553958914, NULL, NULL, 'normal'),
(9, '边栏', 'sidebarad2', '边栏广告2', '', '', '<a href=\"https://www.baidu.com\" target=\"_blank\">\r\n    <img src=\"https://picsum.photos/id/320/720/600\" class=\"img-responsive\" alt=\"\">\r\n</a>', 0, 9, 1553606219, 1553958942, NULL, NULL, 'normal'),
(10, '焦点图', 'downloadfocus', '下载中心焦点图标题1', 'https://picsum.photos/id/320/650/270', '/', '', 0, 10, 1553606219, 1553606257, NULL, NULL, 'normal'),
(11, '焦点图', 'downloadfocus', '下载中心焦点图标题2', 'https://picsum.photos/id/197/650/270', '/', '', 0, 11, 1553606243, 1553606273, NULL, NULL, 'normal'),
(12, '焦点图', 'downloadfocus', '下载中心焦点图标题3', 'https://picsum.photos/id/1005/650/270', '/', '', 0, 12, 1553607965, 1553607965, NULL, NULL, 'normal'),
(13, '焦点图', 'downloadfocus', '下载中心焦点图标题4', 'https://picsum.photos/id/1006/650/270', '/', '', 0, 13, 1553608006, 1553608006, NULL, NULL, 'normal'),
(14, '焦点图', 'downloadfocus', '下载中心焦点图标题5', 'https://picsum.photos/id/251/650/270', '/', '', 0, 14, 1553608049, 1553608049, NULL, NULL, 'normal'),
(15, '焦点图', 'downloadfocus', '下载中心焦点图标题6', 'https://picsum.photos/id/167/650/270', '/', '', 0, 15, 1553608086, 1553608086, NULL, NULL, 'normal'),
(16, '焦点图', 'newsfocus', '新闻中心焦点图标题1', 'https://picsum.photos/id/287/650/270', '/', '', 0, 16, 1553606219, 1553606257, NULL, NULL, 'normal'),
(17, '焦点图', 'newsfocus', '新闻中心焦点图标题2', 'https://picsum.photos/id/278/650/270', '/', '', 0, 17, 1553606243, 1553606273, NULL, NULL, 'normal'),
(18, '焦点图', 'newsfocus', '新闻中心焦点图标题3', 'https://picsum.photos/id/1011/650/270', '/', '', 0, 18, 1553607965, 1553607965, NULL, NULL, 'normal'),
(19, '焦点图', 'newsfocus', '新闻中心焦点图标题4', 'https://picsum.photos/id/1012/650/270', '/', '', 0, 19, 1553608006, 1553608006, NULL, NULL, 'normal'),
(20, '焦点图', 'newsfocus', '新闻中心焦点图标题5', 'https://picsum.photos/id/265/650/270', '/', '', 0, 20, 1553608049, 1553608049, NULL, NULL, 'normal'),
(21, '焦点图', 'newsfocus', '新闻中心焦点图标题6', 'https://picsum.photos/id/270/650/270', '/', '', 0, 21, 1553608086, 1553608086, NULL, NULL, 'normal'),
(22, '焦点图', 'productfocus', '产品中心焦点图标题1', 'https://picsum.photos/id/1015/650/270', '/', '', 0, 22, 1553606219, 1553606257, NULL, NULL, 'normal'),
(23, '焦点图', 'productfocus', '产品中心焦点图标题2', 'https://picsum.photos/id/1016/650/270', '/', '', 0, 23, 1553606243, 1553606273, NULL, NULL, 'normal'),
(24, '焦点图', 'productfocus', '产品中心焦点图标题3', 'https://picsum.photos/id/330/650/270', '/', '', 0, 24, 1553607965, 1553607965, NULL, NULL, 'normal'),
(25, '焦点图', 'productfocus', '产品中心焦点图标题4', 'https://picsum.photos/id/1018/650/270', '/', '', 0, 25, 1553608006, 1553608006, NULL, NULL, 'normal'),
(26, '焦点图', 'productfocus', '产品中心焦点图标题5', 'https://picsum.photos/id/1019/650/270', '/', '', 0, 26, 1553608049, 1553608049, NULL, NULL, 'normal'),
(27, '焦点图', 'productfocus', '产品中心焦点图标题6', 'https://picsum.photos/id/33/650/270', '/', '', 0, 27, 1553608086, 1553608086, NULL, NULL, 'normal'),
(28, '边栏', 'sidebarad3', '边栏广告3', '', '', '<a href=\"https://www.baidu.com\" target=\"_blank\">\r\n    <img src=\"https://picsum.photos/id/381/720/600\" class=\"img-responsive\">\r\n</a>', 0, 28, 1553606219, 1553958942, NULL, NULL, 'normal'),
(29, '焦点图', 'uniappfocus', 'UniAPP首页焦点图标题1', 'https://picsum.photos/id/368/650/270', '/pages/index/index', '', 0, 29, 1553606219, 1553606219, NULL, NULL, 'normal'),
(30, '焦点图', 'uniappfocus', 'UniAPP首页焦点图标题2', 'https://picsum.photos/id/866/650/270', '/pages/index/index', '', 0, 30, 1553606219, 1553606219, NULL, NULL, 'normal'),
(31, '焦点图', 'uniappfocus', 'UniAPP首页焦点图标题3', 'https://picsum.photos/id/450/650/270', '/pages/index/index', '', 0, 31, 1553606219, 1553606219, NULL, NULL, 'normal'),
(32, '焦点图', 'wxappfocus', '微信小程序首页焦点图标题1', 'https://picsum.photos/id/368/650/270', '/pages/index/index', '', 0, 32, 1553606219, 1553606219, NULL, NULL, 'normal'),
(33, '焦点图', 'wxappfocus', '微信小程序首页焦点图标题2', 'https://picsum.photos/id/866/650/270', '/pages/index/index', '', 0, 33, 1553606219, 1553606219, NULL, NULL, 'normal'),
(34, '焦点图', 'wxappfocus', '微信小程序首页焦点图标题3', 'https://picsum.photos/id/450/650/270', '/pages/index/index', '', 0, 34, 1553606219, 1553606219, NULL, NULL, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_channel`
--

CREATE TABLE `sf_cms_channel` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('channel','page','link','list') NOT NULL COMMENT '类型',
  `model_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '模型ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(30) DEFAULT '' COMMENT '名称',
  `image` varchar(255) DEFAULT '' COMMENT '图片',
  `flag` varchar(100) DEFAULT '' COMMENT '标志',
  `seotitle` varchar(255) DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `diyname` varchar(100) DEFAULT '' COMMENT '自定义名称',
  `outlink` varchar(255) DEFAULT '' COMMENT '外部链接',
  `linktype` varchar(100) DEFAULT '' COMMENT '链接类型',
  `linkid` int(10) DEFAULT '0' COMMENT '链接ID',
  `items` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文章数量',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `channeltpl` varchar(100) DEFAULT '' COMMENT '栏目页模板',
  `listtpl` varchar(100) DEFAULT '' COMMENT '列表页模板',
  `showtpl` varchar(100) DEFAULT '' COMMENT '详情页模板',
  `pagesize` smallint(5) NOT NULL DEFAULT '0' COMMENT '分页大小',
  `vip` tinyint(1) UNSIGNED DEFAULT '0' COMMENT 'VIP',
  `listtype` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '列表数据类型',
  `iscontribute` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可投稿',
  `isnav` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否导航显示',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='栏目表';

--
-- 转存表中的数据 `sf_cms_channel`
--

INSERT INTO `sf_cms_channel` (`id`, `type`, `model_id`, `parent_id`, `name`, `image`, `flag`, `seotitle`, `keywords`, `description`, `diyname`, `outlink`, `linktype`, `linkid`, `items`, `weigh`, `channeltpl`, `listtpl`, `showtpl`, `pagesize`, `vip`, `listtype`, `iscontribute`, `isnav`, `createtime`, `updatetime`, `status`) VALUES
(1, 'channel', 1, 0, '新闻中心', '', '', '', '', '', 'news', '', '', 0, 0, 9, 'channel_news.html', 'list_news.html', 'show_news.html', 10, 0, 0, 1, 1, 1508990697, 1553932759, 'normal'),
(2, 'channel', 2, 0, '产品中心', '', '', '', '', '', 'product', '', '', 0, 0, 8, 'channel_product.html', 'list_product.html', 'show_product.html', 10, 0, 0, 1, 1, 1508992541, 1553932775, 'normal'),
(3, 'list', 1, 1, '互联网', '', 'recommend', '', '', '', 'internet', '', '', 0, 5, 0, 'channel_news.html', 'list_news.html', 'show_news.html', 10, 0, 0, 1, 1, 1523718032, 1523718032, 'normal'),
(4, 'list', 1, 1, '安全', '', 'recommend', '', '', '', 'security', '', '', 0, 3, 0, 'channel_news.html', 'list_news.html', 'show_news.html', 10, 0, 0, 1, 1, 1508990707, 1553416184, 'normal'),
(5, 'list', 1, 1, '投资', '', 'recommend', '', '', '', 'investment', '', '', 0, 5, 0, 'channel_news.html', 'list_news.html', 'show_news.html', 10, 0, 0, 1, 1, 1508990716, 1523717837, 'normal'),
(6, 'list', 1, 1, '硬件', '', 'recommend', '', '', '', 'hardware', '', '', 0, 7, 0, 'channel.html', 'list_news.html', 'show_news.html', 10, 0, 0, 1, 1, 1523717893, 1523717893, 'normal'),
(8, 'list', 2, 2, '智能设备', '', '', '', '', '', 'wearable', '', '', 0, 6, 0, 'channel_product.html', 'list_product.html', 'show_product.html', 10, 0, 0, 1, 1, 1508992598, 1523718084, 'normal'),
(9, 'list', 2, 2, '移动设备', '', '', '', '', '', 'mobiledevice', '', '', 0, 8, 0, 'channel_product.html', 'list_product.html', 'show_product.html', 10, 0, 0, 1, 1, 1508992623, 1523718179, 'normal'),
(10, 'list', 2, 2, '智能家居', '', 'recommend', '', '', '', 'smarthome', '', '', 0, 4, 0, 'channel_product.html', 'list_product.html', 'show_product.html', 10, 0, 0, 1, 1, 1522157583, 1523718113, 'normal'),
(11, 'channel', 3, 0, '下载中心', '', '', '', '', '', 'download', '', '', 0, 0, 7, 'channel_download.html', 'list_download.html', 'show_download.html', 10, 0, 0, 1, 1, 1553508489, 1553934386, 'normal'),
(12, 'list', 3, 11, '应用软件', '', '', '', '', '', 'app', '', '', 0, 18, 0, 'channel_download.html', 'list_download.html', 'show_download.html', 10, 0, 0, 1, 1, 1553508581, 1553934383, 'normal'),
(13, 'list', 3, 11, '媒体工具', '', '', '', '', '', 'media', '', '', 0, 18, 0, 'channel_download.html', 'list_download.html', 'show_download.html', 10, 0, 0, 1, 1, 1553508581, 1553934384, 'normal'),
(14, 'list', 3, 11, '网络工具', '', '', '', '', '', 'network', '', '', 0, 20, 0, 'channel_download.html', 'list_download.html', 'show_download.html', 10, 0, 0, 1, 1, 1553508581, 1553934386, 'normal'),
(15, 'link', 1, 0, '自定义表单', '', '', '', '', '', 'message', '__INDEX__/cms/d/message.html', '', 0, 0, 6, 'channel.html', 'list.html', 'show.html', 10, 0, 0, 0, 1, 1553420405, 1553932802, 'normal'),
(16, 'link', 1, 0, '单页', '', '', '', '', '', 'page', '__INDEX__/cms/p/aboutus.html', '', 0, 0, 5, 'channel.html', '', 'show.html', 10, 0, 0, 0, 1, 1553420429, 1553932806, 'normal'),
(17, 'link', 1, 0, '更多', '', '', '', '', '', 'morelink', 'javascript:', '', 0, 0, 3, 'channel.html', 'list.html', 'show.html', 10, 0, 0, 0, 1, 1553330120, 1553932811, 'normal'),
(18, 'link', 1, 17, '百度', '', '', '', '', '', 'baidu', 'https://www.baidu.com', '', 0, 0, 4, 'channel.html', 'list.html', 'show.html', 10, 0, 0, 0, 1, 1508994753, 1553330274, 'normal'),
(22, 'link', 1, 0, '首页', '', '', '', '', '', 'index', '__INDEX__/cms/', '', 0, 0, 10, 'channel.html', 'list.html', 'show.html', 10, 0, 0, 0, 1, 1553330375, 1553932754, 'normal'),
(23, 'link', 1, 0, '专题', '', '', '', '', '', 'special', '__INDEX__/cms/special/it.html', '', 0, 0, 4, 'channel.html', 'list.html', 'show.html', 10, 0, 0, 0, 1, 1553330375, 1553932754, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_channel_admin`
--

CREATE TABLE `sf_cms_channel_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `channel_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '栏目ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='栏目权限表';

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_collection`
--

CREATE TABLE `sf_cms_collection` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('archives','special','page','diyform') DEFAULT NULL COMMENT '类型',
  `aid` int(10) UNSIGNED DEFAULT '0' COMMENT '关联ID',
  `user_id` int(10) DEFAULT NULL COMMENT '会员ID',
  `title` varchar(255) DEFAULT NULL COMMENT '收藏标题',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `createtime` bigint(16) DEFAULT NULL COMMENT '添加时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='收藏表';

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_comment`
--

CREATE TABLE `sf_cms_comment` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `type` enum('archives','page','special') NOT NULL DEFAULT 'archives' COMMENT '类型',
  `aid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '关联ID',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '父ID',
  `content` longtext COMMENT '内容',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论数',
  `ip` varchar(50) DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) DEFAULT '' COMMENT 'User Agent',
  `subscribe` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '订阅',
  `createtime` bigint(16) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` bigint(16) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `deletetime` bigint(16) DEFAULT NULL COMMENT '删除时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='评论表';

--
-- 转存表中的数据 `sf_cms_comment`
--

INSERT INTO `sf_cms_comment` (`id`, `user_id`, `type`, `aid`, `pid`, `content`, `comments`, `ip`, `useragent`, `subscribe`, `createtime`, `updatetime`, `deletetime`, `status`) VALUES
(1, 1, 'archives', 34, 0, '看起来的确很疯狂，很值得一试。谁让他们创造了一款人们可以使用的产品，与当今世界上大多数其他消费类产品不同。', 0, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 0, 1553763251, 1553763251, NULL, 'normal'),
(2, 1, 'archives', 34, 0, '<em>@admin</em> 每个人都应该来尝试下的产品。', 0, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 1, 1553763300, 1553763300, NULL, 'normal'),
(3, 1, 'archives', 34, 0, '完全赞同这样的说法，欢迎提供你的意见或建议。', 0, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 1, 1553763331, 1553763331, NULL, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_diyform`
--

CREATE TABLE `sf_cms_diyform` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT '0' COMMENT '管理员ID',
  `name` char(30) DEFAULT '' COMMENT '表单名称',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `seotitle` varchar(255) DEFAULT '' COMMENT 'SEO标题',
  `posttitle` varchar(255) DEFAULT '' COMMENT '发布标题',
  `keywords` varchar(100) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `table` varchar(50) DEFAULT '' COMMENT '表名',
  `fields` text COMMENT '字段列表',
  `isguest` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否访客访问',
  `needlogin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否需要登录发布',
  `isedit` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '是否允许编辑',
  `iscaptcha` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '是否启用验证码',
  `successtips` varchar(255) DEFAULT NULL COMMENT '成功提示文字',
  `redirecturl` varchar(255) DEFAULT NULL COMMENT '成功后跳转链接',
  `posttpl` varchar(50) DEFAULT '' COMMENT '表单页模板',
  `listtpl` varchar(50) DEFAULT '' COMMENT '列表页模板',
  `showtpl` varchar(50) DEFAULT '' COMMENT '详情页模板',
  `diyname` varchar(100) DEFAULT NULL COMMENT '自定义名称',
  `usermode` enum('all','user') DEFAULT 'all' COMMENT '用户筛选模式',
  `statusmode` enum('all','normal','hidden') DEFAULT 'all' COMMENT '状态筛选模式',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `setting` varchar(1500) DEFAULT NULL COMMENT '表单配置',
  `status` enum('normal','hidden') DEFAULT 'hidden' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自定义表单表';

--
-- 转存表中的数据 `sf_cms_diyform`
--

INSERT INTO `sf_cms_diyform` (`id`, `admin_id`, `name`, `title`, `seotitle`, `posttitle`, `keywords`, `description`, `table`, `fields`, `isguest`, `needlogin`, `isedit`, `iscaptcha`, `successtips`, `redirecturl`, `posttpl`, `listtpl`, `showtpl`, `diyname`, `usermode`, `statusmode`, `createtime`, `updatetime`, `setting`, `status`) VALUES
(1, 0, '留言', '留言', '', '', '留言板', '欢迎给我们留言反馈你的问题', 'cms_message', 'name,telephone,qq,content,image,os,language,address,category', 0, 0, 1, 1, '留言已成功提交，我们会尽快进行处理', '', '', '', '', 'message', 'all', 'normal', 1540091957, 1635240051, '{\"orderfields\":[\"createtime\"]}', 'normal'),
(2, 1, '友情链接', '友情链接', '', '申请链接', '', '', 'cms_friendlink', 'title,image,website,intro', 0, 0, 0, 1, '申请已成功提交，我们会尽快进行处理', '', '', '', '', 'friendlink', 'all', 'normal', 1635239207, 1635300179, NULL, 'normal'),
(3, 1, '热门导航', '热门导航', '', '申请导航', '', '', 'cms_navigation', 'title,image,website,intro', 0, 0, 0, 1, '申请已成功提交，我们会尽快进行处理', '', '', '', '', 'navigation', 'all', 'normal', 1635239736, 1635241058, NULL, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_fields`
--

CREATE TABLE `sf_cms_fields` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `source` varchar(30) DEFAULT '' COMMENT '来源',
  `source_id` int(10) NOT NULL DEFAULT '0' COMMENT '来源ID',
  `name` char(30) DEFAULT '' COMMENT '名称',
  `type` varchar(30) DEFAULT '' COMMENT '类型',
  `title` varchar(30) DEFAULT '' COMMENT '标题',
  `content` text COMMENT '内容',
  `filterlist` text COMMENT '筛选列表',
  `defaultvalue` varchar(100) DEFAULT '' COMMENT '默认值',
  `rule` varchar(100) DEFAULT '' COMMENT '验证规则',
  `msg` varchar(100) DEFAULT '' COMMENT '错误消息',
  `ok` varchar(100) DEFAULT '' COMMENT '成功消息',
  `tip` varchar(100) DEFAULT '' COMMENT '提示消息',
  `decimals` tinyint(1) DEFAULT NULL COMMENT '小数点',
  `length` mediumint(8) DEFAULT NULL COMMENT '长度',
  `minimum` smallint(6) DEFAULT NULL COMMENT '最小数量',
  `maximum` smallint(6) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最大数量',
  `extend` varchar(255) DEFAULT '' COMMENT '扩展信息',
  `setting` varchar(1500) DEFAULT '' COMMENT '配置信息',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `createtime` bigint(16) DEFAULT NULL COMMENT '添加时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `isorder` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可排序',
  `iscontribute` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可投稿',
  `isfilter` tinyint(1) NOT NULL DEFAULT '0' COMMENT '筛选',
  `status` enum('normal','hidden') NOT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='模型字段表';

--
-- 转存表中的数据 `sf_cms_fields`
--

INSERT INTO `sf_cms_fields` (`id`, `source`, `source_id`, `name`, `type`, `title`, `content`, `filterlist`, `defaultvalue`, `rule`, `msg`, `ok`, `tip`, `decimals`, `length`, `minimum`, `maximum`, `extend`, `setting`, `weigh`, `createtime`, `updatetime`, `isorder`, `iscontribute`, `isfilter`, `status`) VALUES
(1, 'diyform', 1, 'name', 'string', '姓名', 'value1|title1\r\nvalue2|title2', NULL, '', 'required', '', '', '', 0, 50, 0, 0, '', '', 136, 1540110334, 1540110334, 0, 1, 0, 'normal'),
(2, 'diyform', 1, 'telephone', 'string', '手机', 'value1|title1\r\nvalue2|title2', NULL, '', 'required,mobile', '', '', '', 0, 50, 0, 0, '', '', 135, 1540110369, 1540110369, 0, 1, 0, 'normal'),
(3, 'diyform', 1, 'qq', 'string', 'QQ', 'value1|title1\r\nvalue2|title2', NULL, '', 'digits', '', '', '', 0, 30, 0, 0, '', '', 134, 1540110394, 1540110394, 0, 1, 0, 'normal'),
(4, 'diyform', 1, 'content', 'editor', '内容', 'value1|title1\r\nvalue2|title2', NULL, '', 'required', '', '', '', 0, 255, 0, 0, '', '', 133, 1540110415, 1540110415, 0, 1, 0, 'normal'),
(5, 'model', 1, 'author', 'string', '作者', 'value1|title1\r\nvalue2|title2', NULL, '', '', '', '', '', 0, 50, 0, 0, '', '', 136, 1508990735, 1553759396, 0, 1, 0, 'normal'),
(6, 'model', 2, 'productdata', 'images', '产品列表', 'value1|title1\r\nvalue2|title2', NULL, '', 'required', '', '', '', 0, 1500, 0, 20, '', '{\"table\":\"\"}', 139, 1508992518, 1597218666, 0, 1, 0, 'normal'),
(8, 'diyform', 1, 'image', 'images', '图片', 'value1|title1\r\nvalue2|title2', NULL, '', 'required', '', '', '', 0, 500, 0, 0, '', '{\"table\":\"\"}', 17, 1597145973, 1597146911, 0, 1, 0, 'normal'),
(9, 'model', 3, 'os', 'checkbox', '操作系统', 'windows|Windows\r\nlinux|Linux\r\nmac|Mac\r\nubuntu|Ubuntu', NULL, '', '', '', '', '', 0, 255, 0, 0, '', '', 143, 1553508185, 1553508185, 0, 1, 1, 'normal'),
(10, 'model', 3, 'version', 'string', '最新版本', 'value1|title1\r\nvalue2|title2', NULL, '', '', '', '', '', 0, 255, 0, 0, '', '', 144, 1553508231, 1553775383, 0, 1, 0, 'normal'),
(11, 'model', 3, 'filesize', 'string', '文件大小', 'value1|title1\r\nvalue2|title2', NULL, '', '', '', '', '', 0, 255, 0, 0, '', '', 145, 1553508273, 1553775381, 0, 1, 0, 'normal'),
(12, 'model', 3, 'language', 'checkbox', '语言', 'zh-cn|中文\r\nen|英文', NULL, '', '', '', '', '', 0, 255, 0, 0, '', '', 146, 1553508324, 1553775371, 0, 1, 1, 'normal'),
(13, 'model', 3, 'downloadurl', 'array', '下载地址', 'local|本地下载地址\r\nbaidu|百度网盘地址', NULL, '', '', '', '', '', 0, 255, 0, 0, '', '', 147, 1553508466, 1553775368, 0, 1, 0, 'normal'),
(14, 'model', 3, 'screenshots', 'images', '预览截图', 'value1|title1\r\nvalue2|title2', NULL, '', '', '', '', '', 0, 1500, 0, 0, '', '', 148, 1553509260, 1553775364, 0, 1, 0, 'normal'),
(16, 'model', 3, 'downloads', 'string', '下载次数', 'value1|title1\r\nvalue2|title2', NULL, '0', '', '', '', '', 0, 10, 0, 0, '', '', 150, 1553744995, 1597200014, 1, 1, 0, 'normal'),
(17, 'diyform', 1, 'os', 'radio', '操作系统', 'windows|Windows\r\nmac|Mac', NULL, 'windows', '', '', '', '', 0, 50, 0, 0, '', '{\"table\":\"\"}', 17, 1597200354, 1597200354, 0, 1, 1, 'normal'),
(18, 'diyform', 1, 'language', 'checkbox', '语言', 'zh-cn|中文\r\nen|英文', NULL, '', '', '', '', '', 0, 255, 0, 0, '', '{\"table\":\"\"}', 18, 1597200417, 1597200417, 0, 1, 1, 'normal'),
(19, 'diyform', 1, 'address', 'city', '地区', 'value1|title1\r\nvalue2|title2', NULL, '', '', '', '', '', 0, 255, 0, 0, '', '{\"table\":\"\"}', 19, 1597200452, 1597201184, 0, 1, 0, 'normal'),
(20, 'diyform', 1, 'category', 'selectpages', '分类', 'value1|title1\r\nvalue2|title2', NULL, '', '', '', '', '', 0, 255, 0, 0, 'data-params=\'{\"isTree\":\"1\"}\'', '{\"table\":\"sf_category\",\"primarykey\":\"id\",\"field\":\"name\"}', 20, 1597204527, 1597221552, 0, 1, 0, 'normal'),
(21, 'diyform', 2, 'title', 'string', '站点名称', 'value1|title1\r\nvalue2|title2', '', '', 'required', '', '', '', 0, 255, 0, 0, '', '', 24, 1635239207, 1635239329, 0, 1, 0, 'normal'),
(22, 'diyform', 2, 'image', 'image', '站点Logo', 'value1|title1\r\nvalue2|title2', '', '', '', '', '', '', 0, 255, 0, 0, '', '', 3, 1635239207, 1635239323, 0, 1, 0, 'normal'),
(23, 'diyform', 2, 'website', 'string', '站点链接', 'value1|title1\r\nvalue2|title2', '', '', 'required', '', '', '', 0, 100, 0, 0, '', '', 2, 1635239207, 1635239469, 0, 1, 0, 'normal'),
(24, 'diyform', 2, 'intro', 'text', '站点介绍', 'value1|title1\r\nvalue2|title2', '', '', 'required', '', '', '', 0, 255, 0, 0, '', '', 1, 1635239542, 1635239545, 0, 1, 0, 'normal'),
(25, 'diyform', 3, 'title', 'string', '标题', 'value1|title1\r\nvalue2|title2', '', '', 'required', '', '', '', 0, 255, 0, 0, '', '', 28, 1635239736, 1635239736, 0, 1, 0, 'normal'),
(26, 'diyform', 3, 'image', 'image', '图片', 'value1|title1\r\nvalue2|title2', '', '', 'required', '', '', '', 0, 255, 0, 0, '', '', 3, 1635239736, 1635241058, 0, 1, 0, 'normal'),
(27, 'diyform', 3, 'website', 'string', '导航链接', 'value1|title1\r\nvalue2|title2', '', '', 'required', '', '', '', 0, 255, 0, 0, '', '', 1, 1635239736, 1635239896, 0, 1, 0, 'normal'),
(28, 'diyform', 3, 'intro', 'text', '介绍', 'value1|title1\r\nvalue2|title2', '', '', 'required', '', '', '', 0, 255, 0, 0, '', '', 2, 1635239832, 1635239901, 0, 1, 0, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_friendlink`
--

CREATE TABLE `sf_cms_friendlink` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `user_id` int(10) DEFAULT NULL COMMENT '会员ID',
  `title` varchar(255) DEFAULT '' COMMENT '站点名称',
  `image` varchar(1500) DEFAULT '' COMMENT '站点Logo',
  `website` varchar(100) DEFAULT '' COMMENT '站点链接',
  `createtime` bigint(16) DEFAULT NULL COMMENT '添加时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `memo` varchar(1500) DEFAULT '' COMMENT '备注',
  `status` enum('normal','hidden','rejected') DEFAULT 'hidden' COMMENT '状态',
  `intro` varchar(255) DEFAULT '' COMMENT '站点介绍'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='友情链接';

--
-- 转存表中的数据 `sf_cms_friendlink`
--

INSERT INTO `sf_cms_friendlink` (`id`, `user_id`, `title`, `image`, `website`, `createtime`, `updatetime`, `memo`, `status`, `intro`) VALUES
(1, 1, '百度', '', 'https://www.baidu.com', 1553606219, 1553606219, NULL, 'normal', NULL),
(2, 1, '淘宝', '', 'https://www.taobao.com', 1553606219, 1553606219, NULL, 'normal', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_message`
--

CREATE TABLE `sf_cms_message` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) DEFAULT NULL COMMENT '会员ID',
  `name` varchar(50) DEFAULT '' COMMENT '姓名',
  `telephone` varchar(100) DEFAULT '' COMMENT '电话',
  `qq` varchar(30) DEFAULT '' COMMENT 'QQ',
  `content` longtext COMMENT '内容',
  `os` enum('windows','mac') DEFAULT 'windows' COMMENT '操作系统',
  `language` set('zh-cn','en') DEFAULT '' COMMENT '语言',
  `address` varchar(255) DEFAULT '' COMMENT '地区',
  `category` varchar(255) DEFAULT '' COMMENT '分类',
  `memo` varchar(255) DEFAULT '' COMMENT '备注',
  `image` varchar(500) DEFAULT '' COMMENT '图片',
  `createtime` bigint(16) DEFAULT NULL COMMENT '添加时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden','rejected') DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='站内留言';

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_model`
--

CREATE TABLE `sf_cms_model` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` char(30) DEFAULT '' COMMENT '模型名称',
  `table` char(20) DEFAULT '' COMMENT '表名',
  `fields` text COMMENT '字段列表',
  `channeltpl` varchar(100) DEFAULT '' COMMENT '栏目页模板',
  `listtpl` varchar(100) DEFAULT '' COMMENT '列表页模板',
  `showtpl` varchar(100) DEFAULT '' COMMENT '详情页模板',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `setting` text COMMENT '模型配置'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='内容模型表';

--
-- 转存表中的数据 `sf_cms_model`
--

INSERT INTO `sf_cms_model` (`id`, `name`, `table`, `fields`, `channeltpl`, `listtpl`, `showtpl`, `createtime`, `updatetime`, `setting`) VALUES
(1, '新闻', 'cms_addonnews', 'author', 'channel_news.html', 'list_news.html', 'show_news.html', 1508990659, 1597199894, '{\"contributefields\":[\"image\",\"tags\",\"content\"],\"publishfields\":[\"channel_ids\",\"user_id\",\"special_ids\",\"image\",\"images\",\"diyname\",\"tags\",\"price\",\"outlink\",\"content\",\"seotitle\",\"keywords\",\"description\"],\"orderfields\":[\"views\",\"publishtime\"]}'),
(2, '产品', 'cms_addonproduct', 'productdata', 'channel_product.html', 'list_product.html', 'show_product.html', 1508992445, 1597199995, '{\"contributefields\":[\"image\",\"tags\",\"content\"],\"publishfields\":[\"channel_ids\",\"user_id\",\"special_ids\",\"image\",\"images\",\"diyname\",\"tags\",\"price\",\"outlink\",\"content\",\"seotitle\",\"keywords\",\"description\"],\"orderfields\":[\"views\",\"likes\"]}'),
(3, '下载', 'cms_addondownload', 'os,version,filesize,language,downloadurl,screenshots,downloads', 'channel_download.html', 'list_download.html', 'show_download.html', 1553507913, 1597200019, '{\"contributefields\":[\"image\",\"tags\",\"content\"],\"publishfields\":[\"channel_ids\",\"user_id\",\"special_ids\",\"image\",\"images\",\"diyname\",\"tags\",\"price\",\"outlink\",\"content\",\"seotitle\",\"keywords\",\"description\"],\"orderfields\":[\"likes\"]}');

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_navigation`
--

CREATE TABLE `sf_cms_navigation` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `user_id` int(10) DEFAULT NULL COMMENT '会员ID',
  `title` varchar(255) DEFAULT '' COMMENT '标题',
  `image` varchar(255) DEFAULT '' COMMENT '图片',
  `website` varchar(255) DEFAULT '' COMMENT '导航链接',
  `createtime` bigint(16) DEFAULT NULL COMMENT '添加时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `memo` varchar(1500) DEFAULT '' COMMENT '备注',
  `status` enum('normal','hidden','rejected') DEFAULT 'hidden' COMMENT '状态',
  `intro` varchar(255) DEFAULT '' COMMENT '介绍'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='热门导航';

--
-- 转存表中的数据 `sf_cms_navigation`
--

INSERT INTO `sf_cms_navigation` (`id`, `user_id`, `title`, `image`, `website`, `createtime`, `updatetime`, `memo`, `status`, `intro`) VALUES
(1, 1, '百度', '/assets/addons/cms/img/logo/baidu.png', 'https://www.baidu.com', 1553606219, 1553606219, '', 'normal', ''),
(2, 1, '淘宝', '/assets/addons/cms/img/logo/taobao.png', 'https://www.taobao.com', 1553606219, 1553606219, NULL, 'normal', NULL),
(3, 1, '微博', '/assets/addons/cms/img/logo/weibo.png', 'https://weibo.com', 1553606219, 1553606219, NULL, 'normal', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_order`
--

CREATE TABLE `sf_cms_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `orderid` varchar(50) DEFAULT '' COMMENT '订单ID',
  `user_id` int(10) UNSIGNED DEFAULT '0' COMMENT '会员ID',
  `archives_id` int(10) UNSIGNED DEFAULT '0' COMMENT '文档ID',
  `title` varchar(100) DEFAULT NULL COMMENT '订单标题',
  `amount` decimal(10,2) UNSIGNED DEFAULT '0.00' COMMENT '订单金额',
  `payamount` decimal(10,2) UNSIGNED DEFAULT '0.00' COMMENT '支付金额',
  `paytype` varchar(50) DEFAULT NULL COMMENT '支付类型',
  `paytime` bigint(16) DEFAULT NULL COMMENT '支付时间',
  `method` varchar(100) DEFAULT '' COMMENT '支付方法',
  `ip` varchar(50) DEFAULT NULL COMMENT 'IP地址',
  `useragent` varchar(255) DEFAULT NULL COMMENT 'UserAgent',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注',
  `createtime` bigint(16) DEFAULT NULL COMMENT '添加时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `status` enum('created','paid','expired') DEFAULT 'created' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单表';

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_page`
--

CREATE TABLE `sf_cms_page` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `category_id` int(10) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `admin_id` int(10) UNSIGNED DEFAULT '0' COMMENT '管理员ID',
  `type` varchar(50) DEFAULT '' COMMENT '类型',
  `title` varchar(50) DEFAULT '' COMMENT '标题',
  `seotitle` varchar(255) DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `flag` varchar(100) DEFAULT '' COMMENT '标志',
  `image` varchar(255) DEFAULT '' COMMENT '头像',
  `content` longtext COMMENT '内容',
  `icon` varchar(50) DEFAULT '' COMMENT '图标',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点击',
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点赞',
  `dislikes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点踩',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论',
  `diyname` varchar(100) DEFAULT '' COMMENT '自定义',
  `showtpl` varchar(50) DEFAULT '' COMMENT '视图模板',
  `iscomment` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '是否允许评论',
  `parsetpl` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '解析模板标签',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `deletetime` bigint(16) DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='单页表';

--
-- 转存表中的数据 `sf_cms_page`
--

INSERT INTO `sf_cms_page` (`id`, `category_id`, `admin_id`, `type`, `title`, `seotitle`, `keywords`, `description`, `flag`, `image`, `content`, `icon`, `views`, `likes`, `dislikes`, `comments`, `diyname`, `showtpl`, `iscomment`, `parsetpl`, `createtime`, `updatetime`, `deletetime`, `weigh`, `status`) VALUES
(1, 0, 0, 'page', '关于我们', '', '', '', '', '', '<p>关于我们的内容</p>', '', 560, 225, 0, 0, 'aboutus', '', 1, 0, 1508933935, 1553769449, NULL, 1, 'normal'),
(2, 0, 0, 'page', '用户注册协议', '', '', '', '', '', '<p>用户注册协议</p>', '', 560, 225, 0, 0, 'agreement', '', 1, 0, 1508933935, 1553769449, NULL, 1, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_search_log`
--

CREATE TABLE `sf_cms_search_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `keywords` varchar(100) DEFAULT '' COMMENT '关键字',
  `nums` int(10) UNSIGNED DEFAULT '0' COMMENT '搜索次数',
  `createtime` bigint(16) DEFAULT NULL COMMENT '搜索时间',
  `status` varchar(50) DEFAULT 'hidden' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='搜索记录表';

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_special`
--

CREATE TABLE `sf_cms_special` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT '0' COMMENT '管理员ID',
  `title` varchar(100) DEFAULT '' COMMENT '标题',
  `tag_ids` varchar(1500) DEFAULT '' COMMENT '标签ID集合',
  `flag` varchar(100) DEFAULT '' COMMENT '标志',
  `label` varchar(50) DEFAULT '' COMMENT '标签',
  `image` varchar(255) DEFAULT '' COMMENT '图片',
  `banner` varchar(255) DEFAULT '' COMMENT 'Banner图片',
  `diyname` varchar(100) DEFAULT '' COMMENT '自定义名称',
  `seotitle` varchar(255) DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(100) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `intro` varchar(255) DEFAULT NULL COMMENT '专题介绍',
  `views` int(10) UNSIGNED DEFAULT '0' COMMENT '浏览次数',
  `comments` int(10) UNSIGNED DEFAULT '0' COMMENT '评论次数',
  `iscomment` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '是否允许评论',
  `createtime` bigint(16) DEFAULT NULL COMMENT '添加时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `deletetime` bigint(16) DEFAULT NULL COMMENT '删除时间',
  `template` varchar(100) DEFAULT '' COMMENT '专题模板',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='专题表';

--
-- 转存表中的数据 `sf_cms_special`
--

INSERT INTO `sf_cms_special` (`id`, `admin_id`, `title`, `tag_ids`, `flag`, `label`, `image`, `banner`, `diyname`, `seotitle`, `keywords`, `description`, `intro`, `views`, `comments`, `iscomment`, `createtime`, `updatetime`, `deletetime`, `template`, `status`) VALUES
(1, 0, '这是一个测试专题标题', '1,16,17', '', '热门专题', 'https://picsum.photos/id/450/800/600', 'https://picsum.photos/id/450/1110/300', 'it', '', NULL, NULL, '这是测试专题的介绍内容，你可以在后台进行修改', 119, 0, 1, 1553606219, 1553606219, NULL, '', 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_spider_log`
--

CREATE TABLE `sf_cms_spider_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('index','archives','page','special','channel','diyform','tag','user') DEFAULT NULL COMMENT '类型',
  `aid` int(10) DEFAULT '0' COMMENT '关联ID',
  `name` varchar(50) DEFAULT '' COMMENT '名称',
  `url` varchar(255) DEFAULT '' COMMENT '来访页面',
  `nums` int(10) UNSIGNED DEFAULT '0' COMMENT '来访次数',
  `firsttime` bigint(16) DEFAULT NULL COMMENT '首次来访时间',
  `lastdata` varchar(100) DEFAULT '' COMMENT '最后5次来访时间',
  `lasttime` bigint(16) DEFAULT NULL COMMENT '最后来访时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='搜索引擎来访记录';

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_tag`
--

CREATE TABLE `sf_cms_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT '' COMMENT '标签名称',
  `nums` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文档数量',
  `seotitle` varchar(100) DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `views` int(10) DEFAULT NULL COMMENT '浏览次数',
  `autolink` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '自动内链',
  `createtime` bigint(16) DEFAULT NULL COMMENT '添加时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='标签表';

--
-- 转存表中的数据 `sf_cms_tag`
--

INSERT INTO `sf_cms_tag` (`id`, `name`, `nums`, `seotitle`, `keywords`, `description`, `views`, `autolink`, `createtime`, `updatetime`, `status`) VALUES
(1, 'HiGame', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(2, 'PC', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(3, '驰为', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(4, 'Chromebox', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(5, '台式机', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(6, '宏基', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(7, '智能手表', 2, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(8, '混合动力', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(9, '智能设备', 3, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(10, '耳返', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(11, '南孚', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(12, '电池', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(13, '眼镜', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(14, 'dropbox', 3, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(15, '投资', 2, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(16, '云计算', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(17, '互联网', 12, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(18, '安全', 6, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(19, 'Google', 4, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(20, 'AR', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(21, 'Mac', 3, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(22, 'Sublime', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(23, '字体', 2, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(24, '播放器', 2, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(25, '屏幕录制', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(26, '视频录制', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(27, '铃声制作', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(28, '动画软件', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(29, '视频制作', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(30, '虚拟录音', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(31, '视频转换器', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(32, '音乐播放器', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(33, '媒体演示', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(34, '音乐管理', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(35, '音频录制', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(36, '电子书设计制作', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(37, 'PDF编辑软件', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(38, '博客写作', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(39, '文件管理', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(40, 'Podcast订阅', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(41, '即时翻译', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(42, '财务管理', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(43, '压缩软件', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(44, 'CAD绘图', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(45, '在线视频下载', 2, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(46, '视频下载', 3, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(47, '机器人', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(48, 'WiFi无线扫描和管理', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(49, '无线WiFi网络管理', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(50, 'YouTube视频', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(51, 'HTTP/REST服务测试', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(52, 'MAC地址修改', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(53, '远程访问', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(54, 'PeakHour', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(55, '文件快传', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(56, '防火墙工具', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(57, 'FTP工具', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(58, '多平台协作', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(59, '多标签ssh工具', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(60, '多终端工具', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `sf_cms_taggable`
--

CREATE TABLE `sf_cms_taggable` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) DEFAULT NULL COMMENT '标签ID',
  `archives_id` int(10) DEFAULT NULL COMMENT '文档ID',
  `createtime` bigint(16) DEFAULT NULL COMMENT '添加时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='标签列表';

--
-- 转存表中的数据 `sf_cms_taggable`
--

INSERT INTO `sf_cms_taggable` (`id`, `tag_id`, `archives_id`, `createtime`) VALUES
(1, 1, 1, 1597139826),
(2, 2, 1, 1597139826),
(3, 3, 1, 1597139826),
(4, 4, 2, 1597139833),
(5, 5, 2, 1597139833),
(6, 6, 2, 1597139833),
(7, 7, 3, 1597139837),
(8, 8, 3, 1597139837),
(9, 9, 4, 1597139842),
(10, 10, 4, 1597139842),
(11, 11, 5, 1597139851),
(12, 12, 5, 1597139851),
(13, 9, 7, 1597139855),
(14, 13, 7, 1597139855),
(15, 14, 8, 1597139861),
(16, 15, 8, 1597139861),
(17, 14, 9, 1597139866),
(18, 15, 9, 1597139866),
(19, 14, 10, 1597139873),
(20, 16, 11, 1597139878),
(21, 17, 11, 1597139878),
(22, 9, 13, 1597139887),
(23, 18, 14, 1597139894),
(24, 17, 15, 1597139899),
(25, 18, 15, 1597139899),
(26, 17, 16, 1597139904),
(27, 18, 16, 1597139904),
(28, 17, 18, 1597139969),
(29, 18, 18, 1597139969),
(30, 17, 20, 1597139972),
(31, 19, 20, 1597139972),
(32, 19, 21, 1597139976),
(33, 17, 21, 1597139976),
(34, 19, 22, 1597139979),
(35, 17, 22, 1597139979),
(36, 17, 23, 1597139983),
(37, 19, 24, 1597139986),
(38, 17, 24, 1597139986),
(39, 17, 28, 1597139989),
(40, 17, 33, 1597139992),
(41, 18, 33, 1597139992),
(42, 17, 34, 1597139995),
(43, 20, 34, 1597139995),
(44, 21, 40, 1597139997),
(45, 22, 41, 1597140005),
(46, 18, 42, 1597140008),
(47, 23, 43, 1597140011),
(48, 21, 44, 1597140015),
(49, 21, 45, 1597140018),
(50, 23, 51, 1597140037),
(51, 24, 52, 1597140040),
(52, 24, 53, 1597140043),
(53, 25, 56, 1597140052),
(54, 26, 57, 1597140061),
(55, 27, 58, 1597140064),
(56, 28, 59, 1597140068),
(57, 29, 60, 1597140070),
(58, 30, 61, 1597140076),
(59, 31, 62, 1597140079),
(60, 32, 63, 1597140082),
(61, 33, 64, 1597140084),
(62, 34, 65, 1597140087),
(63, 35, 66, 1597140090),
(64, 36, 67, 1597140093),
(65, 37, 68, 1597140097),
(66, 38, 69, 1597140100),
(67, 39, 70, 1597140103),
(68, 40, 71, 1597140107),
(69, 41, 72, 1597140110),
(70, 7, 73, 1597140113),
(71, 42, 74, 1597140116),
(72, 43, 75, 1597140119),
(73, 44, 76, 1597140122),
(74, 45, 77, 1597140125),
(75, 46, 78, 1597140128),
(76, 46, 79, 1597140131),
(77, 47, 81, 1597140137),
(78, 48, 82, 1597140140),
(79, 49, 83, 1597140143),
(80, 50, 84, 1597140146),
(81, 46, 85, 1597140149),
(82, 51, 86, 1597140152),
(83, 52, 87, 1597140155),
(84, 45, 89, 1597140160),
(85, 53, 91, 1597140167),
(86, 54, 93, 1597140172),
(87, 55, 94, 1597140175),
(88, 56, 95, 1597140178),
(89, 57, 97, 1597140184),
(90, 58, 99, 1597140189),
(91, 59, 101, 1597140196),
(92, 60, 102, 1597140199);

-- --------------------------------------------------------

--
-- 表的结构 `sf_command`
--

CREATE TABLE `sf_command` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型',
  `params` varchar(1500) NOT NULL DEFAULT '' COMMENT '参数',
  `command` varchar(1500) NOT NULL DEFAULT '' COMMENT '命令',
  `content` text COMMENT '返回结果',
  `executetime` bigint(16) UNSIGNED DEFAULT NULL COMMENT '执行时间',
  `createtime` bigint(16) UNSIGNED DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) UNSIGNED DEFAULT NULL COMMENT '更新时间',
  `status` enum('successed','failured') NOT NULL DEFAULT 'failured' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线命令表';

--
-- 转存表中的数据 `sf_command`
--

INSERT INTO `sf_command` (`id`, `type`, `params`, `command`, `content`, `executetime`, `createtime`, `updatetime`, `status`) VALUES
(1, 'crud', '[\"--table=sf_catgory\",\"--controller=Catgory\",\"--model=Catfory\",\"--local=0\"]', 'php think crud --table=sf_catgory --controller=Catgory --model=Catfory --local=0', 'Build Successed', 1664023893, 1664023893, 1664023893, 'successed'),
(2, 'menu', '[\"--controller=Catgory\"]', 'php think menu --controller=Catgory', 'Build Successed!', 1664023919, 1664023919, 1664023919, 'successed'),
(3, 'crud', '[\"--table=sf_services\",\"--controller=Services\",\"--local=0\"]', 'php think crud --table=sf_services --controller=Services --local=0', 'Build Successed', 1664036417, 1664036417, 1664036417, 'successed'),
(4, 'menu', '[\"--controller=Services\"]', 'php think menu --controller=Services', 'Build Successed!', 1664036435, 1664036435, 1664036435, 'successed'),
(5, 'crud', '[\"--force=1\",\"--table=sf_catgory\",\"--controller=Catgory\"]', 'php think crud --force=1 --table=sf_catgory --controller=Catgory', 'Build Successed', 1664080842, 1664080842, 1664080842, 'successed'),
(6, 'crud', '[\"--force=1\",\"--table=sf_services\",\"--controller=Services\"]', 'php think crud --force=1 --table=sf_services --controller=Services', 'Build Successed', 1664080924, 1664080924, 1664080924, 'successed');

-- --------------------------------------------------------

--
-- 表的结构 `sf_config`
--

CREATE TABLE `sf_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量名',
  `group` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '分组',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `visible` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '可见条件',
  `value` text COLLATE utf8mb4_unicode_ci COMMENT '变量值',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '变量字典数据',
  `rule` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '扩展属性',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '配置'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统配置';

--
-- 转存表中的数据 `sf_config`
--

INSERT INTO `sf_config` (`id`, `name`, `group`, `title`, `tip`, `type`, `visible`, `value`, `content`, `rule`, `extend`, `setting`) VALUES
(1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', '', '商富小程序', '', 'required', '', NULL),
(2, 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '', '', '', '', '', NULL),
(3, 'cdnurl', 'basic', 'Cdn url', '如果全站静态资源使用第三方云储存请配置该值', 'string', '', '', '', '', '', ''),
(4, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '', '1.0.1', '', 'required', '', NULL),
(5, 'timezone', 'basic', 'Timezone', '', 'string', '', 'Asia/Shanghai', '', 'required', '', NULL),
(6, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '', '', NULL),
(7, 'languages', 'basic', 'Languages', '', 'array', '', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '', NULL),
(8, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', '', 'dashboard', '', 'required', '', NULL),
(9, 'categorytype', 'dictionary', 'Category type', '', 'array', '', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '', ''),
(10, 'configgroup', 'dictionary', 'Config group', '', 'array', '', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '', ''),
(11, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '', '1', '[\"请选择\",\"SMTP\"]', '', '', ''),
(12, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', '', 'smtp.qq.com', '', '', '', ''),
(13, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '', '465', '', '', '', ''),
(14, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '', '10000', '', '', '', ''),
(15, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码或授权码）', 'string', '', 'password', '', '', '', ''),
(16, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '', '2', '[\"无\",\"TLS\",\"SSL\"]', '', '', ''),
(17, 'mail_from', 'email', 'Mail from', '', 'string', '', '10000@qq.com', '', '', '', ''),
(18, 'attachmentcategory', 'dictionary', 'Attachment category', '', 'array', '', '{\"category1\":\"Category1\",\"category2\":\"Category2\",\"custom\":\"Custom\"}', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `sf_department`
--

CREATE TABLE `sf_department` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL COMMENT '名称',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `weigh` int(11) DEFAULT '0' COMMENT '排序',
  `create_time` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `organise_id` int(11) DEFAULT '0' COMMENT '组织id(最顶级)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='组织部门表';

-- --------------------------------------------------------

--
-- 表的结构 `sf_department_admin`
--

CREATE TABLE `sf_department_admin` (
  `id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL COMMENT '部门id',
  `organise_id` int(11) DEFAULT NULL COMMENT '组织id(最顶级)',
  `admin_id` int(11) DEFAULT NULL COMMENT '成员id',
  `create_time` bigint(16) NOT NULL COMMENT '加入时间',
  `update_time` bigint(16) NOT NULL COMMENT '更新时间',
  `is_principal` tinyint(1) DEFAULT NULL COMMENT '是否负责人',
  `is_owner` tinyint(1) DEFAULT '0' COMMENT '拥有者'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='组织部门-成员表';

-- --------------------------------------------------------

--
-- 表的结构 `sf_ems`
--

CREATE TABLE `sf_ems` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `event` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '事件',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='邮箱验证码表';

-- --------------------------------------------------------

--
-- 表的结构 `sf_services`
--

CREATE TABLE `sf_services` (
  `id` bigint(11) NOT NULL COMMENT 'ID',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '服务名称',
  `thumbimage` varchar(255) NOT NULL DEFAULT '' COMMENT '显示图标',
  `catgory_id` bigint(11) NOT NULL DEFAULT '0' COMMENT '分类名称',
  `specificationsjson` varchar(2000) NOT NULL DEFAULT '' COMMENT '服务规格',
  `content` text NOT NULL COMMENT '服务内容',
  `createtime` bigint(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` bigint(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '客服电话',
  `price` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '服务价格',
  `list_hotjson` varchar(2000) NOT NULL DEFAULT '' COMMENT '列表规格',
  `describe` text NOT NULL COMMENT '服务介绍',
  `bannerimages` varchar(2000) NOT NULL DEFAULT '' COMMENT 'Banner'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务表';

-- --------------------------------------------------------

--
-- 表的结构 `sf_sku`
--

CREATE TABLE `sf_sku` (
  `id` bigint(11) NOT NULL COMMENT 'ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务规格表';

-- --------------------------------------------------------

--
-- 表的结构 `sf_sms`
--

CREATE TABLE `sf_sms` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `event` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号',
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `createtime` bigint(16) UNSIGNED DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='短信验证码表';

-- --------------------------------------------------------

--
-- 表的结构 `sf_tablemake_fields`
--

CREATE TABLE `sf_tablemake_fields` (
  `id` bigint(11) NOT NULL COMMENT 'ID',
  `mid` bigint(11) NOT NULL DEFAULT '0' COMMENT '所属自建表ID',
  `category` tinyint(2) NOT NULL COMMENT '字段类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '字段标题',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '字段名称',
  `field` varchar(50) NOT NULL DEFAULT '' COMMENT '字段名',
  `special` varchar(50) NOT NULL DEFAULT '' COMMENT '特殊字段',
  `suffix` varchar(50) NOT NULL DEFAULT '' COMMENT '字段后缀',
  `type` varchar(50) NOT NULL DEFAULT '' COMMENT '字段类型',
  `length` varchar(10) NOT NULL DEFAULT '0' COMMENT '字段长度',
  `default` varchar(255) NOT NULL DEFAULT '' COMMENT '默认值',
  `comment` varchar(2000) NOT NULL DEFAULT '' COMMENT '字段备注',
  `desc` varchar(255) NOT NULL DEFAULT '' COMMENT '字段备注',
  `weigh` bigint(11) NOT NULL DEFAULT '0' COMMENT '排序权重',
  `createtime` bigint(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` bigint(11) NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段管理表' ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `sf_tablemake_fields`
--

INSERT INTO `sf_tablemake_fields` (`id`, `mid`, `category`, `title`, `name`, `field`, `special`, `suffix`, `type`, `length`, `default`, `comment`, `desc`, `weigh`, `createtime`, `updatetime`) VALUES
(2, 1, 2, '服务名称', 'name', 'name', '', '', 'varchar', '200', '', '服务名称', '服务名称', 19, 1663822111, 1663822111),
(3, 1, 1, '显示图标', 'thumb', 'thumbimage', '', 'image', 'varchar', '255', '', '显示图标', '', 13, 1663843726, 1664036055),
(4, 2, 2, '分类名称', 'name', 'name', '', '', 'varchar', '200', '', '分类名称', '', 16, 1664023556, 1664023556),
(5, 2, 1, '分类图标', 'thumb', 'thumbimages', '', 'images', 'varchar', '2000', '', '分类图标', '', 15, 1664023599, 1664023599),
(6, 2, 2, '分类描述', 'describe', 'describe', '', '', 'varchar', '2000', '', '分类描述', '', 6, 1664023635, 1664036701),
(7, 1, 1, '分类名称', 'catgory', 'catgory_id', '', '_id', 'bigint', '11', '', '分类名称', '', 11, 1664023701, 1664023708),
(8, 1, 1, '服务规格', 'specifications', 'specificationsjson', '', 'json', 'varchar', '2000', '', '服务规格', '', 9, 1664036038, 1664036038),
(9, 1, 2, '服务内容', 'content', 'content', '', '', 'text', '0', '', '服务内容', '服务内容', 7, 1664036173, 1664036173),
(10, 1, 3, '创建时间', 'createtime', 'createtime', 'createtime', '', 'bigint', '11', '0', '创建时间', '', 3, 1664036187, 1664036187),
(11, 1, 3, '更新时间', 'updatetime', 'updatetime', 'updatetime', '', 'bigint', '11', '0', '更新时间', '', 2, 1664036205, 1664036205),
(12, 1, 2, '客服电话', 'tel', 'tel', '', '', 'varchar', '20', '', '客服电话', '', 17, 1664036231, 1664036231),
(13, 1, 2, '服务价格', 'price', 'price', '', '', 'float', '10,2', '0', '服务价格', '服务价格', 18, 1664036340, 1664036340),
(14, 1, 1, '列表规格', 'list_hot', 'list_hotjson', '', 'json', 'varchar', '2000', '', '列表规格', '', 10, 1664036581, 1664036581),
(15, 2, 3, '创建时间', 'createtime', 'createtime', 'createtime', '', 'bigint', '11', '0', '创建时间', '', 4, 1664036664, 1664036664),
(16, 2, 3, '更新时间', 'updatetime', 'updatetime', 'updatetime', '', 'bigint', '11', '0', '更新时间', '', 5, 1664036679, 1664036679),
(17, 1, 1, '显示详情', 'is_details', 'is_detailsdata', '', 'data-enum', 'enum', '0', '', '显示详情:0=否,1=是', '', 8, 1664080637, 1664080637),
(18, 1, 2, '服务介绍', 'describe', 'describe', '', '', 'text', '0', '', '服务介绍', '', 12, 1664080709, 1664080709),
(19, 1, 1, 'Banner', 'banner', 'bannerimages', '', 'images', 'varchar', '2000', '', 'Banner', '', 14, 1664080758, 1664080758);

-- --------------------------------------------------------

--
-- 表的结构 `sf_tablemake_tables`
--

CREATE TABLE `sf_tablemake_tables` (
  `id` bigint(11) NOT NULL COMMENT 'ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '自建表名称',
  `table` varchar(20) NOT NULL DEFAULT '' COMMENT '自建表表名',
  `desc` varchar(255) NOT NULL DEFAULT '' COMMENT '自建表简介',
  `weigh` bigint(11) NOT NULL DEFAULT '0' COMMENT '排序权重',
  `createtime` bigint(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` bigint(11) NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自建表管理表' ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `sf_tablemake_tables`
--

INSERT INTO `sf_tablemake_tables` (`id`, `name`, `table`, `desc`, `weigh`, `createtime`, `updatetime`) VALUES
(1, '服务表', 'services', '服务表，记录可以提供的服务内容', 1, 1663821352, 1663821352),
(2, '服务分类表', 'catgory', '服务分类表', 2, 1664023530, 1664023530),
(3, '服务规格表', 'sku', '服务规格表', 3, 1664035410, 1664035410);

-- --------------------------------------------------------

--
-- 表的结构 `sf_test`
--

CREATE TABLE `sf_test` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `user_id` int(10) DEFAULT '0' COMMENT '会员ID',
  `admin_id` int(10) DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) UNSIGNED DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类ID(多选)',
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标签',
  `week` enum('monday','tuesday','wednesday') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') COLLATE utf8mb4_unicode_ci DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片',
  `images` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '附件',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '关键字',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '描述',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '省市',
  `json` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `multiplejson` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '二维数组:title=标题,intro=介绍,author=作者,age=年龄',
  `price` decimal(10,2) UNSIGNED DEFAULT '0.00' COMMENT '价格',
  `views` int(10) UNSIGNED DEFAULT '0' COMMENT '点击',
  `workrange` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '时间区间',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` bigint(16) DEFAULT NULL COMMENT '刷新时间',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `deletetime` bigint(16) DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') COLLATE utf8mb4_unicode_ci DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='测试表';

--
-- 转存表中的数据 `sf_test`
--

INSERT INTO `sf_test` (`id`, `user_id`, `admin_id`, `category_id`, `category_ids`, `tags`, `week`, `flag`, `genderdata`, `hobbydata`, `title`, `content`, `image`, `images`, `attachfile`, `keywords`, `description`, `city`, `json`, `multiplejson`, `price`, `views`, `workrange`, `startdate`, `activitytime`, `year`, `times`, `refreshtime`, `createtime`, `updatetime`, `deletetime`, `weigh`, `switch`, `status`, `state`) VALUES
(1, 1, 1, 12, '12,13', '互联网,计算机', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{\"a\":\"1\",\"b\":\"2\"}', '[{\"title\":\"标题一\",\"intro\":\"介绍一\",\"author\":\"小明\",\"age\":\"21\"}]', '0.00', 0, '2020-10-01 00:00:00 - 2021-10-31 23:59:59', '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1491635035, 1491635035, 1491635035, NULL, 0, 1, 'normal', '1');

-- --------------------------------------------------------

--
-- 表的结构 `sf_user`
--

CREATE TABLE `sf_user` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '昵称',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像',
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` bigint(16) DEFAULT NULL COMMENT '上次登录时间',
  `logintime` bigint(16) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '加入IP',
  `jointime` bigint(16) DEFAULT NULL COMMENT '加入时间',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Token',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  `verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员表';

--
-- 转存表中的数据 `sf_user`
--

INSERT INTO `sf_user` (`id`, `group_id`, `username`, `nickname`, `password`, `salt`, `email`, `mobile`, `avatar`, `level`, `gender`, `birthday`, `bio`, `money`, `score`, `successions`, `maxsuccessions`, `prevtime`, `logintime`, `loginip`, `loginfailure`, `joinip`, `jointime`, `createtime`, `updatetime`, `token`, `status`, `verification`) VALUES
(1, 1, 'admin', 'admin', 'a4d41ba23ef05f58ec76a4cda36704c9', '75d9e5', 'admin@163.com', '13888888888', 'http://www.sf.com/assets/img/avatar.png', 0, 0, '2017-04-08', '', '0.00', 0, 1, 1, 1491635035, 1491635035, '127.0.0.1', 0, '127.0.0.1', 1491635035, 0, 1491635035, '', 'normal', '');

-- --------------------------------------------------------

--
-- 表的结构 `sf_user_group`
--

CREATE TABLE `sf_user_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '组名',
  `rules` text COLLATE utf8mb4_unicode_ci COMMENT '权限节点',
  `createtime` bigint(16) DEFAULT NULL COMMENT '添加时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员组表';

--
-- 转存表中的数据 `sf_user_group`
--

INSERT INTO `sf_user_group` (`id`, `name`, `rules`, `createtime`, `updatetime`, `status`) VALUES
(1, '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', 1491635035, 1491635035, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `sf_user_money_log`
--

CREATE TABLE `sf_user_money_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更余额',
  `before` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `after` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `memo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员余额变动表';

-- --------------------------------------------------------

--
-- 表的结构 `sf_user_rule`
--

CREATE TABLE `sf_user_rule` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标题',
  `remark` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员规则表';

--
-- 转存表中的数据 `sf_user_rule`
--

INSERT INTO `sf_user_rule` (`id`, `pid`, `name`, `title`, `remark`, `ismenu`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 0, 'index', 'Frontend', '', 1, 1491635035, 1491635035, 1, 'normal'),
(2, 0, 'api', 'API Interface', '', 1, 1491635035, 1491635035, 2, 'normal'),
(3, 1, 'user', 'User Module', '', 1, 1491635035, 1491635035, 12, 'normal'),
(4, 2, 'user', 'User Module', '', 1, 1491635035, 1491635035, 11, 'normal'),
(5, 3, 'index/user/login', 'Login', '', 0, 1491635035, 1491635035, 5, 'normal'),
(6, 3, 'index/user/register', 'Register', '', 0, 1491635035, 1491635035, 7, 'normal'),
(7, 3, 'index/user/index', 'User Center', '', 0, 1491635035, 1491635035, 9, 'normal'),
(8, 3, 'index/user/profile', 'Profile', '', 0, 1491635035, 1491635035, 4, 'normal'),
(9, 4, 'api/user/login', 'Login', '', 0, 1491635035, 1491635035, 6, 'normal'),
(10, 4, 'api/user/register', 'Register', '', 0, 1491635035, 1491635035, 8, 'normal'),
(11, 4, 'api/user/index', 'User Center', '', 0, 1491635035, 1491635035, 10, 'normal'),
(12, 4, 'api/user/profile', 'Profile', '', 0, 1491635035, 1491635035, 3, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `sf_user_score_log`
--

CREATE TABLE `sf_user_score_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员积分变动表';

-- --------------------------------------------------------

--
-- 表的结构 `sf_user_token`
--

CREATE TABLE `sf_user_token` (
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Token',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `expiretime` bigint(16) DEFAULT NULL COMMENT '过期时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员Token表';

-- --------------------------------------------------------

--
-- 表的结构 `sf_version`
--

CREATE TABLE `sf_version` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `oldversion` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '包大小',
  `content` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='版本表';

--
-- 转存表中的数据 `sf_version`
--

INSERT INTO `sf_version` (`id`, `oldversion`, `newversion`, `packagesize`, `content`, `downloadurl`, `enforce`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, '1.1.1,2', '1.2.1', '20M', '更新内容', 'https://www.example.com', 1, 1520425318, 0, 0, 'normal');

--
-- 转储表的索引
--

--
-- 表的索引 `sf_admin`
--
ALTER TABLE `sf_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- 表的索引 `sf_admin_log`
--
ALTER TABLE `sf_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`username`);

--
-- 表的索引 `sf_area`
--
ALTER TABLE `sf_area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- 表的索引 `sf_attachment`
--
ALTER TABLE `sf_attachment`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_auth_group`
--
ALTER TABLE `sf_auth_group`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_auth_group_access`
--
ALTER TABLE `sf_auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- 表的索引 `sf_auth_rule`
--
ALTER TABLE `sf_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD KEY `pid` (`pid`),
  ADD KEY `weigh` (`weigh`);

--
-- 表的索引 `sf_buiapi_field`
--
ALTER TABLE `sf_buiapi_field`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `sf_buiapi_table`
--
ALTER TABLE `sf_buiapi_table`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_category`
--
ALTER TABLE `sf_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `weigh` (`weigh`,`id`),
  ADD KEY `pid` (`pid`);

--
-- 表的索引 `sf_catgory`
--
ALTER TABLE `sf_catgory`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_cms_addondownload`
--
ALTER TABLE `sf_cms_addondownload`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_cms_addonnews`
--
ALTER TABLE `sf_cms_addonnews`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_cms_addonproduct`
--
ALTER TABLE `sf_cms_addonproduct`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_cms_archives`
--
ALTER TABLE `sf_cms_archives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diyname` (`diyname`),
  ADD KEY `channel_id` (`channel_id`),
  ADD KEY `channel_ids` (`channel_ids`),
  ADD KEY `weigh` (`weigh`,`publishtime`),
  ADD KEY `channel_id_2` (`channel_id`),
  ADD KEY `channel_ids_2` (`channel_ids`),
  ADD KEY `diyname_2` (`diyname`);

--
-- 表的索引 `sf_cms_autolink`
--
ALTER TABLE `sf_cms_autolink`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_cms_block`
--
ALTER TABLE `sf_cms_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- 表的索引 `sf_cms_channel`
--
ALTER TABLE `sf_cms_channel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `diyname` (`diyname`),
  ADD KEY `type` (`type`),
  ADD KEY `weigh` (`weigh`,`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `type_2` (`type`);

--
-- 表的索引 `sf_cms_channel_admin`
--
ALTER TABLE `sf_cms_channel_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`,`channel_id`);

--
-- 表的索引 `sf_cms_collection`
--
ALTER TABLE `sf_cms_collection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `aid` (`type`,`aid`,`user_id`) USING BTREE;

--
-- 表的索引 `sf_cms_comment`
--
ALTER TABLE `sf_cms_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`aid`,`pid`) USING BTREE;

--
-- 表的索引 `sf_cms_diyform`
--
ALTER TABLE `sf_cms_diyform`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diyname` (`diyname`);

--
-- 表的索引 `sf_cms_fields`
--
ALTER TABLE `sf_cms_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `source` (`source`) USING BTREE,
  ADD KEY `source_id` (`source_id`);

--
-- 表的索引 `sf_cms_friendlink`
--
ALTER TABLE `sf_cms_friendlink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `createtime` (`createtime`);

--
-- 表的索引 `sf_cms_message`
--
ALTER TABLE `sf_cms_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `createtime` (`createtime`);

--
-- 表的索引 `sf_cms_model`
--
ALTER TABLE `sf_cms_model`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_cms_navigation`
--
ALTER TABLE `sf_cms_navigation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `createtime` (`createtime`);

--
-- 表的索引 `sf_cms_order`
--
ALTER TABLE `sf_cms_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `archives_id` (`archives_id`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `orderid_2` (`orderid`);

--
-- 表的索引 `sf_cms_page`
--
ALTER TABLE `sf_cms_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diyname` (`diyname`),
  ADD KEY `type` (`type`),
  ADD KEY `diyname_2` (`diyname`);

--
-- 表的索引 `sf_cms_search_log`
--
ALTER TABLE `sf_cms_search_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords` (`keywords`);

--
-- 表的索引 `sf_cms_special`
--
ALTER TABLE `sf_cms_special`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diyname` (`diyname`),
  ADD KEY `diyname_2` (`diyname`);

--
-- 表的索引 `sf_cms_spider_log`
--
ALTER TABLE `sf_cms_spider_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`,`aid`);

--
-- 表的索引 `sf_cms_tag`
--
ALTER TABLE `sf_cms_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD KEY `nums` (`nums`);

--
-- 表的索引 `sf_cms_taggable`
--
ALTER TABLE `sf_cms_taggable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `archives_id` (`archives_id`);

--
-- 表的索引 `sf_command`
--
ALTER TABLE `sf_command`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `sf_config`
--
ALTER TABLE `sf_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 表的索引 `sf_department`
--
ALTER TABLE `sf_department`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `sf_department_admin`
--
ALTER TABLE `sf_department_admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `sf_ems`
--
ALTER TABLE `sf_ems`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `sf_services`
--
ALTER TABLE `sf_services`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_sku`
--
ALTER TABLE `sf_sku`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_sms`
--
ALTER TABLE `sf_sms`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_tablemake_fields`
--
ALTER TABLE `sf_tablemake_fields`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `sf_tablemake_tables`
--
ALTER TABLE `sf_tablemake_tables`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `sf_test`
--
ALTER TABLE `sf_test`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_user`
--
ALTER TABLE `sf_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `mobile` (`mobile`);

--
-- 表的索引 `sf_user_group`
--
ALTER TABLE `sf_user_group`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_user_money_log`
--
ALTER TABLE `sf_user_money_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_user_rule`
--
ALTER TABLE `sf_user_rule`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_user_score_log`
--
ALTER TABLE `sf_user_score_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sf_user_token`
--
ALTER TABLE `sf_user_token`
  ADD PRIMARY KEY (`token`);

--
-- 表的索引 `sf_version`
--
ALTER TABLE `sf_version`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `sf_admin`
--
ALTER TABLE `sf_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sf_admin_log`
--
ALTER TABLE `sf_admin_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=119;

--
-- 使用表AUTO_INCREMENT `sf_area`
--
ALTER TABLE `sf_area`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=3749;

--
-- 使用表AUTO_INCREMENT `sf_attachment`
--
ALTER TABLE `sf_attachment`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sf_auth_group`
--
ALTER TABLE `sf_auth_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `sf_auth_rule`
--
ALTER TABLE `sf_auth_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- 使用表AUTO_INCREMENT `sf_buiapi_field`
--
ALTER TABLE `sf_buiapi_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `sf_buiapi_table`
--
ALTER TABLE `sf_buiapi_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sf_category`
--
ALTER TABLE `sf_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `sf_catgory`
--
ALTER TABLE `sf_catgory`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sf_cms_archives`
--
ALTER TABLE `sf_cms_archives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- 使用表AUTO_INCREMENT `sf_cms_autolink`
--
ALTER TABLE `sf_cms_autolink`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sf_cms_block`
--
ALTER TABLE `sf_cms_block`
  MODIFY `id` smallint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- 使用表AUTO_INCREMENT `sf_cms_channel`
--
ALTER TABLE `sf_cms_channel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用表AUTO_INCREMENT `sf_cms_channel_admin`
--
ALTER TABLE `sf_cms_channel_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sf_cms_collection`
--
ALTER TABLE `sf_cms_collection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sf_cms_comment`
--
ALTER TABLE `sf_cms_comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `sf_cms_diyform`
--
ALTER TABLE `sf_cms_diyform`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `sf_cms_fields`
--
ALTER TABLE `sf_cms_fields`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用表AUTO_INCREMENT `sf_cms_friendlink`
--
ALTER TABLE `sf_cms_friendlink`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `sf_cms_message`
--
ALTER TABLE `sf_cms_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sf_cms_model`
--
ALTER TABLE `sf_cms_model`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `sf_cms_navigation`
--
ALTER TABLE `sf_cms_navigation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `sf_cms_order`
--
ALTER TABLE `sf_cms_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `sf_cms_page`
--
ALTER TABLE `sf_cms_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `sf_cms_search_log`
--
ALTER TABLE `sf_cms_search_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sf_cms_special`
--
ALTER TABLE `sf_cms_special`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sf_cms_spider_log`
--
ALTER TABLE `sf_cms_spider_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `sf_cms_tag`
--
ALTER TABLE `sf_cms_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- 使用表AUTO_INCREMENT `sf_cms_taggable`
--
ALTER TABLE `sf_cms_taggable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- 使用表AUTO_INCREMENT `sf_command`
--
ALTER TABLE `sf_command`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `sf_config`
--
ALTER TABLE `sf_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `sf_department`
--
ALTER TABLE `sf_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用表AUTO_INCREMENT `sf_department_admin`
--
ALTER TABLE `sf_department_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- 使用表AUTO_INCREMENT `sf_ems`
--
ALTER TABLE `sf_ems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `sf_services`
--
ALTER TABLE `sf_services`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `sf_sku`
--
ALTER TABLE `sf_sku`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `sf_sms`
--
ALTER TABLE `sf_sms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `sf_tablemake_fields`
--
ALTER TABLE `sf_tablemake_fields`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=20;

--
-- 使用表AUTO_INCREMENT `sf_tablemake_tables`
--
ALTER TABLE `sf_tablemake_tables`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `sf_test`
--
ALTER TABLE `sf_test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sf_user`
--
ALTER TABLE `sf_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sf_user_group`
--
ALTER TABLE `sf_user_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sf_user_money_log`
--
ALTER TABLE `sf_user_money_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sf_user_rule`
--
ALTER TABLE `sf_user_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `sf_user_score_log`
--
ALTER TABLE `sf_user_score_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sf_version`
--
ALTER TABLE `sf_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
