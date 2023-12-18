/*
 Navicat Premium Data Transfer

 Source Server         : 本地Master
 Source Server Type    : MySQL
 Source Server Version : 80100
 Source Host           : localhost:3306
 Source Schema         : demo

 Target Server Type    : MySQL
 Target Server Version : 80100
 File Encoding         : 65001

 Date: 05/09/2023 08:24:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '配置名称',
  `value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT '配置值',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '标题',
  `remark` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '备注',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `update_id` bigint DEFAULT NULL COMMENT '更新人',
  `update_by` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '更新时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_id` bigint DEFAULT NULL COMMENT '创建人',
  `create_by` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=659 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='系统配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (1, 'aliyun.access.key', NULL, '阿里云key', NULL, '2022-12-13 21:48:58', 1, 'Sir丶雨轩', '2022-12-13 21:31:21', NULL, 'Sir丶雨轩');
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (2, 'aliyun.access.secret', NULL, '阿里云密钥', NULL, '2022-12-13 21:49:59', 1, 'Sir丶雨轩', '2022-12-13 21:31:21', NULL, 'Sir丶雨轩');
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (3, 'aliyun.oss.endpoint', NULL, '阿里云OSS的地域', NULL, '2022-12-13 21:47:14', 1, 'Sir丶雨轩', '2022-12-13 21:31:21', NULL, 'Sir丶雨轩');
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (4, 'aliyun.oss.bucket', NULL, '阿里云OSS的bucket', NULL, '2022-12-13 21:48:38', 1, 'Sir丶雨轩', '2022-12-13 21:31:21', NULL, 'Sir丶雨轩');
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (5, 'mail.user', NULL, '邮件发送账号', NULL, '2022-12-23 13:52:57', 1, 'Sir丶雨轩', NULL, NULL, NULL);
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (6, 'mail.pass', NULL, '邮件发送密码', NULL, '2022-12-23 13:52:57', 1, 'Sir丶雨轩', NULL, NULL, NULL);
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (7, 'mail.from', NULL, '邮件发送人', NULL, '2022-12-23 13:52:57', 1, 'Sir丶雨轩', NULL, NULL, NULL);
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (8, 'mail.host', NULL, '邮件域名', NULL, '2022-12-23 13:52:57', 1, 'Sir丶雨轩', NULL, NULL, NULL);
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (9, 'mail.port', NULL, '邮件端口', NULL, '2022-12-23 13:52:57', 1, 'Sir丶雨轩', NULL, NULL, NULL);
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (13, 'rsaPrivate', NULL, 'RSA私钥', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (14, 'rsaPublic', NULL, 'RSA公钥', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (20, 'eve.esi.client', NULL, 'EVE ESI ClientID', NULL, '2022-12-23 13:52:57', 1, 'Sir丶雨轩', '2022-12-13 21:31:21', NULL, 'Sir丶雨轩');
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (21, 'eve.esi.secret', NULL, 'EVE ESI SecretKey', NULL, '2022-12-13 21:50:47', 1, 'Sir丶雨轩', '2022-12-13 21:31:21', NULL, 'Sir丶雨轩');
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (22, 'eve.es.callback', NULL, 'EVE ESI 授权回调', NULL, '2022-12-13 21:51:11', 1, 'Sir丶雨轩', '2022-12-13 21:31:21', NULL, 'Sir丶雨轩');
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (264, 'web.site', NULL, '前端地址', NULL, '2022-12-13 21:41:28', 1, 'Sir丶雨轩', '2022-12-13 21:31:21', NULL, 'Sir丶雨轩');
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (644, 'eve.main.corp', NULL, 'EVE主军团ID', NULL, '2022-12-13 21:50:25', 1, 'Sir丶雨轩', '2022-12-13 21:31:21', NULL, 'Sir丶雨轩');
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (646, 'upload.local.path', NULL, '本地上传保存目录', NULL, NULL, NULL, 'Sir丶雨轩', '2022-12-13 21:31:21', NULL, 'Sir丶雨轩');
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (647, 'upload.local.url', NULL, '本地上传保存URL', NULL, NULL, NULL, 'Sir丶雨轩', '2022-12-13 21:31:21', NULL, 'Sir丶雨轩');
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (648, 'upload.type', NULL, '上传类型', '上传类型：1=本地文件，2=阿里云', '2022-12-13 21:45:00', 1, 'Sir丶雨轩', '2022-12-13 21:31:21', NULL, 'Sir丶雨轩');
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (649, 'seat.cookie', NULL, '联盟通讯Cookie', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (657, 'discord.role.corp.admin', NULL, '军团总监组ID', NULL, NULL, NULL, NULL, '2023-01-12 10:03:49', 1, 'Sir丶雨轩');
INSERT INTO `sys_config` (`id`, `name`, `value`, `title`, `remark`, `update_time`, `update_id`, `update_by`, `create_time`, `create_id`, `create_by`) VALUES (658, 'template.path', NULL, '图片模板目录', NULL, '2023-01-13 16:50:01', 1, 'Sir丶雨轩', '2023-01-13 16:01:16', 1, 'Sir丶雨轩');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '菜单名称',
  `pid` bigint DEFAULT NULL COMMENT '父级ID',
  `type` int DEFAULT NULL COMMENT '菜单类型 0=目录,1=菜单,2=按钮',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '菜单图标',
  `is_link` tinyint(1) DEFAULT '0' COMMENT '是否外链',
  `frame` tinyint(1) DEFAULT NULL COMMENT '是否内嵌',
  `link_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '外链地址',
  `hidden` tinyint(1) DEFAULT NULL COMMENT '是否可见',
  `permission` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '权限字符串',
  `path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由地址',
  `cache` tinyint(1) DEFAULT NULL COMMENT '是否缓存',
  `component` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组件地址',
  `sort` int DEFAULT NULL COMMENT '排序号',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_id` bigint DEFAULT NULL COMMENT '创建人',
  `create_by` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `update_id` bigint DEFAULT NULL COMMENT '更新人',
  `update_by` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `affix` tinyint(1) DEFAULT NULL COMMENT '是否禁止关闭此选项卡',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='系统-菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (1, '系统设置', 0, 0, 'setting|svg', 0, null, null, 0, 'system', '/system', 1, 'LAYOUT', 999, '2021-06-23 16:09:11', null, null, '2022-12-13 09:29:34', 1, 'Sir丶雨轩', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (2, '用户管理', 1, 1, 'user|svg', 0, null, null, 0, 'user', 'user', 1, 'sys/user/index', 1, null, null, null, '2022-12-12 12:38:03', 1, 'Sir丶雨轩', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (3, '菜单管理', 1, 1, 'menu|svg', 0, null, null, 0, 'menu', 'menu', 1, 'sys/menu/index', 2, null, null, null, null, 0, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (4, '权限管理', 1, 1, 'role|svg', 0, null, null, 0, 'role', 'role', 1, 'sys/role/index', 3, null, null, null, '2023-11-17 11:05:02', 1, '梓狐', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (5, '新增', 2, 2, null, 0, null, null, 0, 'user:add', null, 1, null, null, null, null, null, null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (6, '编辑', 2, 2, null, 0, null, null, 0, 'user:edit', null, 1, null, null, null, null, null, null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (7, '删除', 2, 2, null, 0, null, null, 0, 'user:del', null, 1, null, null, null, null, null, null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (8, '新增', 4, 2, null, 0, null, null, 0, 'role:add', null, 1, null, null, null, null, null, null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (9, '编辑', 4, 2, null, 0, null, null, 0, 'role:edit', null, 1, null, null, null, null, null, null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (10, '删除', 4, 2, null, 0, null, null, 0, 'role:del', null, 1, null, null, null, null, null, null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (11, '新增', 3, 2, null, 0, null, null, 0, 'menu:add', null, 1, null, null, null, null, null, null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (12, '编辑', 3, 2, null, 0, null, null, 0, 'menu:edit', null, 1, null, null, null, null, null, null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (13, '删除', 3, 2, null, 0, null, null, 0, 'menu:del', null, 1, null, null, null, null, null, null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (14, '工作台', 0, 1, 'dashboard|svg', 0, null, null, 0, 'dashboard', 'dashboard', 1, 'dashboard/workbench/index', 1, null, null, null, null, null, null, 1);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (16, '详情', 2, 2, null, 0, null, null, null, 'user:details', null, 1, null, 999, '2022-12-12 12:45:57', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (17, 'ESI授权', 0, 1, 'anquan|svg', 0, null, null, 0, null, 'esi', 1, 'esi/index', 2, '2022-12-12 15:00:41', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (18, '火鸡点中心', 0, 0, 'lp|svg', 0, null, null, 0, null, '/lp', 1, 'LAYOUT', 4, '2022-12-13 09:30:39', 1, 'Sir丶雨轩', '2023-11-14 08:01:41', 1, '梓狐', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (19, '发放火鸡点', 18, 1, 'fly|svg', 0, null, null, 0, null, 'send', 1, 'lp/send/index', 1, '2022-12-13 09:36:05', 1, 'Sir丶雨轩', '2023-11-14 08:01:53', 1, '梓狐', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (20, '我的火鸡点', 18, 1, 'yelp|svg', 0, null, null, 0, null, 'me', 1, 'lp/me/index', 2, '2022-12-13 13:00:12', 1, 'Sir丶雨轩', '2023-11-14 08:02:05', 1, '梓狐', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (21, '商品管理', 18, 1, 'goods|svg', 0, null, null, 0, null, 'goods', 1, 'lp/goods/index', 3, '2022-12-13 15:40:38', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (23, '系统配置', 1, 1, 'dept|svg', 0, null, null, 0, null, 'config', 1, 'sys/config/index', 4, '2022-12-13 21:08:51', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (24, '订单管理', 18, 1, 'order|svg', 0, null, null, 0, null, 'order', 1, 'lp/order/index', 4, '2022-12-14 09:07:04', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (25, '审批', 24, 2, null, 0, null, null, null, 'order:approval', null, null, null, 1, '2022-12-14 09:40:42', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (26, '查看', 24, 2, null, 0, null, null, null, 'order:view', null, null, null, 999, '2022-12-14 10:39:38', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (27, '发放记录', 18, 1, 'task|svg', 0, null, null, 0, null, 'log', 1, 'lp/log/index', 5, '2022-12-14 16:21:22', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (28, '火鸡点商城', 18, 1, 'shop|svg', 0, null, null, 0, null, 'shop', 1, 'lp/shop/index', 3, '2022-12-14 17:21:10', 1, 'Sir丶雨轩', '2023-11-14 08:02:18', 1, '梓狐', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (30, '发放', 19, 2, null, 0, null, null, null, 'lp:send', null, null, null, 1, '2022-12-22 11:17:57', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (31, '常用工具', 0, 0, 'util|svg', 0, null, null, 0, null, '/utils', 1, 'LAYOUT', 5, '2022-12-22 11:42:00', 1, 'Sir丶雨轩', '2023-11-14 00:48:05', 1, '梓狐', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (32, '公告板', 31, 1, 'liuyan|svg', 0, null, null, 0, null, 'talk', 1, 'utils/talk/index', 4, '2022-12-22 11:44:21', 1, 'Sir丶雨轩', '2023-11-16 05:54:36', 1, '梓狐', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (33, '补损提交', 34, 1, 'kill|svg', 0, null, null, 0, null, 'srp', 1, 'utils/srp/index', 3, '2022-12-22 13:49:46', 1, 'Sir丶雨轩', '2023-11-14 00:48:45', 1, '梓狐', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (34, 'SRP中心', 0, 0, 'database|svg', 0, null, null, 0, null, '/data', 1, 'LAYOUT', 3, '2022-12-24 15:24:29', 1, 'Sir丶雨轩', '2023-11-14 00:49:15', 1, '梓狐', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (35, '军团成员', 34, 1, 'user|svg', 0, null, null, 0, null, 'member', 1, 'data/member/index', 1, '2022-12-24 15:25:38', 1, 'Sir丶雨轩', '2023-11-13 18:43:52', 1, '梓狐', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (36, '补损规则', 34, 1, 'rules|svg', 0, null, null, 0, null, 'srpRules', 1, 'data/srp/rules/index', 2, '2022-12-25 11:20:56', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (37, '新增', 36, 2, null, 0, null, null, null, 'srpRules:add', null, null, null, 1, '2022-12-25 12:21:00', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (38, '编辑', 36, 2, null, 0, null, null, null, 'srpRules:edit', null, null, null, 1, '2022-12-25 12:21:15', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (39, '删除', 36, 2, null, 0, null, null, null, 'srpRules:del', null, null, null, 1, '2022-12-25 12:21:27', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (40, '列表', 36, 2, null, 0, null, null, null, 'srpRules', null, null, null, 1, '2022-12-25 12:22:38', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (41, '补损黑名单', 34, 1, 'blacklist|svg', 0, null, null, 0, null, 'srpBlacklist', 1, 'data/srp/blacklist/index', 3, '2022-12-25 13:04:45', 1, 'Sir丶雨轩', '2022-12-25 13:07:48', 1, 'Sir丶雨轩', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (42, '查看', 41, 2, null, 0, null, null, null, 'srpBlacklist', null, null, null, 1, '2022-12-25 13:06:11', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (43, '新增', 41, 2, null, 0, null, null, null, 'srpBlacklist:add', null, null, null, 1, '2022-12-25 13:06:25', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (44, '编辑', 41, 2, null, 0, null, null, null, 'srpBlacklist:edit', null, null, null, 1, '2022-12-25 13:06:36', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (45, '删除', 41, 2, null, 0, null, null, null, 'srpBlacklist:del', null, null, null, 1, '2022-12-25 13:06:55', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (46, '补损审批', 34, 1, 'sh|svg', 0, null, null, 0, null, 'srpExamine', 1, 'data/srp/examine/index', 4, '2022-12-25 13:49:43', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (47, '个人信息', 0, 0, 'role|svg', 0, null, null, 0, null, '/account', 1, 'LAYOUT', 7, '2022-12-25 15:09:25', 1, 'Sir丶雨轩', '2023-11-13 18:45:59', 1, '梓狐', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (48, '钱包流水', 47, 1, 'wallet|svg', 0, null, null, 0, null, 'wallet', 1, 'account/wallet/index', 2, '2022-12-25 15:12:34', 1, 'Sir丶雨轩', '2022-12-26 17:19:00', 1, 'Sir丶雨轩', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (49, '交易历史', 47, 1, 'order|svg', 0, null, null, 0, null, 'order', 1, 'account/order/index', 3, '2022-12-26 14:26:36', 1, 'Sir丶雨轩', '2022-12-26 17:19:04', 1, 'Sir丶雨轩', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (50, '数据分析', 47, 1, 'menu|svg', 0, null, null, 0, null, 'analysis', 1, 'dashboard/analysis/index', 1, '2022-12-26 17:18:34', 1, 'Sir丶雨轩', '2023-11-14 00:50:56', 1, '梓狐', null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (51, '查看', 50, 2, null, 0, null, null, null, 'view', null, null, null, 1, '2022-12-26 20:33:38', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (52, '查询全部', 50, 2, null, 0, null, null, null, 'analysis:all', null, null, null, 1, '2022-12-26 20:34:02', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (53, '合同管理', 47, 1, 'menu|svg', 0, null, null, 0, null, 'contract', 1, 'account/contract/index', 4, '2022-12-27 10:46:23', 1, 'Sir丶雨轩', null, null, null, null);
INSERT INTO eve_corp_manager_cacx.sys_menu (id, name, pid, type, icon, is_link, frame, link_url, hidden, permission, path, cache, component, sort, create_time, create_id, create_by, update_time, update_id, update_by, affix) VALUES (54, '加入Discord', 31, 1, 'discord|svg', 1, 0, 'https://discord.com/', 1, null, 'https://discord.com/', 0, null, 1, '2023-01-11 10:38:11', 1, 'Sir丶雨轩', '2023-11-13 18:43:27', 1, '梓狐', null);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '角色名',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_id` bigint DEFAULT NULL COMMENT '创建人',
  `create_by` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `update_id` bigint DEFAULT NULL COMMENT '更新人',
  `update_by` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统-角色表';



-- ----------------------------
-- Table structure for sys_roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_menus`;
CREATE TABLE `sys_roles_menus` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  `virtually` tinyint(1) DEFAULT NULL COMMENT '是否是虚拟的',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE,
  KEY `FKc67smp0fqtqvu676ed5lt5yfg` (`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='系统-角色菜单关联表';



-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '头像ID',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '用户状态，0=正常，1=冻结，2=锁定',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '手机号',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮箱',
  `sex` int DEFAULT NULL COMMENT '性别 0=女,1=男,2=未知',
  `qq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'QQ',
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '城市',
  `discord_id` bigint DEFAULT NULL COMMENT 'DiscordID 此项不为空代表已经绑定',
  `discord_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Discord昵称',
  `discord_email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Discord邮箱',
  `discord_access_token` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Discord认证Token',
  `discord_refresh_token` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Discord刷新Token',
  `discord_expires_in` timestamp NULL DEFAULT NULL COMMENT 'Discord认证Token过期时间',
  `login_time` timestamp NULL DEFAULT NULL COMMENT '登录时间',
  `login_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '登录IP',
  `login_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '登录城市',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_id` bigint DEFAULT NULL COMMENT '创建人',
  `create_by` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `update_id` bigint DEFAULT NULL COMMENT '更新人',
  `update_by` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKloay4nqos33x012wmyx7lxunh` (`avatar`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='系统-用户表';



-- ----------------------------
-- Table structure for sys_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_roles`;
CREATE TABLE `sys_users_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='系统-用户角色关联表';



SET FOREIGN_KEY_CHECKS = 1;
