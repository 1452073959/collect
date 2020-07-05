/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50724
Source Host           : 127.0.0.1:3306
Source Database       : collect

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-07-05 15:52:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司名称',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '文字内容',
  `tel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES ('1', '公司名称', 'images/9.png', '文字内容那就是的看法', '15766925847');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `admin_menu` VALUES ('9', '0', '10', '类别管理', 'fa-address-book-o', 'cate', '2020-06-21 15:03:54', '2020-07-03 15:12:07');
INSERT INTO `admin_menu` VALUES ('10', '0', '12', '商品管理', 'fa-archive', 'product', '2020-07-01 13:33:38', '2020-07-03 15:12:07');
INSERT INTO `admin_menu` VALUES ('11', '0', '13', '订单管理', 'fa-asl-interpreting', 'order', '2020-07-02 14:15:26', '2020-07-03 15:12:07');
INSERT INTO `admin_menu` VALUES ('12', '0', '14', '帮助中心', 'fa-angellist', 'help', '2020-07-02 16:31:41', '2020-07-03 15:12:07');
INSERT INTO `admin_menu` VALUES ('13', '0', '15', '关于我们', 'fa-area-chart', 'about', '2020-07-02 16:51:07', '2020-07-03 15:12:07');
INSERT INTO `admin_menu` VALUES ('14', '0', '11', '系统推送', 'fa-arrow-circle-right', 'push', '2020-07-03 14:12:53', '2020-07-03 15:12:07');
INSERT INTO `admin_menu` VALUES ('15', '0', '9', '视频', 'fa-bullhorn', 'video', '2020-07-03 15:11:02', '2020-07-03 15:12:07');

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
) ENGINE=InnoDB AUTO_INCREMENT=499 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `admin_operation_log` VALUES ('60', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"Y1meMBYBduaU789uDxr525YB0h2O4jPIdmTcvrxR\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-01 11:52:53', '2020-07-01 11:52:53');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-01 11:52:53', '2020-07-01 11:52:53');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 11:52:56', '2020-07-01 11:52:56');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 11:52:58', '2020-07-01 11:52:58');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 11:52:59', '2020-07-01 11:52:59');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 11:55:47', '2020-07-01 11:55:47');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 11:55:50', '2020-07-01 11:55:50');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 11:59:21', '2020-07-01 11:59:21');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 11:59:22', '2020-07-01 11:59:22');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/cate/1,10,17,24', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 11:59:30', '2020-07-01 11:59:30');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 11:59:31', '2020-07-01 11:59:31');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 11:59:34', '2020-07-01 11:59:34');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:07:23', '2020-07-01 12:07:23');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-01 12:07:36', '2020-07-01 12:07:36');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_parent_id_\":\"8\",\"_tier_\":\"1\",\"_children_page_8\":\"1\"}', '2020-07-01 12:07:39', '2020-07-01 12:07:39');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:07:42', '2020-07-01 12:07:42');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:16:28', '2020-07-01 12:16:28');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:16:33', '2020-07-01 12:16:33');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:16:35', '2020-07-01 12:16:35');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:16:37', '2020-07-01 12:16:37');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:18:42', '2020-07-01 12:18:42');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:28:05', '2020-07-01 12:28:05');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:28:08', '2020-07-01 12:28:08');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_parent_id_\":\"8\",\"_tier_\":\"1\",\"_children_page_8\":\"1\"}', '2020-07-01 12:28:12', '2020-07-01 12:28:12');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:28:15', '2020-07-01 12:28:15');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:28:51', '2020-07-01 12:28:51');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:29:43', '2020-07-01 12:29:43');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:29:47', '2020-07-01 12:29:47');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:30:32', '2020-07-01 12:30:32');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:30:46', '2020-07-01 12:30:46');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:31:31', '2020-07-01 12:31:31');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:33:00', '2020-07-01 12:33:00');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:33:41', '2020-07-01 12:33:41');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:34:09', '2020-07-01 12:34:09');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:40:04', '2020-07-01 12:40:04');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:40:16', '2020-07-01 12:40:16');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:40:35', '2020-07-01 12:40:35');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:41:06', '2020-07-01 12:41:06');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:41:36', '2020-07-01 12:41:36');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:42:07', '2020-07-01 12:42:07');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:43:03', '2020-07-01 12:43:03');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:43:14', '2020-07-01 12:43:14');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:43:27', '2020-07-01 12:43:27');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:44:55', '2020-07-01 12:44:55');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:45:19', '2020-07-01 12:45:19');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:46:06', '2020-07-01 12:46:06');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:46:17', '2020-07-01 12:46:17');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:46:49', '2020-07-01 12:46:49');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:49:31', '2020-07-01 12:49:31');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u7cbe\\u54c1\\u5178\\u85cf\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 12:49:50', '2020-07-01 12:49:50');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u7cbe\\u54c1\\u5178\\u85cf\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 12:50:16', '2020-07-01 12:50:16');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:50:16', '2020-07-01 12:50:16');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-01 12:50:19', '2020-07-01 12:50:19');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-01 12:50:46', '2020-07-01 12:50:46');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_parent_id_\":\"1\",\"_tier_\":\"1\",\"_children_page_1\":\"1\"}', '2020-07-01 12:50:48', '2020-07-01 12:50:48');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:51:09', '2020-07-01 12:51:09');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u539f\\u7f18\\u5178\\u85cf\",\"parent_id\":\"28\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 12:51:28', '2020-07-01 12:51:28');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:51:28', '2020-07-01 12:51:28');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-01 12:51:31', '2020-07-01 12:51:31');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/cate/1,2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 12:51:47', '2020-07-01 12:51:47');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:51:47', '2020-07-01 12:51:47');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:52:16', '2020-07-01 12:52:16');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u573a\\u9986\\u8bad\\u89c8\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 12:53:24', '2020-07-01 12:53:24');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u573a\\u9986\\u8bad\\u89c8\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 12:54:13', '2020-07-01 12:54:13');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:54:14', '2020-07-01 12:54:14');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:54:59', '2020-07-01 12:54:59');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u9876\\u7ea7\\u5206\\u7c7b\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 12:55:07', '2020-07-01 12:55:07');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:55:08', '2020-07-01 12:55:08');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-01 12:56:15', '2020-07-01 12:56:15');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:56:24', '2020-07-01 12:56:24');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u65e0\\u6cd5\\u4f7f\\u7528\\u76ee\\u7684\\u5730\\u5217\\u8868\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 12:56:30', '2020-07-01 12:56:30');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:56:32', '2020-07-01 12:56:32');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 12:56:56', '2020-07-01 12:56:56');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u65e0\\u6cd5\\u4f7f\\u7528\\u76ee\\u7684\\u5730\\u5217\\u8868\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 12:57:01', '2020-07-01 12:57:01');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:57:44', '2020-07-01 12:57:44');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 12:58:41', '2020-07-01 12:58:41');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u65e0\\u6cd5\\u4f7f\\u7528\\u76ee\\u7684\\u5730\\u5217\\u8868\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 13:00:27', '2020-07-01 13:00:27');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 13:02:04', '2020-07-01 13:02:04');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 13:02:38', '2020-07-01 13:02:38');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 13:02:49', '2020-07-01 13:02:49');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/cate/create', 'GET', '127.0.0.1', '[]', '2020-07-01 13:03:03', '2020-07-01 13:03:03');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u65e0\\u6cd5\\u4f7f\\u7528\\u76ee\\u7684\\u5730\\u5217\\u8868\",\"parent_id\":\"31\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 13:03:19', '2020-07-01 13:03:19');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:03:20', '2020-07-01 13:03:20');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:03:32', '2020-07-01 13:03:32');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u65e0\\u6cd5\\u4f7f\\u7528\\u76ee\\u7684\\u5730\\u5217\\u8868\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:03:38', '2020-07-01 13:03:38');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u65e0\\u6cd5\\u4f7f\\u7528\\u76ee\\u7684\\u5730\\u5217\\u8868\",\"parent_id\":\"30\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:03:54', '2020-07-01 13:03:54');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:03:55', '2020-07-01 13:03:55');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_children_page_30\":\"1\"}', '2020-07-01 13:03:57', '2020-07-01 13:03:57');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/cate/grid-extend.js.map', 'GET', '127.0.0.1', '[]', '2020-07-01 13:03:58', '2020-07-01 13:03:58');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/cate/31', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 13:04:07', '2020-07-01 13:04:07');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:04:07', '2020-07-01 13:04:07');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-01 13:06:09', '2020-07-01 13:06:09');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:06:13', '2020-07-01 13:06:13');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"net user\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:06:18', '2020-07-01 13:06:18');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"net user\",\"parent_id\":\"33\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:06:33', '2020-07-01 13:06:33');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:06:34', '2020-07-01 13:06:34');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-01 13:10:20', '2020-07-01 13:10:20');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:10:24', '2020-07-01 13:10:24');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"123\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:10:28', '2020-07-01 13:10:28');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"123\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:10:42', '2020-07-01 13:10:42');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:10:43', '2020-07-01 13:10:43');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-01 13:11:00', '2020-07-01 13:11:00');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:11:06', '2020-07-01 13:11:06');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"1212\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:11:10', '2020-07-01 13:11:10');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:11:10', '2020-07-01 13:11:10');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:11:41', '2020-07-01 13:11:41');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"1111\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:11:46', '2020-07-01 13:11:46');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"1111\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:13:12', '2020-07-01 13:13:12');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"1111\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:14:24', '2020-07-01 13:14:24');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:14:24', '2020-07-01 13:14:24');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:16:16', '2020-07-01 13:16:16');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"123\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:16:34', '2020-07-01 13:16:34');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"123\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:17:06', '2020-07-01 13:17:06');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:17:07', '2020-07-01 13:17:07');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:17:11', '2020-07-01 13:17:11');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"456\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:17:30', '2020-07-01 13:17:30');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:17:30', '2020-07-01 13:17:30');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:21:21', '2020-07-01 13:21:21');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"net user\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:21:26', '2020-07-01 13:21:26');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"net user\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:21:37', '2020-07-01 13:21:37');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"net user\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:21:53', '2020-07-01 13:21:53');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"net user\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:21:54', '2020-07-01 13:21:54');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"net user\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:22:02', '2020-07-01 13:22:02');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"net user\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:22:31', '2020-07-01 13:22:31');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"net user11\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:22:40', '2020-07-01 13:22:40');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"net user11\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:23:23', '2020-07-01 13:23:23');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"net user11\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:23:43', '2020-07-01 13:23:43');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:23:44', '2020-07-01 13:23:44');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-01 13:24:07', '2020-07-01 13:24:07');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:24:29', '2020-07-01 13:24:29');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u65e0\\u6cd5\\u4f7f\\u7528\\u76ee\\u7684\\u5730\\u5217\\u8868\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:24:34', '2020-07-01 13:24:34');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u65e0\\u6cd5\\u4f7f\\u7528\\u76ee\\u7684\\u5730\\u5217\\u8868\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:24:40', '2020-07-01 13:24:40');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u65e0\\u6cd5\\u4f7f\\u7528\\u76ee\\u7684\\u5730\\u5217\\u8868\",\"parent_id\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:24:49', '2020-07-01 13:24:49');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:24:49', '2020-07-01 13:24:49');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/cate/43,44', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 13:25:02', '2020-07-01 13:25:02');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:25:02', '2020-07-01 13:25:02');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-01 13:25:46', '2020-07-01 13:25:46');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:25:52', '2020-07-01 13:25:52');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u6c34\\u6728\\u6052\\u7f18\",\"parent_id\":\"28\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:26:19', '2020-07-01 13:26:19');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:26:20', '2020-07-01 13:26:20');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-01 13:26:23', '2020-07-01 13:26:23');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:26:32', '2020-07-01 13:26:32');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u539f\\u7f18\\u7389\\u79c0\",\"parent_id\":\"28\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 13:26:42', '2020-07-01 13:26:42');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:26:43', '2020-07-01 13:26:43');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-01 13:26:47', '2020-07-01 13:26:47');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-01 13:26:49', '2020-07-01 13:26:49');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_children_page_30\":\"1\"}', '2020-07-01 13:26:59', '2020-07-01 13:26:59');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-01 13:27:25', '2020-07-01 13:27:25');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-01 13:27:28', '2020-07-01 13:27:28');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_children_page_30\":\"1\"}', '2020-07-01 13:27:29', '2020-07-01 13:27:29');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:27:41', '2020-07-01 13:27:41');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:28:04', '2020-07-01 13:28:04');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:28:06', '2020-07-01 13:28:06');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"products\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 13:28:20', '2020-07-01 13:28:20');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"products\"}', '2020-07-01 13:28:21', '2020-07-01 13:28:21');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"products\",\"exist-table\":\"collect|products\",\"model_name\":\"App\\\\Models\\\\Product\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProductController\",\"create\":[\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"cid\",\"translation\":null,\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"title\",\"translation\":\"\\u5546\\u54c1\\u540d\\u79f0\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5546\\u54c1\\u540d\\u79f0\"},{\"name\":\"description\",\"translation\":\"\\u63cf\\u8ff0\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u63cf\\u8ff0\"},{\"name\":\"image\",\"translation\":\"\\u5546\\u54c1\\u56fe\\u7247\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5546\\u54c1\\u56fe\\u7247\"},{\"name\":\"sold_count\",\"translation\":\"\\u9500\\u91cf\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u9500\\u91cf\"},{\"name\":\"price\",\"translation\":\"\\u4ef7\\u683c\",\"type\":\"decimal\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u4ef7\\u683c\"},{\"name\":\"stock\",\"translation\":\"\\u5e93\\u5b58\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5e93\\u5b58\"},{\"name\":\"recommended\",\"translation\":\"\\u63a8\\u8350\\u4f4d1\\u54262\\u662f\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u63a8\\u8350\\u4f4d1\\u54262\\u662f\"},{\"name\":\"status\",\"translation\":\"\\u72b6\\u6001\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u72b6\\u6001\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 13:28:30', '2020-07-01 13:28:30');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-01 13:28:33', '2020-07-01 13:28:33');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-01 13:28:42', '2020-07-01 13:28:42');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:28:46', '2020-07-01 13:28:46');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:28:49', '2020-07-01 13:28:49');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:28:54', '2020-07-01 13:28:54');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:28:56', '2020-07-01 13:28:56');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"products\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 13:29:00', '2020-07-01 13:29:00');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"products\"}', '2020-07-01 13:29:01', '2020-07-01 13:29:01');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"products\",\"exist-table\":\"collect|products\",\"model_name\":\"App\\\\Models\\\\Product\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProductController\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"cid\",\"translation\":null,\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"title\",\"translation\":\"\\u5546\\u54c1\\u540d\\u79f0\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5546\\u54c1\\u540d\\u79f0\"},{\"name\":\"description\",\"translation\":\"\\u63cf\\u8ff0\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u63cf\\u8ff0\"},{\"name\":\"image\",\"translation\":\"\\u5546\\u54c1\\u56fe\\u7247\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5546\\u54c1\\u56fe\\u7247\"},{\"name\":\"sold_count\",\"translation\":\"\\u9500\\u91cf\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u9500\\u91cf\"},{\"name\":\"price\",\"translation\":\"\\u4ef7\\u683c\",\"type\":\"decimal\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u4ef7\\u683c\"},{\"name\":\"stock\",\"translation\":\"\\u5e93\\u5b58\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5e93\\u5b58\"},{\"name\":\"recommended\",\"translation\":\"\\u63a8\\u8350\\u4f4d1\\u54262\\u662f\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u63a8\\u8350\\u4f4d1\\u54262\\u662f\"},{\"name\":\"status\",\"translation\":\"\\u72b6\\u6001\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u72b6\\u6001\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 13:29:11', '2020-07-01 13:29:11');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-01 13:29:11', '2020-07-01 13:29:11');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"products\",\"exist-table\":\"0\",\"model_name\":\"App\\\\Models\\\\Product\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProductController\",\"create\":[\"migration\",\"lang\"],\"fields\":[{\"name\":\"cid\",\"translation\":null,\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"title\",\"translation\":\"\\u5546\\u54c1\\u540d\\u79f0\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5546\\u54c1\\u540d\\u79f0\"},{\"name\":\"description\",\"translation\":\"\\u63cf\\u8ff0\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u63cf\\u8ff0\"},{\"name\":\"image\",\"translation\":\"\\u5546\\u54c1\\u56fe\\u7247\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5546\\u54c1\\u56fe\\u7247\"},{\"name\":\"sold_count\",\"translation\":\"\\u9500\\u91cf\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u9500\\u91cf\"},{\"name\":\"price\",\"translation\":\"\\u4ef7\\u683c\",\"type\":\"decimal\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u4ef7\\u683c\"},{\"name\":\"stock\",\"translation\":\"\\u5e93\\u5b58\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5e93\\u5b58\"},{\"name\":\"recommended\",\"translation\":\"\\u63a8\\u8350\\u4f4d1\\u54262\\u662f\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u63a8\\u8350\\u4f4d1\\u54262\\u662f\"},{\"name\":\"status\",\"translation\":\"\\u72b6\\u6001\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u72b6\\u6001\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 13:29:18', '2020-07-01 13:29:18');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-01 13:29:18', '2020-07-01 13:29:18');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:33:10', '2020-07-01 13:33:10');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-archive\",\"uri\":\"product\",\"roles\":[null],\"permissions\":null,\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 13:33:38', '2020-07-01 13:33:38');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:33:39', '2020-07-01 13:33:39');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-01 13:33:42', '2020-07-01 13:33:42');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:33:43', '2020-07-01 13:33:43');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:33:46', '2020-07-01 13:33:46');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-07-01 13:33:57', '2020-07-01 13:33:57');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/product/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:35:30', '2020-07-01 13:35:30');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-07-01 13:35:42', '2020-07-01 13:35:42');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-07-01 13:37:03', '2020-07-01 13:37:03');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-07-01 13:37:57', '2020-07-01 13:37:57');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-07-01 13:38:44', '2020-07-01 13:38:44');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-07-01 13:40:23', '2020-07-01 13:40:23');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:44:23', '2020-07-01 13:44:23');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:44:24', '2020-07-01 13:44:24');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/product/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 13:44:30', '2020-07-01 13:44:30');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-07-01 13:52:46', '2020-07-01 13:52:46');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-07-01 13:54:08', '2020-07-01 13:54:08');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 15:05:16', '2020-07-01 15:05:16');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 15:05:17', '2020-07-01 15:05:17');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 15:05:20', '2020-07-01 15:05:20');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u53e4\\u4fdd\\u6536\\u85cf\",\"parent_id\":\"29\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-01 15:05:41', '2020-07-01 15:05:41');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 15:05:41', '2020-07-01 15:05:41');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 15:06:11', '2020-07-01 15:06:11');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/product/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 15:06:13', '2020-07-01 15:06:13');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/product', 'POST', '127.0.0.1', '{\"_id\":\"6PFDXF1iQ8gvFm7I\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"upload_column\":\"image\",\"id\":\"WU_FILE_0\",\"name\":\"01.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Fri Feb 14 2020 17:08:23 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"89441\"}', '2020-07-01 15:08:15', '2020-07-01 15:08:15');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/product', 'POST', '127.0.0.1', '{\"_id\":\"6PFDXF1iQ8gvFm7I\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"upload_column\":\"image\",\"id\":\"WU_FILE_1\",\"name\":\"02.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Fri Feb 14 2020 17:08:36 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"64709\"}', '2020-07-01 15:08:15', '2020-07-01 15:08:15');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/product', 'POST', '127.0.0.1', '{\"cid\":\"47\",\"title\":\"\\u5f69\\u4e91\\u6052\\u901a\\u9aa8\\u738b\\u96d5\\u523b\",\"description\":\"<p>\\u8d2a\\u8d22\\u6709\\u9053\\uff0c\\u597d\\u8272\\u6709\\u54c1\\uff0c\\u535a\\u5b66\\u6709\\u8bc6\\uff0c\\u8bfb\\u4e66\\u6709\\u763e\\uff0c\\u559d\\u9152\\u6709\\u91cf\\uff0c\\u73a9\\u7b11\\u6709\\u5ea6\\uff0c\\u6ca1\\u4e8b\\u4e0d\\u4f1a\\u60f9\\u4e8b\\uff0c\\u6709\\u4e8b\\u4e5f\\u4e0d\\u4f1a\\u6015\\u4e8b \\u5bf9\\u5916\\u662f\\u9876\\u5929\\u7acb\\u5730\\uff0c\\u5bf9\\u5185\\u662f\\u6ca1\\u6709\\u813e\\u6c14\\u7684<br data-mce-bogus=\\\"1\\\"><\\/p>\",\"image\":\"images\\/01.png,images\\/02.png\",\"file-image\":null,\"_file_\":null,\"file\":null,\"price\":\"50\",\"stock\":\"50\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/product\"}', '2020-07-01 15:08:29', '2020-07-01 15:08:29');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/product', 'POST', '127.0.0.1', '{\"cid\":\"47\",\"title\":\"\\u5f69\\u4e91\\u6052\\u901a\\u9aa8\\u738b\\u96d5\\u523b\",\"description\":\"<p>\\u8d2a\\u8d22\\u6709\\u9053\\uff0c\\u597d\\u8272\\u6709\\u54c1\\uff0c\\u535a\\u5b66\\u6709\\u8bc6\\uff0c\\u8bfb\\u4e66\\u6709\\u763e\\uff0c\\u559d\\u9152\\u6709\\u91cf\\uff0c\\u73a9\\u7b11\\u6709\\u5ea6\\uff0c\\u6ca1\\u4e8b\\u4e0d\\u4f1a\\u60f9\\u4e8b\\uff0c\\u6709\\u4e8b\\u4e5f\\u4e0d\\u4f1a\\u6015\\u4e8b \\u5bf9\\u5916\\u662f\\u9876\\u5929\\u7acb\\u5730\\uff0c\\u5bf9\\u5185\\u662f\\u6ca1\\u6709\\u813e\\u6c14\\u7684<br data-mce-bogus=\\\"1\\\"><\\/p>\",\"image\":\"images\\/01.png,images\\/02.png\",\"file-image\":null,\"_file_\":null,\"file\":null,\"price\":\"50\",\"stock\":\"50\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/product\"}', '2020-07-01 15:08:36', '2020-07-01 15:08:36');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/product', 'POST', '127.0.0.1', '{\"cid\":\"47\",\"title\":\"\\u5f69\\u4e91\\u6052\\u901a\\u9aa8\\u738b\\u96d5\\u523b\",\"description\":\"<p>\\u8d2a\\u8d22\\u6709\\u9053\\uff0c\\u597d\\u8272\\u6709\\u54c1\\uff0c\\u535a\\u5b66\\u6709\\u8bc6\\uff0c\\u8bfb\\u4e66\\u6709\\u763e\\uff0c\\u559d\\u9152\\u6709\\u91cf\\uff0c\\u73a9\\u7b11\\u6709\\u5ea6\\uff0c\\u6ca1\\u4e8b\\u4e0d\\u4f1a\\u60f9\\u4e8b\\uff0c\\u6709\\u4e8b\\u4e5f\\u4e0d\\u4f1a\\u6015\\u4e8b \\u5bf9\\u5916\\u662f\\u9876\\u5929\\u7acb\\u5730\\uff0c\\u5bf9\\u5185\\u662f\\u6ca1\\u6709\\u813e\\u6c14\\u7684<br data-mce-bogus=\\\"1\\\"><\\/p>\",\"image\":\"images\\/01.png,images\\/02.png\",\"file-image\":null,\"_file_\":null,\"file\":null,\"price\":\"50\",\"stock\":\"50\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/product\"}', '2020-07-01 15:09:08', '2020-07-01 15:09:08');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 15:09:09', '2020-07-01 15:09:09');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-07-01 15:11:21', '2020-07-01 15:11:21');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-07-01 15:12:01', '2020-07-01 15:12:01');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-07-01 15:12:21', '2020-07-01 15:12:21');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-07-01 15:13:10', '2020-07-01 15:13:10');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-07-01 15:13:50', '2020-07-01 15:13:50');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-07-01 15:14:03', '2020-07-01 15:14:03');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 15:34:34', '2020-07-01 15:34:34');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 15:34:42', '2020-07-01 15:34:42');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"cart_items\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 15:34:57', '2020-07-01 15:34:57');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"cart_items\"}', '2020-07-01 15:34:57', '2020-07-01 15:34:57');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"cart_items\",\"exist-table\":\"collect|cart_items\",\"model_name\":\"App\\\\Models\\\\CartItem\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CartItemController\",\"create\":[\"migration\",\"model\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"user_id\",\"translation\":null,\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"product_id\",\"translation\":\"\\u5546\\u54c1id\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u5546\\u54c1id\"},{\"name\":\"amount\",\"translation\":\"\\u6570\\u91cf\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u6570\\u91cf\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 15:35:14', '2020-07-01 15:35:14');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-01 15:35:16', '2020-07-01 15:35:16');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 15:37:49', '2020-07-01 15:37:49');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 15:37:50', '2020-07-01 15:37:50');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"user_product\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 15:37:59', '2020-07-01 15:37:59');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"user_product\"}', '2020-07-01 15:37:59', '2020-07-01 15:37:59');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"user_product\",\"exist-table\":\"collect|user_product\",\"model_name\":\"App\\\\Models\\\\UserProduct\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\UserProductController\",\"create\":[\"migration\",\"model\",\"lang\"],\"fields\":[{\"name\":\"user_id\",\"translation\":\"\\u7528\\u6237\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u7528\\u6237\"},{\"name\":\"product_id\",\"translation\":\"\\u5546\\u54c1id\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5546\\u54c1id\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 15:39:11', '2020-07-01 15:39:11');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-01 15:39:12', '2020-07-01 15:39:12');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 17:11:11', '2020-07-01 17:11:11');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/product/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 17:11:13', '2020-07-01 17:11:13');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/product', 'POST', '127.0.0.1', '{\"_id\":\"FC9S7VJ1pykS3SeC\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"upload_column\":\"image\",\"id\":\"WU_FILE_0\",\"name\":\"04.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Fri Feb 14 2020 17:09:01 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"59475\"}', '2020-07-01 17:12:04', '2020-07-01 17:12:04');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/product', 'POST', '127.0.0.1', '{\"_id\":\"FC9S7VJ1pykS3SeC\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"upload_column\":\"image\",\"id\":\"WU_FILE_1\",\"name\":\"05.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Fri Feb 14 2020 17:09:09 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"54404\"}', '2020-07-01 17:12:04', '2020-07-01 17:12:04');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/product', 'POST', '127.0.0.1', '{\"cid\":\"47\",\"title\":\"\\u6587\\u73a9\\u6536\\u85cf\\u5546\\u54c1\",\"description\":\"<p>\\u8fd9\\u4f60\\u662f\\u5546\\u54c1\\u63cf\\u8ff0<\\/p>\",\"image\":\"images\\/05.png,images\\/04.png\",\"file-image\":null,\"_file_\":null,\"file\":null,\"price\":\"0.01\",\"stock\":\"50\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/product\"}', '2020-07-01 17:12:13', '2020-07-01 17:12:13');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 17:12:15', '2020-07-01 17:12:15');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 17:15:01', '2020-07-01 17:15:01');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"cart_items\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 17:15:09', '2020-07-01 17:15:09');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"cart_items\"}', '2020-07-01 17:15:09', '2020-07-01 17:15:09');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"cart_items\",\"exist-table\":\"collect|cart_items\",\"model_name\":\"App\\\\Models\\\\CartItem\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CartItemController\",\"create\":[\"migration\",\"model\",\"lang\"],\"fields\":[{\"name\":\"user_id\",\"translation\":null,\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"product_id\",\"translation\":\"\\u5546\\u54c1id\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u5546\\u54c1id\"},{\"name\":\"amount\",\"translation\":\"\\u6570\\u91cf\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u6570\\u91cf\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"LLZjys6gCHbjmsrAQymHJ0wCfA9nMeXXgXKpXN2L\"}', '2020-07-01 17:15:20', '2020-07-01 17:15:20');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-01 17:15:21', '2020-07-01 17:15:21');
INSERT INTO `admin_operation_log` VALUES ('288', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-02 14:13:33', '2020-07-02 14:13:33');
INSERT INTO `admin_operation_log` VALUES ('289', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"0Yk6MWeNWnMhTvbz8OXLchF8UGlmxt097MXm8WUS\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-02 14:13:41', '2020-07-02 14:13:41');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-02 14:13:43', '2020-07-02 14:13:43');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 14:13:51', '2020-07-02 14:13:51');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"order\",\"_token\":\"KRBWLjHwpgR3XTGovdIUiQeXbGWcNeL5NFkPkw81\"}', '2020-07-02 14:13:56', '2020-07-02 14:13:56');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"order\"}', '2020-07-02 14:13:57', '2020-07-02 14:13:57');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"order\",\"exist-table\":\"collect|order\",\"model_name\":\"App\\\\Models\\\\Order\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\OrderController\",\"create\":[\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"no\",\"translation\":\"\\u5546\\u6237\\u8ba2\\u5355\\u53f7\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u5546\\u6237\\u8ba2\\u5355\\u53f7\"},{\"name\":\"user_id\",\"translation\":\"\\u7528\\u6237\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u7528\\u6237\"},{\"name\":\"address\",\"translation\":null,\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"total_amount\",\"translation\":\"\\u8ba2\\u5355\\u91d1\\u989d\",\"type\":\"decimal\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u8ba2\\u5355\\u91d1\\u989d\"},{\"name\":\"remark\",\"translation\":\"\\u8ba2\\u5355\\u5907\\u6ce8\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u8ba2\\u5355\\u5907\\u6ce8\"},{\"name\":\"paid_at\",\"translation\":\"\\u652f\\u4ed8\\u65f6\\u95f4\",\"type\":\"timestamp\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u652f\\u4ed8\\u65f6\\u95f4\"},{\"name\":\"payment_no\",\"translation\":\"\\u5fae\\u4fe1\\u8ba2\\u5355\\u53f7\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5fae\\u4fe1\\u8ba2\\u5355\\u53f7\"},{\"name\":\"status\",\"translation\":\"1\\u672a\\u652f\\u4ed82\\u5f85\\u53d1\\u8d273\\u5df2\\u53d1\\u8d27\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"1\\u672a\\u652f\\u4ed82\\u5f85\\u53d1\\u8d273\\u5df2\\u53d1\\u8d27\"},{\"name\":\"ship_data\",\"translation\":\"\\u7269\\u6d41\\u6570\\u636e\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u7269\\u6d41\\u6570\\u636e\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"KRBWLjHwpgR3XTGovdIUiQeXbGWcNeL5NFkPkw81\"}', '2020-07-02 14:14:18', '2020-07-02 14:14:18');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-02 14:14:21', '2020-07-02 14:14:21');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"order\",\"_token\":\"KRBWLjHwpgR3XTGovdIUiQeXbGWcNeL5NFkPkw81\"}', '2020-07-02 14:14:32', '2020-07-02 14:14:32');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"order\"}', '2020-07-02 14:14:33', '2020-07-02 14:14:33');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"order\",\"exist-table\":\"collect|order\",\"model_name\":\"App\\\\Models\\\\Order\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\OrderController\",\"create\":[\"migration\",\"lang\"],\"fields\":[{\"name\":\"no\",\"translation\":\"\\u5546\\u6237\\u8ba2\\u5355\\u53f7\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u5546\\u6237\\u8ba2\\u5355\\u53f7\"},{\"name\":\"user_id\",\"translation\":\"\\u7528\\u6237\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u7528\\u6237\"},{\"name\":\"address\",\"translation\":null,\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"total_amount\",\"translation\":\"\\u8ba2\\u5355\\u91d1\\u989d\",\"type\":\"decimal\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u8ba2\\u5355\\u91d1\\u989d\"},{\"name\":\"remark\",\"translation\":\"\\u8ba2\\u5355\\u5907\\u6ce8\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u8ba2\\u5355\\u5907\\u6ce8\"},{\"name\":\"paid_at\",\"translation\":\"\\u652f\\u4ed8\\u65f6\\u95f4\",\"type\":\"timestamp\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u652f\\u4ed8\\u65f6\\u95f4\"},{\"name\":\"payment_no\",\"translation\":\"\\u5fae\\u4fe1\\u8ba2\\u5355\\u53f7\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5fae\\u4fe1\\u8ba2\\u5355\\u53f7\"},{\"name\":\"status\",\"translation\":\"1\\u672a\\u652f\\u4ed82\\u5f85\\u53d1\\u8d273\\u5df2\\u53d1\\u8d27\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"1\\u672a\\u652f\\u4ed82\\u5f85\\u53d1\\u8d273\\u5df2\\u53d1\\u8d27\"},{\"name\":\"ship_data\",\"translation\":\"\\u7269\\u6d41\\u6570\\u636e\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u7269\\u6d41\\u6570\\u636e\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"KRBWLjHwpgR3XTGovdIUiQeXbGWcNeL5NFkPkw81\"}', '2020-07-02 14:14:41', '2020-07-02 14:14:41');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-02 14:14:42', '2020-07-02 14:14:42');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 14:14:51', '2020-07-02 14:14:51');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u8ba2\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-asl-interpreting\",\"uri\":\"order\",\"roles\":[null],\"permissions\":null,\"_token\":\"KRBWLjHwpgR3XTGovdIUiQeXbGWcNeL5NFkPkw81\"}', '2020-07-02 14:15:26', '2020-07-02 14:15:26');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 14:15:26', '2020-07-02 14:15:26');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 14:18:03', '2020-07-02 14:18:03');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 14:18:56', '2020-07-02 14:18:56');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 14:19:32', '2020-07-02 14:19:32');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 14:20:08', '2020-07-02 14:20:08');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 14:24:54', '2020-07-02 14:24:54');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"user_addresses\",\"_token\":\"KRBWLjHwpgR3XTGovdIUiQeXbGWcNeL5NFkPkw81\"}', '2020-07-02 14:25:02', '2020-07-02 14:25:02');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-02 14:25:06', '2020-07-02 14:25:06');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"user_addresses\",\"_token\":\"KRBWLjHwpgR3XTGovdIUiQeXbGWcNeL5NFkPkw81\"}', '2020-07-02 14:25:13', '2020-07-02 14:25:13');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"user_addresses\"}', '2020-07-02 14:25:14', '2020-07-02 14:25:14');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"user_addresses\",\"exist-table\":\"collect|user_addresses\",\"model_name\":\"App\\\\Models\\\\UserAddress\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\UserAddressController\",\"create\":[\"migration\",\"model\",\"repository\",\"lang\"],\"fields\":[{\"name\":\"user_id\",\"translation\":\"\\u8be5\\u5730\\u5740\\u6240\\u5c5e\\u7684\\u7528\\u6237\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u8be5\\u5730\\u5740\\u6240\\u5c5e\\u7684\\u7528\\u6237\"},{\"name\":\"province\",\"translation\":\"\\u7701\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u7701\"},{\"name\":\"city\",\"translation\":\"\\u5e02\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5e02\"},{\"name\":\"district\",\"translation\":\"\\u533a\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u533a\"},{\"name\":\"address\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"contact_name\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"contact_phone\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"default\",\"translation\":null,\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"primary_key\":\"id\",\"_token\":\"KRBWLjHwpgR3XTGovdIUiQeXbGWcNeL5NFkPkw81\"}', '2020-07-02 14:25:32', '2020-07-02 14:25:32');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-02 14:25:33', '2020-07-02 14:25:33');
INSERT INTO `admin_operation_log` VALUES ('314', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-02 16:27:34', '2020-07-02 16:27:34');
INSERT INTO `admin_operation_log` VALUES ('315', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"lCfiBN794HwbBztpNMAJFGVE8R9vXjXpHb3NMeNH\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-02 16:28:47', '2020-07-02 16:28:47');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-02 16:28:48', '2020-07-02 16:28:48');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"help\",\"_token\":\"6acHRc2rBD6hvJ187Bx2GLfz1KXlqPETWGGOGNMd\"}', '2020-07-02 16:29:31', '2020-07-02 16:29:31');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"help\"}', '2020-07-02 16:29:31', '2020-07-02 16:29:31');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"help\",\"exist-table\":\"collect|help\",\"model_name\":\"App\\\\Models\\\\Help\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\HelpController\",\"create\":[\"migration\",\"model\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"tittle\",\"translation\":\"\\u5e2e\\u52a9\\u4e2d\\u5fc3`\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5e2e\\u52a9\\u4e2d\\u5fc3`\"},{\"name\":\"content\",\"translation\":\"\\u5e2e\\u52a9\\u5185\\u5bb9\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5e2e\\u52a9\\u5185\\u5bb9\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"6acHRc2rBD6hvJ187Bx2GLfz1KXlqPETWGGOGNMd\"}', '2020-07-02 16:29:51', '2020-07-02 16:29:51');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-02 16:29:55', '2020-07-02 16:29:55');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:31:17', '2020-07-02 16:31:17');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u5e2e\\u52a9\\u4e2d\\u5fc3\",\"icon\":\"fa-angellist\",\"uri\":\"help\",\"roles\":[null],\"permissions\":null,\"_token\":\"6acHRc2rBD6hvJ187Bx2GLfz1KXlqPETWGGOGNMd\"}', '2020-07-02 16:31:41', '2020-07-02 16:31:41');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:31:42', '2020-07-02 16:31:42');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 16:32:50', '2020-07-02 16:32:50');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin/help', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:32:54', '2020-07-02 16:32:54');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin/help', 'GET', '127.0.0.1', '[]', '2020-07-02 16:33:38', '2020-07-02 16:33:38');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/help', 'GET', '127.0.0.1', '[]', '2020-07-02 16:34:28', '2020-07-02 16:34:28');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin/help', 'GET', '127.0.0.1', '[]', '2020-07-02 16:34:45', '2020-07-02 16:34:45');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/help', 'GET', '127.0.0.1', '[]', '2020-07-02 16:35:03', '2020-07-02 16:35:03');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/help', 'GET', '127.0.0.1', '[]', '2020-07-02 16:35:20', '2020-07-02 16:35:20');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/help/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:35:23', '2020-07-02 16:35:23');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/help/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-02 16:35:31', '2020-07-02 16:35:31');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/help/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-02 16:36:02', '2020-07-02 16:36:02');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin/help/1', 'PUT', '127.0.0.1', '{\"content\":\"<p>saddddewqewqe\\u5e2e\\u52a9\\u4e2d\\u5fc3\\u5185\\u5bb9<\\/p>\",\"_token\":\"6acHRc2rBD6hvJ187Bx2GLfz1KXlqPETWGGOGNMd\",\"_method\":\"PUT\"}', '2020-07-02 16:36:22', '2020-07-02 16:36:22');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/help', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:36:22', '2020-07-02 16:36:22');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin/help', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:36:35', '2020-07-02 16:36:35');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:36:57', '2020-07-02 16:36:57');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:49:37', '2020-07-02 16:49:37');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"about\",\"_token\":\"6acHRc2rBD6hvJ187Bx2GLfz1KXlqPETWGGOGNMd\"}', '2020-07-02 16:49:42', '2020-07-02 16:49:42');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"about\"}', '2020-07-02 16:49:42', '2020-07-02 16:49:42');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"about\",\"exist-table\":\"collect|about\",\"model_name\":\"App\\\\Models\\\\About\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\AboutController\",\"create\":[\"migration\",\"model\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"name\",\"translation\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u516c\\u53f8\\u540d\\u79f0\"},{\"name\":\"image\",\"translation\":\"\\u56fe\\u7247\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u56fe\\u7247\"},{\"name\":\"content\",\"translation\":\"\\u6587\\u5b57\\u5185\\u5bb9\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u6587\\u5b57\\u5185\\u5bb9\"},{\"name\":\"tel\",\"translation\":\"\\u8054\\u7cfb\\u65b9\\u5f0f\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u8054\\u7cfb\\u65b9\\u5f0f\"}],\"primary_key\":\"id\",\"_token\":\"6acHRc2rBD6hvJ187Bx2GLfz1KXlqPETWGGOGNMd\"}', '2020-07-02 16:49:53', '2020-07-02 16:49:53');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-02 16:49:54', '2020-07-02 16:49:54');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:50:30', '2020-07-02 16:50:30');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:50:32', '2020-07-02 16:50:32');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u5173\\u4e8e\\u6211\\u4eec\",\"icon\":\"fa-area-chart\",\"uri\":\"about\",\"roles\":[null],\"permissions\":null,\"_token\":\"6acHRc2rBD6hvJ187Bx2GLfz1KXlqPETWGGOGNMd\"}', '2020-07-02 16:51:07', '2020-07-02 16:51:07');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:51:07', '2020-07-02 16:51:07');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 16:51:10', '2020-07-02 16:51:10');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:51:13', '2020-07-02 16:51:13');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/about/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:51:19', '2020-07-02 16:51:19');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin/about/create', 'GET', '127.0.0.1', '[]', '2020-07-02 16:52:57', '2020-07-02 16:52:57');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/about', 'POST', '127.0.0.1', '{\"_id\":\"MoOeklleQTNXyo9X\",\"_token\":\"6acHRc2rBD6hvJ187Bx2GLfz1KXlqPETWGGOGNMd\",\"upload_column\":\"image\",\"id\":\"WU_FILE_0\",\"name\":\"9.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Sat Feb 15 2020 15:58:56 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"207435\"}', '2020-07-02 16:53:25', '2020-07-02 16:53:25');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/about', 'POST', '127.0.0.1', '{\"name\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"image\":\"images\\/9.png\",\"file-image\":null,\"_file_\":null,\"content\":\"\\u6587\\u5b57\\u5185\\u5bb9\\u90a3\\u5c31\\u662f\\u7684\\u770b\\u6cd5\",\"tel\":\"15766925847\",\"_token\":\"6acHRc2rBD6hvJ187Bx2GLfz1KXlqPETWGGOGNMd\"}', '2020-07-02 16:55:26', '2020-07-02 16:55:26');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/about', 'POST', '127.0.0.1', '{\"name\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"image\":\"images\\/9.png\",\"file-image\":null,\"_file_\":null,\"content\":\"\\u6587\\u5b57\\u5185\\u5bb9\\u90a3\\u5c31\\u662f\\u7684\\u770b\\u6cd5\",\"tel\":\"15766925847\",\"_token\":\"6acHRc2rBD6hvJ187Bx2GLfz1KXlqPETWGGOGNMd\"}', '2020-07-02 16:55:35', '2020-07-02 16:55:35');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/about', 'POST', '127.0.0.1', '{\"name\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"image\":\"images\\/9.png\",\"file-image\":null,\"_file_\":null,\"content\":\"\\u6587\\u5b57\\u5185\\u5bb9\\u90a3\\u5c31\\u662f\\u7684\\u770b\\u6cd5\",\"tel\":\"15766925847\",\"_token\":\"6acHRc2rBD6hvJ187Bx2GLfz1KXlqPETWGGOGNMd\"}', '2020-07-02 16:55:52', '2020-07-02 16:55:52');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:55:52', '2020-07-02 16:55:52');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/about', 'GET', '127.0.0.1', '[]', '2020-07-02 16:56:33', '2020-07-02 16:56:33');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/about/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:56:57', '2020-07-02 16:56:57');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin/about/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-02 16:57:13', '2020-07-02 16:57:13');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:57:21', '2020-07-02 16:57:21');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/about', 'GET', '127.0.0.1', '[]', '2020-07-02 16:57:30', '2020-07-02 16:57:30');
INSERT INTO `admin_operation_log` VALUES ('361', '1', 'admin/help', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:57:35', '2020-07-02 16:57:35');
INSERT INTO `admin_operation_log` VALUES ('362', '1', 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 16:57:42', '2020-07-02 16:57:42');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'admin/help', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 17:00:08', '2020-07-02 17:00:08');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 17:00:11', '2020-07-02 17:00:11');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'admin/about', 'GET', '127.0.0.1', '[]', '2020-07-02 17:55:47', '2020-07-02 17:55:47');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 17:55:50', '2020-07-02 17:55:50');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 17:55:58', '2020-07-02 17:55:58');
INSERT INTO `admin_operation_log` VALUES ('368', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 17:56:05', '2020-07-02 17:56:05');
INSERT INTO `admin_operation_log` VALUES ('369', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"cid\":\"45\",\"title\":\"\\u5f69\\u4e91\\u6052\\u901a\\u9aa8\\u738b\\u96d5\\u523b\",\"description\":\"<p>\\u8d2a\\u8d22\\u6709\\u9053\\uff0c\\u597d\\u8272\\u6709\\u54c1\\uff0c\\u535a\\u5b66\\u6709\\u8bc6\\uff0c\\u8bfb\\u4e66\\u6709\\u763e\\uff0c\\u559d\\u9152\\u6709\\u91cf\\uff0c\\u73a9\\u7b11\\u6709\\u5ea6\\uff0c\\u6ca1\\u4e8b\\u4e0d\\u4f1a\\u60f9\\u4e8b\\uff0c\\u6709\\u4e8b\\u4e5f\\u4e0d\\u4f1a\\u6015\\u4e8b \\u5bf9\\u5916\\u662f\\u9876\\u5929\\u7acb\\u5730\\uff0c\\u5bf9\\u5185\\u662f\\u6ca1\\u6709\\u813e\\u6c14\\u7684<br data-mce-bogus=\\\"1\\\"><\\/p>\",\"image\":\"images\\/01.png,images\\/02.png\",\"file-image\":null,\"_file_\":null,\"file\":null,\"price\":\"50.00\",\"stock\":\"50\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"6acHRc2rBD6hvJ187Bx2GLfz1KXlqPETWGGOGNMd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/product\"}', '2020-07-02 17:56:16', '2020-07-02 17:56:16');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 17:56:17', '2020-07-02 17:56:17');
INSERT INTO `admin_operation_log` VALUES ('371', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-03 13:35:49', '2020-07-03 13:35:49');
INSERT INTO `admin_operation_log` VALUES ('372', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"5SGbhSI5xuDGLtMkPkhunqO7yncmiCm8xSP0CPSt\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-03 13:35:55', '2020-07-03 13:35:55');
INSERT INTO `admin_operation_log` VALUES ('373', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-03 13:35:55', '2020-07-03 13:35:55');
INSERT INTO `admin_operation_log` VALUES ('374', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 13:36:00', '2020-07-03 13:36:00');
INSERT INTO `admin_operation_log` VALUES ('375', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"push\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\"}', '2020-07-03 13:36:08', '2020-07-03 13:36:08');
INSERT INTO `admin_operation_log` VALUES ('376', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"push\"}', '2020-07-03 13:36:08', '2020-07-03 13:36:08');
INSERT INTO `admin_operation_log` VALUES ('377', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"push\",\"exist-table\":\"collect|push\",\"model_name\":\"App\\\\Models\\\\Push\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PushController\",\"create\":[\"model\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"title\",\"translation\":\"\\u6807\\u9898\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u6807\\u9898\"},{\"name\":\"content\",\"translation\":\"\\u5185\\u5bb9\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5185\\u5bb9\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\"}', '2020-07-03 13:36:15', '2020-07-03 13:36:15');
INSERT INTO `admin_operation_log` VALUES ('378', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-03 13:36:16', '2020-07-03 13:36:16');
INSERT INTO `admin_operation_log` VALUES ('379', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 14:12:29', '2020-07-03 14:12:29');
INSERT INTO `admin_operation_log` VALUES ('380', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u7cfb\\u7edf\\u63a8\\u9001\",\"icon\":\"fa-arrow-circle-right\",\"uri\":\"push\",\"roles\":[null],\"permissions\":null,\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\"}', '2020-07-03 14:12:53', '2020-07-03 14:12:53');
INSERT INTO `admin_operation_log` VALUES ('381', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 14:12:53', '2020-07-03 14:12:53');
INSERT INTO `admin_operation_log` VALUES ('382', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-03 14:12:56', '2020-07-03 14:12:56');
INSERT INTO `admin_operation_log` VALUES ('383', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 14:13:00', '2020-07-03 14:13:00');
INSERT INTO `admin_operation_log` VALUES ('384', '1', 'admin/push/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 14:13:03', '2020-07-03 14:13:03');
INSERT INTO `admin_operation_log` VALUES ('385', '1', 'admin/push', 'POST', '127.0.0.1', '{\"title\":\"11\",\"content\":\"1111\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/push\"}', '2020-07-03 14:13:25', '2020-07-03 14:13:25');
INSERT INTO `admin_operation_log` VALUES ('386', '1', 'admin/push', 'POST', '127.0.0.1', '{\"title\":\"11\",\"content\":\"1111\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/push\"}', '2020-07-03 14:13:34', '2020-07-03 14:13:34');
INSERT INTO `admin_operation_log` VALUES ('387', '1', 'admin/push', 'POST', '127.0.0.1', '{\"title\":\"11\",\"content\":\"1111\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/push\"}', '2020-07-03 14:13:57', '2020-07-03 14:13:57');
INSERT INTO `admin_operation_log` VALUES ('388', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 14:13:58', '2020-07-03 14:13:58');
INSERT INTO `admin_operation_log` VALUES ('389', '1', 'admin/push/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 14:17:47', '2020-07-03 14:17:47');
INSERT INTO `admin_operation_log` VALUES ('390', '1', 'admin/push', 'POST', '127.0.0.1', '{\"title\":\"\\u6d4b\\u8bd5\\u5377\\u901a\\u77e5\",\"content\":\"222\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/push\"}', '2020-07-03 14:18:01', '2020-07-03 14:18:01');
INSERT INTO `admin_operation_log` VALUES ('391', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 14:18:02', '2020-07-03 14:18:02');
INSERT INTO `admin_operation_log` VALUES ('392', '1', 'admin/push/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 14:34:48', '2020-07-03 14:34:48');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'admin/push', 'POST', '127.0.0.1', '{\"title\":\"\\u6d4b\\u8bd5\\u901a\\u77e5\",\"content\":\"\\u901a\\u77e5\\u5185\\u5bb9\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/push\"}', '2020-07-03 14:35:01', '2020-07-03 14:35:01');
INSERT INTO `admin_operation_log` VALUES ('394', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 14:35:01', '2020-07-03 14:35:01');
INSERT INTO `admin_operation_log` VALUES ('395', '1', 'admin/push/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 14:44:07', '2020-07-03 14:44:07');
INSERT INTO `admin_operation_log` VALUES ('396', '1', 'admin/push', 'POST', '127.0.0.1', '{\"title\":\"\\u901a\\u77e5\\u6d4b\\u8bd532\",\"content\":\"\\u6d4b\\u8bd5\\u901a\\u77e5\\u5185\\u5bb9123456\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/push\"}', '2020-07-03 14:44:24', '2020-07-03 14:44:24');
INSERT INTO `admin_operation_log` VALUES ('397', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 14:44:25', '2020-07-03 14:44:25');
INSERT INTO `admin_operation_log` VALUES ('398', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 15:08:10', '2020-07-03 15:08:10');
INSERT INTO `admin_operation_log` VALUES ('399', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u89c6\\u9891\",\"icon\":\"fa-bullhorn\",\"uri\":\"video\",\"roles\":[null],\"permissions\":null,\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\"}', '2020-07-03 15:11:02', '2020-07-03 15:11:02');
INSERT INTO `admin_operation_log` VALUES ('400', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 15:11:04', '2020-07-03 15:11:04');
INSERT INTO `admin_operation_log` VALUES ('401', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 15:11:11', '2020-07-03 15:11:11');
INSERT INTO `admin_operation_log` VALUES ('402', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"video\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\"}', '2020-07-03 15:11:17', '2020-07-03 15:11:17');
INSERT INTO `admin_operation_log` VALUES ('403', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"video\"}', '2020-07-03 15:11:18', '2020-07-03 15:11:18');
INSERT INTO `admin_operation_log` VALUES ('404', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"video\",\"exist-table\":\"collect|video\",\"model_name\":\"App\\\\Models\\\\Video\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\VideoController\",\"create\":[\"model\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"title\",\"translation\":\"\\u6807\\u9898\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u6807\\u9898\"},{\"name\":\"description\",\"translation\":\"\\u63cf\\u8ff0\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u63cf\\u8ff0\"},{\"name\":\"video\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\"}', '2020-07-03 15:11:30', '2020-07-03 15:11:30');
INSERT INTO `admin_operation_log` VALUES ('405', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-03 15:11:33', '2020-07-03 15:11:33');
INSERT INTO `admin_operation_log` VALUES ('406', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-03 15:11:38', '2020-07-03 15:11:38');
INSERT INTO `admin_operation_log` VALUES ('407', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 15:11:44', '2020-07-03 15:11:44');
INSERT INTO `admin_operation_log` VALUES ('408', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":15},{\\\"id\\\":9},{\\\"id\\\":14},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]\"}', '2020-07-03 15:12:07', '2020-07-03 15:12:07');
INSERT INTO `admin_operation_log` VALUES ('409', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 15:12:08', '2020-07-03 15:12:08');
INSERT INTO `admin_operation_log` VALUES ('410', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-03 15:12:12', '2020-07-03 15:12:12');
INSERT INTO `admin_operation_log` VALUES ('411', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-03 15:12:19', '2020-07-03 15:12:19');
INSERT INTO `admin_operation_log` VALUES ('412', '1', 'admin/video', 'GET', '127.0.0.1', '[]', '2020-07-03 15:19:23', '2020-07-03 15:19:23');
INSERT INTO `admin_operation_log` VALUES ('413', '1', 'admin/video/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 15:19:26', '2020-07-03 15:19:26');
INSERT INTO `admin_operation_log` VALUES ('414', '1', 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 15:19:33', '2020-07-03 15:19:33');
INSERT INTO `admin_operation_log` VALUES ('415', '1', 'admin/help', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 15:19:36', '2020-07-03 15:19:36');
INSERT INTO `admin_operation_log` VALUES ('416', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 15:19:38', '2020-07-03 15:19:38');
INSERT INTO `admin_operation_log` VALUES ('417', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 15:19:41', '2020-07-03 15:19:41');
INSERT INTO `admin_operation_log` VALUES ('418', '1', 'admin/push', 'GET', '127.0.0.1', '[]', '2020-07-03 15:20:04', '2020-07-03 15:20:04');
INSERT INTO `admin_operation_log` VALUES ('419', '1', 'admin/push/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 15:20:06', '2020-07-03 15:20:06');
INSERT INTO `admin_operation_log` VALUES ('420', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 15:20:10', '2020-07-03 15:20:10');
INSERT INTO `admin_operation_log` VALUES ('421', '1', 'admin/push', 'GET', '127.0.0.1', '[]', '2020-07-03 15:21:04', '2020-07-03 15:21:04');
INSERT INTO `admin_operation_log` VALUES ('422', '1', 'admin/push', 'GET', '127.0.0.1', '[]', '2020-07-03 15:21:27', '2020-07-03 15:21:27');
INSERT INTO `admin_operation_log` VALUES ('423', '1', 'admin/push/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 15:21:30', '2020-07-03 15:21:30');
INSERT INTO `admin_operation_log` VALUES ('424', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 15:21:33', '2020-07-03 15:21:33');
INSERT INTO `admin_operation_log` VALUES ('425', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 15:32:31', '2020-07-03 15:32:31');
INSERT INTO `admin_operation_log` VALUES ('426', '1', 'admin/video/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 15:42:44', '2020-07-03 15:42:44');
INSERT INTO `admin_operation_log` VALUES ('427', '1', 'admin/video/create', 'GET', '127.0.0.1', '[]', '2020-07-03 15:44:49', '2020-07-03 15:44:49');
INSERT INTO `admin_operation_log` VALUES ('428', '1', 'admin/video/create', 'GET', '127.0.0.1', '[]', '2020-07-03 15:44:57', '2020-07-03 15:44:57');
INSERT INTO `admin_operation_log` VALUES ('429', '1', 'admin/video/create', 'GET', '127.0.0.1', '[]', '2020-07-03 15:48:33', '2020-07-03 15:48:33');
INSERT INTO `admin_operation_log` VALUES ('430', '1', 'admin/video/create', 'GET', '127.0.0.1', '[]', '2020-07-03 15:48:54', '2020-07-03 15:48:54');
INSERT INTO `admin_operation_log` VALUES ('431', '1', 'admin/video/create', 'GET', '127.0.0.1', '[]', '2020-07-03 15:49:39', '2020-07-03 15:49:39');
INSERT INTO `admin_operation_log` VALUES ('432', '1', 'admin/video/create', 'GET', '127.0.0.1', '[]', '2020-07-03 15:55:41', '2020-07-03 15:55:41');
INSERT INTO `admin_operation_log` VALUES ('433', '1', 'admin/video', 'POST', '127.0.0.1', '{\"_id\":\"Uhw7eWeLGUYI9uQI\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"file\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"0\"}', '2020-07-03 15:55:54', '2020-07-03 15:55:54');
INSERT INTO `admin_operation_log` VALUES ('434', '1', 'admin/video', 'POST', '127.0.0.1', '{\"_id\":\"Uhw7eWeLGUYI9uQI\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"file\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"2\"}', '2020-07-03 15:55:54', '2020-07-03 15:55:54');
INSERT INTO `admin_operation_log` VALUES ('435', '1', 'admin/video', 'POST', '127.0.0.1', '{\"_id\":\"Uhw7eWeLGUYI9uQI\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"file\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"1\"}', '2020-07-03 15:55:54', '2020-07-03 15:55:54');
INSERT INTO `admin_operation_log` VALUES ('436', '1', 'admin/video', 'POST', '127.0.0.1', '{\"_id\":\"Uhw7eWeLGUYI9uQI\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"file\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"4\"}', '2020-07-03 15:55:55', '2020-07-03 15:55:55');
INSERT INTO `admin_operation_log` VALUES ('437', '1', 'admin/video', 'POST', '127.0.0.1', '{\"_id\":\"Uhw7eWeLGUYI9uQI\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"file\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"3\"}', '2020-07-03 15:55:56', '2020-07-03 15:55:56');
INSERT INTO `admin_operation_log` VALUES ('438', '1', 'admin/video/create', 'GET', '127.0.0.1', '[]', '2020-07-03 16:49:39', '2020-07-03 16:49:39');
INSERT INTO `admin_operation_log` VALUES ('439', '1', 'admin/video/create', 'GET', '127.0.0.1', '[]', '2020-07-03 16:50:18', '2020-07-03 16:50:18');
INSERT INTO `admin_operation_log` VALUES ('440', '1', 'admin/video/create', 'GET', '127.0.0.1', '[]', '2020-07-03 16:50:33', '2020-07-03 16:50:33');
INSERT INTO `admin_operation_log` VALUES ('441', '1', 'admin/video/create', 'GET', '127.0.0.1', '[]', '2020-07-03 16:50:47', '2020-07-03 16:50:47');
INSERT INTO `admin_operation_log` VALUES ('442', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 16:50:51', '2020-07-03 16:50:51');
INSERT INTO `admin_operation_log` VALUES ('443', '1', 'admin/push/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 16:50:58', '2020-07-03 16:50:58');
INSERT INTO `admin_operation_log` VALUES ('444', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 16:51:04', '2020-07-03 16:51:04');
INSERT INTO `admin_operation_log` VALUES ('445', '1', 'admin/push', 'GET', '127.0.0.1', '[]', '2020-07-03 16:53:12', '2020-07-03 16:53:12');
INSERT INTO `admin_operation_log` VALUES ('446', '1', 'admin/push', 'GET', '127.0.0.1', '[]', '2020-07-03 16:53:25', '2020-07-03 16:53:25');
INSERT INTO `admin_operation_log` VALUES ('447', '1', 'admin/push', 'GET', '127.0.0.1', '[]', '2020-07-03 17:12:43', '2020-07-03 17:12:43');
INSERT INTO `admin_operation_log` VALUES ('448', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 17:12:47', '2020-07-03 17:12:47');
INSERT INTO `admin_operation_log` VALUES ('449', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 17:12:51', '2020-07-03 17:12:51');
INSERT INTO `admin_operation_log` VALUES ('450', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-03 17:12:53', '2020-07-03 17:12:53');
INSERT INTO `admin_operation_log` VALUES ('451', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 17:12:56', '2020-07-03 17:12:56');
INSERT INTO `admin_operation_log` VALUES ('452', '1', 'admin/video/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 17:13:01', '2020-07-03 17:13:01');
INSERT INTO `admin_operation_log` VALUES ('453', '1', 'admin/video', 'POST', '127.0.0.1', '{\"_id\":\"Mq5JQeIqRU4br6NC\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"video\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"1\"}', '2020-07-03 17:13:21', '2020-07-03 17:13:21');
INSERT INTO `admin_operation_log` VALUES ('454', '1', 'admin/video', 'POST', '127.0.0.1', '{\"_id\":\"Mq5JQeIqRU4br6NC\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"video\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"0\"}', '2020-07-03 17:13:21', '2020-07-03 17:13:21');
INSERT INTO `admin_operation_log` VALUES ('455', '1', 'admin/video', 'POST', '127.0.0.1', '{\"_id\":\"Mq5JQeIqRU4br6NC\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"video\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"2\"}', '2020-07-03 17:13:21', '2020-07-03 17:13:21');
INSERT INTO `admin_operation_log` VALUES ('456', '1', 'admin/video', 'POST', '127.0.0.1', '{\"_id\":\"Mq5JQeIqRU4br6NC\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"video\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"4\"}', '2020-07-03 17:13:22', '2020-07-03 17:13:22');
INSERT INTO `admin_operation_log` VALUES ('457', '1', 'admin/video', 'POST', '127.0.0.1', '{\"_id\":\"Mq5JQeIqRU4br6NC\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"video\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"3\"}', '2020-07-03 17:13:22', '2020-07-03 17:13:22');
INSERT INTO `admin_operation_log` VALUES ('458', '1', 'admin/video', 'POST', '127.0.0.1', '{\"title\":\"\\u6d4b\\u8bd5\\u89c6\\u9891\",\"description\":\"\\u6d4b\\u8bd5\\u89c6\\u9891\\u63cf\\u8ff0\",\"video\":\"files\\/a49d854e11c476c6e36045b67f0893ec.mp4\",\"file-video\":null,\"_file_\":null,\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/video\"}', '2020-07-03 17:13:25', '2020-07-03 17:13:25');
INSERT INTO `admin_operation_log` VALUES ('459', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 17:13:26', '2020-07-03 17:13:26');
INSERT INTO `admin_operation_log` VALUES ('460', '1', 'admin/video', 'GET', '127.0.0.1', '[]', '2020-07-03 17:15:22', '2020-07-03 17:15:22');
INSERT INTO `admin_operation_log` VALUES ('461', '1', 'admin/video', 'GET', '127.0.0.1', '[]', '2020-07-03 17:16:48', '2020-07-03 17:16:48');
INSERT INTO `admin_operation_log` VALUES ('462', '1', 'admin/video/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 17:16:55', '2020-07-03 17:16:55');
INSERT INTO `admin_operation_log` VALUES ('463', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 17:27:41', '2020-07-03 17:27:41');
INSERT INTO `admin_operation_log` VALUES ('464', '1', 'admin/video/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 17:27:45', '2020-07-03 17:27:45');
INSERT INTO `admin_operation_log` VALUES ('465', '1', 'admin/video/1', 'PUT', '127.0.0.1', '{\"_file_del_\":null,\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"_method\":\"PUT\",\"key\":\"files\\/a49d854e11c476c6e36045b67f0893ec.mp4\",\"_column\":\"video\"}', '2020-07-03 17:27:49', '2020-07-03 17:27:49');
INSERT INTO `admin_operation_log` VALUES ('466', '1', 'admin/video/1', 'PUT', '127.0.0.1', '{\"_id\":\"3cvE7tPMUW3Osr99\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"video\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"0\"}', '2020-07-03 17:27:56', '2020-07-03 17:27:56');
INSERT INTO `admin_operation_log` VALUES ('467', '1', 'admin/video/1', 'PUT', '127.0.0.1', '{\"_id\":\"3cvE7tPMUW3Osr99\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"video\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"1\"}', '2020-07-03 17:27:56', '2020-07-03 17:27:56');
INSERT INTO `admin_operation_log` VALUES ('468', '1', 'admin/video/1', 'PUT', '127.0.0.1', '{\"_id\":\"3cvE7tPMUW3Osr99\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"video\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"2\"}', '2020-07-03 17:27:56', '2020-07-03 17:27:56');
INSERT INTO `admin_operation_log` VALUES ('469', '1', 'admin/video/1', 'PUT', '127.0.0.1', '{\"_id\":\"3cvE7tPMUW3Osr99\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"video\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"3\"}', '2020-07-03 17:27:57', '2020-07-03 17:27:57');
INSERT INTO `admin_operation_log` VALUES ('470', '1', 'admin/video/1', 'PUT', '127.0.0.1', '{\"_id\":\"3cvE7tPMUW3Osr99\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"video\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"4\"}', '2020-07-03 17:27:57', '2020-07-03 17:27:57');
INSERT INTO `admin_operation_log` VALUES ('471', '1', 'admin/video/1', 'PUT', '127.0.0.1', '{\"_id\":\"3cvE7tPMUW3Osr99\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"_method\":\"PUT\",\"video\":\"files\\/\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\"}', '2020-07-03 17:27:58', '2020-07-03 17:27:58');
INSERT INTO `admin_operation_log` VALUES ('472', '1', 'admin/video/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u6d4b\\u8bd5\\u89c6\\u9891\",\"description\":\"\\u6d4b\\u8bd5\\u89c6\\u9891\\u63cf\\u8ff0\",\"video\":\"files\\/\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"file-video\":null,\"_file_\":null,\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/video\"}', '2020-07-03 17:28:02', '2020-07-03 17:28:02');
INSERT INTO `admin_operation_log` VALUES ('473', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 17:28:02', '2020-07-03 17:28:02');
INSERT INTO `admin_operation_log` VALUES ('474', '1', 'admin/video', 'GET', '127.0.0.1', '[]', '2020-07-03 17:28:04', '2020-07-03 17:28:04');
INSERT INTO `admin_operation_log` VALUES ('475', '1', 'admin/video/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 17:28:37', '2020-07-03 17:28:37');
INSERT INTO `admin_operation_log` VALUES ('476', '1', 'admin/video/1', 'PUT', '127.0.0.1', '{\"_file_del_\":null,\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"_method\":\"PUT\",\"key\":\"files\\/\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"_column\":\"video\"}', '2020-07-03 17:28:41', '2020-07-03 17:28:41');
INSERT INTO `admin_operation_log` VALUES ('477', '1', 'admin/video/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-03 17:28:48', '2020-07-03 17:28:48');
INSERT INTO `admin_operation_log` VALUES ('478', '1', 'admin/video/1', 'PUT', '127.0.0.1', '{\"_id\":\"miQZurL8TmPtVC0C\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"video\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"2\"}', '2020-07-03 17:28:54', '2020-07-03 17:28:54');
INSERT INTO `admin_operation_log` VALUES ('479', '1', 'admin/video/1', 'PUT', '127.0.0.1', '{\"_id\":\"miQZurL8TmPtVC0C\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"video\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"1\"}', '2020-07-03 17:28:55', '2020-07-03 17:28:55');
INSERT INTO `admin_operation_log` VALUES ('480', '1', 'admin/video/1', 'PUT', '127.0.0.1', '{\"_id\":\"miQZurL8TmPtVC0C\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"video\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"0\"}', '2020-07-03 17:28:55', '2020-07-03 17:28:55');
INSERT INTO `admin_operation_log` VALUES ('481', '1', 'admin/video/1', 'PUT', '127.0.0.1', '{\"_id\":\"miQZurL8TmPtVC0C\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"video\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"3\"}', '2020-07-03 17:28:55', '2020-07-03 17:28:55');
INSERT INTO `admin_operation_log` VALUES ('482', '1', 'admin/video/1', 'PUT', '127.0.0.1', '{\"_id\":\"miQZurL8TmPtVC0C\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"upload_column\":\"video\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"\\u623f\\u4e1c\\u7684\\u732b-\\u4e91\\u70df\\u6210\\u96e8 (\\u6b4c\\u8bcd\\u7248)(\\u84dd\\u5149).mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Fri Jul 03 2020 15:34:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"21660491\",\"chunks\":\"5\",\"chunk\":\"4\"}', '2020-07-03 17:28:55', '2020-07-03 17:28:55');
INSERT INTO `admin_operation_log` VALUES ('483', '1', 'admin/video/1', 'PUT', '127.0.0.1', '{\"_id\":\"miQZurL8TmPtVC0C\",\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"_method\":\"PUT\",\"video\":\"files\\/70c4662e8faeacb3df2ef4c3517f49c0.mp4\"}', '2020-07-03 17:28:56', '2020-07-03 17:28:56');
INSERT INTO `admin_operation_log` VALUES ('484', '1', 'admin/video/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u6d4b\\u8bd5\\u89c6\\u9891\",\"description\":\"\\u6d4b\\u8bd5\\u89c6\\u9891\\u63cf\\u8ff0\",\"video\":\"files\\/70c4662e8faeacb3df2ef4c3517f49c0.mp4\",\"file-video\":null,\"_file_\":null,\"_token\":\"DgTVeXMpFb9pf9GUKs43yRckGdY4QhYLQWUnCtPu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/video\"}', '2020-07-03 17:28:57', '2020-07-03 17:28:57');
INSERT INTO `admin_operation_log` VALUES ('485', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-03 17:28:57', '2020-07-03 17:28:57');
INSERT INTO `admin_operation_log` VALUES ('486', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-04 11:42:48', '2020-07-04 11:42:48');
INSERT INTO `admin_operation_log` VALUES ('487', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"L9dGFgJukbiYKK8DgzJiIx2B7SNW9KUciMXv1dn0\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-04 11:42:57', '2020-07-04 11:42:57');
INSERT INTO `admin_operation_log` VALUES ('488', '1', 'admin/video', 'GET', '127.0.0.1', '[]', '2020-07-04 11:42:58', '2020-07-04 11:42:58');
INSERT INTO `admin_operation_log` VALUES ('489', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-05 09:05:27', '2020-07-05 09:05:27');
INSERT INTO `admin_operation_log` VALUES ('490', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-05 10:02:54', '2020-07-05 10:02:54');
INSERT INTO `admin_operation_log` VALUES ('491', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"q7rBDJ8WmVZLJAgz17Qst61onPRKi0E3HY0wmgze\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-05 10:02:59', '2020-07-05 10:02:59');
INSERT INTO `admin_operation_log` VALUES ('492', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-05 10:03:00', '2020-07-05 10:03:00');
INSERT INTO `admin_operation_log` VALUES ('493', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 10:03:08', '2020-07-05 10:03:08');
INSERT INTO `admin_operation_log` VALUES ('494', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"order_items\",\"_token\":\"KjH79pfekqErjzEJTgrIm7BXgeiAA2BdfcYTjziR\"}', '2020-07-05 10:03:16', '2020-07-05 10:03:16');
INSERT INTO `admin_operation_log` VALUES ('495', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"order_items\"}', '2020-07-05 10:03:16', '2020-07-05 10:03:16');
INSERT INTO `admin_operation_log` VALUES ('496', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"order_items\",\"exist-table\":\"collect|order_items\",\"model_name\":\"App\\\\Models\\\\OrderItem\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\OrderItemController\",\"create\":[\"model\",\"lang\"],\"fields\":[{\"name\":\"product_id\",\"translation\":\"\\u5546\\u54c1id\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5546\\u54c1id\"},{\"name\":\"amount\",\"translation\":\"\\u6570\\u91cf\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u6570\\u91cf\"},{\"name\":\"price\",\"translation\":null,\"type\":\"decimal\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"primary_key\":\"id\",\"_token\":\"KjH79pfekqErjzEJTgrIm7BXgeiAA2BdfcYTjziR\"}', '2020-07-05 10:03:34', '2020-07-05 10:03:34');
INSERT INTO `admin_operation_log` VALUES ('497', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-05 10:03:35', '2020-07-05 10:03:35');
INSERT INTO `admin_operation_log` VALUES ('498', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-05 14:22:19', '2020-07-05 14:22:19');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cart_items
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) DEFAULT '0',
  `is_directory` tinyint(1) DEFAULT NULL,
  `level` int(10) unsigned DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('28', '精品典藏', '0', null, null, null, '2020-07-01 12:50:16', '2020-07-01 12:50:16');
INSERT INTO `categories` VALUES ('29', '原缘典藏', '28', null, null, null, '2020-07-01 12:51:28', '2020-07-01 12:51:28');
INSERT INTO `categories` VALUES ('30', '场馆训览', '0', null, null, null, '2020-07-01 12:54:14', '2020-07-01 12:54:14');
INSERT INTO `categories` VALUES ('33', '场馆训览子分类', '30', null, null, null, '2020-07-01 13:03:55', '2020-07-01 13:03:55');
INSERT INTO `categories` VALUES ('45', '水木恒缘', '28', null, null, null, '2020-07-01 13:26:19', '2020-07-01 13:26:19');
INSERT INTO `categories` VALUES ('46', '原缘玉秀', '28', null, null, null, '2020-07-01 13:26:42', '2020-07-01 13:26:42');
INSERT INTO `categories` VALUES ('47', '古保收藏', '29', null, null, null, '2020-07-01 15:05:41', '2020-07-01 15:05:41');

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
-- Table structure for help
-- ----------------------------
DROP TABLE IF EXISTS `help`;
CREATE TABLE `help` (
  `id` int(10) unsigned zerofill NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '帮助中心`',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '帮助内容',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of help
