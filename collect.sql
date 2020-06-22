/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : collect

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-06-22 08:08:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Index', 'feather icon-bar-chart-2', '/', '2020-06-21 12:44:18', null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', 'Admin', 'feather icon-settings', '', '2020-06-21 12:44:18', null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', 'Users', '', 'auth/users', '2020-06-21 12:44:18', null);
INSERT INTO `admin_menu` VALUES ('4', '2', '4', 'Roles', '', 'auth/roles', '2020-06-21 12:44:18', null);
INSERT INTO `admin_menu` VALUES ('5', '2', '5', 'Permission', '', 'auth/permissions', '2020-06-21 12:44:18', null);
INSERT INTO `admin_menu` VALUES ('6', '2', '6', 'Menu', '', 'auth/menu', '2020-06-21 12:44:18', null);
INSERT INTO `admin_menu` VALUES ('7', '2', '7', 'Operation log', '', 'auth/logs', '2020-06-21 12:44:18', null);
INSERT INTO `admin_menu` VALUES ('8', '0', '8', '首页轮播', 'fa-adjust', 'swipe', '2020-06-21 14:51:06', '2020-06-21 14:51:06');
INSERT INTO `admin_menu` VALUES ('9', '0', '9', '类别管理', 'fa-address-book-o', 'cate', '2020-06-21 15:03:54', '2020-06-21 15:03:54');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-21 13:04:05', '2020-06-21 13:04:05');
INSERT INTO `admin_operation_log` VALUES ('2', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"3igKRsWy5nYJBkcT0heXDxa6eilYtTVS9rx5ypLN\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-21 13:04:12', '2020-06-21 13:04:12');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-06-21 13:04:12', '2020-06-21 13:04:12');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-06-21 14:41:57', '2020-06-21 14:41:57');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 14:44:14', '2020-06-21 14:44:14');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 14:44:16', '2020-06-21 14:44:16');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"swipe\"}', '2020-06-21 14:46:15', '2020-06-21 14:46:15');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"swipe\",\"exist-table\":\"0\",\"model_name\":\"App\\\\Models\\\\Swipe\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SwipeController\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"id\",\"translation\":null,\"type\":\"string\",\"key\":\"unique\",\"default\":null,\"comment\":null},{\"name\":\"img\",\"translation\":\"\\u56fe\\u7247\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u56fe\\u7247\"}],\"primary_key\":\"id\",\"_token\":\"MiNbOpLC27vZLWetolPyfji4i1UgeDieXigpczYA\"}', '2020-06-21 14:48:08', '2020-06-21 14:48:08');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-06-21 14:48:09', '2020-06-21 14:48:09');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 14:48:28', '2020-06-21 14:48:28');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 14:48:30', '2020-06-21 14:48:30');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-06-21 14:50:19', '2020-06-21 14:50:19');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 14:50:45', '2020-06-21 14:50:45');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u9996\\u9875\\u8f6e\\u64ad\",\"icon\":\"fa-adjust\",\"uri\":\"swipe\",\"roles\":[null],\"permissions\":null,\"_token\":\"MiNbOpLC27vZLWetolPyfji4i1UgeDieXigpczYA\"}', '2020-06-21 14:51:06', '2020-06-21 14:51:06');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 14:51:07', '2020-06-21 14:51:07');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-21 14:51:09', '2020-06-21 14:51:09');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 14:51:11', '2020-06-21 14:51:11');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/swipe/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 14:51:14', '2020-06-21 14:51:14');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/swipe', 'POST', '127.0.0.1', '{\"_id\":\"IiGefxhUEaLW6a7n\",\"_token\":\"MiNbOpLC27vZLWetolPyfji4i1UgeDieXigpczYA\",\"upload_column\":\"img\",\"id\":\"WU_FILE_0\",\"name\":\"psc.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sat Apr 18 2020 07:39:23 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"35273\"}', '2020-06-21 14:51:29', '2020-06-21 14:51:29');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/swipe', 'POST', '127.0.0.1', '{\"_id\":\"IiGefxhUEaLW6a7n\",\"_token\":\"MiNbOpLC27vZLWetolPyfji4i1UgeDieXigpczYA\",\"upload_column\":\"img\",\"id\":\"WU_FILE_0\",\"name\":\"psc.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sat Apr 18 2020 07:39:23 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"35273\"}', '2020-06-21 14:52:04', '2020-06-21 14:52:04');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/swipe', 'POST', '127.0.0.1', '{\"img\":\"images\\/b8de9c6d415f135e37fea9b3c8394018.jpg\",\"file-img\":null,\"_file_\":null,\"file\":null,\"_token\":\"MiNbOpLC27vZLWetolPyfji4i1UgeDieXigpczYA\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/swipe\"}', '2020-06-21 14:52:06', '2020-06-21 14:52:06');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 14:52:07', '2020-06-21 14:52:07');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-06-21 14:52:50', '2020-06-21 14:52:50');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/swipe/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 14:52:54', '2020-06-21 14:52:54');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/swipe/1/edit', 'GET', '127.0.0.1', '[]', '2020-06-21 14:53:15', '2020-06-21 14:53:15');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 14:53:17', '2020-06-21 14:53:17');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-06-21 14:53:19', '2020-06-21 14:53:19');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-06-21 14:53:29', '2020-06-21 14:53:29');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-06-21 14:53:57', '2020-06-21 14:53:57');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 14:54:02', '2020-06-21 14:54:02');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 14:54:03', '2020-06-21 14:54:03');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-06-21 14:58:15', '2020-06-21 14:58:15');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 14:58:17', '2020-06-21 14:58:17');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"categories\",\"_token\":\"MiNbOpLC27vZLWetolPyfji4i1UgeDieXigpczYA\"}', '2020-06-21 14:58:20', '2020-06-21 14:58:20');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"categories\"}', '2020-06-21 14:58:21', '2020-06-21 14:58:21');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"categories\",\"exist-table\":\"collect|categories\",\"model_name\":\"App\\\\Models\\\\Category\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CategoryController\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"name\",\"translation\":null,\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"parent_id\",\"translation\":null,\"type\":\"unsignedBigInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"is_directory\",\"translation\":null,\"type\":\"tinyInteger\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"level\",\"translation\":null,\"type\":\"unsignedInteger\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"path\",\"translation\":null,\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"MiNbOpLC27vZLWetolPyfji4i1UgeDieXigpczYA\"}', '2020-06-21 14:58:36', '2020-06-21 14:58:36');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-06-21 14:58:37', '2020-06-21 14:58:37');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 15:03:25', '2020-06-21 15:03:25');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u7c7b\\u522b\\u7ba1\\u7406\",\"icon\":\"fa-address-book-o\",\"uri\":\"cate\",\"roles\":[null],\"permissions\":null,\"_token\":\"MiNbOpLC27vZLWetolPyfji4i1UgeDieXigpczYA\"}', '2020-06-21 15:03:54', '2020-06-21 15:03:54');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 15:03:55', '2020-06-21 15:03:55');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-21 15:03:57', '2020-06-21 15:03:57');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 15:03:59', '2020-06-21 15:03:59');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-06-21 15:05:34', '2020-06-21 15:05:34');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-06-21 15:06:59', '2020-06-21 15:06:59');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-06-21 15:07:41', '2020-06-21 15:07:41');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-06-21 15:07:43', '2020-06-21 15:07:43');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-06-21 15:07:44', '2020-06-21 15:07:44');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-06-21 15:08:01', '2020-06-21 15:08:01');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-06-21 15:08:02', '2020-06-21 15:08:02');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-06-21 15:09:10', '2020-06-21 15:09:10');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-06-21 15:09:51', '2020-06-21 15:09:51');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-06-21 15:10:36', '2020-06-21 15:10:36');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-06-21 15:13:30', '2020-06-21 15:13:30');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-06-21 15:14:43', '2020-06-21 15:14:43');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_token\":\"MiNbOpLC27vZLWetolPyfji4i1UgeDieXigpczYA\",\"_parent_id_\":\"1\",\"_tier_\":\"1\",\"_children_page_1\":\"1\"}', '2020-06-21 15:14:47', '2020-06-21 15:14:47');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_parent_id_\":\"5\",\"_tier_\":\"2\",\"_token\":\"MiNbOpLC27vZLWetolPyfji4i1UgeDieXigpczYA\",\"_children_page_5\":\"1\"}', '2020-06-21 15:14:49', '2020-06-21 15:14:49');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_parent_id_\":\"6\",\"_tier_\":\"2\",\"_token\":\"MiNbOpLC27vZLWetolPyfji4i1UgeDieXigpczYA\",\"_children_page_6\":\"1\"}', '2020-06-21 15:14:50', '2020-06-21 15:14:50');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_parent_id_\":\"7\",\"_tier_\":\"2\",\"_token\":\"MiNbOpLC27vZLWetolPyfji4i1UgeDieXigpczYA\",\"_children_page_7\":\"1\"}', '2020-06-21 15:14:51', '2020-06-21 15:14:51');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-21 16:45:28', '2020-06-21 16:45:28');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'Auth management', 'auth-management', '', '', '1', '0', '2020-06-21 12:44:18', null);
INSERT INTO `admin_permissions` VALUES ('2', 'Users', 'users', '', '/auth/users*', '2', '1', '2020-06-21 12:44:18', null);
INSERT INTO `admin_permissions` VALUES ('3', 'Roles', 'roles', '', '/auth/roles*', '3', '1', '2020-06-21 12:44:18', null);
INSERT INTO `admin_permissions` VALUES ('4', 'Permissions', 'permissions', '', '/auth/permissions*', '4', '1', '2020-06-21 12:44:18', null);
INSERT INTO `admin_permissions` VALUES ('5', 'Menu', 'menu', '', '/auth/menu*', '5', '1', '2020-06-21 12:44:18', null);
INSERT INTO `admin_permissions` VALUES ('6', 'Operation log', 'operation-log', '', '/auth/logs*', '6', '1', '2020-06-21 12:44:18', null);

-- ----------------------------
-- Table structure for admin_permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission_menu`;
CREATE TABLE `admin_permission_menu` (
  `permission_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_permission_menu_permission_id_menu_id_unique` (`permission_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permission_menu
-- ----------------------------

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2020-06-21 12:44:18', '2020-06-21 12:44:19');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_menu_role_id_menu_id_unique` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_permissions_role_id_permission_id_unique` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_users_role_id_user_id_unique` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$JbkfAw5dQRD9zPweB7E8lejqQd7j/WE6cR9cbuUNpcXZBfZN2.TRe', 'Administrator', null, null, '2020-06-21 12:44:18', '2020-06-21 12:44:18');

