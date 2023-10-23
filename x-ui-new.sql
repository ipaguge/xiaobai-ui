/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : x-ui-new

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 23/10/2023 21:24:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_api
-- ----------------------------
DROP TABLE IF EXISTS `sys_api`;
CREATE TABLE `sys_api` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `handle` varchar(128) DEFAULT NULL COMMENT 'handle',
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `path` varchar(128) DEFAULT NULL COMMENT '地址',
  `type` varchar(16) DEFAULT NULL COMMENT '接口类型',
  `action` varchar(16) DEFAULT NULL COMMENT '请求类型',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`),
  KEY `idx_sys_api_deleted_at` (`deleted_at`),
  KEY `idx_sys_api_create_by` (`create_by`),
  KEY `idx_sys_api_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_api
-- ----------------------------
BEGIN;
INSERT INTO `sys_api` VALUES (5, 'go-admin/app/admin/apis.SysLoginLog.Get-fm', '登录日志通过id获取', '/api/v1/sys-login-log/:id', 'BUS', 'GET', '2021-05-13 19:59:00.728', '2021-06-17 11:37:12.331', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (6, 'go-admin/app/admin/apis.SysOperaLog.GetPage-fm', '操作日志列表', '/api/v1/sys-opera-log', 'BUS', 'GET', '2021-05-13 19:59:00.778', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (7, 'go-admin/app/admin/apis.SysOperaLog.Get-fm', '操作日志通过id获取', '/api/v1/sys-opera-log/:id', 'BUS', 'GET', '2021-05-13 19:59:00.821', '2021-06-16 21:49:48.598', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (8, 'go-admin/common/actions.IndexAction.func1', '分类列表', '/api/v1/syscategory', 'BUS', 'GET', '2021-05-13 19:59:00.870', '2021-06-13 20:53:47.883', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (9, 'go-admin/common/actions.ViewAction.func1', '分类通过id获取', '/api/v1/syscategory/:id', 'BUS', 'GET', '2021-05-13 19:59:00.945', '2021-06-13 20:53:47.926', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (10, 'go-admin/common/actions.IndexAction.func1', '内容列表', '/api/v1/syscontent', 'BUS', 'GET', '2021-05-13 19:59:01.005', '2021-06-13 20:53:47.966', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (11, 'go-admin/common/actions.ViewAction.func1', '内容通过id获取', '/api/v1/syscontent/:id', 'BUS', 'GET', '2021-05-13 19:59:01.056', '2021-06-13 20:53:48.005', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (15, 'go-admin/common/actions.IndexAction.func1', 'job列表', '/api/v1/sysjob', 'BUS', 'GET', '2021-05-13 19:59:01.248', '2021-06-13 20:53:48.169', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (16, 'go-admin/common/actions.ViewAction.func1', 'job通过id获取', '/api/v1/sysjob/:id', 'BUS', 'GET', '2021-05-13 19:59:01.298', '2021-06-13 20:53:48.214', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (21, 'go-admin/app/admin/apis.SysDictType.GetPage-fm', '字典类型列表', '/api/v1/dict/type', 'BUS', 'GET', '2021-05-13 19:59:01.525', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (22, 'go-admin/app/admin/apis.SysDictType.GetAll-fm', '字典类型查询【代码生成】', '/api/v1/dict/type-option-select', 'SYS', 'GET', '2021-05-13 19:59:01.582', '2021-06-13 20:53:48.388', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (23, 'go-admin/app/admin/apis.SysDictType.Get-fm', '字典类型通过id获取', '/api/v1/dict/type/:id', 'BUS', 'GET', '2021-05-13 19:59:01.632', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (24, 'go-admin/app/admin/apis.SysDictData.GetPage-fm', '字典数据列表', '/api/v1/dict/data', 'BUS', 'GET', '2021-05-13 19:59:01.684', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (25, 'go-admin/app/admin/apis.SysDictData.Get-fm', '字典数据通过code获取', '/api/v1/dict/data/:dictCode', 'BUS', 'GET', '2021-05-13 19:59:01.732', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (26, 'go-admin/app/admin/apis.SysDictData.GetSysDictDataAll-fm', '数据字典根据key获取', '/api/v1/dict-data/option-select', 'SYS', 'GET', '2021-05-13 19:59:01.832', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (27, 'go-admin/app/admin/apis.SysDept.GetPage-fm', '部门列表', '/api/v1/dept', 'BUS', 'GET', '2021-05-13 19:59:01.940', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (28, 'go-admin/app/admin/apis.SysDept.Get-fm', '部门通过id获取', '/api/v1/dept/:id', 'BUS', 'GET', '2021-05-13 19:59:02.009', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (29, 'go-admin/app/admin/apis.SysDept.Get2Tree-fm', '查询部门下拉树【角色权限-自定权限】', '/api/v1/deptTree', 'SYS', 'GET', '2021-05-13 19:59:02.050', '2023-08-20 13:21:46.383', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (30, 'go-admin/app/admin/apis/tools.(*Gen).GetDBTableList-fm', '数据库表列表', '/api/v1/db/tables/page', 'SYS', 'GET', '2021-05-13 19:59:02.098', '2021-06-13 20:53:48.730', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (31, 'go-admin/app/admin/apis/tools.(*Gen).GetDBColumnList-fm', '数据表列列表', '/api/v1/db/columns/page', 'SYS', 'GET', '2021-05-13 19:59:02.140', '2021-06-13 20:53:48.771', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (32, 'go-admin/app/admin/apis/tools.Gen.GenCode-fm', '数据库表生成到项目', '/api/v1/gen/toproject/:tableId', 'SYS', 'GET', '2021-05-13 19:59:02.183', '2021-06-13 20:53:48.812', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (33, 'go-admin/app/admin/apis/tools.Gen.GenMenuAndApi-fm', '数据库表生成到DB', '/api/v1/gen/todb/:tableId', 'SYS', 'GET', '2021-05-13 19:59:02.227', '2021-06-13 20:53:48.853', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (34, 'go-admin/app/admin/apis/tools.(*SysTable).GetSysTablesTree-fm', '关系表数据【代码生成】', '/api/v1/gen/tabletree', 'SYS', 'GET', '2021-05-13 19:59:02.271', '2021-06-13 20:53:48.893', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (35, 'go-admin/app/admin/apis/tools.Gen.Preview-fm', '生成预览通过id获取', '/api/v1/gen/preview/:tableId', 'SYS', 'GET', '2021-05-13 19:59:02.315', '2021-06-13 20:53:48.935', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (36, 'go-admin/app/admin/apis/tools.Gen.GenApiToFile-fm', '生成api带文件', '/api/v1/gen/apitofile/:tableId', 'SYS', 'GET', '2021-05-13 19:59:02.357', '2021-06-13 20:53:48.977', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (37, 'go-admin/app/admin/apis.System.GenerateCaptchaHandler-fm', '验证码获取', '/api/v1/getCaptcha', 'SYS', 'GET', '2021-05-13 19:59:02.405', '2021-06-13 20:53:49.020', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (38, 'go-admin/app/admin/apis.SysUser.GetInfo-fm', '用户信息获取', '/api/v1/getinfo', 'SYS', 'GET', '2021-05-13 19:59:02.447', '2021-06-13 20:53:49.065', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (39, 'go-admin/app/admin/apis.SysMenu.GetPage-fm', '菜单列表', '/api/v1/menu', 'BUS', 'GET', '2021-05-13 19:59:02.497', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (40, 'go-admin/app/admin/apis.SysMenu.GetMenuTreeSelect-fm', '查询菜单下拉树结构【废弃】', '/api/v1/menuTreeselect', 'SYS', 'GET', '2021-05-13 19:59:02.542', '2021-06-03 22:37:21.857', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (41, 'go-admin/app/admin/apis.SysMenu.Get-fm', '菜单通过id获取', '/api/v1/menu/:id', 'BUS', 'GET', '2021-05-13 19:59:02.584', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (42, 'go-admin/app/admin/apis.SysMenu.GetMenuRole-fm', '角色菜单【顶部左侧菜单】', '/api/v1/menurole', 'SYS', 'GET', '2021-05-13 19:59:02.630', '2021-06-13 20:53:49.574', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (43, 'go-admin/app/admin/apis.SysMenu.GetMenuIDS-fm', '获取角色对应的菜单id数组【废弃】', '/api/v1/menuids', 'SYS', 'GET', '2021-05-13 19:59:02.675', '2021-06-03 22:39:52.500', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (44, 'go-admin/app/admin/apis.SysRole.GetPage-fm', '角色列表', '/api/v1/role', 'BUS', 'GET', '2021-05-13 19:59:02.720', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (45, 'go-admin/app/admin/apis.SysMenu.GetMenuTreeSelect-fm', '菜单权限列表【角色配菜单使用】', '/api/v1/roleMenuTreeselect/:roleId', 'SYS', 'GET', '2021-05-13 19:59:02.762', '2023-08-20 13:21:46.383', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (46, 'go-admin/app/admin/apis.SysDept.GetDeptTreeRoleSelect-fm', '角色部门结构树【自定义数据权限】', '/api/v1/roleDeptTreeselect/:roleId', 'SYS', 'GET', '2021-05-13 19:59:02.809', '2023-08-20 13:21:46.383', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (47, 'go-admin/app/admin/apis.SysRole.Get-fm', '角色通过id获取', '/api/v1/role/:id', 'BUS', 'GET', '2021-05-13 19:59:02.850', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (48, 'github.com/go-admin-team/go-admin-core/sdk/pkg/jwtauth.(*GinJWTMiddleware).RefreshHandler-fm', '刷新token', '/api/v1/refresh_token', 'SYS', 'GET', '2021-05-13 19:59:02.892', '2021-06-13 20:53:49.278', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (53, 'go-admin/app/admin/apis.SysConfig.GetPage-fm', '参数列表', '/api/v1/config', 'BUS', 'GET', '2021-05-13 19:59:03.116', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (54, 'go-admin/app/admin/apis.SysConfig.Get-fm', '参数通过id获取', '/api/v1/config/:id', 'BUS', 'GET', '2021-05-13 19:59:03.157', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (55, 'go-admin/app/admin/apis.SysConfig.GetSysConfigByKEYForService-fm', '参数通过键名搜索【基础默认配置】', '/api/v1/configKey/:configKey', 'SYS', 'GET', '2021-05-13 19:59:03.198', '2021-06-13 20:53:49.745', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (57, 'go-admin/app/jobs/apis.SysJob.RemoveJobForService-fm', 'job移除', '/api/v1/job/remove/:id', 'BUS', 'GET', '2021-05-13 19:59:03.295', '2021-06-13 20:53:49.786', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (58, 'go-admin/app/jobs/apis.SysJob.StartJobForService-fm', 'job启动', '/api/v1/job/start/:id', 'BUS', 'GET', '2021-05-13 19:59:03.339', '2021-06-13 20:53:49.829', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (59, 'go-admin/app/admin/apis.SysPost.GetPage-fm', '岗位列表', '/api/v1/post', 'BUS', 'GET', '2021-05-13 19:59:03.381', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (60, 'go-admin/app/admin/apis.SysPost.Get-fm', '岗位通过id获取', '/api/v1/post/:id', 'BUS', 'GET', '2021-05-13 19:59:03.433', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (62, 'go-admin/app/admin/apis.SysConfig.GetSysConfigBySysApp-fm', '系统前端参数', '/api/v1/app-config', 'SYS', 'GET', '2021-05-13 19:59:03.526', '2021-06-13 20:53:49.994', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (63, 'go-admin/app/admin/apis.SysUser.GetProfile-fm', '*用户信息获取', '/api/v1/user/profile', 'SYS', 'GET', '2021-05-13 19:59:03.567', '2021-06-13 20:53:50.038', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (66, 'github.com/go-admin-team/go-admin-core/sdk/pkg/ws.(*Manager).WsClient-fm', '链接ws【定时任务log】', '/ws/:id/:channel', 'BUS', 'GET', '2021-05-13 19:59:03.705', '2021-06-13 20:53:50.167', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (67, 'github.com/go-admin-team/go-admin-core/sdk/pkg/ws.(*Manager).UnWsClient-fm', '退出ws【定时任务log】', '/wslogout/:id/:channel', 'BUS', 'GET', '2021-05-13 19:59:03.756', '2021-06-13 20:53:50.209', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (68, 'go-admin/common/middleware/handler.Ping', '*用户基本信息', '/info', 'SYS', 'GET', '2021-05-13 19:59:03.800', '2021-06-13 20:53:50.251', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (72, 'go-admin/common/actions.CreateAction.func1', '分类创建', '/api/v1/syscategory', 'BUS', 'POST', '2021-05-13 19:59:03.982', '2021-06-13 20:53:50.336', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (73, 'go-admin/common/actions.CreateAction.func1', '内容创建', '/api/v1/syscontent', 'BUS', 'POST', '2021-05-13 19:59:04.027', '2021-06-13 20:53:50.375', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (76, 'go-admin/common/actions.CreateAction.func1', 'job创建', '/api/v1/sysjob', 'BUS', 'POST', '2021-05-13 19:59:04.164', '2021-06-13 20:53:50.500', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (80, 'go-admin/app/admin/apis.SysDictData.Insert-fm', '字典数据创建', '/api/v1/dict/data', 'BUS', 'POST', '2021-05-13 19:59:04.347', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (81, 'go-admin/app/admin/apis.SysDictType.Insert-fm', '字典类型创建', '/api/v1/dict/type', 'BUS', 'POST', '2021-05-13 19:59:04.391', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (82, 'go-admin/app/admin/apis.SysDept.Insert-fm', '部门创建', '/api/v1/dept', 'BUS', 'POST', '2021-05-13 19:59:04.435', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (85, 'github.com/go-admin-team/go-admin-core/sdk/pkg/jwtauth.(*GinJWTMiddleware).LoginHandler-fm', '*登录', '/api/v1/login', 'SYS', 'POST', '2021-05-13 19:59:04.597', '2021-06-13 20:53:50.784', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (86, 'go-admin/common/middleware/handler.LogOut', '*退出', '/api/v1/logout', 'SYS', 'POST', '2021-05-13 19:59:04.642', '2021-06-13 20:53:50.824', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (87, 'go-admin/app/admin/apis.SysConfig.Insert-fm', '参数创建', '/api/v1/config', 'BUS', 'POST', '2021-05-13 19:59:04.685', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (88, 'go-admin/app/admin/apis.SysMenu.Insert-fm', '菜单创建', '/api/v1/menu', 'BUS', 'POST', '2021-05-13 19:59:04.777', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (89, 'go-admin/app/admin/apis.SysPost.Insert-fm', '岗位创建', '/api/v1/post', 'BUS', 'POST', '2021-05-13 19:59:04.886', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (90, 'go-admin/app/admin/apis.SysRole.Insert-fm', '角色创建', '/api/v1/role', 'BUS', 'POST', '2021-05-13 19:59:04.975', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (91, 'go-admin/app/admin/apis.SysUser.InsetAvatar-fm', '*用户头像编辑', '/api/v1/user/avatar', 'SYS', 'POST', '2021-05-13 19:59:05.058', '2021-06-13 20:53:51.079', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (92, 'go-admin/app/admin/apis.SysApi.Update-fm', '接口编辑', '/api/v1/sys-api/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.122', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (95, 'go-admin/common/actions.UpdateAction.func1', '分类编辑', '/api/v1/syscategory/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.255', '2021-06-13 20:53:51.247', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (96, 'go-admin/common/actions.UpdateAction.func1', '内容编辑', '/api/v1/syscontent/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.299', '2021-06-13 20:53:51.289', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (97, 'go-admin/common/actions.UpdateAction.func1', 'job编辑', '/api/v1/sysjob', 'BUS', 'PUT', '2021-05-13 19:59:05.343', '2021-06-13 20:53:51.331', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (101, 'go-admin/app/admin/apis.SysDictData.Update-fm', '字典数据编辑', '/api/v1/dict/data/:dictCode', 'BUS', 'PUT', '2021-05-13 19:59:05.519', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (102, 'go-admin/app/admin/apis.SysDictType.Update-fm', '字典类型编辑', '/api/v1/dict/type/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.569', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (103, 'go-admin/app/admin/apis.SysDept.Update-fm', '部门编辑', '/api/v1/dept/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.613', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (104, 'go-admin/app/other/apis.SysFileDir.Update-fm', '文件夹编辑', '/api/v1/file-dir/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.662', '2021-06-13 20:53:51.847', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (105, 'go-admin/app/other/apis.SysFileInfo.Update-fm', '文件编辑', '/api/v1/file-info/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.709', '2021-06-13 20:53:51.892', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (106, 'go-admin/app/admin/apis.SysRole.Update-fm', '角色编辑', '/api/v1/role/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.752', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (107, 'go-admin/app/admin/apis.SysRole.Update2DataScope-fm', '角色数据权限修改', '/api/v1/roledatascope', 'BUS', 'PUT', '2021-05-13 19:59:05.803', '2023-08-20 13:21:46.383', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (108, 'go-admin/app/admin/apis.SysConfig.Update-fm', '参数编辑', '/api/v1/config/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.848', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (109, 'go-admin/app/admin/apis.SysMenu.Update-fm', '编辑菜单', '/api/v1/menu/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.891', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (110, 'go-admin/app/admin/apis.SysPost.Update-fm', '岗位编辑', '/api/v1/post/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.934', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (111, 'go-admin/app/admin/apis.SysUser.UpdatePwd-fm', '*用户修改密码', '/api/v1/user/pwd', 'SYS', 'PUT', '2021-05-13 19:59:05.987', '2021-06-13 20:53:51.724', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (112, 'go-admin/common/actions.DeleteAction.func1', '分类删除', '/api/v1/syscategory', 'BUS', 'DELETE', '2021-05-13 19:59:06.030', '2021-06-13 20:53:52.237', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (113, 'go-admin/common/actions.DeleteAction.func1', '内容删除', '/api/v1/syscontent', 'BUS', 'DELETE', '2021-05-13 19:59:06.076', '2021-06-13 20:53:52.278', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (114, 'go-admin/app/admin/apis.SysLoginLog.Delete-fm', '登录日志删除', '/api/v1/sys-login-log', 'BUS', 'DELETE', '2021-05-13 19:59:06.118', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (115, 'go-admin/app/admin/apis.SysOperaLog.Delete-fm', '操作日志删除', '/api/v1/sys-opera-log', 'BUS', 'DELETE', '2021-05-13 19:59:06.162', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (116, 'go-admin/common/actions.DeleteAction.func1', 'job删除', '/api/v1/sysjob', 'BUS', 'DELETE', '2021-05-13 19:59:06.206', '2021-06-13 20:53:52.323', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (117, 'go-admin/app/other/apis.SysChinaAreaData.Delete-fm', '行政区删除', '/api/v1/sys-area-data', 'BUS', 'DELETE', '2021-05-13 19:59:06.249', '2021-06-13 20:53:52.061', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (120, 'go-admin/app/admin/apis.SysDictData.Delete-fm', '字典数据删除', '/api/v1/dict/data', 'BUS', 'DELETE', '2021-05-13 19:59:06.387', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (121, 'go-admin/app/admin/apis.SysDictType.Delete-fm', '字典类型删除', '/api/v1/dict/type', 'BUS', 'DELETE', '2021-05-13 19:59:06.432', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (122, 'go-admin/app/admin/apis.SysDept.Delete-fm', '部门删除', '/api/v1/dept/:id', 'BUS', 'DELETE', '2021-05-13 19:59:06.475', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (123, 'go-admin/app/other/apis.SysFileDir.Delete-fm', '文件夹删除', '/api/v1/file-dir/:id', 'BUS', 'DELETE', '2021-05-13 19:59:06.520', '2021-06-13 20:53:52.539', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (124, 'go-admin/app/other/apis.SysFileInfo.Delete-fm', '文件删除', '/api/v1/file-info/:id', 'BUS', 'DELETE', '2021-05-13 19:59:06.566', '2021-06-13 20:53:52.580', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (125, 'go-admin/app/admin/apis.SysConfig.Delete-fm', '参数删除', '/api/v1/config', 'BUS', 'DELETE', '2021-05-13 19:59:06.612', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (126, 'go-admin/app/admin/apis.SysMenu.Delete-fm', '删除菜单', '/api/v1/menu', 'BUS', 'DELETE', '2021-05-13 19:59:06.654', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (127, 'go-admin/app/admin/apis.SysPost.Delete-fm', '岗位删除', '/api/v1/post/:id', 'BUS', 'DELETE', '2021-05-13 19:59:06.702', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (128, 'go-admin/app/admin/apis.SysRole.Delete-fm', '角色删除', '/api/v1/role', 'BUS', 'DELETE', '2021-05-13 19:59:06.746', '2023-08-20 13:21:46.383', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (131, 'github.com/go-admin-team/go-admin-core/tools/transfer.Handler.func1', '系统指标', '/api/v1/metrics', 'SYS', 'GET', '2021-05-17 22:13:55.933', '2021-06-13 20:53:49.614', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (132, 'go-admin/app/other/router.registerMonitorRouter.func1', '健康状态', '/api/v1/health', 'SYS', 'GET', '2021-05-17 22:13:56.285', '2021-06-13 20:53:49.951', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (133, 'go-admin/app/admin/apis.HelloWorld', '项目默认接口', '/', 'SYS', 'GET', '2021-05-24 10:30:44.553', '2021-06-13 20:53:47.406', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (134, 'go-admin/app/other/apis.ServerMonitor.ServerInfo-fm', '服务器基本状态', '/api/v1/server-monitor', 'SYS', 'GET', '2021-05-24 10:30:44.937', '2021-06-13 20:53:48.255', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (135, 'go-admin/app/admin/apis.SysApi.GetPage-fm', '接口列表', '/api/v1/sys-api', 'BUS', 'GET', '2021-05-24 11:37:53.303', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (136, 'go-admin/app/admin/apis.SysApi.Get-fm', '接口通过id获取', '/api/v1/sys-api/:id', 'BUS', 'GET', '2021-05-24 11:37:53.359', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (137, 'go-admin/app/admin/apis.SysLoginLog.GetPage-fm', '登录日志列表', '/api/v1/sys-login-log', 'BUS', 'GET', '2021-05-24 11:47:30.397', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (138, 'go-admin/app/other/apis.File.UploadFile-fm', '文件上传', '/api/v1/public/uploadFile', 'SYS', 'POST', '2021-05-25 19:16:18.493', '2021-06-13 20:53:50.866', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (139, 'go-admin/app/admin/apis.SysConfig.Update2Set-fm', '参数信息修改【参数配置】', '/api/v1/set-config', 'BUS', 'PUT', '2021-05-27 09:45:14.853', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (140, 'go-admin/app/admin/apis.SysConfig.Get2Set-fm', '参数获取全部【配置使用】', '/api/v1/set-config', 'BUS', 'GET', '2021-05-27 11:54:14.384', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (141, 'go-admin/app/admin/apis.SysUser.GetPage-fm', '管理员列表', '/api/v1/sys-user', 'BUS', 'GET', '2021-06-13 19:24:57.111', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (142, 'go-admin/app/admin/apis.SysUser.Get-fm', '管理员通过id获取', '/api/v1/sys-user/:id', 'BUS', 'GET', '2021-06-13 19:24:57.188', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (143, 'go-admin/app/admin/apis/tools.(*SysTable).GetSysTablesInfo-fm', '', '/api/v1/sys/tables/info', '', 'GET', '2021-06-13 19:24:57.437', '2021-06-13 20:53:48.047', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (144, 'go-admin/app/admin/apis/tools.(*SysTable).GetSysTables-fm', '', '/api/v1/sys/tables/info/:tableId', '', 'GET', '2021-06-13 19:24:57.510', '2021-06-13 20:53:48.088', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (145, 'go-admin/app/admin/apis/tools.(*SysTable).GetSysTableList-fm', '', '/api/v1/sys/tables/page', '', 'GET', '2021-06-13 19:24:57.582', '2021-06-13 20:53:48.128', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (146, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/static/*filepath', '', 'GET', '2021-06-13 19:24:59.641', '2021-06-13 20:53:50.081', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (147, 'github.com/swaggo/gin-swagger.CustomWrapHandler.func1', '', '/swagger/*any', '', 'GET', '2021-06-13 19:24:59.713', '2021-06-13 20:53:50.123', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (148, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/form-generator/*filepath', '', 'GET', '2021-06-13 19:24:59.914', '2021-06-13 20:53:50.295', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (149, 'go-admin/app/admin/apis/tools.(*SysTable).InsertSysTable-fm', '', '/api/v1/sys/tables/info', '', 'POST', '2021-06-13 19:25:00.163', '2021-06-13 20:53:50.539', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (150, 'go-admin/app/admin/apis.SysUser.Insert-fm', '管理员创建', '/api/v1/sys-user', 'BUS', 'POST', '2021-06-13 19:25:00.233', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (151, 'go-admin/app/admin/apis.SysUser.Update-fm', '管理员编辑', '/api/v1/sys-user', 'BUS', 'PUT', '2021-06-13 19:25:00.986', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (152, 'go-admin/app/admin/apis/tools.(*SysTable).UpdateSysTable-fm', '', '/api/v1/sys/tables/info', '', 'PUT', '2021-06-13 19:25:01.149', '2021-06-13 20:53:51.375', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (153, 'go-admin/app/admin/apis.SysRole.Update2Status-fm', '', '/api/v1/role-status', '', 'PUT', '2021-06-13 19:25:01.446', '2021-06-13 20:53:51.636', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (154, 'go-admin/app/admin/apis.SysUser.ResetPwd-fm', '修改管理员密码', '/api/v1/user/pwd/reset', 'BUS', 'PUT', '2021-06-13 19:25:01.601', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (155, 'go-admin/app/admin/apis.SysUser.UpdateStatus-fm', '', '/api/v1/user/status', '', 'PUT', '2021-06-13 19:25:01.671', '2021-06-13 20:53:51.806', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (156, 'go-admin/app/admin/apis.SysUser.Delete-fm', '管理员删除', '/api/v1/sys-user', 'BUS', 'DELETE', '2021-06-13 19:25:02.043', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (157, 'go-admin/app/admin/apis/tools.(*SysTable).DeleteSysTables-fm', '', '/api/v1/sys/tables/info/:tableId', '', 'DELETE', '2021-06-13 19:25:02.283', '2021-06-13 20:53:52.367', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (158, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/static/*filepath', '', 'HEAD', '2021-06-13 19:25:02.734', '2021-06-13 20:53:52.791', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (159, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/form-generator/*filepath', '', 'HEAD', '2021-06-13 19:25:02.808', '2021-06-13 20:53:52.838', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (160, 'go-admin/app/vpn/apis.VpnCommon.AgentConfig-fm', '', '/api/v1/vpn-common/agentConfig/:serverId', '', 'GET', '2023-08-20 13:36:15.677', '2023-08-20 13:36:15.677', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (161, 'go-admin/app/vpn/apis.VpnCommon.AgentSh-fm', '', '/api/v1/vpn-common/agentSh/:serverId', '', 'GET', '2023-08-20 13:36:15.681', '2023-08-20 13:36:15.681', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (162, 'go-admin/app/vpn/apis.VpnServer.Config-fm', '', '/api/v1/vpn-config/:serverId', '', 'GET', '2023-08-20 13:36:15.683', '2023-08-20 13:36:15.683', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (163, 'go-admin/app/vpn/apis.VpnNode.GetPage-fm', 'vpn节点列表', '/api/v1/vpn-node', 'BUS', 'GET', '2023-08-20 13:36:15.684', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (164, 'go-admin/app/vpn/apis.VpnNode.Get-fm', 'vpn节点查询', '/api/v1/vpn-node/:id', 'BUS', 'GET', '2023-08-20 13:36:15.686', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (165, 'go-admin/app/vpn/apis.VpnServer.GetPage-fm', 'vpn服务器列表', '/api/v1/vpn-server', 'BUS', 'GET', '2023-08-20 13:36:15.688', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (166, 'go-admin/app/vpn/apis.VpnServer.Get-fm', 'vpn节点查询', '/api/v1/vpn-server/:id', 'BUS', 'GET', '2023-08-20 13:36:15.689', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (167, 'go-admin/app/admin/apis.System.GenerateCaptchaHandler-fm', '', '/api/v1/captcha', '', 'GET', '2023-08-20 13:36:15.696', '2023-08-20 13:36:15.696', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (168, 'github.com/swaggo/gin-swagger.CustomWrapHandler.func1', '', '/swagger/admin/*any', '', 'GET', '2023-08-20 13:36:15.705', '2023-08-20 13:36:15.705', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (169, 'go-admin/app/vpn/apis.VpnServer.Insert-fm', 'vpn节点列表新增', '/api/v1/vpn-server', 'BUS', 'POST', '2023-08-20 13:36:15.709', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (170, 'go-admin/app/vpn/apis.VpnServer.GetDetails-fm', 'vpn服务器详情', '/api/v1/vpn-server/details/:id', 'BUS', 'POST', '2023-08-20 13:36:15.711', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (171, 'go-admin/app/vpn/apis.VpnServer.GetLog-fm', 'vpn服务器日志', '/api/v1/vpn-server/log/:id', 'BUS', 'POST', '2023-08-20 13:36:15.712', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (172, 'go-admin/app/vpn/apis.VpnServer.Restart-fm', 'vpn服务器重启', '/api/v1/vpn-server/restart/:id', 'BUS', 'POST', '2023-08-20 13:36:15.713', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (173, 'go-admin/app/vpn/apis.VpnNode.Insert-fm', 'vpn节点添加', '/api/v1/vpn-node', 'BUS', 'POST', '2023-08-20 13:36:15.715', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (174, 'go-admin/app/vpn/apis.VpnNode.Inserts-fm', 'vpn节点批量添加', '/api/v1/vpn-node/inserts', 'BUS', 'POST', '2023-08-20 13:36:15.717', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (175, 'go-admin/app/admin/apis.SysUser.UpdatePwd-fm', '', '/api/v1/user/pwd/set', '', 'PUT', '2023-08-20 13:36:15.728', '2023-08-20 13:36:15.728', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (176, 'go-admin/app/vpn/apis.VpnNode.Update-fm', 'vpn节点编辑', '/api/v1/vpn-node/:id', 'BUS', 'PUT', '2023-08-20 13:36:15.730', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (177, 'go-admin/app/vpn/apis.VpnServer.Update-fm', 'vpn服务器编辑', '/api/v1/vpn-server/:id', 'BUS', 'PUT', '2023-08-20 13:36:15.731', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (178, 'go-admin/app/admin/apis.SysDept.Delete-fm', '', '/api/v1/dept', '', 'DELETE', '2023-08-20 13:36:15.736', '2023-08-20 13:36:15.736', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (179, 'go-admin/app/vpn/apis.VpnNode.Delete-fm', 'vpn节点删除', '/api/v1/vpn-node', 'BUS', 'DELETE', '2023-08-20 13:36:15.737', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (180, 'go-admin/app/vpn/apis.VpnServer.Delete-fm', 'vpn服务器删除', '/api/v1/vpn-server', 'BUS', 'DELETE', '2023-08-20 13:36:15.739', '2023-08-21 11:22:45.796', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (181, 'go-admin/app/admin/apis.SysPost.Delete-fm', '', '/api/v1/post', '', 'DELETE', '2023-08-20 13:36:15.741', '2023-08-20 13:36:15.741', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (182, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/img/*filepath', '', 'GET', '2023-08-20 17:03:26.224', '2023-08-20 17:03:26.224', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (183, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/fonts/*filepath', '', 'GET', '2023-08-20 17:03:26.229', '2023-08-20 17:03:26.229', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (184, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/js/*filepath', '', 'GET', '2023-08-20 17:03:26.231', '2023-08-20 17:03:26.231', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (185, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/css/*filepath', '', 'GET', '2023-08-20 17:03:26.231', '2023-08-20 17:03:26.231', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (186, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/v2/*filepath', '', 'GET', '2023-08-21 22:04:53.943', '2023-08-21 22:04:53.943', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (187, 'go-admin/app/vpn/apis.VpnServer.FrpcConfig-fm', '', '/api/v1/vpn-config/frpc/:serverId', '', 'GET', '2023-09-17 14:47:30.947', '2023-09-17 14:47:30.947', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (188, 'go-admin/app/vpn/apis.VpnServer.FrpsConfig-fm', '', '/api/v1/vpn-config/frps/:serverId', '', 'GET', '2023-09-17 14:47:30.955', '2023-09-17 14:47:30.955', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (189, 'go-admin/app/vpn/apis.VpnServer.XrayConfig-fm', '', '/api/v1/vpn-config/xray/:serverId', '', 'GET', '2023-09-17 14:47:30.957', '2023-09-17 14:47:30.957', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (190, 'go-admin/app/vpn/apis.VpnServer.GetPage2-fm', '', '/api/v1/vpn-server/getPage2', '', 'GET', '2023-10-20 14:58:07.598', '2023-10-20 14:58:07.598', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (191, 'go-admin/app/vpn/apis.VpnNode.Inserts2-fm', '', '/api/v1/vpn-node/inserts2', '', 'POST', '2023-10-20 14:58:07.618', '2023-10-20 14:58:07.618', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (192, 'go-admin/app/vpn/apis.VpnServer.GetServerNode-fm', '', '/api/v1/vpn-config/nodes/:serverId', '', 'GET', '2023-10-23 17:00:59.110', '2023-10-23 17:00:59.110', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (193, 'go-admin/app/vpn/apis.VpnServer.GetServerNode-fm', '', '/api/v1/vpn-config/node/:serverId', '', 'GET', '2023-10-23 17:00:59.113', '2023-10-23 17:00:59.113', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (194, 'go-admin/app/vpn/apis.VpnServer.Reboot-fm', '', '/api/v1/vpn-server2/reboot/:id', '', 'POST', '2023-10-23 17:00:59.135', '2023-10-23 17:00:59.135', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (195, 'go-admin/app/vpn/apis.VpnServer.Reboots-fm', '', '/api/v1/vpn-server2/reboots', '', 'POST', '2023-10-23 17:00:59.137', '2023-10-23 17:00:59.137', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (196, 'go-admin/app/vpn/apis.VpnServer.Restarts-fm', '', '/api/v1/vpn-server2/restarts', '', 'POST', '2023-10-23 17:00:59.139', '2023-10-23 17:00:59.139', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (197, 'go-admin/app/vpn/apis.VpnNode.Inserts2-fm', '', '/api/v1/vpn-node2/inserts2', '', 'POST', '2023-10-23 17:00:59.142', '2023-10-23 17:00:59.142', NULL, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_casbin_rule`;
CREATE TABLE `sys_casbin_rule` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) DEFAULT NULL,
  `v0` varchar(100) DEFAULT NULL,
  `v1` varchar(100) DEFAULT NULL,
  `v2` varchar(100) DEFAULT NULL,
  `v3` varchar(100) DEFAULT NULL,
  `v4` varchar(100) DEFAULT NULL,
  `v5` varchar(100) DEFAULT NULL,
  `v6` varchar(25) DEFAULT NULL,
  `v7` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sys_casbin_rule` (`ptype`,`v0`,`v1`,`v2`,`v3`,`v4`,`v5`,`v6`,`v7`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_casbin_rule
-- ----------------------------
BEGIN;
INSERT INTO `sys_casbin_rule` VALUES (103, 'p', 'vpn', '/api/v1/role', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (105, 'p', 'vpn', '/api/v1/role', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (104, 'p', 'vpn', '/api/v1/role/:id', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (106, 'p', 'vpn', '/api/v1/role/:id', 'PUT', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (102, 'p', 'vpn', '/api/v1/sys-user', 'DELETE', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (97, 'p', 'vpn', '/api/v1/sys-user', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (99, 'p', 'vpn', '/api/v1/sys-user', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (100, 'p', 'vpn', '/api/v1/sys-user', 'PUT', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (98, 'p', 'vpn', '/api/v1/sys-user/:id', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (101, 'p', 'vpn', '/api/v1/user/pwd/reset', 'PUT', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (120, 'p', 'vpn', '/api/v1/vpn-node', 'DELETE', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (113, 'p', 'vpn', '/api/v1/vpn-node', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (117, 'p', 'vpn', '/api/v1/vpn-node', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (114, 'p', 'vpn', '/api/v1/vpn-node/:id', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (119, 'p', 'vpn', '/api/v1/vpn-node/:id', 'PUT', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (118, 'p', 'vpn', '/api/v1/vpn-node/inserts', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (112, 'p', 'vpn', '/api/v1/vpn-server', 'DELETE', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (107, 'p', 'vpn', '/api/v1/vpn-server', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (116, 'p', 'vpn', '/api/v1/vpn-server', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (115, 'p', 'vpn', '/api/v1/vpn-server/:id', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (111, 'p', 'vpn', '/api/v1/vpn-server/:id', 'PUT', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (108, 'p', 'vpn', '/api/v1/vpn-server/details/:id', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (109, 'p', 'vpn', '/api/v1/vpn-server/log/:id', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (110, 'p', 'vpn', '/api/v1/vpn-server/restart/:id', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (95, 'p', 'vpnUser', '/api/v1/vpn-node', 'DELETE', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (83, 'p', 'vpnUser', '/api/v1/vpn-node', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (91, 'p', 'vpnUser', '/api/v1/vpn-node', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (84, 'p', 'vpnUser', '/api/v1/vpn-node/:id', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (93, 'p', 'vpnUser', '/api/v1/vpn-node/:id', 'PUT', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (92, 'p', 'vpnUser', '/api/v1/vpn-node/inserts', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (96, 'p', 'vpnUser', '/api/v1/vpn-server', 'DELETE', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (85, 'p', 'vpnUser', '/api/v1/vpn-server', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (87, 'p', 'vpnUser', '/api/v1/vpn-server', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (86, 'p', 'vpnUser', '/api/v1/vpn-server/:id', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (94, 'p', 'vpnUser', '/api/v1/vpn-server/:id', 'PUT', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (88, 'p', 'vpnUser', '/api/v1/vpn-server/details/:id', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (89, 'p', 'vpnUser', '/api/v1/vpn-server/log/:id', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` VALUES (90, 'p', 'vpnUser', '/api/v1/vpn-server/restart/:id', 'POST', '', '', '', '', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_columns
-- ----------------------------
DROP TABLE IF EXISTS `sys_columns`;
CREATE TABLE `sys_columns` (
  `column_id` bigint NOT NULL AUTO_INCREMENT,
  `table_id` bigint DEFAULT NULL,
  `column_name` varchar(128) DEFAULT NULL,
  `column_comment` varchar(128) DEFAULT NULL,
  `column_type` varchar(128) DEFAULT NULL,
  `go_type` varchar(128) DEFAULT NULL,
  `go_field` varchar(128) DEFAULT NULL,
  `json_field` varchar(128) DEFAULT NULL,
  `is_pk` varchar(4) DEFAULT NULL,
  `is_increment` varchar(4) DEFAULT NULL,
  `is_required` varchar(4) DEFAULT NULL,
  `is_insert` varchar(4) DEFAULT NULL,
  `is_edit` varchar(4) DEFAULT NULL,
  `is_list` varchar(4) DEFAULT NULL,
  `is_query` varchar(4) DEFAULT NULL,
  `query_type` varchar(128) DEFAULT NULL,
  `html_type` varchar(128) DEFAULT NULL,
  `dict_type` varchar(128) DEFAULT NULL,
  `sort` bigint DEFAULT NULL,
  `list` varchar(1) DEFAULT NULL,
  `pk` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `super_column` tinyint(1) DEFAULT NULL,
  `usable_column` tinyint(1) DEFAULT NULL,
  `increment` tinyint(1) DEFAULT NULL,
  `insert` tinyint(1) DEFAULT NULL,
  `edit` tinyint(1) DEFAULT NULL,
  `query` tinyint(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `fk_table_name` longtext,
  `fk_table_name_class` longtext,
  `fk_table_name_package` longtext,
  `fk_label_id` longtext,
  `fk_label_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`column_id`),
  KEY `idx_sys_columns_deleted_at` (`deleted_at`),
  KEY `idx_sys_columns_create_by` (`create_by`),
  KEY `idx_sys_columns_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_columns
-- ----------------------------
BEGIN;
INSERT INTO `sys_columns` VALUES (1, 1, 'id', '', 'int', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:50:56.046', '2023-08-10 14:50:56.046', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (2, 1, 'server_name', '服务器名称', 'varchar(255)', 'string', 'ServerName', 'serverName', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:50:56.049', '2023-08-10 14:50:56.049', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (3, 1, 'server_ip', '服务器IP', 'varchar(255)', 'string', 'ServerIp', 'serverIp', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:50:56.050', '2023-08-10 14:50:56.050', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (4, 1, 'server_ssh_prot', '服务器ssh端口', 'int', 'string', 'ServerSshProt', 'serverSshProt', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:50:56.051', '2023-08-10 14:50:56.051', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (5, 1, 'server_ssh_passwrod', '服务器ssh密码', 'varchar(255)', 'string', 'ServerSshPasswrod', 'serverSshPasswrod', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:50:56.052', '2023-08-10 14:50:56.052', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (6, 1, 'server_ssh_public_key', '服务器ssh秘钥', 'varchar(255)', 'string', 'ServerSshPublicKey', 'serverSshPublicKey', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:50:56.053', '2023-08-10 14:50:56.053', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (7, 1, 'server_ssh_login_type', '登录方式 password ro  public_key', 'varchar(255)', 'string', 'ServerSshLoginType', 'serverSshLoginType', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:50:56.053', '2023-08-10 14:50:56.053', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (8, 1, 'is_adsl', 'ADSL服务器 -1不是 1 是的', 'int', 'string', 'IsAdsl', 'isAdsl', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:50:56.054', '2023-08-10 14:50:56.054', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (9, 1, 'area', '服务器地区', 'varchar(255)', 'string', 'Area', 'area', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:50:56.055', '2023-08-10 14:50:56.055', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (10, 1, 'vpn_prot_scope', 'vpn使用端口范围', 'json', 'string', 'VpnProtScope', 'vpnProtScope', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 10, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:50:56.055', '2023-08-10 14:50:56.055', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (11, 1, 'vpn_prot_ing', '当前使用位置', 'int', 'string', 'VpnProtIng', 'vpnProtIng', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 11, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:50:56.056', '2023-08-10 14:50:56.056', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (12, 1, 'created_at', '创建日期', 'datetime', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 12, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:50:56.057', '2023-08-10 14:50:56.057', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (13, 1, 'updated_at', '修改日期', 'datetime', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 13, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:50:56.058', '2023-08-10 14:50:56.058', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (14, 1, 'deleted_at', '删除日期', 'datetime', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 14, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:50:56.058', '2023-08-10 14:50:56.058', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (15, 2, 'id', '', 'int', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.462', '2023-08-10 14:51:04.462', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (16, 2, 'user_id', '授权用户', 'int', 'string', 'UserId', 'userId', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.463', '2023-08-10 14:51:04.463', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (17, 2, 'up', '上行流量', 'varchar(255)', 'string', 'Up', 'up', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.464', '2023-08-10 14:51:04.464', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (18, 2, 'down', '下行流量', 'varchar(255)', 'string', 'Down', 'down', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.465', '2023-08-10 14:51:04.465', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (19, 2, 'transit_server_id', '中转服务器ID', 'int', 'string', 'TransitServerId', 'transitServerId', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.466', '2023-08-10 14:51:04.466', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (20, 2, 'transit_server_ip', '中转服务器IP', 'varchar(255)', 'string', 'TransitServerIp', 'transitServerIp', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.467', '2023-08-10 14:51:04.467', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (21, 2, 'transit_port', '中转端口', 'int', 'string', 'TransitPort', 'transitPort', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.468', '2023-08-10 14:51:04.468', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (22, 2, 'server_id', '服务器ID', 'int', 'string', 'ServerId', 'serverId', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.468', '2023-08-10 14:51:04.468', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (23, 2, 'server_name', '服务器名称', 'varchar(255)', 'string', 'ServerName', 'serverName', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.469', '2023-08-10 14:51:04.469', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (24, 2, 'server_ip', '服务器ip', 'varchar(255)', 'string', 'ServerIp', 'serverIp', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 10, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.470', '2023-08-10 14:51:04.470', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (25, 2, 'listen', '链接域名或者IP', 'varchar(255)', 'string', 'Listen', 'listen', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 11, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.471', '2023-08-10 14:51:04.471', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (26, 2, 'output_listen', '出口IP', 'varchar(255)', 'string', 'OutputListen', 'outputListen', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 12, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.472', '2023-08-10 14:51:04.472', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (27, 2, 'port', '监听端口', 'int', 'string', 'Port', 'port', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 13, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.472', '2023-08-10 14:51:04.472', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (28, 2, 'protocol', '协议', 'varchar(255)', 'string', 'Protocol', 'protocol', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 14, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.473', '2023-08-10 14:51:04.473', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (29, 2, 'settings', '配置', 'varchar(255)', 'string', 'Settings', 'settings', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 15, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.474', '2023-08-10 14:51:04.474', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (30, 2, 'stream_settings', '传输配置', 'varchar(255)', 'string', 'StreamSettings', 'streamSettings', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 16, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.475', '2023-08-10 14:51:04.475', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (31, 2, 'sniffing', '特殊配置', 'varchar(255)', 'string', 'Sniffing', 'sniffing', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 17, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.476', '2023-08-10 14:51:04.476', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (32, 2, 'other', '用户备注', 'json', 'string', 'Other', 'other', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 18, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.477', '2023-08-10 14:51:04.477', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (33, 2, 'created_at', '创建日期', 'datetime', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 19, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.477', '2023-08-10 14:51:04.477', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (34, 2, 'updated_at', '修改日期', 'datetime', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 20, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.478', '2023-08-10 14:51:04.478', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (35, 2, 'deleted_at', '删除日期', 'datetime', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 21, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 14:51:04.479', '2023-08-10 14:51:04.479', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (36, 3, 'id', '', 'int', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:28.344', '2023-08-10 15:07:28.344', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (37, 3, 'server_name', '名称', 'varchar(255)', 'string', 'ServerName', 'serverName', '0', '', '1', '1', '', '1', '1', 'LIKE', 'input', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:28.345', '2023-08-10 15:25:39.002', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (38, 3, 'server_ip', 'IP', 'varchar(255)', 'string', 'ServerIp', 'serverIp', '0', '', '1', '1', '', '1', '1', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:28.346', '2023-08-10 15:25:39.003', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (39, 3, 'server_ssh_prot', 'ssh端口', 'int', 'string', 'ServerSshProt', 'serverSshProt', '0', '', '1', '1', '', '1', '1', 'EQ', 'input', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:28.347', '2023-08-10 15:25:39.005', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (40, 3, 'server_ssh_passwrod', 'ssh密码', 'varchar(255)', 'string', 'ServerSshPasswrod', 'serverSshPasswrod', '0', '', '0', '1', '', '', '0', 'EQ', 'input', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:28.348', '2023-08-10 15:25:39.006', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (41, 3, 'server_ssh_public_key', 'ssh秘钥', 'varchar(255)', 'string', 'ServerSshPublicKey', 'serverSshPublicKey', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:28.349', '2023-08-10 15:25:39.007', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (42, 3, 'server_ssh_login_type', '登录方式', 'varchar(255)', 'string', 'ServerSshLoginType', 'serverSshLoginType', '0', '', '1', '1', '', '1', '0', 'EQ', 'radio', 'server_login_type', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:28.350', '2023-08-10 15:25:39.008', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (43, 3, 'is_adsl', 'IS_ADSL', 'int', 'string', 'IsAdsl', 'isAdsl', '0', '', '1', '1', '', '1', '1', 'EQ', 'radio', 'common_yn', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:28.350', '2023-08-10 15:25:39.010', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (44, 3, 'area', '地区', 'varchar(255)', 'string', 'Area', 'area', '0', '', '1', '1', '', '1', '1', 'EQ', 'select', 'nation', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:28.351', '2023-08-10 15:25:39.011', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (45, 3, 'vpn_prot_scope', 'vpn端口范围', 'json', 'string', 'VpnProtScope', 'vpnProtScope', '0', '', '1', '1', '', '', '', 'EQ', 'input', '', 10, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:28.352', '2023-08-10 15:25:39.012', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (46, 3, 'vpn_prot_ing', '位置', 'int', 'string', 'VpnProtIng', 'vpnProtIng', '0', '', '0', '0', '', '', '', 'EQ', 'input', '', 11, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:28.353', '2023-08-10 15:25:39.013', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (47, 3, 'status', '状态', 'int', 'string', 'Status', 'status', '0', '', '0', '0', '', '1', '1', 'EQ', 'select', 'server_status', 12, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:28.353', '2023-08-10 15:25:39.014', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (48, 3, 'created_at', '创建日期', 'datetime', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 13, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:28.354', '2023-08-10 15:07:28.354', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (49, 3, 'updated_at', '修改日期', 'datetime', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 14, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:28.354', '2023-08-10 15:07:28.354', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (50, 3, 'deleted_at', '删除日期', 'datetime', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 15, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:28.355', '2023-08-10 15:07:28.355', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (51, 4, 'id', '', 'int', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.392', '2023-08-10 15:07:35.392', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (52, 4, 'user_id', '授权用户', 'int', 'string', 'UserId', 'userId', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.393', '2023-08-10 15:07:35.393', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (53, 4, 'up', '上行流量', 'varchar(255)', 'string', 'Up', 'up', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.394', '2023-08-10 15:07:35.394', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (54, 4, 'down', '下行流量', 'varchar(255)', 'string', 'Down', 'down', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.395', '2023-08-10 15:07:35.395', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (55, 4, 'transit_server_id', '中转服务器ID', 'int', 'string', 'TransitServerId', 'transitServerId', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.396', '2023-08-10 15:07:35.396', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (56, 4, 'transit_server_ip', '中转服务器IP', 'varchar(255)', 'string', 'TransitServerIp', 'transitServerIp', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.396', '2023-08-10 15:07:35.396', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (57, 4, 'transit_port', '中转端口', 'int', 'string', 'TransitPort', 'transitPort', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.397', '2023-08-10 15:07:35.397', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (58, 4, 'server_id', '服务器ID', 'int', 'string', 'ServerId', 'serverId', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.398', '2023-08-10 15:07:35.398', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (59, 4, 'server_name', '服务器名称', 'varchar(255)', 'string', 'ServerName', 'serverName', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.399', '2023-08-10 15:07:35.399', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (60, 4, 'server_ip', '服务器ip', 'varchar(255)', 'string', 'ServerIp', 'serverIp', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 10, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.400', '2023-08-10 15:07:35.400', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (61, 4, 'listen', '链接域名或者IP', 'varchar(255)', 'string', 'Listen', 'listen', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 11, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.400', '2023-08-10 15:07:35.400', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (62, 4, 'output_listen', '出口IP', 'varchar(255)', 'string', 'OutputListen', 'outputListen', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 12, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.401', '2023-08-10 15:07:35.401', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (63, 4, 'port', '监听端口', 'int', 'string', 'Port', 'port', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 13, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.402', '2023-08-10 15:07:35.402', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (64, 4, 'protocol', '协议', 'varchar(255)', 'string', 'Protocol', 'protocol', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 14, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.403', '2023-08-10 15:07:35.403', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (65, 4, 'settings', '配置', 'varchar(255)', 'string', 'Settings', 'settings', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 15, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.404', '2023-08-10 15:07:35.404', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (66, 4, 'stream_settings', '传输配置', 'varchar(255)', 'string', 'StreamSettings', 'streamSettings', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 16, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.404', '2023-08-10 15:07:35.404', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (67, 4, 'sniffing', '特殊配置', 'varchar(255)', 'string', 'Sniffing', 'sniffing', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 17, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.405', '2023-08-10 15:07:35.405', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (68, 4, 'other', '用户备注', 'json', 'string', 'Other', 'other', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 18, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.406', '2023-08-10 15:07:35.406', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (69, 4, 'status', '状态 -1离线 1在线', 'int', 'string', 'Status', 'status', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 19, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.407', '2023-08-10 15:07:35.407', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (70, 4, 'created_at', '创建日期', 'datetime', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 20, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.407', '2023-08-10 15:07:35.407', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (71, 4, 'updated_at', '修改日期', 'datetime', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 21, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.408', '2023-08-10 15:07:35.408', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (72, 4, 'deleted_at', '删除日期', 'datetime', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 22, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:07:35.409', '2023-08-10 15:07:35.409', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (73, 5, 'id', '', 'int', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.083', '2023-08-10 15:28:08.083', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (74, 5, 'user_ids', '授权用户', 'json', 'string', 'UserIds', 'userIds', '0', '', '1', '1', '', '1', '1', 'LIKE', 'select', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', 'sys_user', 'SysUser', 'sys-user', 'userId', 'nickName', '2023-08-10 15:28:08.084', '2023-08-10 18:03:53.839', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (75, 5, 'up', '上行流量', 'varchar(255)', 'string', 'Up', 'up', '0', '', '0', '0', '', '1', '', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.085', '2023-08-10 18:03:53.841', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (76, 5, 'down', '下行流量', 'varchar(255)', 'string', 'Down', 'down', '0', '', '0', '0', '', '1', '', 'EQ', 'input', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.086', '2023-08-10 18:03:53.842', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (77, 5, 'transit_server_id', '中转服务器ID', 'int', 'string', 'TransitServerId', 'transitServerId', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.087', '2023-08-10 18:03:53.843', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (78, 5, 'transit_server_ip', '中转服务器IP', 'varchar(255)', 'string', 'TransitServerIp', 'transitServerIp', '0', '', '0', '1', '', '1', '1', 'EQ', 'input', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.088', '2023-08-10 18:03:53.845', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (79, 5, 'transit_port', '中转端口', 'int', 'string', 'TransitPort', 'transitPort', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.088', '2023-08-10 18:03:53.846', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (80, 5, 'server_id', '服务器ID', 'int', 'string', 'ServerId', 'serverId', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.089', '2023-08-10 18:03:53.847', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (81, 5, 'server_name', '服务器名称', 'varchar(255)', 'string', 'ServerName', 'serverName', '0', '', '0', '1', '', '1', '1', 'LIKE', 'input', '', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.090', '2023-08-10 18:03:53.849', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (82, 5, 'server_ip', '服务器ip', 'varchar(255)', 'string', 'ServerIp', 'serverIp', '0', '', '0', '1', '', '1', '1', 'LIKE', 'input', '', 10, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.091', '2023-08-10 18:03:53.851', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (83, 5, 'listen', '链接IP/域名', 'varchar(255)', 'string', 'Listen', 'listen', '0', '', '0', '1', '', '1', '1', 'EQ', 'input', '', 11, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.092', '2023-08-10 18:03:53.852', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (84, 5, 'output_listen', '出口IP', 'varchar(255)', 'string', 'OutputListen', 'outputListen', '0', '', '0', '1', '', '1', '0', 'EQ', 'input', '', 12, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.092', '2023-08-10 18:03:53.853', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (85, 5, 'port', '监听端口', 'int', 'string', 'Port', 'port', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 13, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.093', '2023-08-10 18:03:53.855', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (86, 5, 'protocol', '协议', 'varchar(255)', 'string', 'Protocol', 'protocol', '0', '', '0', '1', '', '1', '', 'EQ', 'select', 'vpn_protocol', 14, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.094', '2023-08-10 18:03:53.856', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (87, 5, 'settings', '配置', 'varchar(255)', 'string', 'Settings', 'settings', '0', '', '0', '1', '', '', '', 'EQ', 'textarea', '', 15, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.094', '2023-08-10 18:03:53.857', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (88, 5, 'stream_settings', '传输配置', 'varchar(255)', 'string', 'StreamSettings', 'streamSettings', '0', '', '0', '1', '', '', '', 'EQ', 'textarea', '', 16, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.095', '2023-08-10 18:03:53.859', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (89, 5, 'sniffing', '特殊配置', 'varchar(255)', 'string', 'Sniffing', 'sniffing', '0', '', '0', '1', '', '', '0', 'EQ', 'textarea', '', 17, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.096', '2023-08-10 18:03:53.860', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (90, 5, 'other', '备注', 'json', 'string', 'Other', 'other', '0', '', '0', '1', '', '1', '1', 'EQ', 'input', '', 18, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.097', '2023-08-10 18:03:53.861', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (91, 5, 'status', '状态', 'int', 'int64', 'Status', 'status', '0', '', '0', '0', '', '1', '1', 'EQ', 'radio', 'common_o', 19, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.097', '2023-08-10 18:03:53.862', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (92, 5, 'created_at', '创建日期', 'datetime', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 20, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.098', '2023-08-10 15:28:08.098', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (93, 5, 'updated_at', '修改日期', 'datetime', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 21, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.099', '2023-08-10 15:28:08.099', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (94, 5, 'deleted_at', '删除日期', 'datetime', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 22, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:28:08.099', '2023-08-10 15:28:08.099', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (95, 6, 'user_id', '编码', 'bigint', 'int', 'UserId', 'userId', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.395', '2023-08-10 15:30:32.395', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (96, 6, 'username', '用户名', 'varchar(64)', 'string', 'Username', 'username', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.396', '2023-08-10 15:30:32.396', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (97, 6, 'password', '密码', 'varchar(128)', 'string', 'Password', 'password', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.397', '2023-08-10 15:30:32.397', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (98, 6, 'nick_name', '昵称', 'varchar(128)', 'string', 'NickName', 'nickName', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.398', '2023-08-10 15:30:32.398', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (99, 6, 'phone', '手机号', 'varchar(11)', 'string', 'Phone', 'phone', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.399', '2023-08-10 15:30:32.399', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (100, 6, 'role_id', '角色ID', 'bigint', 'string', 'RoleId', 'roleId', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.399', '2023-08-10 15:30:32.399', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (101, 6, 'salt', '加盐', 'varchar(255)', 'string', 'Salt', 'salt', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.400', '2023-08-10 15:30:32.400', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (102, 6, 'avatar', '头像', 'varchar(255)', 'string', 'Avatar', 'avatar', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.401', '2023-08-10 15:30:32.401', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (103, 6, 'sex', '性别', 'varchar(255)', 'string', 'Sex', 'sex', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.401', '2023-08-10 15:30:32.401', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (104, 6, 'email', '邮箱', 'varchar(128)', 'string', 'Email', 'email', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 10, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.402', '2023-08-10 15:30:32.402', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (105, 6, 'dept_id', '部门', 'bigint', 'string', 'DeptId', 'deptId', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 11, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.403', '2023-08-10 15:30:32.403', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (106, 6, 'post_id', '岗位', 'bigint', 'string', 'PostId', 'postId', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 12, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.403', '2023-08-10 15:30:32.403', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (107, 6, 'remark', '备注', 'varchar(255)', 'string', 'Remark', 'remark', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 13, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.404', '2023-08-10 15:30:32.404', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (108, 6, 'status', '状态', 'varchar(4)', 'string', 'Status', 'status', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 14, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.405', '2023-08-10 15:30:32.405', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (109, 6, 'create_by', '创建者', 'bigint', 'string', 'CreateBy', 'createBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 15, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.406', '2023-08-10 15:30:32.406', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (110, 6, 'update_by', '更新者', 'bigint', 'string', 'UpdateBy', 'updateBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 16, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.406', '2023-08-10 15:30:32.406', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (111, 6, 'created_at', '创建时间', 'datetime(3)', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 17, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.407', '2023-08-10 15:30:32.407', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (112, 6, 'updated_at', '最后更新时间', 'datetime(3)', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 18, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.408', '2023-08-10 15:30:32.408', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (113, 6, 'deleted_at', '删除时间', 'datetime(3)', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 19, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 15:30:32.408', '2023-08-10 15:30:32.408', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (114, 7, 'id', '', 'int', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.600', '2023-08-10 19:26:51.600', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (115, 7, 'user_ids', '授权用户', 'json', 'string', 'UserIds', 'userIds', '0', '', '0', '1', '', '1', '1', 'LIKE', 'select', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', 'sys_user', 'SysUser', 'sys-user', 'userId', 'username', '2023-08-10 19:26:51.601', '2023-08-10 19:34:00.110', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (116, 7, 'up', '上行流量', 'varchar(255)', 'string', 'Up', 'up', '0', '', '0', '0', '', '1', '', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.602', '2023-08-10 19:34:00.111', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (117, 7, 'down', '下行流量', 'varchar(255)', 'string', 'Down', 'down', '0', '', '0', '0', '', '1', '', 'EQ', 'input', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.603', '2023-08-10 19:34:00.112', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (118, 7, 'transit_server_id', '中转IP', 'int', 'string', 'TransitServerId', 'transitServerId', '0', '', '1', '1', '', '1', '0', 'EQ', 'select', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', 'vpn_server', 'VpnServer', 'vpn-server', 'id', 'serverIp', '2023-08-10 19:26:51.604', '2023-08-10 19:34:00.114', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (119, 7, 'transit_port', '中转端口', 'int', 'int64', 'TransitPort', 'transitPort', '0', '', '1', '1', '', '1', '', 'EQ', 'input', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.605', '2023-08-10 19:34:00.115', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (120, 7, 'server_id', '服务器IP', 'int', 'string', 'ServerId', 'serverId', '0', '', '1', '1', '', '1', '1', 'EQ', 'select', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', 'vpn_server', 'VpnServer', 'vpn-server', 'id', 'serverIp', '2023-08-10 19:26:51.606', '2023-08-10 19:34:00.116', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (121, 7, 'output_listen', '出口IP', 'varchar(255)', 'string', 'OutputListen', 'outputListen', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.608', '2023-08-10 19:34:00.117', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (122, 7, 'port', '监听端口', 'int', 'string', 'Port', 'port', '0', '', '1', '1', '', '1', '', 'EQ', 'input', '', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.608', '2023-08-10 19:34:00.118', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (123, 7, 'protocol', '协议', 'varchar(255)', 'string', 'Protocol', 'protocol', '0', '', '1', '1', '', '1', '1', 'EQ', 'select', 'vpn_protocol', 10, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.609', '2023-08-10 19:34:00.119', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (124, 7, 'settings', '配置', 'varchar(255)', 'string', 'Settings', 'settings', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 11, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.610', '2023-08-10 19:34:00.120', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (125, 7, 'stream_settings', '传输配置', 'varchar(255)', 'string', 'StreamSettings', 'streamSettings', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 12, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.611', '2023-08-10 19:34:00.121', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (126, 7, 'sniffing', '特殊配置', 'varchar(255)', 'string', 'Sniffing', 'sniffing', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 13, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.612', '2023-08-10 19:34:00.122', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (127, 7, 'other', '用户备注', 'json', 'string', 'Other', 'other', '0', '', '0', '1', '', '1', '1', 'LIKE', 'input', '', 14, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.613', '2023-08-10 19:34:00.124', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (128, 7, 'status', '状态', 'int', 'string', 'Status', 'status', '0', '', '0', '0', '', '1', '1', 'EQ', 'select', 'common_o', 15, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.613', '2023-08-10 19:34:00.125', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (129, 7, 'created_at', '创建日期', 'datetime', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 16, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.614', '2023-08-10 19:26:51.614', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (130, 7, 'updated_at', '修改日期', 'datetime', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 17, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.615', '2023-08-10 19:26:51.615', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (131, 7, 'deleted_at', '删除日期', 'datetime', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 18, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.616', '2023-08-10 19:26:51.616', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (132, 8, 'id', '', 'int', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.620', '2023-08-10 19:26:51.620', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (133, 8, 'server_name', '名称', 'varchar(255)', 'string', 'ServerName', 'serverName', '0', '', '1', '1', '', '1', '1', 'LIKE', 'input', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.621', '2023-08-10 19:37:52.901', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (134, 8, 'server_ip', 'IP/域名', 'varchar(255)', 'string', 'ServerIp', 'serverIp', '0', '', '1', '1', '', '1', '1', 'LIKE', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.622', '2023-08-10 19:37:52.903', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (135, 8, 'server_ssh_prot', 'ssh端口', 'int', 'int64', 'ServerSshProt', 'serverSshProt', '0', '', '1', '1', '', '1', '0', 'EQ', 'input', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.623', '2023-08-10 19:37:52.904', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (136, 8, 'server_ssh_passwrod', 'ssh密码', 'varchar(255)', 'string', 'ServerSshPasswrod', 'serverSshPasswrod', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.624', '2023-08-10 19:37:52.905', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (137, 8, 'server_ssh_public_key', 'ssh秘钥', 'varchar(255)', 'string', 'ServerSshPublicKey', 'serverSshPublicKey', '0', '', '0', '1', '', '', '', 'EQ', 'textarea', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.625', '2023-08-10 19:37:52.907', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (138, 8, 'server_ssh_login_type', '登录方式', 'varchar(255)', 'string', 'ServerSshLoginType', 'serverSshLoginType', '0', '', '1', '1', '', '1', '1', 'EQ', 'select', 'server_login_type', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.625', '2023-08-10 19:37:52.908', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (139, 8, 'is_adsl', 'IS_ADSL', 'int', 'string', 'IsAdsl', 'isAdsl', '0', '', '1', '1', '', '1', '1', 'EQ', 'select', 'common_yn', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.626', '2023-08-10 19:37:52.910', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (140, 8, 'area', '地区', 'varchar(255)', 'string', 'Area', 'area', '0', '', '1', '1', '', '1', '1', 'LIKE', 'input', '', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.627', '2023-08-10 19:37:52.911', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (141, 8, 'vpn_prot_scope', '端口范围', 'json', 'string', 'VpnProtScope', 'vpnProtScope', '0', '', '1', '1', '', '1', '', 'EQ', 'input', '', 10, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.628', '2023-08-10 19:37:52.912', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (142, 8, 'vpn_prot_ing', '当前', 'int', 'string', 'VpnProtIng', 'vpnProtIng', '0', '', '0', '0', '', '', '', 'EQ', 'input', '', 11, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.628', '2023-08-10 19:37:52.913', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (143, 8, 'status', '状态', 'int', 'string', 'Status', 'status', '0', '', '1', '1', '', '1', '1', 'EQ', 'select', 'server_status', 12, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.629', '2023-08-10 19:37:52.915', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (144, 8, 'created_at', '创建日期', 'datetime', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 13, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.630', '2023-08-10 19:26:51.630', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (145, 8, 'updated_at', '修改日期', 'datetime', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 14, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.630', '2023-08-10 19:26:51.630', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (146, 8, 'deleted_at', '删除日期', 'datetime', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 15, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:26:51.631', '2023-08-10 19:26:51.631', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (147, 9, 'id', '', 'int', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.462', '2023-08-10 19:41:04.462', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (148, 9, 'up', '上行流量', 'varchar(255)', 'int64', 'Up', 'up', '0', '', '0', '0', '', '1', '', 'EQ', 'input', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.463', '2023-08-10 19:56:13.221', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (149, 9, 'down', '下行流量', 'varchar(255)', 'int64', 'Down', 'down', '0', '', '0', '0', '', '1', '', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.464', '2023-08-10 19:56:13.224', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (150, 9, 'transit_server_id', '中转IP', 'int', 'int64', 'TransitServerId', 'transitServerId', '0', '', '0', '1', '', '1', '1', 'EQ', 'select', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', 'vpn_server', 'VpnServer', 'vpn-server', 'id', 'serverIp', '2023-08-10 19:41:04.465', '2023-08-10 19:56:13.225', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (151, 9, 'transit_port', '中转端口', 'int', 'int64', 'TransitPort', 'transitPort', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.466', '2023-08-10 19:56:13.227', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (152, 9, 'server_id', '服务器', 'int', 'int64', 'ServerId', 'serverId', '0', '', '1', '1', '', '1', '1', 'EQ', 'select', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', 'vpn_server', 'VpnServer', 'vpn-server', 'id', 'serverIp', '2023-08-10 19:41:04.467', '2023-08-10 19:56:13.228', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (153, 9, 'output_listen', '出口IP', 'varchar(255)', 'string', 'OutputListen', 'outputListen', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.467', '2023-08-10 19:56:13.229', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (154, 9, 'port', '监听端口', 'int', 'int64', 'Port', 'port', '0', '', '1', '1', '', '1', '', 'EQ', 'input', '', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.468', '2023-08-10 19:56:13.231', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (155, 9, 'protocol', '协议', 'varchar(255)', 'string', 'Protocol', 'protocol', '0', '', '1', '1', '', '1', '1', 'EQ', 'select', 'vpn_protocol', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.469', '2023-08-10 19:56:13.232', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (156, 9, 'settings', '配置', 'varchar(255)', 'string', 'Settings', 'settings', '0', '', '0', '1', '', '', '', 'EQ', 'textarea', '', 10, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.470', '2023-08-10 19:56:13.233', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (157, 9, 'stream_settings', '传输配置', 'varchar(255)', 'string', 'StreamSettings', 'streamSettings', '0', '', '0', '1', '', '', '', 'EQ', 'textarea', '', 11, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.471', '2023-08-10 19:56:13.235', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (158, 9, 'sniffing', '特殊配置', 'varchar(255)', 'string', 'Sniffing', 'sniffing', '0', '', '0', '1', '', '', '', 'EQ', 'textarea', '', 12, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.472', '2023-08-10 19:56:13.236', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (159, 9, 'other', '用户备注', 'json', 'string', 'Other', 'other', '0', '', '0', '1', '', '1', '1', 'LIKE', 'input', '', 13, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.472', '2023-08-10 19:56:13.237', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (160, 9, 'status', '状态', 'int', 'int64', 'Status', 'status', '0', '', '0', '1', '', '1', '1', 'EQ', 'select', 'common_o', 14, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.473', '2023-08-10 19:56:13.238', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (161, 9, 'created_at', '创建日期', 'datetime', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 15, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.474', '2023-08-10 19:41:04.474', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (162, 9, 'updated_at', '修改日期', 'datetime', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 16, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.475', '2023-08-10 19:41:04.475', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (163, 9, 'deleted_at', '删除日期', 'datetime', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 17, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.476', '2023-08-10 19:41:04.476', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (164, 10, 'id', '', 'int', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.480', '2023-08-10 19:41:04.480', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (165, 10, 'user_ids', '授权用户', 'json', 'string', 'UserIds', 'userIds', '0', '', '0', '1', '', '1', '1', 'EQ', 'select', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', 'sys_user', 'SysUser', 'sys-user', 'userId', 'username', '2023-08-10 19:41:04.480', '2023-08-10 19:56:41.186', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (166, 10, 'server_name', '名称', 'varchar(255)', 'string', 'ServerName', 'serverName', '0', '', '1', '1', '', '1', '1', 'LIKE', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.481', '2023-08-10 19:56:41.187', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (167, 10, 'server_ip', 'IP', 'varchar(255)', 'string', 'ServerIp', 'serverIp', '0', '', '1', '1', '', '1', '1', 'LIKE', 'input', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.482', '2023-08-10 19:56:41.189', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (168, 10, 'server_ssh_prot', 'ssh端口', 'int', 'int64', 'ServerSshProt', 'serverSshProt', '0', '', '1', '1', '', '1', '1', 'EQ', 'input', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.482', '2023-08-10 19:56:41.190', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (169, 10, 'server_ssh_passwrod', 'ssh密码', 'varchar(255)', 'string', 'ServerSshPasswrod', 'serverSshPasswrod', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.483', '2023-08-10 19:56:41.192', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (170, 10, 'server_ssh_public_key', 'ssh秘钥', 'varchar(255)', 'string', 'ServerSshPublicKey', 'serverSshPublicKey', '0', '', '0', '1', '', '', '', 'EQ', 'textarea', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.484', '2023-08-10 19:56:41.193', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (171, 10, 'server_ssh_login_type', '登录方式', 'varchar(255)', 'string', 'ServerSshLoginType', 'serverSshLoginType', '0', '', '1', '1', '', '1', '0', 'EQ', 'select', 'server_login_type', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.485', '2023-08-10 19:56:41.194', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (172, 10, 'is_adsl', 'ADSL', 'int', 'int64', 'IsAdsl', 'isAdsl', '0', '', '1', '1', '', '1', '1', 'EQ', 'select', 'common_yn', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.485', '2023-08-10 19:56:41.196', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (173, 10, 'area', '服务器地区', 'varchar(255)', 'string', 'Area', 'area', '0', '', '1', '1', '', '1', '1', 'LIKE', 'input', '', 10, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.486', '2023-08-10 19:56:41.197', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (174, 10, 'vpn_prot_scope', '端口范围', 'json', 'string', 'VpnProtScope', 'vpnProtScope', '0', '', '0', '1', '', '1', '0', 'EQ', 'textarea', '', 11, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.487', '2023-08-10 19:56:41.198', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (175, 10, 'vpn_prot_ing', '当前使用位置', 'int', 'int64', 'VpnProtIng', 'vpnProtIng', '0', '', '0', '0', '', '', '', 'EQ', 'input', '', 12, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.487', '2023-08-10 19:56:41.200', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (176, 10, 'status', '状态', 'int', 'int64', 'Status', 'status', '0', '', '1', '1', '', '1', '1', 'EQ', 'select', 'server_status', 13, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.488', '2023-08-10 19:56:41.201', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (177, 10, 'created_at', '创建日期', 'datetime', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 14, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.489', '2023-08-10 19:41:04.489', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (178, 10, 'updated_at', '修改日期', 'datetime', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 15, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.490', '2023-08-10 19:41:04.490', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (179, 10, 'deleted_at', '删除日期', 'datetime', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 16, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-10 19:41:04.490', '2023-08-10 19:41:04.490', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (180, 11, 'id', '', 'int', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-13 19:01:58.345', '2023-08-13 19:01:58.345', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (181, 11, 'user_id', '', 'int', 'string', 'UserId', 'userId', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-13 19:01:58.355', '2023-08-13 19:01:58.355', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (182, 11, 'other', '', 'varchar(255)', 'string', 'Other', 'other', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-13 19:01:58.357', '2023-08-13 19:01:58.357', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (183, 11, 'created_at', '创建日期', 'datetime', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-13 19:01:58.358', '2023-08-13 19:01:58.358', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (184, 11, 'updated_at', '修改日期', 'datetime', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-13 19:01:58.360', '2023-08-13 19:01:58.360', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (185, 11, 'deleted_at', '删除日期', 'datetime', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-13 19:01:58.362', '2023-08-13 19:01:58.362', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (186, 11, 'create_by', '创建者', 'bigint', 'string', 'CreateBy', 'createBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-13 19:01:58.363', '2023-08-13 19:01:58.363', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (187, 11, 'update_by', '更新者', 'bigint', 'string', 'UpdateBy', 'updateBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-13 19:01:58.363', '2023-08-13 19:01:58.363', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (188, 12, 'id', '', 'int', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-13 19:04:26.645', '2023-08-13 19:04:26.645', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (189, 12, 'user_id', '', 'int', 'string', 'UserId', 'userId', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-13 19:04:26.646', '2023-08-13 19:04:37.888', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (190, 12, 'other', '', 'varchar(255)', 'string', 'Other', 'other', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-13 19:04:26.647', '2023-08-13 19:04:37.890', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (191, 12, 'created_at', '创建日期', 'datetime', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-13 19:04:26.648', '2023-08-13 19:04:26.648', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (192, 12, 'updated_at', '修改日期', 'datetime', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-13 19:04:26.650', '2023-08-13 19:04:26.650', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (193, 12, 'deleted_at', '删除日期', 'datetime', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-13 19:04:26.651', '2023-08-13 19:04:26.651', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (194, 12, 'create_by', '创建者', 'bigint', 'string', 'CreateBy', 'createBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-13 19:04:26.652', '2023-08-13 19:04:26.652', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (195, 12, 'update_by', '更新者', 'bigint', 'string', 'UpdateBy', 'updateBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2023-08-13 19:04:26.653', '2023-08-13 19:04:26.653', NULL, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `config_name` varchar(128) DEFAULT NULL COMMENT 'ConfigName',
  `config_key` varchar(128) DEFAULT NULL COMMENT 'ConfigKey',
  `config_value` varchar(255) DEFAULT NULL COMMENT 'ConfigValue',
  `config_type` varchar(64) DEFAULT NULL COMMENT 'ConfigType',
  `is_frontend` varchar(64) DEFAULT NULL COMMENT '是否前台',
  `remark` varchar(128) DEFAULT NULL COMMENT 'Remark',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `idx_sys_config_update_by` (`update_by`),
  KEY `idx_sys_config_deleted_at` (`deleted_at`),
  KEY `idx_sys_config_create_by` (`create_by`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, '皮肤样式', 'sys_index_skinName', 'skin-green', 'Y', '0', '主框架页-默认皮肤样式名称:蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow', 1, 1, '2021-05-13 19:56:37.913', '2021-06-05 13:50:13.123', NULL);
INSERT INTO `sys_config` VALUES (2, '初始密码', 'sys_user_initPassword', '123456', 'Y', '0', '用户管理-账号初始密码:123456', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_config` VALUES (3, '侧栏主题', 'sys_index_sideTheme', 'theme-dark', 'Y', '0', '主框架页-侧边栏主题:深色主题theme-dark，浅色主题theme-light', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_config` VALUES (4, '系统名称', 'sys_app_name', 'go-admin管理系统', 'Y', '1', '', 1, 0, '2021-03-17 08:52:06.067', '2021-05-28 10:08:25.248', NULL);
INSERT INTO `sys_config` VALUES (5, '系统logo', 'sys_app_logo', 'https://doc-image.zhangwj.com/img/go-admin.png', 'Y', '1', '', 1, 0, '2021-03-17 08:53:19.462', '2021-03-17 08:53:19.462', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint DEFAULT NULL,
  `dept_path` varchar(255) DEFAULT NULL,
  `dept_name` varchar(128) DEFAULT NULL,
  `sort` tinyint DEFAULT NULL,
  `leader` varchar(128) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`dept_id`),
  KEY `idx_sys_dept_deleted_at` (`deleted_at`),
  KEY `idx_sys_dept_create_by` (`create_by`),
  KEY `idx_sys_dept_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES (1, 0, '/0/1/', '爱拓科技', 0, 'aituo', '13782218188', 'atuo@aituo.com', 2, 1, 1, '2021-05-13 19:56:37.913', '2021-06-05 17:06:44.960', NULL);
INSERT INTO `sys_dept` VALUES (7, 1, '/0/1/7/', '研发部', 1, 'aituo', '13782218188', 'atuo@aituo.com', 2, 1, 1, '2021-05-13 19:56:37.913', '2021-06-16 21:35:00.109', NULL);
INSERT INTO `sys_dept` VALUES (8, 1, '/0/1/8/', '运维部', 0, 'aituo', '13782218188', 'atuo@aituo.com', 2, 1, 1, '2021-05-13 19:56:37.913', '2021-06-16 21:41:39.747', NULL);
INSERT INTO `sys_dept` VALUES (9, 1, '/0/1/9/', '客服部', 0, 'aituo', '13782218188', 'atuo@aituo.com', 2, 1, 1, '2021-05-13 19:56:37.913', '2021-06-05 17:07:05.993', NULL);
INSERT INTO `sys_dept` VALUES (10, 1, '/0/1/10/', '人力资源', 3, 'aituo', '13782218188', 'atuo@aituo.com', 1, 1, 1, '2021-05-13 19:56:37.913', '2021-06-05 17:07:08.503', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT,
  `dict_sort` bigint DEFAULT NULL,
  `dict_label` varchar(128) DEFAULT NULL,
  `dict_value` varchar(255) DEFAULT NULL,
  `dict_type` varchar(64) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `list_class` varchar(128) DEFAULT NULL,
  `is_default` varchar(8) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `default` varchar(8) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`dict_code`),
  KEY `idx_sys_dict_data_create_by` (`create_by`),
  KEY `idx_sys_dict_data_update_by` (`update_by`),
  KEY `idx_sys_dict_data_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` VALUES (1, 0, '正常', '2', 'sys_normal_disable', '', '', '', 2, '', '系统正常', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:40.168', NULL);
INSERT INTO `sys_dict_data` VALUES (2, 0, '停用', '1', 'sys_normal_disable', '', '', '', 2, '', '系统停用', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (3, 0, '男', '0', 'sys_user_sex', '', '', '', 2, '', '性别男', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (4, 0, '女', '1', 'sys_user_sex', '', '', '', 2, '', '性别女', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (5, 0, '未知', '2', 'sys_user_sex', '', '', '', 2, '', '性别未知', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (6, 0, '显示', '0', 'sys_show_hide', '', '', '', 2, '', '显示菜单', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (7, 0, '隐藏', '1', 'sys_show_hide', '', '', '', 2, '', '隐藏菜单', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (8, 0, '是', 'Y', 'sys_yes_no', '', '', '', 2, '', '系统默认是', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (9, 0, '否', 'N', 'sys_yes_no', '', '', '', 2, '', '系统默认否', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (10, 0, '正常', '2', 'sys_job_status', '', '', '', 2, '', '正常状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (11, 0, '停用', '1', 'sys_job_status', '', '', '', 2, '', '停用状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (12, 0, '默认', 'DEFAULT', 'sys_job_group', '', '', '', 2, '', '默认分组', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (13, 0, '系统', 'SYSTEM', 'sys_job_group', '', '', '', 2, '', '系统分组', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (14, 0, '通知', '1', 'sys_notice_type', '', '', '', 2, '', '通知', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (15, 0, '公告', '2', 'sys_notice_type', '', '', '', 2, '', '公告', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (16, 0, '正常', '2', 'sys_common_status', '', '', '', 2, '', '正常状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (17, 0, '关闭', '1', 'sys_common_status', '', '', '', 2, '', '关闭状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (18, 0, '新增', '1', 'sys_oper_type', '', '', '', 2, '', '新增操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (19, 0, '修改', '2', 'sys_oper_type', '', '', '', 2, '', '修改操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (20, 0, '删除', '3', 'sys_oper_type', '', '', '', 2, '', '删除操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (21, 0, '授权', '4', 'sys_oper_type', '', '', '', 2, '', '授权操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (22, 0, '导出', '5', 'sys_oper_type', '', '', '', 2, '', '导出操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (23, 0, '导入', '6', 'sys_oper_type', '', '', '', 2, '', '导入操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (24, 0, '强退', '7', 'sys_oper_type', '', '', '', 2, '', '强退操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (25, 0, '生成代码', '8', 'sys_oper_type', '', '', '', 2, '', '生成操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (26, 0, '清空数据', '9', 'sys_oper_type', '', '', '', 2, '', '清空操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (27, 0, '成功', '0', 'sys_notice_status', '', '', '', 2, '', '成功状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (28, 0, '失败', '1', 'sys_notice_status', '', '', '', 2, '', '失败状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (29, 0, '登录', '10', 'sys_oper_type', '', '', '', 2, '', '登录操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (30, 0, '退出', '11', 'sys_oper_type', '', '', '', 2, '', '', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (31, 0, '获取验证码', '12', 'sys_oper_type', '', '', '', 2, '', '获取验证码', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (32, 0, '正常', '1', 'sys_content_status', '', '', '', 1, '', '', 1, 1, '2021-05-13 19:56:40.845', '2021-05-13 19:56:40.845', NULL);
INSERT INTO `sys_dict_data` VALUES (33, 1, '禁用', '2', 'sys_content_status', '', '', '', 1, '', '', 1, 1, '2021-05-13 19:56:40.845', '2021-05-13 19:56:40.845', NULL);
INSERT INTO `sys_dict_data` VALUES (34, 0, '尚未安装', '0', 'server_status', '', '', '', 2, '', '', 0, 0, '2023-08-10 14:56:20.525', '2023-08-10 14:56:20.525', '2023-08-12 14:28:25.384');
INSERT INTO `sys_dict_data` VALUES (35, 0, '安装失败', '-1', 'server_status', '', '', '', 2, '', '', 0, 0, '2023-08-10 14:56:36.219', '2023-08-10 14:56:36.219', '2023-08-12 14:28:33.203');
INSERT INTO `sys_dict_data` VALUES (36, 0, '离线', '-2', 'server_status', '', '', '', 2, '', '', 0, 0, '2023-08-10 14:56:51.700', '2023-08-10 14:56:51.700', '2023-08-12 14:28:27.923');
INSERT INTO `sys_dict_data` VALUES (37, 0, '在线', '1', 'server_status', '', '', '', 2, '', '', 0, 0, '2023-08-10 14:57:01.091', '2023-08-10 14:57:01.091', NULL);
INSERT INTO `sys_dict_data` VALUES (38, 0, '安装中', '2', 'server_status', '', '', '', 2, '', '', 0, 0, '2023-08-10 14:57:12.858', '2023-08-10 14:57:12.858', '2023-08-12 14:28:22.155');
INSERT INTO `sys_dict_data` VALUES (39, 0, '是', '1', 'common_yn', '', '', '', 2, '', '', 0, 0, '2023-08-10 15:00:19.954', '2023-08-10 15:00:19.954', NULL);
INSERT INTO `sys_dict_data` VALUES (40, 0, '否', '-1', 'common_yn', '', '', '', 2, '', '', 0, 0, '2023-08-10 15:00:26.674', '2023-08-10 15:00:26.674', NULL);
INSERT INTO `sys_dict_data` VALUES (41, 0, '在线', '1', 'common_o', '', '', '', 2, '', '', 0, 0, '2023-08-10 15:13:14.169', '2023-08-10 15:13:14.169', NULL);
INSERT INTO `sys_dict_data` VALUES (42, 0, '离线', '-1', 'common_o', '', '', '', 2, '', '', 0, 0, '2023-08-10 15:13:20.480', '2023-08-10 15:13:20.480', NULL);
INSERT INTO `sys_dict_data` VALUES (43, 0, 'password', 'password', 'server_login_type', '', '', '', 2, '', '', 0, 0, '2023-08-10 15:16:18.535', '2023-08-10 15:16:18.535', NULL);
INSERT INTO `sys_dict_data` VALUES (44, 0, 'public_key', 'public_key', 'server_login_type', '', '', '', 2, '', '', 0, 0, '2023-08-10 15:16:26.168', '2023-08-10 15:16:26.168', NULL);
INSERT INTO `sys_dict_data` VALUES (45, 0, '中国大陆', 'china', 'nation', '', '', '', 2, '', '', 0, 0, '2023-08-10 15:19:20.649', '2023-08-10 15:19:20.649', NULL);
INSERT INTO `sys_dict_data` VALUES (46, 0, '中国香港', 'Hongkong', 'nation', '', '', '', 2, '', '', 0, 0, '2023-08-10 15:19:39.234', '2023-08-10 15:19:39.234', NULL);
INSERT INTO `sys_dict_data` VALUES (47, 0, '中国台湾', 'Taiwan', 'nation', '', '', '', 2, '', '', 0, 0, '2023-08-10 15:20:04.915', '2023-08-10 15:20:04.915', NULL);
INSERT INTO `sys_dict_data` VALUES (48, 0, '新加坡', 'Singapore', 'nation', '', '', '', 2, '', '', 0, 0, '2023-08-10 15:20:36.031', '2023-08-10 15:20:36.031', NULL);
INSERT INTO `sys_dict_data` VALUES (49, 0, '日本', 'Japan', 'nation', '', '', '', 2, '', '', 0, 0, '2023-08-10 15:20:55.959', '2023-08-10 15:20:55.959', NULL);
INSERT INTO `sys_dict_data` VALUES (50, 0, '美国', 'USA', 'nation', '', '', '', 2, '', '', 0, 0, '2023-08-10 15:21:37.326', '2023-08-10 15:21:37.326', NULL);
INSERT INTO `sys_dict_data` VALUES (51, 0, 'VMESS', 'VMESS', 'vpn_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-10 17:56:08.474', '2023-08-10 17:56:08.474', '2023-08-14 15:11:50.071');
INSERT INTO `sys_dict_data` VALUES (52, 0, 'VLESS', 'VLESS', 'vpn_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-10 17:56:16.139', '2023-08-10 17:56:16.139', '2023-08-14 15:11:51.934');
INSERT INTO `sys_dict_data` VALUES (53, 0, 'TROJAN', 'TROJAN', 'vpn_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-10 17:56:24.053', '2023-08-10 17:56:24.053', '2023-08-13 18:10:33.819');
INSERT INTO `sys_dict_data` VALUES (54, 0, 'SHADOWSOCKS', 'SHADOWSOCKS', 'vpn_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-10 17:56:31.656', '2023-08-10 17:56:31.656', '2023-08-14 15:11:53.569');
INSERT INTO `sys_dict_data` VALUES (55, 0, 'DOKODEMO', 'DOKODEMO', 'vpn_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-10 17:56:44.940', '2023-08-10 17:56:44.940', '2023-08-13 13:23:37.829');
INSERT INTO `sys_dict_data` VALUES (56, 0, 'SOCKS', 'SOCKS', 'vpn_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-10 17:56:54.840', '2023-08-10 17:56:54.840', '2023-08-14 15:11:55.770');
INSERT INTO `sys_dict_data` VALUES (57, 0, 'HTTP', 'HTTP', 'vpn_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-10 17:57:02.452', '2023-08-10 17:57:02.452', '2023-08-14 15:11:57.434');
INSERT INTO `sys_dict_data` VALUES (58, 0, 'GRPC', 'GRPC', 'transfer_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-10 17:59:06.282', '2023-08-10 17:59:06.282', NULL);
INSERT INTO `sys_dict_data` VALUES (59, 0, 'HTTP', 'HTTP', 'transfer_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-10 17:59:17.973', '2023-08-10 17:59:17.973', NULL);
INSERT INTO `sys_dict_data` VALUES (60, 0, 'TCP', 'TCP', 'transfer_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-10 17:59:33.954', '2023-08-10 17:59:33.954', NULL);
INSERT INTO `sys_dict_data` VALUES (61, 0, 'WS', 'WS', 'transfer_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-10 17:59:39.795', '2023-08-10 17:59:39.795', NULL);
INSERT INTO `sys_dict_data` VALUES (62, 0, '离线', '-1', 'server_status', '', '', '', 2, '', '', 0, 0, '2023-08-12 14:28:43.513', '2023-08-12 14:28:43.513', NULL);
INSERT INTO `sys_dict_data` VALUES (63, 0, 'FRP', 'FRP', 'vpn_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-14 15:09:54.230', '2023-08-14 15:09:54.230', '2023-08-14 15:11:59.050');
INSERT INTO `sys_dict_data` VALUES (64, 0, 'DOKODEMO', 'DOKODEMO', 'vpn_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-14 15:11:27.559', '2023-08-14 15:11:27.559', '2023-08-14 15:12:00.684');
INSERT INTO `sys_dict_data` VALUES (65, 0, 'dokodemo-door', 'dokodemo-door', 'vpn_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-14 15:12:24.941', '2023-08-14 15:12:24.941', '2023-08-14 15:17:05.884');
INSERT INTO `sys_dict_data` VALUES (66, 0, 'http', 'http', 'vpn_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-14 15:12:35.926', '2023-08-14 15:12:35.926', NULL);
INSERT INTO `sys_dict_data` VALUES (67, 0, 'shadowsocks', 'shadowsocks', 'vpn_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-14 15:12:47.510', '2023-08-14 15:12:47.510', NULL);
INSERT INTO `sys_dict_data` VALUES (68, 0, 'socks', 'socks', 'vpn_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-14 15:12:56.390', '2023-08-14 15:12:56.390', NULL);
INSERT INTO `sys_dict_data` VALUES (69, 0, 'vmess', 'vmess', 'vpn_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-14 15:13:05.091', '2023-08-14 15:13:05.091', NULL);
INSERT INTO `sys_dict_data` VALUES (70, 0, 'vless', 'vless', 'vpn_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-14 15:14:19.889', '2023-08-14 15:14:19.889', '2023-08-20 00:14:41.201');
INSERT INTO `sys_dict_data` VALUES (71, 0, 'frp', 'frp', 'vpn_protocol', '', '', '', 2, '', '', 0, 0, '2023-08-14 15:14:28.756', '2023-08-14 15:14:28.756', '2023-08-14 15:17:08.129');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT,
  `dict_name` varchar(128) DEFAULT NULL,
  `dict_type` varchar(128) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`dict_id`),
  KEY `idx_sys_dict_type_create_by` (`create_by`),
  KEY `idx_sys_dict_type_update_by` (`update_by`),
  KEY `idx_sys_dict_type_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` VALUES (1, '系统开关', 'sys_normal_disable', 2, '系统开关列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (2, '用户性别', 'sys_user_sex', 2, '用户性别列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (3, '菜单状态', 'sys_show_hide', 2, '菜单状态列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (4, '系统是否', 'sys_yes_no', 2, '系统是否列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (5, '任务状态', 'sys_job_status', 2, '任务状态列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (6, '任务分组', 'sys_job_group', 2, '任务分组列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', 2, '通知类型列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (8, '系统状态', 'sys_common_status', 2, '登录状态列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', 2, '操作类型列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (10, '通知状态', 'sys_notice_status', 2, '通知状态列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (11, '内容状态', 'sys_content_status', 2, '', 1, 1, '2021-05-13 19:56:40.813', '2021-05-13 19:56:40.813', NULL);
INSERT INTO `sys_dict_type` VALUES (12, '服务器状态', 'server_status', 2, '', 0, 0, '2023-08-10 14:55:46.719', '2023-08-10 14:55:46.719', NULL);
INSERT INTO `sys_dict_type` VALUES (13, '通用是否', 'sys_isyeno', 2, '', 0, 0, '2023-08-10 14:58:38.954', '2023-08-10 14:58:38.954', '2023-08-10 14:59:29.134');
INSERT INTO `sys_dict_type` VALUES (14, '通用是否', 'common_yn', 2, '', 0, 0, '2023-08-10 14:59:57.554', '2023-08-10 14:59:57.554', NULL);
INSERT INTO `sys_dict_type` VALUES (15, 'common_o', '通用在线', 2, '', 0, 0, '2023-08-10 15:12:50.782', '2023-08-10 15:12:50.782', '2023-08-10 15:12:58.660');
INSERT INTO `sys_dict_type` VALUES (16, '通用在线', 'common_o', 2, '', 0, 0, '2023-08-10 15:13:05.363', '2023-08-10 15:13:05.363', NULL);
INSERT INTO `sys_dict_type` VALUES (17, '登录方式', 'server_login_type', 2, '', 0, 0, '2023-08-10 15:15:58.333', '2023-08-10 15:15:58.333', NULL);
INSERT INTO `sys_dict_type` VALUES (18, '国家', 'nation', 2, '', 0, 0, '2023-08-10 15:19:00.246', '2023-08-10 15:19:00.246', NULL);
INSERT INTO `sys_dict_type` VALUES (19, '协议', 'vpn_protocol', 2, '', 0, 0, '2023-08-10 17:54:59.020', '2023-08-10 17:54:59.020', NULL);
INSERT INTO `sys_dict_type` VALUES (20, '传送协议', 'transfer_protocol', 2, '', 0, 0, '2023-08-10 17:58:47.764', '2023-08-10 17:58:47.764', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) DEFAULT NULL,
  `job_group` varchar(255) DEFAULT NULL,
  `job_type` tinyint DEFAULT NULL,
  `cron_expression` varchar(255) DEFAULT NULL,
  `invoke_target` varchar(255) DEFAULT NULL,
  `args` varchar(255) DEFAULT NULL,
  `misfire_policy` bigint DEFAULT NULL,
  `concurrent` tinyint DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `entry_id` smallint DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`job_id`),
  KEY `idx_sys_job_update_by` (`update_by`),
  KEY `idx_sys_job_deleted_at` (`deleted_at`),
  KEY `idx_sys_job_create_by` (`create_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
INSERT INTO `sys_job` VALUES (1, '接口测试', 'DEFAULT', 1, '0/5 * * * * ', 'http://localhost:8000', '', 1, 1, 1, 0, '2021-05-13 19:56:37.914', '2021-06-14 20:59:55.417', NULL, 1, 1);
INSERT INTO `sys_job` VALUES (2, '函数测试', 'DEFAULT', 2, '0/5 * * * * ', 'ExamplesOne', '参数', 1, 1, 1, 0, '2021-05-13 19:56:37.914', '2021-05-31 23:55:37.221', NULL, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `username` varchar(128) DEFAULT NULL COMMENT '用户名',
  `status` varchar(4) DEFAULT NULL COMMENT '状态',
  `ipaddr` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `login_location` varchar(255) DEFAULT NULL COMMENT '归属地',
  `browser` varchar(255) DEFAULT NULL COMMENT '浏览器',
  `os` varchar(255) DEFAULT NULL COMMENT '系统',
  `platform` varchar(255) DEFAULT NULL COMMENT '固件',
  `login_time` timestamp NULL DEFAULT NULL COMMENT '登录时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `msg` varchar(255) DEFAULT NULL COMMENT '信息',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`),
  KEY `idx_sys_login_log_create_by` (`create_by`),
  KEY `idx_sys_login_log_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_login_log` VALUES (1, '', '1', '::1', '', 'Chrome 115.0.0.0', 'Intel Mac OS X 10_15_7', 'Macintosh', '2023-08-26 19:04:56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '登录失败', '2023-08-26 19:04:56.486', '2023-08-26 19:04:56.486', 0, 0);
INSERT INTO `sys_login_log` VALUES (2, 'yoyoyo', '2', '::1', '', 'Chrome 115.0.0.0', 'Intel Mac OS X 10_15_7', 'Macintosh', '2023-08-26 19:05:15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '登录成功', '2023-08-26 19:05:14.949', '2023-08-26 19:05:14.949', 0, 0);
INSERT INTO `sys_login_log` VALUES (3, 'yoyoyo', '2', '127.0.0.1', '', 'Chrome 116.0.0.0', 'Intel Mac OS X 10_15_7', 'Macintosh', '2023-09-14 10:31:22', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '登录成功', '2023-09-14 10:31:21.845', '2023-09-14 10:31:21.845', 0, 0);
INSERT INTO `sys_login_log` VALUES (4, 'yoyoyo', '2', '::1', '', 'Chrome 116.0.0.0', 'Intel Mac OS X 10_15_7', 'Macintosh', '2023-09-14 11:32:53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '退出成功', '2023-09-14 11:32:52.501', '2023-09-14 11:32:52.501', 0, 0);
INSERT INTO `sys_login_log` VALUES (5, 'ceshi1', '2', '::1', '', 'Chrome 116.0.0.0', 'Intel Mac OS X 10_15_7', 'Macintosh', '2023-09-14 11:33:00', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '登录成功', '2023-09-14 11:32:59.769', '2023-09-14 11:32:59.769', 0, 0);
INSERT INTO `sys_login_log` VALUES (6, 'yoyoyo', '2', '127.0.0.1', '', 'Chrome 117.0.0.0', 'Intel Mac OS X 10_15_7', 'Macintosh', '2023-09-17 14:51:57', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '登录成功', '2023-09-17 14:51:57.105', '2023-09-17 14:51:57.105', 0, 0);
INSERT INTO `sys_login_log` VALUES (7, '', '1', '::1', '', 'Chrome 117.0.0.0', 'Intel Mac OS X 10_15_7', 'Macintosh', '2023-09-20 10:29:08', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '登录失败', '2023-09-20 10:29:08.102', '2023-09-20 10:29:08.102', 0, 0);
INSERT INTO `sys_login_log` VALUES (8, 'yoyoyo', '2', '::1', '', 'Chrome 117.0.0.0', 'Intel Mac OS X 10_15_7', 'Macintosh', '2023-09-20 10:29:21', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '登录成功', '2023-09-20 10:29:21.099', '2023-09-20 10:29:21.099', 0, 0);
INSERT INTO `sys_login_log` VALUES (9, '', '1', '::1', '', 'Chrome 118.0.0.0', 'Intel Mac OS X 10_15_7', 'Macintosh', '2023-10-23 20:38:50', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '登录失败', '2023-10-23 20:38:50.405', '2023-10-23 20:38:50.405', 0, 0);
INSERT INTO `sys_login_log` VALUES (10, 'yoyoyo', '2', '::1', '', 'Chrome 118.0.0.0', 'Intel Mac OS X 10_15_7', 'Macintosh', '2023-10-23 20:39:12', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '登录成功', '2023-10-23 20:39:12.013', '2023-10-23 20:39:12.013', 0, 0);
INSERT INTO `sys_login_log` VALUES (11, 'yoyoyo', '2', '::1', '', 'Chrome 118.0.0.0', 'Intel Mac OS X 10_15_7', 'Macintosh', '2023-10-23 20:58:06', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '登录成功', '2023-10-23 20:58:05.949', '2023-10-23 20:58:05.949', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `path` varchar(128) DEFAULT NULL,
  `paths` varchar(128) DEFAULT NULL,
  `menu_type` varchar(1) DEFAULT NULL,
  `action` varchar(16) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `parent_id` smallint DEFAULT NULL,
  `no_cache` tinyint(1) DEFAULT NULL,
  `breadcrumb` varchar(255) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `sort` tinyint DEFAULT NULL,
  `visible` varchar(1) DEFAULT NULL,
  `is_frame` varchar(1) DEFAULT '0',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`menu_id`),
  KEY `idx_sys_menu_create_by` (`create_by`),
  KEY `idx_sys_menu_update_by` (`update_by`),
  KEY `idx_sys_menu_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=596 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (2, 'Admin', '系统管理', 'api-server', '/admin', '/0/2', 'M', '无', '', 0, 1, '', 'Layout', 10, '0', '1', 0, 1, '2021-05-20 21:58:45.679', '2023-08-10 14:44:19.543', NULL);
INSERT INTO `sys_menu` VALUES (3, 'SysUserManage', '用户管理', 'user', '/admin/sys-user', '/0/2/3', 'C', '无', 'admin:sysUser:list', 2, 0, '', '/admin/sys-user/index', 10, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-21 11:22:45.793', NULL);
INSERT INTO `sys_menu` VALUES (43, '', '新增管理员', 'app-group-fill', '', '/0/2/3/43', 'F', 'POST', 'admin:sysUser:add', 3, 0, '', '', 10, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-21 11:22:45.793', NULL);
INSERT INTO `sys_menu` VALUES (44, '', '查询管理员', 'app-group-fill', '', '/0/2/3/44', 'F', 'GET', 'admin:sysUser:query', 3, 0, '', '', 40, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-21 11:22:45.793', NULL);
INSERT INTO `sys_menu` VALUES (45, '', '修改管理员', 'app-group-fill', '', '/0/2/3/45', 'F', 'PUT', 'admin:sysUser:edit', 3, 0, '', '', 30, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-21 11:22:45.793', NULL);
INSERT INTO `sys_menu` VALUES (46, '', '删除管理员', 'app-group-fill', '', '/0/2/3/46', 'F', 'DELETE', 'admin:sysUser:remove', 3, 0, '', '', 20, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-21 11:22:45.793', NULL);
INSERT INTO `sys_menu` VALUES (51, 'SysMenuManage', '菜单管理', 'tree-table', '/admin/sys-menu', '/0/2/51', 'C', '无', 'admin:sysMenu:list', 2, 1, '', '/admin/sys-menu/index', 30, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-10 14:44:19.547', NULL);
INSERT INTO `sys_menu` VALUES (52, 'SysRoleManage', '角色管理', 'peoples', '/admin/sys-role', '/0/2/52', 'C', '无', 'admin:sysRole:list', 2, 1, '', '/admin/sys-role/index', 20, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-20 13:21:46.382', NULL);
INSERT INTO `sys_menu` VALUES (56, 'SysDeptManage', '部门管理', 'tree', '/admin/sys-dept', '/0/2/56', 'C', '无', 'admin:sysDept:list', 2, 0, '', '/admin/sys-dept/index', 40, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-10 14:44:19.549', NULL);
INSERT INTO `sys_menu` VALUES (57, 'SysPostManage', '岗位管理', 'pass', '/admin/sys-post', '/0/2/57', 'C', '无', 'admin:sysPost:list', 2, 0, '', '/admin/sys-post/index', 50, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-10 14:44:19.549', NULL);
INSERT INTO `sys_menu` VALUES (58, 'Dict', '字典管理', 'education', '/admin/dict', '/0/2/58', 'C', '无', 'admin:sysDictType:list', 2, 0, '', '/admin/dict/index', 60, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-10 14:44:19.550', NULL);
INSERT INTO `sys_menu` VALUES (59, 'SysDictDataManage', '字典数据', 'education', '/admin/dict/data/:dictId', '/0/2/59', 'C', '无', 'admin:sysDictData:list', 2, 0, '', '/admin/dict/data', 100, '1', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-10 14:44:19.551', NULL);
INSERT INTO `sys_menu` VALUES (60, 'Tools', '开发工具', 'dev-tools', '/dev-tools', '/0/60', 'M', '无', '', 0, 0, '', 'Layout', 40, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.545', NULL);
INSERT INTO `sys_menu` VALUES (61, 'Swagger', '系统接口', 'guide', '/dev-tools/swagger', '/0/60/61', 'C', '无', '', 60, 0, '', '/dev-tools/swagger/index', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.568', NULL);
INSERT INTO `sys_menu` VALUES (62, 'SysConfigManage', '参数管理', 'swagger', '/admin/sys-config', '/0/2/62', 'C', '无', 'admin:sysConfig:list', 2, 0, '', '/admin/sys-config/index', 70, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-10 14:44:19.551', NULL);
INSERT INTO `sys_menu` VALUES (211, 'Log', '日志管理', 'log', '/log', '/0/2/211', 'M', '', '', 2, 0, '', '/log/index', 80, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-10 14:44:19.552', NULL);
INSERT INTO `sys_menu` VALUES (212, 'SysLoginLogManage', '登录日志', 'logininfor', '/admin/sys-login-log', '/0/2/211/212', 'C', '', 'admin:sysLoginLog:list', 211, 0, '', '/admin/sys-login-log/index', 1, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-10 14:44:19.573', NULL);
INSERT INTO `sys_menu` VALUES (216, 'OperLog', '操作日志', 'skill', '/admin/sys-oper-log', '/0/2/211/216', 'C', '', 'admin:sysOperLog:list', 211, 0, '', '/admin/sys-oper-log/index', 1, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-10 14:44:19.573', NULL);
INSERT INTO `sys_menu` VALUES (220, '', '新增菜单', 'app-group-fill', '', '/0/2/51/220', 'F', '', 'admin:sysMenu:add', 51, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.556', NULL);
INSERT INTO `sys_menu` VALUES (221, '', '修改菜单', 'app-group-fill', '', '/0/2/51/221', 'F', '', 'admin:sysMenu:edit', 51, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.557', NULL);
INSERT INTO `sys_menu` VALUES (222, '', '查询菜单', 'app-group-fill', '', '/0/2/51/222', 'F', '', 'admin:sysMenu:query', 51, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.557', NULL);
INSERT INTO `sys_menu` VALUES (223, '', '删除菜单', 'app-group-fill', '', '/0/2/51/223', 'F', '', 'admin:sysMenu:remove', 51, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.558', NULL);
INSERT INTO `sys_menu` VALUES (224, '', '新增角色', 'app-group-fill', '', '/0/2/52/224', 'F', '', 'admin:sysRole:add', 52, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-20 13:21:46.382', NULL);
INSERT INTO `sys_menu` VALUES (225, '', '查询角色', 'app-group-fill', '', '/0/2/52/225', 'F', '', 'admin:sysRole:query', 52, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-20 13:21:46.382', NULL);
INSERT INTO `sys_menu` VALUES (226, '', '修改角色', 'app-group-fill', '', '/0/2/52/226', 'F', '', 'admin:sysRole:update', 52, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-20 13:21:46.382', NULL);
INSERT INTO `sys_menu` VALUES (227, '', '删除角色', 'app-group-fill', '', '/0/2/52/227', 'F', '', 'admin:sysRole:remove', 52, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-20 13:21:46.382', NULL);
INSERT INTO `sys_menu` VALUES (228, '', '查询部门', 'app-group-fill', '', '/0/2/56/228', 'F', '', 'admin:sysDept:query', 56, 0, '', '', 40, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-10 14:44:19.560', NULL);
INSERT INTO `sys_menu` VALUES (229, '', '新增部门', 'app-group-fill', '', '/0/2/56/229', 'F', '', 'admin:sysDept:add', 56, 0, '', '', 10, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-10 14:44:19.561', NULL);
INSERT INTO `sys_menu` VALUES (230, '', '修改部门', 'app-group-fill', '', '/0/2/56/230', 'F', '', 'admin:sysDept:edit', 56, 0, '', '', 30, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-10 14:44:19.561', NULL);
INSERT INTO `sys_menu` VALUES (231, '', '删除部门', 'app-group-fill', '', '/0/2/56/231', 'F', '', 'admin:sysDept:remove', 56, 0, '', '', 20, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-08-10 14:44:19.562', NULL);
INSERT INTO `sys_menu` VALUES (232, '', '查询岗位', 'app-group-fill', '', '/0/2/57/232', 'F', '', 'admin:sysPost:query', 57, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.562', NULL);
INSERT INTO `sys_menu` VALUES (233, '', '新增岗位', 'app-group-fill', '', '/0/2/57/233', 'F', '', 'admin:sysPost:add', 57, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.563', NULL);
INSERT INTO `sys_menu` VALUES (234, '', '修改岗位', 'app-group-fill', '', '/0/2/57/234', 'F', '', 'admin:sysPost:edit', 57, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.563', NULL);
INSERT INTO `sys_menu` VALUES (235, '', '删除岗位', 'app-group-fill', '', '/0/2/57/235', 'F', '', 'admin:sysPost:remove', 57, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.564', NULL);
INSERT INTO `sys_menu` VALUES (236, '', '查询字典', 'app-group-fill', '', '/0/2/58/236', 'F', '', 'admin:sysDictType:query', 58, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.564', NULL);
INSERT INTO `sys_menu` VALUES (237, '', '新增类型', 'app-group-fill', '', '/0/2/58/237', 'F', '', 'admin:sysDictType:add', 58, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.565', NULL);
INSERT INTO `sys_menu` VALUES (238, '', '修改类型', 'app-group-fill', '', '/0/2/58/238', 'F', '', 'admin:sysDictType:edit', 58, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.565', NULL);
INSERT INTO `sys_menu` VALUES (239, '', '删除类型', 'app-group-fill', '', '/0/2/58/239', 'F', '', 'system:sysdicttype:remove', 58, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.565', NULL);
INSERT INTO `sys_menu` VALUES (240, '', '查询数据', 'app-group-fill', '', '/0/2/59/240', 'F', '', 'admin:sysDictData:query', 59, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.566', NULL);
INSERT INTO `sys_menu` VALUES (241, '', '新增数据', 'app-group-fill', '', '/0/2/59/241', 'F', '', 'admin:sysDictData:add', 59, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.566', NULL);
INSERT INTO `sys_menu` VALUES (242, '', '修改数据', 'app-group-fill', '', '/0/2/59/242', 'F', '', 'admin:sysDictData:edit', 59, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.567', NULL);
INSERT INTO `sys_menu` VALUES (243, '', '删除数据', 'app-group-fill', '', '/0/2/59/243', 'F', '', 'admin:sysDictData:remove', 59, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.568', NULL);
INSERT INTO `sys_menu` VALUES (244, '', '查询参数', 'app-group-fill', '', '/0/2/62/244', 'F', '', 'admin:sysConfig:query', 62, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.571', NULL);
INSERT INTO `sys_menu` VALUES (245, '', '新增参数', 'app-group-fill', '', '/0/2/62/245', 'F', '', 'admin:sysConfig:add', 62, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.571', NULL);
INSERT INTO `sys_menu` VALUES (246, '', '修改参数', 'app-group-fill', '', '/0/2/62/246', 'F', '', 'admin:sysConfig:edit', 62, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.572', NULL);
INSERT INTO `sys_menu` VALUES (247, '', '删除参数', 'app-group-fill', '', '/0/2/62/247', 'F', '', 'admin:sysConfig:remove', 62, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.572', NULL);
INSERT INTO `sys_menu` VALUES (248, '', '查询登录日志', 'app-group-fill', '', '/0/2/211/212/248', 'F', '', 'admin:sysLoginLog:query', 212, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.574', NULL);
INSERT INTO `sys_menu` VALUES (249, '', '删除登录日志', 'app-group-fill', '', '/0/2/211/212/249', 'F', '', 'admin:sysLoginLog:remove', 212, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.574', NULL);
INSERT INTO `sys_menu` VALUES (250, '', '查询操作日志', 'app-group-fill', '', '/0/2/211/216/250', 'F', '', 'admin:sysOperLog:query', 216, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.575', NULL);
INSERT INTO `sys_menu` VALUES (251, '', '删除操作日志', 'app-group-fill', '', '/0/2/211/216/251', 'F', '', 'admin:sysOperLog:remove', 216, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.576', NULL);
INSERT INTO `sys_menu` VALUES (261, 'Gen', '代码生成', 'code', '/dev-tools/gen', '/0/60/261', 'C', '', '', 60, 0, '', '/dev-tools/gen/index', 2, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.569', NULL);
INSERT INTO `sys_menu` VALUES (262, 'EditTable', '代码生成修改', 'build', '/dev-tools/editTable', '/0/60/262', 'C', '', '', 60, 0, '', '/dev-tools/gen/editTable', 100, '1', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.569', NULL);
INSERT INTO `sys_menu` VALUES (264, 'Build', '表单构建', 'build', '/dev-tools/build', '/0/60/264', 'C', '', '', 60, 0, '', '/dev-tools/build/index', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-08-10 14:44:19.570', NULL);
INSERT INTO `sys_menu` VALUES (269, 'ServerMonitor', '服务监控', 'druid', '/sys-tools/monitor', '/0/537/269', 'C', '', 'sysTools:serverMonitor:list', 537, 0, '', '/sys-tools/monitor', 0, '0', '1', 1, 1, '2020-04-14 00:28:19.000', '2023-08-10 14:44:19.581', NULL);
INSERT INTO `sys_menu` VALUES (459, 'Schedule', '定时任务', 'time-range', '/schedule', '/0/459', 'M', '无', '', 0, 0, '', 'Layout', 20, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-08-10 14:44:19.545', NULL);
INSERT INTO `sys_menu` VALUES (460, 'ScheduleManage', 'Schedule', 'job', '/schedule/manage', '/0/459/460', 'C', '无', 'job:sysJob:list', 459, 0, '', '/schedule/index', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-08-10 14:44:19.576', NULL);
INSERT INTO `sys_menu` VALUES (461, 'sys_job', '分页获取定时任务', 'app-group-fill', '', '/0/459/460/461', 'F', '无', 'job:sysJob:query', 460, 0, '', '', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-08-10 14:44:19.577', NULL);
INSERT INTO `sys_menu` VALUES (462, 'sys_job', '创建定时任务', 'app-group-fill', '', '/0/459/460/462', 'F', '无', 'job:sysJob:add', 460, 0, '', '', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-08-10 14:44:19.578', NULL);
INSERT INTO `sys_menu` VALUES (463, 'sys_job', '修改定时任务', 'app-group-fill', '', '/0/459/460/463', 'F', '无', 'job:sysJob:edit', 460, 0, '', '', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-08-10 14:44:19.579', NULL);
INSERT INTO `sys_menu` VALUES (464, 'sys_job', '删除定时任务', 'app-group-fill', '', '/0/459/460/464', 'F', '无', 'job:sysJob:remove', 460, 0, '', '', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-08-10 14:44:19.579', NULL);
INSERT INTO `sys_menu` VALUES (471, 'JobLog', '日志', 'bug', '/schedule/log', '/0/459/471', 'C', '', '', 459, 0, '', '/schedule/log', 0, '1', '1', 1, 1, '2020-08-05 21:24:46.000', '2023-08-10 14:44:19.577', NULL);
INSERT INTO `sys_menu` VALUES (528, 'SysApiManage', '接口管理', 'api-doc', '/admin/sys-api', '/0/2/528', 'C', '无', 'admin:sysApi:list', 2, 0, '', '/admin/sys-api/index', 0, '0', '0', 0, 1, '2021-05-20 22:08:44.526', '2023-08-10 14:44:19.553', NULL);
INSERT INTO `sys_menu` VALUES (529, '', '查询接口', 'app-group-fill', '', '/0/2/528/529', 'F', '无', 'admin:sysApi:query', 528, 0, '', '', 40, '0', '0', 0, 1, '2021-05-20 22:08:44.526', '2023-08-10 14:44:19.580', NULL);
INSERT INTO `sys_menu` VALUES (531, '', '修改接口', 'app-group-fill', '', '/0/2/528/531', 'F', '无', 'admin:sysApi:edit', 528, 0, '', '', 30, '0', '0', 0, 1, '2021-05-20 22:08:44.526', '2023-08-10 14:44:19.580', NULL);
INSERT INTO `sys_menu` VALUES (537, 'SysTools', '系统工具', 'system-tools', '/sys-tools', '/0/537', 'M', '', '', 0, 0, '', 'Layout', 30, '0', '1', 1, 1, '2021-05-21 11:13:32.166', '2023-08-10 14:44:19.545', NULL);
INSERT INTO `sys_menu` VALUES (540, 'SysConfigSet', '参数设置', 'system-tools', '/admin/sys-config/set', '/0/2/540', 'C', '', 'admin:sysConfigSet:list', 2, 0, '', '/admin/sys-config/set', 0, '0', '1', 1, 1, '2021-05-25 16:06:52.560', '2023-08-10 14:44:19.553', NULL);
INSERT INTO `sys_menu` VALUES (542, '', '修改', 'upload', '', '/0/2/540/542', 'F', '', 'admin:sysConfigSet:update', 540, 0, '', '', 0, '0', '1', 1, 1, '2021-06-13 11:45:48.670', '2023-08-10 14:44:19.582', NULL);
INSERT INTO `sys_menu` VALUES (543, '', '服务器管理', 'pass', '/vpn-server', '/0/543', 'M', '无', '', 0, 0, '', 'Layout', 0, '0', '0', 1, 0, '2023-08-10 15:26:05.329', '2023-08-10 15:26:05.330', '2023-08-10 18:37:23.302');
INSERT INTO `sys_menu` VALUES (544, 'VpnServerManage', '服务器管理', 'pass', '/vpn/vpn-server', '/0/543/544', 'C', '无', 'vpn:vpnServer:list', 543, 0, '', '/vpn/vpn-server/index', 0, '0', '0', 1, 1, '2023-08-10 15:26:05.331', '2023-08-10 15:26:05.332', NULL);
INSERT INTO `sys_menu` VALUES (545, '', '分页获取服务器管理', '', 'vpn_server', '/0/543/544/545', 'F', '无', 'vpn:vpnServer:query', 544, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 15:26:05.333', '2023-08-10 15:26:05.334', NULL);
INSERT INTO `sys_menu` VALUES (546, '', '创建服务器管理', '', 'vpn_server', '/0/543/544/546', 'F', '无', 'vpn:vpnServer:add', 544, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 15:26:05.335', '2023-08-10 15:26:05.336', NULL);
INSERT INTO `sys_menu` VALUES (547, '', '修改服务器管理', '', 'vpn_server', '/0/543/544/547', 'F', '无', 'vpn:vpnServer:edit', 544, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 15:26:05.337', '2023-08-10 15:26:05.338', NULL);
INSERT INTO `sys_menu` VALUES (548, '', '删除服务器管理', '', 'vpn_server', '/0/543/544/548', 'F', '无', 'vpn:vpnServer:remove', 544, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 15:26:05.339', '2023-08-10 15:26:05.340', NULL);
INSERT INTO `sys_menu` VALUES (549, '', '节点管理', 'pass', '/vpn-node', '/0/549', 'M', '无', '', 0, 0, '', 'Layout', 0, '0', '0', 1, 0, '2023-08-10 18:04:06.933', '2023-08-10 18:04:06.934', '2023-08-10 18:37:20.085');
INSERT INTO `sys_menu` VALUES (550, 'VpnNodeManage', '节点管理', 'pass', '/vpn/vpn-node', '/0/549/550', 'C', '无', 'vpn:vpnNode:list', 549, 0, '', '/vpn/vpn-node/index', 0, '0', '0', 1, 1, '2023-08-10 18:04:06.935', '2023-08-10 18:04:06.936', NULL);
INSERT INTO `sys_menu` VALUES (551, '', '分页获取节点管理', '', 'vpn_node', '/0/549/550/551', 'F', '无', 'vpn:vpnNode:query', 550, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 18:04:06.938', '2023-08-10 18:04:06.938', NULL);
INSERT INTO `sys_menu` VALUES (552, '', '创建节点管理', '', 'vpn_node', '/0/549/550/552', 'F', '无', 'vpn:vpnNode:add', 550, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 18:04:06.939', '2023-08-10 18:04:06.940', NULL);
INSERT INTO `sys_menu` VALUES (553, '', '修改节点管理', '', 'vpn_node', '/0/549/550/553', 'F', '无', 'vpn:vpnNode:edit', 550, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 18:04:06.941', '2023-08-10 18:04:06.942', NULL);
INSERT INTO `sys_menu` VALUES (554, '', '删除节点管理', '', 'vpn_node', '/0/549/550/554', 'F', '无', 'vpn:vpnNode:remove', 550, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 18:04:06.943', '2023-08-10 18:04:06.944', NULL);
INSERT INTO `sys_menu` VALUES (555, '', '节点管理', 'pass', '/vpn-node', '/0/555', 'M', '无', '', 0, 0, '', 'Layout', 0, '0', '0', 1, 0, '2023-08-10 18:36:15.136', '2023-08-10 18:36:15.137', '2023-08-10 20:00:13.788');
INSERT INTO `sys_menu` VALUES (556, 'VpnNodeManage', '节点管理', 'pass', '/vpn/vpn-node', '/0/555/556', 'C', '无', 'vpn:vpnNode:list', 555, 0, '', '/vpn/vpn-node/index', 0, '0', '0', 1, 1, '2023-08-10 18:36:15.139', '2023-08-10 18:36:15.140', NULL);
INSERT INTO `sys_menu` VALUES (557, '', '分页获取节点管理', '', 'vpn_node', '/0/555/556/557', 'F', '无', 'vpn:vpnNode:query', 556, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 18:36:15.141', '2023-08-10 18:36:15.141', NULL);
INSERT INTO `sys_menu` VALUES (558, '', '创建节点管理', '', 'vpn_node', '/0/555/556/558', 'F', '无', 'vpn:vpnNode:add', 556, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 18:36:15.142', '2023-08-10 18:36:15.143', NULL);
INSERT INTO `sys_menu` VALUES (559, '', '修改节点管理', '', 'vpn_node', '/0/555/556/559', 'F', '无', 'vpn:vpnNode:edit', 556, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 18:36:15.144', '2023-08-10 18:36:15.145', NULL);
INSERT INTO `sys_menu` VALUES (560, '', '删除节点管理', '', 'vpn_node', '/0/555/556/560', 'F', '无', 'vpn:vpnNode:remove', 556, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 18:36:15.145', '2023-08-10 18:36:15.146', NULL);
INSERT INTO `sys_menu` VALUES (561, '', '服务器管理', 'pass', '/vpn-server', '/0/561', 'M', '无', '', 0, 0, '', 'Layout', 0, '0', '0', 1, 0, '2023-08-10 18:36:15.770', '2023-08-10 18:36:15.771', '2023-08-10 20:00:10.650');
INSERT INTO `sys_menu` VALUES (562, 'VpnServerManage', '服务器管理', 'pass', '/vpn/vpn-server', '/0/561/562', 'C', '无', 'vpn:vpnServer:list', 561, 0, '', '/vpn/vpn-server/index', 0, '0', '0', 1, 1, '2023-08-10 18:36:15.772', '2023-08-10 18:36:15.773', NULL);
INSERT INTO `sys_menu` VALUES (563, '', '分页获取服务器管理', '', 'vpn_server', '/0/561/562/563', 'F', '无', 'vpn:vpnServer:query', 562, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 18:36:15.774', '2023-08-10 18:36:15.775', NULL);
INSERT INTO `sys_menu` VALUES (564, '', '创建服务器管理', '', 'vpn_server', '/0/561/562/564', 'F', '无', 'vpn:vpnServer:add', 562, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 18:36:15.776', '2023-08-10 18:36:15.777', NULL);
INSERT INTO `sys_menu` VALUES (565, '', '修改服务器管理', '', 'vpn_server', '/0/561/562/565', 'F', '无', 'vpn:vpnServer:edit', 562, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 18:36:15.778', '2023-08-10 18:36:15.779', NULL);
INSERT INTO `sys_menu` VALUES (566, '', '删除服务器管理', '', 'vpn_server', '/0/561/562/566', 'F', '无', 'vpn:vpnServer:remove', 562, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 18:36:15.780', '2023-08-10 18:36:15.780', NULL);
INSERT INTO `sys_menu` VALUES (567, '', '服务器管理', 'pass', '/vpn-server', '/0/567', 'M', '无', '', 0, 0, '', 'Layout', 0, '0', '0', 1, 0, '2023-08-10 19:38:44.078', '2023-08-10 19:38:44.079', '2023-08-10 20:00:16.811');
INSERT INTO `sys_menu` VALUES (568, 'VpnServerManage', '服务器管理', 'pass', '/vpn/vpn-server', '/0/567/568', 'C', '无', 'vpn:vpnServer:list', 567, 0, '', '/vpn/vpn-server/index', 0, '0', '0', 1, 1, '2023-08-10 19:38:44.080', '2023-08-10 19:38:44.081', NULL);
INSERT INTO `sys_menu` VALUES (569, '', '分页获取服务器管理', '', 'vpn_server', '/0/567/568/569', 'F', '无', 'vpn:vpnServer:query', 568, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 19:38:44.083', '2023-08-10 19:38:44.083', NULL);
INSERT INTO `sys_menu` VALUES (570, '', '创建服务器管理', '', 'vpn_server', '/0/567/568/570', 'F', '无', 'vpn:vpnServer:add', 568, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 19:38:44.084', '2023-08-10 19:38:44.085', NULL);
INSERT INTO `sys_menu` VALUES (571, '', '修改服务器管理', '', 'vpn_server', '/0/567/568/571', 'F', '无', 'vpn:vpnServer:edit', 568, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 19:38:44.086', '2023-08-10 19:38:44.087', NULL);
INSERT INTO `sys_menu` VALUES (572, '', '删除服务器管理', '', 'vpn_server', '/0/567/568/572', 'F', '无', 'vpn:vpnServer:remove', 568, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 19:38:44.088', '2023-08-10 19:38:44.088', NULL);
INSERT INTO `sys_menu` VALUES (573, '', '节点管理', 'pass', '/vpn-node', '/0/573', 'M', '无', '', 0, 0, '', 'Layout', 0, '0', '0', 1, 0, '2023-08-10 19:38:48.368', '2023-08-10 19:38:48.369', '2023-08-10 20:00:20.334');
INSERT INTO `sys_menu` VALUES (574, 'VpnNodeManage', '节点管理', 'pass', '/vpn/vpn-node', '/0/573/574', 'C', '无', 'vpn:vpnNode:list', 573, 0, '', '/vpn/vpn-node/index', 0, '0', '0', 1, 1, '2023-08-10 19:38:48.370', '2023-08-10 19:38:48.371', NULL);
INSERT INTO `sys_menu` VALUES (575, '', '分页获取节点管理', '', 'vpn_node', '/0/573/574/575', 'F', '无', 'vpn:vpnNode:query', 574, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 19:38:48.372', '2023-08-10 19:38:48.373', NULL);
INSERT INTO `sys_menu` VALUES (576, '', '创建节点管理', '', 'vpn_node', '/0/573/574/576', 'F', '无', 'vpn:vpnNode:add', 574, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 19:38:48.374', '2023-08-10 19:38:48.374', NULL);
INSERT INTO `sys_menu` VALUES (577, '', '修改节点管理', '', 'vpn_node', '/0/573/574/577', 'F', '无', 'vpn:vpnNode:edit', 574, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 19:38:48.375', '2023-08-10 19:38:48.376', NULL);
INSERT INTO `sys_menu` VALUES (578, '', '删除节点管理', '', 'vpn_node', '/0/573/574/578', 'F', '无', 'vpn:vpnNode:remove', 574, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 19:38:48.377', '2023-08-10 19:38:48.378', NULL);
INSERT INTO `sys_menu` VALUES (579, '', '服务器管理', 'pass', '/vpn-server', '/0/579', 'M', '无', '', 0, 0, '', 'Layout', 0, '0', '0', 1, 0, '2023-08-10 19:56:53.111', '2023-08-10 19:56:53.113', '2023-08-20 11:37:23.540');
INSERT INTO `sys_menu` VALUES (580, 'VpnServerManage', '服务器管理', 'pass', '/vpn/vpn-server', '/0/579/580', 'C', '无', 'vpn:vpnServer:list', 0, 0, '', '/vpn/vpn-server/index', 0, '0', '0', 1, 1, '2023-08-10 19:56:53.114', '2023-08-21 11:22:45.793', NULL);
INSERT INTO `sys_menu` VALUES (581, '', '分页获取服务器管理', '', 'vpn_server', '/0/579/580/581', 'F', '无', 'vpn:vpnServer:query', 580, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 19:56:53.117', '2023-08-21 11:22:45.793', NULL);
INSERT INTO `sys_menu` VALUES (582, '', '创建服务器管理', '', 'vpn_server', '/0/579/580/582', 'F', '无', 'vpn:vpnServer:add', 580, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 19:56:53.119', '2023-08-21 11:22:45.793', NULL);
INSERT INTO `sys_menu` VALUES (583, '', '修改服务器管理', '', 'vpn_server', '/0/579/580/583', 'F', '无', 'vpn:vpnServer:edit', 580, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 19:56:53.121', '2023-08-21 11:22:45.793', NULL);
INSERT INTO `sys_menu` VALUES (584, '', '删除服务器管理', '', 'vpn_server', '/0/579/580/584', 'F', '无', 'vpn:vpnServer:remove', 580, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 19:56:53.123', '2023-08-21 11:22:45.793', NULL);
INSERT INTO `sys_menu` VALUES (585, '', '节点管理', 'pass', '/vpn-node', '/0/585', 'M', '无', '', 0, 0, '', 'Layout', 0, '0', '0', 1, 0, '2023-08-10 19:56:55.100', '2023-08-10 19:56:55.101', '2023-08-20 11:37:37.583');
INSERT INTO `sys_menu` VALUES (586, 'VpnNodeManage', '节点管理', 'pass', '/vpn/vpn-node', '/0/585/586', 'C', '无', 'vpn:vpnNode:list', 0, 0, '', '/vpn/vpn-node/index', 0, '0', '0', 1, 1, '2023-08-10 19:56:55.104', '2023-08-21 11:22:45.793', NULL);
INSERT INTO `sys_menu` VALUES (587, '', '分页获取节点管理', '', 'vpn_node', '/0/585/586/587', 'F', '无', 'vpn:vpnNode:query', 586, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 19:56:55.107', '2023-08-21 11:22:45.793', NULL);
INSERT INTO `sys_menu` VALUES (588, '', '创建节点管理', '', 'vpn_node', '/0/585/586/588', 'F', '无', 'vpn:vpnNode:add', 586, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 19:56:55.110', '2023-08-21 11:22:45.793', NULL);
INSERT INTO `sys_menu` VALUES (589, '', '修改节点管理', '', 'vpn_node', '/0/585/586/589', 'F', '无', 'vpn:vpnNode:edit', 586, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 19:56:55.113', '2023-08-21 11:22:45.793', NULL);
INSERT INTO `sys_menu` VALUES (590, '', '删除节点管理', '', 'vpn_node', '/0/585/586/590', 'F', '无', 'vpn:vpnNode:remove', 586, 0, '', '', 0, '0', '0', 1, 1, '2023-08-10 19:56:55.115', '2023-08-21 11:22:45.793', NULL);
INSERT INTO `sys_menu` VALUES (591, 'VpnUserNodeManage', 'VPN节点', 'intel', '/vpn/vpn-node-user', '/0/591', 'C', '', 'vpnUser:vpnNode:list', 0, 0, '', '/vpn/vpn-node-user/index', 0, '0', '1', 1, 1, '2023-08-20 14:01:45.680', '2023-08-21 11:22:34.803', NULL);
INSERT INTO `sys_menu` VALUES (592, '分页获取节点管理', '分页获取节点管理', '', '', '/0/591/592', 'F', '', 'vpnUser:vpnNode:query', 591, 0, '', '', 0, '0', '1', 1, 1, '2023-08-20 14:07:57.409', '2023-08-21 11:22:34.803', NULL);
INSERT INTO `sys_menu` VALUES (593, '', '修改节点管理', '', '', '/0/591/593', 'F', '', 'vpnUser:vpnNode:edit', 591, 0, '', '', 0, '0', '1', 1, 1, '2023-08-20 14:08:42.349', '2023-08-21 11:22:34.803', NULL);
INSERT INTO `sys_menu` VALUES (594, '', '删除节点管理', '', '', '/0/591/594', 'F', '', 'vpnUser:vpnNode:remove', 591, 0, '', '', 0, '0', '1', 1, 1, '2023-08-20 14:09:28.593', '2023-08-21 11:22:34.803', NULL);
INSERT INTO `sys_menu` VALUES (595, 'admin:sysUser:resetPassword', '重置密码', 'app-group-fill', '', '/0/2/3/595', 'F', '', 'admin:sysUser:resetPassword', 3, 0, '', '', 0, '0', '1', 1, 1, '2023-08-20 19:22:33.539', '2023-08-21 11:22:45.793', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_menu_api_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_api_rule`;
CREATE TABLE `sys_menu_api_rule` (
  `sys_menu_menu_id` bigint NOT NULL,
  `sys_api_id` bigint NOT NULL COMMENT '主键编码',
  PRIMARY KEY (`sys_menu_menu_id`,`sys_api_id`),
  KEY `fk_sys_menu_api_rule_sys_api` (`sys_api_id`),
  CONSTRAINT `fk_sys_menu_api_rule_sys_api` FOREIGN KEY (`sys_api_id`) REFERENCES `sys_api` (`id`),
  CONSTRAINT `fk_sys_menu_api_rule_sys_menu` FOREIGN KEY (`sys_menu_menu_id`) REFERENCES `sys_menu` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_menu_api_rule
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu_api_rule` VALUES (216, 6);
INSERT INTO `sys_menu_api_rule` VALUES (250, 6);
INSERT INTO `sys_menu_api_rule` VALUES (58, 21);
INSERT INTO `sys_menu_api_rule` VALUES (236, 21);
INSERT INTO `sys_menu_api_rule` VALUES (238, 23);
INSERT INTO `sys_menu_api_rule` VALUES (59, 24);
INSERT INTO `sys_menu_api_rule` VALUES (240, 24);
INSERT INTO `sys_menu_api_rule` VALUES (242, 25);
INSERT INTO `sys_menu_api_rule` VALUES (58, 26);
INSERT INTO `sys_menu_api_rule` VALUES (236, 26);
INSERT INTO `sys_menu_api_rule` VALUES (56, 27);
INSERT INTO `sys_menu_api_rule` VALUES (228, 27);
INSERT INTO `sys_menu_api_rule` VALUES (230, 28);
INSERT INTO `sys_menu_api_rule` VALUES (226, 29);
INSERT INTO `sys_menu_api_rule` VALUES (51, 39);
INSERT INTO `sys_menu_api_rule` VALUES (222, 39);
INSERT INTO `sys_menu_api_rule` VALUES (221, 41);
INSERT INTO `sys_menu_api_rule` VALUES (43, 44);
INSERT INTO `sys_menu_api_rule` VALUES (45, 44);
INSERT INTO `sys_menu_api_rule` VALUES (52, 44);
INSERT INTO `sys_menu_api_rule` VALUES (225, 44);
INSERT INTO `sys_menu_api_rule` VALUES (226, 45);
INSERT INTO `sys_menu_api_rule` VALUES (226, 46);
INSERT INTO `sys_menu_api_rule` VALUES (43, 47);
INSERT INTO `sys_menu_api_rule` VALUES (45, 47);
INSERT INTO `sys_menu_api_rule` VALUES (226, 47);
INSERT INTO `sys_menu_api_rule` VALUES (62, 53);
INSERT INTO `sys_menu_api_rule` VALUES (244, 53);
INSERT INTO `sys_menu_api_rule` VALUES (246, 54);
INSERT INTO `sys_menu_api_rule` VALUES (57, 59);
INSERT INTO `sys_menu_api_rule` VALUES (232, 59);
INSERT INTO `sys_menu_api_rule` VALUES (234, 60);
INSERT INTO `sys_menu_api_rule` VALUES (241, 80);
INSERT INTO `sys_menu_api_rule` VALUES (237, 81);
INSERT INTO `sys_menu_api_rule` VALUES (229, 82);
INSERT INTO `sys_menu_api_rule` VALUES (245, 87);
INSERT INTO `sys_menu_api_rule` VALUES (220, 88);
INSERT INTO `sys_menu_api_rule` VALUES (233, 89);
INSERT INTO `sys_menu_api_rule` VALUES (43, 90);
INSERT INTO `sys_menu_api_rule` VALUES (224, 90);
INSERT INTO `sys_menu_api_rule` VALUES (531, 92);
INSERT INTO `sys_menu_api_rule` VALUES (242, 101);
INSERT INTO `sys_menu_api_rule` VALUES (238, 102);
INSERT INTO `sys_menu_api_rule` VALUES (230, 103);
INSERT INTO `sys_menu_api_rule` VALUES (43, 106);
INSERT INTO `sys_menu_api_rule` VALUES (226, 106);
INSERT INTO `sys_menu_api_rule` VALUES (226, 107);
INSERT INTO `sys_menu_api_rule` VALUES (246, 108);
INSERT INTO `sys_menu_api_rule` VALUES (221, 109);
INSERT INTO `sys_menu_api_rule` VALUES (234, 110);
INSERT INTO `sys_menu_api_rule` VALUES (249, 114);
INSERT INTO `sys_menu_api_rule` VALUES (251, 115);
INSERT INTO `sys_menu_api_rule` VALUES (243, 120);
INSERT INTO `sys_menu_api_rule` VALUES (239, 121);
INSERT INTO `sys_menu_api_rule` VALUES (231, 122);
INSERT INTO `sys_menu_api_rule` VALUES (247, 125);
INSERT INTO `sys_menu_api_rule` VALUES (223, 126);
INSERT INTO `sys_menu_api_rule` VALUES (235, 127);
INSERT INTO `sys_menu_api_rule` VALUES (227, 128);
INSERT INTO `sys_menu_api_rule` VALUES (51, 135);
INSERT INTO `sys_menu_api_rule` VALUES (528, 135);
INSERT INTO `sys_menu_api_rule` VALUES (529, 135);
INSERT INTO `sys_menu_api_rule` VALUES (531, 136);
INSERT INTO `sys_menu_api_rule` VALUES (212, 137);
INSERT INTO `sys_menu_api_rule` VALUES (248, 137);
INSERT INTO `sys_menu_api_rule` VALUES (542, 139);
INSERT INTO `sys_menu_api_rule` VALUES (540, 140);
INSERT INTO `sys_menu_api_rule` VALUES (3, 141);
INSERT INTO `sys_menu_api_rule` VALUES (44, 141);
INSERT INTO `sys_menu_api_rule` VALUES (3, 142);
INSERT INTO `sys_menu_api_rule` VALUES (45, 142);
INSERT INTO `sys_menu_api_rule` VALUES (3, 150);
INSERT INTO `sys_menu_api_rule` VALUES (43, 150);
INSERT INTO `sys_menu_api_rule` VALUES (3, 151);
INSERT INTO `sys_menu_api_rule` VALUES (45, 151);
INSERT INTO `sys_menu_api_rule` VALUES (3, 154);
INSERT INTO `sys_menu_api_rule` VALUES (45, 154);
INSERT INTO `sys_menu_api_rule` VALUES (595, 154);
INSERT INTO `sys_menu_api_rule` VALUES (3, 156);
INSERT INTO `sys_menu_api_rule` VALUES (46, 156);
INSERT INTO `sys_menu_api_rule` VALUES (586, 163);
INSERT INTO `sys_menu_api_rule` VALUES (591, 163);
INSERT INTO `sys_menu_api_rule` VALUES (586, 164);
INSERT INTO `sys_menu_api_rule` VALUES (591, 164);
INSERT INTO `sys_menu_api_rule` VALUES (580, 165);
INSERT INTO `sys_menu_api_rule` VALUES (591, 165);
INSERT INTO `sys_menu_api_rule` VALUES (586, 166);
INSERT INTO `sys_menu_api_rule` VALUES (591, 166);
INSERT INTO `sys_menu_api_rule` VALUES (586, 169);
INSERT INTO `sys_menu_api_rule` VALUES (591, 169);
INSERT INTO `sys_menu_api_rule` VALUES (580, 170);
INSERT INTO `sys_menu_api_rule` VALUES (591, 170);
INSERT INTO `sys_menu_api_rule` VALUES (580, 171);
INSERT INTO `sys_menu_api_rule` VALUES (591, 171);
INSERT INTO `sys_menu_api_rule` VALUES (580, 172);
INSERT INTO `sys_menu_api_rule` VALUES (591, 172);
INSERT INTO `sys_menu_api_rule` VALUES (586, 173);
INSERT INTO `sys_menu_api_rule` VALUES (591, 173);
INSERT INTO `sys_menu_api_rule` VALUES (586, 174);
INSERT INTO `sys_menu_api_rule` VALUES (591, 174);
INSERT INTO `sys_menu_api_rule` VALUES (586, 176);
INSERT INTO `sys_menu_api_rule` VALUES (591, 176);
INSERT INTO `sys_menu_api_rule` VALUES (580, 177);
INSERT INTO `sys_menu_api_rule` VALUES (591, 177);
INSERT INTO `sys_menu_api_rule` VALUES (586, 179);
INSERT INTO `sys_menu_api_rule` VALUES (591, 179);
INSERT INTO `sys_menu_api_rule` VALUES (580, 180);
INSERT INTO `sys_menu_api_rule` VALUES (591, 180);
COMMIT;

-- ----------------------------
-- Table structure for sys_migration
-- ----------------------------
DROP TABLE IF EXISTS `sys_migration`;
CREATE TABLE `sys_migration` (
  `version` varchar(191) NOT NULL,
  `apply_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_migration
-- ----------------------------
BEGIN;
INSERT INTO `sys_migration` VALUES ('1599190683659', '2023-08-10 14:44:19.542');
INSERT INTO `sys_migration` VALUES ('1653638869132', '2023-08-10 14:44:19.582');
COMMIT;

-- ----------------------------
-- Table structure for sys_opera_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_opera_log`;
CREATE TABLE `sys_opera_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `title` varchar(255) DEFAULT NULL COMMENT '操作模块',
  `business_type` varchar(128) DEFAULT NULL COMMENT '操作类型',
  `business_types` varchar(128) DEFAULT NULL COMMENT 'BusinessTypes',
  `method` varchar(128) DEFAULT NULL COMMENT '函数',
  `request_method` varchar(128) DEFAULT NULL COMMENT '请求方式: GET POST PUT DELETE',
  `operator_type` varchar(128) DEFAULT NULL COMMENT '操作类型',
  `oper_name` varchar(128) DEFAULT NULL COMMENT '操作者',
  `dept_name` varchar(128) DEFAULT NULL COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT NULL COMMENT '访问地址',
  `oper_ip` varchar(128) DEFAULT NULL COMMENT '客户端ip',
  `oper_location` varchar(128) DEFAULT NULL COMMENT '访问位置',
  `oper_param` text COMMENT '请求参数',
  `status` varchar(4) DEFAULT NULL COMMENT '操作状态 1:正常 2:关闭',
  `oper_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `json_result` varchar(255) DEFAULT NULL COMMENT '返回数据',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `latency_time` varchar(128) DEFAULT NULL COMMENT '耗时',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'ua',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`),
  KEY `idx_sys_opera_log_create_by` (`create_by`),
  KEY `idx_sys_opera_log_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2888 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_opera_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT,
  `post_name` varchar(128) DEFAULT NULL,
  `post_code` varchar(128) DEFAULT NULL,
  `sort` tinyint DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`post_id`),
  KEY `idx_sys_post_create_by` (`create_by`),
  KEY `idx_sys_post_update_by` (`update_by`),
  KEY `idx_sys_post_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` VALUES (1, '首席执行官', 'CEO', 0, 2, '首席执行官', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_post` VALUES (2, '首席技术执行官', 'CTO', 2, 2, '首席技术执行官', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_post` VALUES (3, '首席运营官', 'COO', 3, 2, '测试工程师', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(128) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `role_key` varchar(128) DEFAULT NULL,
  `role_sort` bigint DEFAULT NULL,
  `flag` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `data_scope` varchar(128) DEFAULT NULL,
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`role_id`),
  KEY `idx_sys_role_create_by` (`create_by`),
  KEY `idx_sys_role_update_by` (`update_by`),
  KEY `idx_sys_role_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '系统管理员', '2', 'admin', 1, '', '', 1, '', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_role` VALUES (2, '管理', '2', 'admin1', 0, '', '', 0, '1', 0, 0, '2023-08-20 12:52:47.053', '2023-08-20 13:45:12.523', '2023-08-20 13:51:33.126');
INSERT INTO `sys_role` VALUES (3, '用户', '2', 'user', 0, '', '', 0, '5', 0, 0, '2023-08-20 12:55:52.402', '2023-08-20 13:45:15.304', '2023-08-20 13:51:35.105');
INSERT INTO `sys_role` VALUES (4, '管理', '2', 'vpn', 0, '', '', 0, '1', 0, 0, '2023-08-20 13:52:29.588', '2023-08-21 11:22:45.791', NULL);
INSERT INTO `sys_role` VALUES (5, 'vpnUser', '2', 'vpnUser', 0, '', '', 0, '', 0, 0, '2023-08-20 13:56:33.911', '2023-08-21 11:22:34.802', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` smallint NOT NULL,
  `dept_id` smallint NOT NULL,
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL,
  `menu_id` bigint NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`),
  KEY `fk_sys_role_menu_sys_menu` (`menu_id`),
  CONSTRAINT `fk_sys_role_menu_sys_menu` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`menu_id`),
  CONSTRAINT `fk_sys_role_menu_sys_role` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (4, 3);
INSERT INTO `sys_role_menu` VALUES (4, 43);
INSERT INTO `sys_role_menu` VALUES (4, 44);
INSERT INTO `sys_role_menu` VALUES (4, 45);
INSERT INTO `sys_role_menu` VALUES (4, 46);
INSERT INTO `sys_role_menu` VALUES (4, 580);
INSERT INTO `sys_role_menu` VALUES (4, 581);
INSERT INTO `sys_role_menu` VALUES (4, 582);
INSERT INTO `sys_role_menu` VALUES (4, 583);
INSERT INTO `sys_role_menu` VALUES (4, 584);
INSERT INTO `sys_role_menu` VALUES (4, 586);
INSERT INTO `sys_role_menu` VALUES (4, 587);
INSERT INTO `sys_role_menu` VALUES (4, 588);
INSERT INTO `sys_role_menu` VALUES (4, 589);
INSERT INTO `sys_role_menu` VALUES (4, 590);
INSERT INTO `sys_role_menu` VALUES (5, 591);
INSERT INTO `sys_role_menu` VALUES (5, 592);
INSERT INTO `sys_role_menu` VALUES (5, 593);
INSERT INTO `sys_role_menu` VALUES (5, 594);
INSERT INTO `sys_role_menu` VALUES (4, 595);
COMMIT;

-- ----------------------------
-- Table structure for sys_tables
-- ----------------------------
DROP TABLE IF EXISTS `sys_tables`;
CREATE TABLE `sys_tables` (
  `table_id` bigint NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) DEFAULT NULL,
  `table_comment` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `tpl_category` varchar(255) DEFAULT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `module_front_name` varchar(255) DEFAULT NULL COMMENT '前端文件名',
  `business_name` varchar(255) DEFAULT NULL,
  `function_name` varchar(255) DEFAULT NULL,
  `function_author` varchar(255) DEFAULT NULL,
  `pk_column` varchar(255) DEFAULT NULL,
  `pk_go_field` varchar(255) DEFAULT NULL,
  `pk_json_field` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `tree_code` varchar(255) DEFAULT NULL,
  `tree_parent_code` varchar(255) DEFAULT NULL,
  `tree_name` varchar(255) DEFAULT NULL,
  `tree` tinyint(1) DEFAULT '0',
  `crud` tinyint(1) DEFAULT '1',
  `remark` varchar(255) DEFAULT NULL,
  `is_data_scope` tinyint DEFAULT NULL,
  `is_actions` tinyint DEFAULT NULL,
  `is_auth` tinyint DEFAULT NULL,
  `is_logical_delete` varchar(1) DEFAULT NULL,
  `logical_delete` tinyint(1) DEFAULT NULL,
  `logical_delete_column` varchar(128) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`table_id`),
  KEY `idx_sys_tables_deleted_at` (`deleted_at`),
  KEY `idx_sys_tables_create_by` (`create_by`),
  KEY `idx_sys_tables_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_tables
-- ----------------------------
BEGIN;
INSERT INTO `sys_tables` VALUES (6, 'sys_user', 'SysUser', 'SysUser', 'crud', 'admin', 'sys-user', '', 'sysUser', 'SysUser', 'wenjianzhang', 'user_id', 'UserId', 'userId', '', '', '', '', 0, 1, '', 1, 2, 1, '1', 1, 'is_del', '2023-08-10 15:30:32.394', '2023-08-10 15:30:32.394', NULL, 0, 0);
INSERT INTO `sys_tables` VALUES (9, 'vpn_node', '节点管理', 'VpnNode', 'crud', 'vpn', 'vpn-node', '', 'vpnNode', '节点管理', 'wenjianzhang', 'id', 'Id', 'id', '', '', '', '', 0, 1, '', 1, 2, 1, '1', 1, 'is_del', '2023-08-10 19:41:04.460', '2023-08-10 19:56:13.217', NULL, 0, 0);
INSERT INTO `sys_tables` VALUES (10, 'vpn_server', '服务器管理', 'VpnServer', 'crud', 'vpn', 'vpn-server', '', 'vpnServer', '服务器管理', 'wenjianzhang', 'id', 'Id', 'id', '', '', '', '', 0, 1, '', 1, 2, 1, '1', 1, 'is_del', '2023-08-10 19:41:04.479', '2023-08-10 19:56:41.183', NULL, 0, 0);
INSERT INTO `sys_tables` VALUES (12, 'vpn_node_other', '节点注释', 'VpnNodeOther', 'crud', 'vpn', 'vpn-node-other', '', 'vpnNodeOther', '节点注释', 'wenjianzhang', 'id', 'Id', 'id', '', '', '', '', 0, 1, '', 1, 2, 1, '1', 1, 'is_del', '2023-08-13 19:04:26.643', '2023-08-13 19:04:37.885', NULL, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编码',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(128) DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(128) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `role_id` bigint DEFAULT NULL COMMENT '角色ID',
  `salt` varchar(255) DEFAULT NULL COMMENT '加盐',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `dept_id` bigint DEFAULT NULL COMMENT '部门',
  `post_id` bigint DEFAULT NULL COMMENT '岗位',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` varchar(4) DEFAULT NULL COMMENT '状态',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`user_id`),
  KEY `idx_sys_user_create_by` (`create_by`),
  KEY `idx_sys_user_update_by` (`update_by`),
  KEY `idx_sys_user_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 'zhangwj', '$2a$10$ifu6NR9zhTBq5pGRY1xXAuPXTUS8zcPAtg.tXYdVq57PkIYFMiTym', 'zhangwj', '13818888888', 1, '', '', '1', '1@qq.com', 1, 1, '1', '2', 1, 1, '2021-05-13 19:56:37.914', '2023-08-26 19:05:36.796', NULL);
INSERT INTO `sys_user` VALUES (2, 'xiaobai', '$2a$10$.7.h2b2mVaLnLHd.BU7x1.9sey6QtFVxvqCMNyy6KK/btSmk1f8oy', 'xiaobai', '13733345677', 2, '', '', '0', 'xiaobai@gmail.com', 1, 1, '', '2', 1, 0, '2023-08-20 13:08:47.311', '2023-08-20 13:10:17.387', '2023-08-20 13:55:15.951');
INSERT INTO `sys_user` VALUES (3, 'yoyoyo', '$2a$10$hnHHR5O2FG0HHBeh/bgpLebLQFjZcIxJRZoq1hRgjUgUfgmn07wLy', 'yoyoyo', '13556677766', 4, '', '', '', 'yoyoyo@gmail.com', 1, 0, '', '2', 1, 0, '2023-08-20 13:55:09.779', '2023-08-20 19:31:17.467', NULL);
INSERT INTO `sys_user` VALUES (4, 'ceshi', '$2a$10$dX6n3rajjxjZ6EzNUvZ2YedyAb6YozRMlg2X9F0N7tzenm6.LK3Pu', 'ceshi', '15655566555', 5, '', '', '', 'ceshi@gmail.com', 1, 0, '', '2', 1, 0, '2023-08-20 13:57:10.028', '2023-08-20 19:31:22.141', '2023-08-21 11:38:23.862');
INSERT INTO `sys_user` VALUES (5, 'ceshi1', '$2a$10$7NckTMnYkttpWKc514RcRuusg4I9MGAGnLPT3XNtpGIap8w6NyZbW', 'ceshi1', '', 5, '', '', '', 'ceshi1@gmail.com', 0, 0, 'ceshi1', '2', 3, 0, '2023-08-21 11:38:40.210', '2023-08-21 11:38:40.210', NULL);
COMMIT;

-- ----------------------------
-- Table structure for vpn_node
-- ----------------------------
DROP TABLE IF EXISTS `vpn_node`;
CREATE TABLE `vpn_node` (
  `id` int NOT NULL AUTO_INCREMENT,
  `up` varchar(255) DEFAULT NULL COMMENT '上行流量',
  `down` varchar(255) DEFAULT NULL COMMENT '下行流量',
  `transit_server_id` int DEFAULT NULL COMMENT '中转服务器ID',
  `transit_port` int DEFAULT NULL COMMENT '中转端口',
  `server_id` int DEFAULT NULL COMMENT '服务器ID',
  `output_listen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '出口IP',
  `output_auto` int DEFAULT NULL,
  `port` int DEFAULT NULL COMMENT '监听端口',
  `protocol` varchar(255) DEFAULT NULL COMMENT '协议',
  `settings` varchar(255) DEFAULT NULL COMMENT '配置',
  `stream_settings` varchar(255) DEFAULT NULL COMMENT '传输配置',
  `sniffing` varchar(255) DEFAULT NULL COMMENT '特殊配置',
  `status` int DEFAULT NULL COMMENT '状态 -1离线 1在线',
  `created_at` datetime DEFAULT NULL COMMENT '创建日期',
  `updated_at` datetime DEFAULT NULL COMMENT '修改日期',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除日期',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `transit_protocol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='节点管理';

-- ----------------------------
-- Records of vpn_node
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for vpn_node_other
-- ----------------------------
DROP TABLE IF EXISTS `vpn_node_other`;
CREATE TABLE `vpn_node_other` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `node_id` int DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL COMMENT '创建日期',
  `updated_at` datetime DEFAULT NULL COMMENT '修改日期',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除日期',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='节点注释';

-- ----------------------------
-- Records of vpn_node_other
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for vpn_server
-- ----------------------------
DROP TABLE IF EXISTS `vpn_server`;
CREATE TABLE `vpn_server` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_ids` json DEFAULT NULL COMMENT '授权用户',
  `server_name` varchar(255) DEFAULT NULL COMMENT '服务器名称',
  `server_ip` varchar(255) DEFAULT NULL COMMENT '服务器IP',
  `server_ssh_prot` int DEFAULT NULL COMMENT '服务器ssh端口',
  `server_ssh_user` varchar(255) DEFAULT NULL COMMENT '用户名',
  `server_ssh_passwrod` varchar(255) DEFAULT NULL COMMENT '服务器ssh密码',
  `server_ssh_public_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '服务器ssh秘钥',
  `server_ssh_login_type` varchar(255) DEFAULT NULL COMMENT '登录方式 password ro  public_key',
  `is_adsl` int DEFAULT '-1' COMMENT 'ADSL服务器 -1不是 1 是的',
  `area` varchar(255) DEFAULT NULL COMMENT '服务器地区',
  `vpn_prot_scope` json DEFAULT NULL COMMENT 'vpn使用端口范围',
  `vpn_prot_ing` int DEFAULT NULL COMMENT '当前使用位置',
  `status` int DEFAULT NULL COMMENT '状态 -1离线 1在线',
  `created_at` datetime DEFAULT NULL COMMENT '创建日期',
  `updated_at` datetime DEFAULT NULL COMMENT '修改日期',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除日期',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `ips` text,
  `transit` int DEFAULT NULL COMMENT '-1 不允许 1允许',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='服务器管理';

-- ----------------------------
-- Records of vpn_server
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