-- ----------------------------
INSERT INTO `help` VALUES ('0000000001', '帮助中心', '<p>saddddewqewqe帮助中心内容</p>', null, '2020-07-02 16:36:22');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('4', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('5', '2020_07_03_132321_create_notifications_table', '2');
INSERT INTO `migrations` VALUES ('6', '2020_07_03_132541_add_notification_count_to_users_table', '3');

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of notifications
-- ----------------------------
INSERT INTO `notifications` VALUES ('183a2c42-da22-4940-b402-dc223356ae77', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '2', '{\"id\":5,\"title\":\"\\u6d4b\\u8bd5\\u901a\\u77e5\",\"content\":\"\\u901a\\u77e5\\u5185\\u5bb9\"}', '2020-07-03 14:35:36', '2020-07-03 14:35:01', '2020-07-03 14:35:36');
INSERT INTO `notifications` VALUES ('1dd4955b-b4dc-41e7-bfeb-ac30ec913390', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '1', '{\"id\":4,\"title\":\"\\u6d4b\\u8bd5\\u5377\\u901a\\u77e5\",\"content\":\"222\"}', '2020-07-03 14:24:08', '2020-07-03 14:18:01', '2020-07-03 14:24:08');
INSERT INTO `notifications` VALUES ('2eec78f5-565c-4f9e-94a9-ed622c7ce4b1', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '2', '{\"id\":4,\"title\":\"\\u6d4b\\u8bd5\\u5377\\u901a\\u77e5\",\"content\":\"222\"}', '2020-07-03 14:35:36', '2020-07-03 14:18:01', '2020-07-03 14:35:36');
INSERT INTO `notifications` VALUES ('cc153cb2-104e-4f54-ac56-7cdc4d89b5d0', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '2', '{\"id\":6,\"title\":\"\\u901a\\u77e5\\u6d4b\\u8bd532\",\"content\":\"\\u6d4b\\u8bd5\\u901a\\u77e5\\u5185\\u5bb9123456\"}', '2020-07-03 14:45:38', '2020-07-03 14:44:25', '2020-07-03 14:45:38');
INSERT INTO `notifications` VALUES ('cdea53ab-b26a-4e7a-a87d-65d3adb482a1', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '1', '{\"id\":5,\"title\":\"\\u6d4b\\u8bd5\\u901a\\u77e5\",\"content\":\"\\u901a\\u77e5\\u5185\\u5bb9\"}', '2020-07-03 14:35:08', '2020-07-03 14:35:01', '2020-07-03 14:35:08');
INSERT INTO `notifications` VALUES ('e517bedd-7417-42a7-8c79-fc5c015cbaed', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '1', '{\"id\":3,\"title\":\"11\",\"content\":\"1111\"}', '2020-07-03 14:24:08', '2020-07-03 14:13:57', '2020-07-03 14:24:08');
INSERT INTO `notifications` VALUES ('e6578e18-7332-4754-aefd-ae2359f1dba1', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '1', '{\"id\":6,\"title\":\"\\u901a\\u77e5\\u6d4b\\u8bd532\",\"content\":\"\\u6d4b\\u8bd5\\u901a\\u77e5\\u5185\\u5bb9123456\"}', null, '2020-07-03 14:44:25', '2020-07-03 14:44:25');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商户订单号',
  `user_id` int(11) NOT NULL COMMENT '用户',
  `address` text COLLATE utf8mb4_unicode_ci,
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `remark` text COLLATE utf8mb4_unicode_ci COMMENT '订单备注',
  `paid_at` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `payment_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信订单号',
  `status` tinyint(255) DEFAULT '1' COMMENT '1未支付2待发货3已发货',
  `ship_data` text COLLATE utf8mb4_unicode_ci COMMENT '物流数据',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `no` (`no`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('11', '20200705134512163126', '1', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, null, null, null, null, '2020-07-05 13:45:12', '2020-07-05 13:45:12');
INSERT INTO `order` VALUES ('12', '20200705134702939700', '1', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, null, null, null, null, '2020-07-05 13:47:02', '2020-07-05 13:47:02');
INSERT INTO `order` VALUES ('13', '20200705134944066375', '1', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, null, null, null, null, '2020-07-05 13:49:44', '2020-07-05 13:49:44');
INSERT INTO `order` VALUES ('14', '20200705142045660092', '1', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, null, null, '1', null, '2020-07-05 14:20:45', '2020-07-05 14:20:45');

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `amount` int(11) DEFAULT NULL COMMENT '数量',
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES ('6', '11', null, '2', '50.00');
INSERT INTO `order_items` VALUES ('7', '11', null, '4', '0.01');
INSERT INTO `order_items` VALUES ('8', '12', null, '2', '50.00');
INSERT INTO `order_items` VALUES ('9', '12', null, '4', '0.01');
INSERT INTO `order_items` VALUES ('10', '13', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('11', '13', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('12', '14', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('13', '14', '2', '4', '0.01');

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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品图片',
  `sold_count` tinyint(10) DEFAULT NULL COMMENT '销量',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `stock` tinyint(10) DEFAULT NULL COMMENT '库存',
  `recommended` tinyint(10) DEFAULT NULL COMMENT '推荐位1否2是',
  `status` tinyint(5) DEFAULT NULL COMMENT '状态1上架2下架',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '45', '彩云恒通骨王雕刻', '<p>贪财有道，好色有品，博学有识，读书有瘾，喝酒有量，玩笑有度，没事不会惹事，有事也不会怕事 对外是顶天立地，对内是没有脾气的<br data-mce-bogus=\"1\"></p>', '[\"images\\/01.png\",\"images\\/02.png\"]', null, '50.00', '50', '1', '1', '2020-07-01 15:09:08', '2020-07-02 17:56:16');
INSERT INTO `products` VALUES ('2', '47', '文玩收藏商品', '<p>这你是商品描述</p>', '[\"images\\/05.png\",\"images\\/04.png\"]', null, '0.01', '50', '1', '1', '2020-07-01 17:12:14', '2020-07-01 17:12:14');

-- ----------------------------
-- Table structure for push
-- ----------------------------
DROP TABLE IF EXISTS `push`;
CREATE TABLE `push` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of push
-- ----------------------------
INSERT INTO `push` VALUES ('3', '11', '1111', '2020-07-03 14:13:57', '2020-07-03 14:13:57');
INSERT INTO `push` VALUES ('4', '测试卷通知', '222', '2020-07-03 14:18:01', '2020-07-03 14:18:01');
INSERT INTO `push` VALUES ('5', '测试通知', '通知内容', '2020-07-03 14:35:01', '2020-07-03 14:35:01');
INSERT INTO `push` VALUES ('6', '通知测试32', '测试通知内容123456', '2020-07-03 14:44:24', '2020-07-03 14:44:24');

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
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `weapp_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `sex` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaultaddress_id` int(10) DEFAULT NULL COMMENT '默认收货地址id',
  `weapp_openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '微信id',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notification_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '未读消息',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`weapp_avatar`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'snow雪', 'https://wx.qlogo.cn/mmopen/vi_32/fvSzic2fdNUMgDEXQMSMy4qUHQCCCcyPhyZCaKibRcGFckNYyqicx2mfJiagqjKV0USu8icX9fnibDE9wqb4aMazNseA/132', null, null, '2', 'oUf9a5AT4xPDZy8lJ5Fpskh5gTqE', 'eyJpdiI6IkNIbEJKekVQUzljZzZ5TW03Z1dSNWc9PSIsInZhbHVlIjoiMWhlcTlCUlBqcUVjbnJyWmQ3SCtWR3BjRGMxYmVnNXd0RnF1djEyZytJZ0dlVmVsSWZxemFNXC9pazBLU25CRzciLCJtYWMiOiIzNDY0OTZmMmM0N2Q1N2FkY2YxOWNjOTVkM2U2N2ZiODcxMjlkYjRmYTlkMGJkZTkxOGNhOGY0YzFkMWNhYjA5In0=', '2020-06-18 17:27:23', '2020-07-03 14:44:24', '1', '0.00', '3');