-- ----------------------------
-- Table structure for cart_items
-- ----------------------------
DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL COMMENT '商品id',
  `amount` int(11) NOT NULL COMMENT '数量',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cart_items
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) unsigned DEFAULT '0',
  `is_directory` tinyint(1) NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '手机配件', '0', '1', '0', '-', '2020-05-10 11:19:57', '2020-05-10 11:19:57');
INSERT INTO `categories` VALUES ('2', '手机壳', '1', '0', '1', '-1-', '2020-05-10 11:19:57', '2020-05-10 11:19:57');
INSERT INTO `categories` VALUES ('3', '贴膜', '1', '0', '1', '-1-', '2020-05-10 11:19:57', '2020-05-10 11:19:57');
INSERT INTO `categories` VALUES ('4', '存储卡', '1', '0', '1', '-1-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('5', '数据线', '1', '0', '1', '-1-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('6', '充电器', '1', '0', '1', '-1-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('7', '耳机', '1', '1', '1', '-1-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('8', '有线耳机', '7', '0', '2', '-1-7-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('9', '蓝牙耳机', '7', '0', '2', '-1-7-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('10', '电脑配件', '0', '1', '0', '-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('11', '显示器', '10', '0', '1', '-10-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('12', '显卡', '10', '0', '1', '-10-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('13', '内存', '10', '0', '1', '-10-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('14', 'CPU', '10', '0', '1', '-10-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('15', '主板', '10', '0', '1', '-10-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('16', '硬盘', '10', '0', '1', '-10-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('17', '电脑整机', '0', '1', '0', '-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('18', '笔记本', '17', '0', '1', '-17-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('19', '台式机', '17', '0', '1', '-17-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('20', '平板电脑', '17', '0', '1', '-17-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('21', '一体机', '17', '0', '1', '-17-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('22', '服务器', '17', '0', '1', '-17-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('23', '工作站', '17', '0', '1', '-17-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('24', '手机通讯', '0', '1', '0', '-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('25', '智能机', '24', '0', '1', '-24-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('26', '老人机', '24', '0', '1', '-24-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('27', '对讲机', '24', '0', '1', '-24-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('4', '2019_08_19_000000_create_failed_jobs_table', '1');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商户订单号',
  `user_id` int(11) NOT NULL COMMENT '用户',
  `address` text COLLATE utf8mb4_unicode_ci,
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `remark` text COLLATE utf8mb4_unicode_ci COMMENT '订单备注',
  `paid_at` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `payment_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信订单号',
  `status` tinyint(255) DEFAULT NULL COMMENT '1未支付2待发货3已发货',
  `ship_data` text COLLATE utf8mb4_unicode_ci COMMENT '物流数据',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `no` (`no`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品图片',
  `sold_count` tinyint(10) DEFAULT NULL COMMENT '销量',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `stock` tinyint(10) DEFAULT NULL COMMENT '库存',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------

-- ----------------------------
-- Table structure for swipe
-- ----------------------------
DROP TABLE IF EXISTS `swipe`;
CREATE TABLE `swipe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '//图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of swipe
-- ----------------------------
INSERT INTO `swipe` VALUES ('1', '[\"images\\/b8de9c6d415f135e37fea9b3c8394018.jpg\"]');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for user_addresses
-- ----------------------------
DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE `user_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '该地址所属的用户',
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '省',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '市',
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '区',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_addresses
-- ----------------------------

-- ----------------------------
-- Table structure for user_product
-- ----------------------------
DROP TABLE IF EXISTS `user_product`;
CREATE TABLE `user_product` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '用户',
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_product
-- ----------------------------