INSERT INTO `users` VALUES ('2', 'xxx', null, null, null, null, 'xsadsa', null, null, '2020-07-03 14:45:38', '0', '0.00', '0');
INSERT INTO `users` VALUES ('3', 'snow雪', 'https://wx.qlogo.cn/mmopen/vi_32/P3OQkgnojFxA8yYWQQicicUbobTBg7lBh9E1m6kBR0kibQ90lv9QYowBWalB0knWBLZas27GZ0oJjWpciarPj0OLXw/132', null, null, null, 'oLZ7u0Frz9g4DmtKM21pqfqclkzM', 'eyJpdiI6Iit3cHpSYm9VSFZ2WEQxOTl6RnF6Y0E9PSIsInZhbHVlIjoib1c4dllHY3lPdElXMEtiS0VVZytRdDdNc1A1QWVXQmJzWjVSZUI4RE5pSE0wdXRUaVBjSWFzQTZhZ29kRWRTNSIsIm1hYyI6IjUxYzBkN2M2NzVmNzZiZTY1YWM3OGJmZjZmNWEyMTk1ZTY0MDhiMzZlYTFkNmZhYTZlZWNmYWY3YjBmZjgwNjMifQ==', '2020-07-04 12:05:05', '2020-07-04 13:18:10', '0', '0.00', '0');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_addresses
-- ----------------------------
INSERT INTO `user_addresses` VALUES ('1', '1', '江苏省', '南京市', '浦口区', '第22街道第238号', '朱晨晨2', '15766925847');
INSERT INTO `user_addresses` VALUES ('2', '1', '江苏省', '江苏省', '江苏省', 'dasd', '朱晨晨2', '12345645678');
INSERT INTO `user_addresses` VALUES ('4', '1', null, null, null, null, null, null);
INSERT INTO `user_addresses` VALUES ('5', '1', null, null, null, null, '朱晨晨2', null);

-- ----------------------------
-- Table structure for user_product
-- ----------------------------
DROP TABLE IF EXISTS `user_product`;
CREATE TABLE `user_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户',
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_product
-- ----------------------------
INSERT INTO `user_product` VALUES ('3', '1', '1', '2020-07-01 16:02:51', '2020-07-01 16:02:51');
INSERT INTO `user_product` VALUES ('4', '1', '2', '2020-07-01 17:12:44', '2020-07-01 17:12:44');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '测试视频', '测试视频描述', 'files/70c4662e8faeacb3df2ef4c3517f49c0.mp4', '2020-07-03 17:13:25', '2020-07-03 17:28:56');
