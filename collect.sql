/*
Navicat MySQL Data Transfer

Source Server         : 腾讯
Source Server Version : 50726
Source Host           : 49.234.34.184:3306
Source Database       : collect

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-07-13 13:46:01
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `admin_menu` VALUES ('9', '0', '11', '类别管理', 'fa-address-book-o', 'cate', '2020-06-21 15:03:54', '2020-07-06 11:06:11');
INSERT INTO `admin_menu` VALUES ('10', '0', '13', '商品管理', 'fa-archive', 'product', '2020-07-01 13:33:38', '2020-07-06 11:06:11');
INSERT INTO `admin_menu` VALUES ('11', '0', '14', '订单管理', 'fa-asl-interpreting', 'order', '2020-07-02 14:15:26', '2020-07-06 11:06:11');
INSERT INTO `admin_menu` VALUES ('12', '0', '15', '帮助中心', 'fa-angellist', 'help', '2020-07-02 16:31:41', '2020-07-06 11:06:11');
INSERT INTO `admin_menu` VALUES ('13', '0', '16', '关于我们', 'fa-area-chart', 'about', '2020-07-02 16:51:07', '2020-07-06 11:06:11');
INSERT INTO `admin_menu` VALUES ('14', '0', '12', '系统推送', 'fa-arrow-circle-right', 'push', '2020-07-03 14:12:53', '2020-07-06 11:06:11');
INSERT INTO `admin_menu` VALUES ('15', '0', '10', '视频', 'fa-bullhorn', 'video', '2020-07-03 15:11:02', '2020-07-06 11:06:11');
INSERT INTO `admin_menu` VALUES ('16', '0', '17', '提现申请', 'fa-book', 'tixian', '2020-07-05 18:51:08', '2020-07-06 11:06:11');
INSERT INTO `admin_menu` VALUES ('17', '0', '9', '用户管理', 'fa-address-book-o', 'user', '2020-07-06 11:05:57', '2020-07-06 11:06:11');

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
) ENGINE=InnoDB AUTO_INCREMENT=1213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `admin_operation_log` VALUES ('499', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-05 16:13:51', '2020-07-05 16:13:51');
INSERT INTO `admin_operation_log` VALUES ('500', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-05 17:11:36', '2020-07-05 17:11:36');
INSERT INTO `admin_operation_log` VALUES ('501', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"zEYQpuNp8yqkftZm4oxBz4MLa7BBjzCHkfdrzW1V\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-05 17:13:45', '2020-07-05 17:13:45');
INSERT INTO `admin_operation_log` VALUES ('502', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-05 17:13:46', '2020-07-05 17:13:46');
INSERT INTO `admin_operation_log` VALUES ('503', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:13:52', '2020-07-05 17:13:52');
INSERT INTO `admin_operation_log` VALUES ('504', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:13:53', '2020-07-05 17:13:53');
INSERT INTO `admin_operation_log` VALUES ('505', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-05 17:14:05', '2020-07-05 17:14:05');
INSERT INTO `admin_operation_log` VALUES ('506', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-05 17:14:08', '2020-07-05 17:14:08');
INSERT INTO `admin_operation_log` VALUES ('507', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:14:11', '2020-07-05 17:14:11');
INSERT INTO `admin_operation_log` VALUES ('508', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-05 17:14:41', '2020-07-05 17:14:41');
INSERT INTO `admin_operation_log` VALUES ('509', '1', 'admin/order/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:14:46', '2020-07-05 17:14:46');
INSERT INTO `admin_operation_log` VALUES ('510', '1', 'admin/order/11/edit', 'GET', '127.0.0.1', '[]', '2020-07-05 17:14:50', '2020-07-05 17:14:50');
INSERT INTO `admin_operation_log` VALUES ('511', '1', 'admin/order/11/edit', 'GET', '127.0.0.1', '[]', '2020-07-05 17:15:56', '2020-07-05 17:15:56');
INSERT INTO `admin_operation_log` VALUES ('512', '1', 'admin/order/11/edit', 'GET', '127.0.0.1', '[]', '2020-07-05 17:16:24', '2020-07-05 17:16:24');
INSERT INTO `admin_operation_log` VALUES ('513', '1', 'admin/order/11/edit', 'GET', '127.0.0.1', '[]', '2020-07-05 17:17:52', '2020-07-05 17:17:52');
INSERT INTO `admin_operation_log` VALUES ('514', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-05 17:19:46', '2020-07-05 17:19:46');
INSERT INTO `admin_operation_log` VALUES ('515', '1', 'admin/order/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:19:49', '2020-07-05 17:19:49');
INSERT INTO `admin_operation_log` VALUES ('516', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-05 17:20:39', '2020-07-05 17:20:39');
INSERT INTO `admin_operation_log` VALUES ('517', '1', 'admin/order/11', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:20:42', '2020-07-05 17:20:42');
INSERT INTO `admin_operation_log` VALUES ('518', '1', 'admin/order/11', 'GET', '127.0.0.1', '[]', '2020-07-05 17:20:45', '2020-07-05 17:20:45');
INSERT INTO `admin_operation_log` VALUES ('519', '1', 'admin/order/11', 'GET', '127.0.0.1', '[]', '2020-07-05 17:21:38', '2020-07-05 17:21:38');
INSERT INTO `admin_operation_log` VALUES ('520', '1', 'admin/order/11', 'GET', '127.0.0.1', '[]', '2020-07-05 17:21:58', '2020-07-05 17:21:58');
INSERT INTO `admin_operation_log` VALUES ('521', '1', 'admin/order/11', 'GET', '127.0.0.1', '[]', '2020-07-05 17:22:39', '2020-07-05 17:22:39');
INSERT INTO `admin_operation_log` VALUES ('522', '1', 'admin/order/11', 'GET', '127.0.0.1', '[]', '2020-07-05 17:23:05', '2020-07-05 17:23:05');
INSERT INTO `admin_operation_log` VALUES ('523', '1', 'admin/order/11', 'GET', '127.0.0.1', '[]', '2020-07-05 17:23:18', '2020-07-05 17:23:18');
INSERT INTO `admin_operation_log` VALUES ('524', '1', 'admin/order/11', 'GET', '127.0.0.1', '[]', '2020-07-05 17:25:01', '2020-07-05 17:25:01');
INSERT INTO `admin_operation_log` VALUES ('525', '1', 'admin/order/11', 'GET', '127.0.0.1', '[]', '2020-07-05 17:26:26', '2020-07-05 17:26:26');
INSERT INTO `admin_operation_log` VALUES ('526', '1', 'admin/order/11', 'GET', '127.0.0.1', '[]', '2020-07-05 17:26:44', '2020-07-05 17:26:44');
INSERT INTO `admin_operation_log` VALUES ('527', '1', 'admin/order/11', 'GET', '127.0.0.1', '[]', '2020-07-05 17:27:14', '2020-07-05 17:27:14');
INSERT INTO `admin_operation_log` VALUES ('528', '1', 'admin/order/11', 'GET', '127.0.0.1', '[]', '2020-07-05 17:28:51', '2020-07-05 17:28:51');
INSERT INTO `admin_operation_log` VALUES ('529', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:28:53', '2020-07-05 17:28:53');
INSERT INTO `admin_operation_log` VALUES ('530', '1', 'admin/order/16', 'GET', '127.0.0.1', '[]', '2020-07-05 17:28:58', '2020-07-05 17:28:58');
INSERT INTO `admin_operation_log` VALUES ('531', '1', 'admin/order/16', 'GET', '127.0.0.1', '[]', '2020-07-05 17:29:27', '2020-07-05 17:29:27');
INSERT INTO `admin_operation_log` VALUES ('532', '1', 'admin/order/16', 'GET', '127.0.0.1', '[]', '2020-07-05 17:30:10', '2020-07-05 17:30:10');
INSERT INTO `admin_operation_log` VALUES ('533', '1', 'admin/order/16', 'GET', '127.0.0.1', '[]', '2020-07-05 17:30:50', '2020-07-05 17:30:50');
INSERT INTO `admin_operation_log` VALUES ('534', '1', 'admin/order/16', 'GET', '127.0.0.1', '[]', '2020-07-05 17:31:01', '2020-07-05 17:31:01');
INSERT INTO `admin_operation_log` VALUES ('535', '1', 'admin/order/16', 'GET', '127.0.0.1', '[]', '2020-07-05 17:35:56', '2020-07-05 17:35:56');
INSERT INTO `admin_operation_log` VALUES ('536', '1', 'admin/order/16', 'GET', '127.0.0.1', '[]', '2020-07-05 17:37:02', '2020-07-05 17:37:02');
INSERT INTO `admin_operation_log` VALUES ('537', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:38:43', '2020-07-05 17:38:43');
INSERT INTO `admin_operation_log` VALUES ('538', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-05 17:39:55', '2020-07-05 17:39:55');
INSERT INTO `admin_operation_log` VALUES ('539', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-05 17:40:31', '2020-07-05 17:40:31');
INSERT INTO `admin_operation_log` VALUES ('540', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-05 17:40:49', '2020-07-05 17:40:49');
INSERT INTO `admin_operation_log` VALUES ('541', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-05 17:41:22', '2020-07-05 17:41:22');
INSERT INTO `admin_operation_log` VALUES ('542', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-05 17:41:53', '2020-07-05 17:41:53');
INSERT INTO `admin_operation_log` VALUES ('543', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:41:56', '2020-07-05 17:41:56');
INSERT INTO `admin_operation_log` VALUES ('544', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:41:58', '2020-07-05 17:41:58');
INSERT INTO `admin_operation_log` VALUES ('545', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:42:03', '2020-07-05 17:42:03');
INSERT INTO `admin_operation_log` VALUES ('546', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:42:04', '2020-07-05 17:42:04');
INSERT INTO `admin_operation_log` VALUES ('547', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:42:05', '2020-07-05 17:42:05');
INSERT INTO `admin_operation_log` VALUES ('548', '1', 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:42:09', '2020-07-05 17:42:09');
INSERT INTO `admin_operation_log` VALUES ('549', '1', 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:42:13', '2020-07-05 17:42:13');
INSERT INTO `admin_operation_log` VALUES ('550', '1', 'admin/about/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:42:15', '2020-07-05 17:42:15');
INSERT INTO `admin_operation_log` VALUES ('551', '1', 'admin/help', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:42:20', '2020-07-05 17:42:20');
INSERT INTO `admin_operation_log` VALUES ('552', '1', 'admin/help/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:42:23', '2020-07-05 17:42:23');
INSERT INTO `admin_operation_log` VALUES ('553', '1', 'admin/help', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:42:31', '2020-07-05 17:42:31');
INSERT INTO `admin_operation_log` VALUES ('554', '1', 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:42:34', '2020-07-05 17:42:34');
INSERT INTO `admin_operation_log` VALUES ('555', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:42:37', '2020-07-05 17:42:37');
INSERT INTO `admin_operation_log` VALUES ('556', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:42:39', '2020-07-05 17:42:39');
INSERT INTO `admin_operation_log` VALUES ('557', '1', 'admin/product/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 17:42:43', '2020-07-05 17:42:43');
INSERT INTO `admin_operation_log` VALUES ('558', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-07-05 17:43:36', '2020-07-05 17:43:36');
INSERT INTO `admin_operation_log` VALUES ('559', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:10:37', '2020-07-05 18:10:37');
INSERT INTO `admin_operation_log` VALUES ('560', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:10:39', '2020-07-05 18:10:39');
INSERT INTO `admin_operation_log` VALUES ('561', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:48:29', '2020-07-05 18:48:29');
INSERT INTO `admin_operation_log` VALUES ('562', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"withdrawal\",\"_token\":\"89eQq7sULRKf5REMOfwtZjyMlwpVzSQVp2mqKAPR\"}', '2020-07-05 18:48:39', '2020-07-05 18:48:39');
INSERT INTO `admin_operation_log` VALUES ('563', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"withdrawal\"}', '2020-07-05 18:48:39', '2020-07-05 18:48:39');
INSERT INTO `admin_operation_log` VALUES ('564', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"withdrawal\",\"exist-table\":\"collect|withdrawal\",\"model_name\":\"App\\\\Models\\\\Withdrawal\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\WithdrawalController\",\"create\":[\"model\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"name\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"card\",\"translation\":\"\\u94f6\\u884c\\u5361\\u53f7\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u94f6\\u884c\\u5361\\u53f7\"},{\"name\":\"bank\",\"translation\":\"\\u5f00\\u6237\\u884c\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5f00\\u6237\\u884c\"},{\"name\":\"moeny\",\"translation\":null,\"type\":\"decimal\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"mannumber\",\"translation\":\"\\u8eab\\u4efd\\u8bc1\\u53f7\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u8eab\\u4efd\\u8bc1\\u53f7\"},{\"name\":\"phone\",\"translation\":\"\\u8054\\u7cfb\\u7535\\u8bdd\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u8054\\u7cfb\\u7535\\u8bdd\"},{\"name\":\"status\",\"translation\":\"1\\u5df2\\u7533\\u8bf72,\\u5df2\\u62e8\\u6b3e\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"1\\u5df2\\u7533\\u8bf72,\\u5df2\\u62e8\\u6b3e\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"89eQq7sULRKf5REMOfwtZjyMlwpVzSQVp2mqKAPR\"}', '2020-07-05 18:48:56', '2020-07-05 18:48:56');
INSERT INTO `admin_operation_log` VALUES ('565', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-05 18:48:57', '2020-07-05 18:48:57');
INSERT INTO `admin_operation_log` VALUES ('566', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:50:30', '2020-07-05 18:50:30');
INSERT INTO `admin_operation_log` VALUES ('567', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u63d0\\u73b0\\u7533\\u8bf7\",\"icon\":\"fa-book\",\"uri\":\"tixian\",\"roles\":[null],\"permissions\":null,\"_token\":\"89eQq7sULRKf5REMOfwtZjyMlwpVzSQVp2mqKAPR\"}', '2020-07-05 18:51:08', '2020-07-05 18:51:08');
INSERT INTO `admin_operation_log` VALUES ('568', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:51:09', '2020-07-05 18:51:09');
INSERT INTO `admin_operation_log` VALUES ('569', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-05 18:51:11', '2020-07-05 18:51:11');
INSERT INTO `admin_operation_log` VALUES ('570', '1', 'admin/tixian', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:51:15', '2020-07-05 18:51:15');
INSERT INTO `admin_operation_log` VALUES ('571', '1', 'admin/tixian', 'GET', '127.0.0.1', '[]', '2020-07-05 18:52:20', '2020-07-05 18:52:20');
INSERT INTO `admin_operation_log` VALUES ('572', '1', 'admin/tixian/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:52:22', '2020-07-05 18:52:22');
INSERT INTO `admin_operation_log` VALUES ('573', '1', 'admin/tixian', 'POST', '127.0.0.1', '{\"name\":\"\\u5f20\\u4e09\",\"card\":\"123456789\",\"bank\":\"\\u4e2d\\u56fd\\u94f6\\u884c\",\"moeny\":\"50\",\"mannumber\":\"123456789\",\"phone\":\"15766925847\",\"status\":\"1\",\"_token\":\"89eQq7sULRKf5REMOfwtZjyMlwpVzSQVp2mqKAPR\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/tixian\"}', '2020-07-05 18:53:11', '2020-07-05 18:53:11');
INSERT INTO `admin_operation_log` VALUES ('574', '1', 'admin/tixian', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:53:12', '2020-07-05 18:53:12');
INSERT INTO `admin_operation_log` VALUES ('575', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:55:47', '2020-07-05 18:55:47');
INSERT INTO `admin_operation_log` VALUES ('576', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:55:49', '2020-07-05 18:55:49');
INSERT INTO `admin_operation_log` VALUES ('577', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:55:51', '2020-07-05 18:55:51');
INSERT INTO `admin_operation_log` VALUES ('578', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:55:53', '2020-07-05 18:55:53');
INSERT INTO `admin_operation_log` VALUES ('579', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '[]', '2020-07-05 18:57:16', '2020-07-05 18:57:16');
INSERT INTO `admin_operation_log` VALUES ('580', '1', 'admin/tixian', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:57:18', '2020-07-05 18:57:18');
INSERT INTO `admin_operation_log` VALUES ('581', '1', 'admin/tixian', 'GET', '127.0.0.1', '[]', '2020-07-05 18:57:44', '2020-07-05 18:57:44');
INSERT INTO `admin_operation_log` VALUES ('582', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:58:28', '2020-07-05 18:58:28');
INSERT INTO `admin_operation_log` VALUES ('583', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:58:29', '2020-07-05 18:58:29');
INSERT INTO `admin_operation_log` VALUES ('584', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:58:30', '2020-07-05 18:58:30');
INSERT INTO `admin_operation_log` VALUES ('585', '1', 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:58:32', '2020-07-05 18:58:32');
INSERT INTO `admin_operation_log` VALUES ('586', '1', 'admin/tixian', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 18:58:33', '2020-07-05 18:58:33');
INSERT INTO `admin_operation_log` VALUES ('587', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-05 23:27:20', '2020-07-05 23:27:20');
INSERT INTO `admin_operation_log` VALUES ('588', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"bbT6Akf3APS9BFeehdhS62df5PAoNgqsopzN6TqL\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-05 23:27:29', '2020-07-05 23:27:29');
INSERT INTO `admin_operation_log` VALUES ('589', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-05 23:27:31', '2020-07-05 23:27:31');
INSERT INTO `admin_operation_log` VALUES ('590', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:27:40', '2020-07-05 23:27:40');
INSERT INTO `admin_operation_log` VALUES ('591', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:27:42', '2020-07-05 23:27:42');
INSERT INTO `admin_operation_log` VALUES ('592', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:27:50', '2020-07-05 23:27:50');
INSERT INTO `admin_operation_log` VALUES ('593', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"users\",\"_token\":\"41vY9BFOp5L8uZqyR0AstTDrjbQHQo4kJPkZL8vh\"}', '2020-07-05 23:27:57', '2020-07-05 23:27:57');
INSERT INTO `admin_operation_log` VALUES ('594', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-05 23:27:57', '2020-07-05 23:27:57');
INSERT INTO `admin_operation_log` VALUES ('595', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"users\",\"exist-table\":\"collect|users\",\"model_name\":\"App\\\\Models\\\\User\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\UserController\",\"create\":[\"controller\",\"lang\"],\"fields\":[{\"name\":\"nickname\",\"translation\":\"\\u6635\\u79f0\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u6635\\u79f0\"},{\"name\":\"weapp_avatar\",\"translation\":\"\\u5934\\u50cf\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5934\\u50cf\"},{\"name\":\"sex\",\"translation\":null,\"type\":\"char\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"birthday\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"defaultaddress_id\",\"translation\":\"\\u9ed8\\u8ba4\\u6536\\u8d27\\u5730\\u5740id\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u9ed8\\u8ba4\\u6536\\u8d27\\u5730\\u5740id\"},{\"name\":\"weapp_openid\",\"translation\":\"\\u5fae\\u4fe1id\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u5fae\\u4fe1id\"},{\"name\":\"token\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"notification_count\",\"translation\":\"\\u672a\\u8bfb\\u6d88\\u606f\",\"type\":\"unsignedInteger\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u672a\\u8bfb\\u6d88\\u606f\"},{\"name\":\"balance\",\"translation\":null,\"type\":\"decimal\",\"key\":null,\"default\":\"0.00\",\"comment\":null},{\"name\":\"pid\",\"translation\":\"\\u4e0a\\u7ea7id\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u4e0a\\u7ea7id\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"41vY9BFOp5L8uZqyR0AstTDrjbQHQo4kJPkZL8vh\"}', '2020-07-05 23:28:39', '2020-07-05 23:28:39');
INSERT INTO `admin_operation_log` VALUES ('596', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-05 23:28:42', '2020-07-05 23:28:42');
INSERT INTO `admin_operation_log` VALUES ('597', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:28:47', '2020-07-05 23:28:47');
INSERT INTO `admin_operation_log` VALUES ('598', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-05 23:30:21', '2020-07-05 23:30:21');
INSERT INTO `admin_operation_log` VALUES ('599', '1', 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:30:27', '2020-07-05 23:30:27');
INSERT INTO `admin_operation_log` VALUES ('600', '1', 'admin/tixian', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:32:40', '2020-07-05 23:32:40');
INSERT INTO `admin_operation_log` VALUES ('601', '1', 'admin/tixian', 'GET', '127.0.0.1', '[]', '2020-07-05 23:33:26', '2020-07-05 23:33:26');
INSERT INTO `admin_operation_log` VALUES ('602', '1', 'admin/tixian', 'GET', '127.0.0.1', '[]', '2020-07-05 23:38:30', '2020-07-05 23:38:30');
INSERT INTO `admin_operation_log` VALUES ('603', '1', 'admin/help', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:38:33', '2020-07-05 23:38:33');
INSERT INTO `admin_operation_log` VALUES ('604', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:38:34', '2020-07-05 23:38:34');
INSERT INTO `admin_operation_log` VALUES ('605', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:38:35', '2020-07-05 23:38:35');
INSERT INTO `admin_operation_log` VALUES ('606', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:38:36', '2020-07-05 23:38:36');
INSERT INTO `admin_operation_log` VALUES ('607', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:38:37', '2020-07-05 23:38:37');
INSERT INTO `admin_operation_log` VALUES ('608', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:38:38', '2020-07-05 23:38:38');
INSERT INTO `admin_operation_log` VALUES ('609', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-05 23:38:58', '2020-07-05 23:38:58');
INSERT INTO `admin_operation_log` VALUES ('610', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-05 23:42:57', '2020-07-05 23:42:57');
INSERT INTO `admin_operation_log` VALUES ('611', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_token\":\"41vY9BFOp5L8uZqyR0AstTDrjbQHQo4kJPkZL8vh\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-05 23:43:16', '2020-07-05 23:43:16');
INSERT INTO `admin_operation_log` VALUES ('612', '1', 'admin/cate/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:43:21', '2020-07-05 23:43:21');
INSERT INTO `admin_operation_log` VALUES ('613', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:43:55', '2020-07-05 23:43:55');
INSERT INTO `admin_operation_log` VALUES ('614', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_token\":\"41vY9BFOp5L8uZqyR0AstTDrjbQHQo4kJPkZL8vh\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-05 23:43:57', '2020-07-05 23:43:57');
INSERT INTO `admin_operation_log` VALUES ('615', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-05 23:44:53', '2020-07-05 23:44:53');
INSERT INTO `admin_operation_log` VALUES ('616', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_token\":\"41vY9BFOp5L8uZqyR0AstTDrjbQHQo4kJPkZL8vh\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-05 23:47:11', '2020-07-05 23:47:11');
INSERT INTO `admin_operation_log` VALUES ('617', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-05 23:47:50', '2020-07-05 23:47:50');
INSERT INTO `admin_operation_log` VALUES ('618', '1', 'admin/cate/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:47:53', '2020-07-05 23:47:53');
INSERT INTO `admin_operation_log` VALUES ('619', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:48:16', '2020-07-05 23:48:16');
INSERT INTO `admin_operation_log` VALUES ('620', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:48:17', '2020-07-05 23:48:17');
INSERT INTO `admin_operation_log` VALUES ('621', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_token\":\"41vY9BFOp5L8uZqyR0AstTDrjbQHQo4kJPkZL8vh\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-05 23:48:19', '2020-07-05 23:48:19');
INSERT INTO `admin_operation_log` VALUES ('622', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-05 23:48:31', '2020-07-05 23:48:31');
INSERT INTO `admin_operation_log` VALUES ('623', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:48:34', '2020-07-05 23:48:34');
INSERT INTO `admin_operation_log` VALUES ('624', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:48:37', '2020-07-05 23:48:37');
INSERT INTO `admin_operation_log` VALUES ('625', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:48:47', '2020-07-05 23:48:47');
INSERT INTO `admin_operation_log` VALUES ('626', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:48:56', '2020-07-05 23:48:56');
INSERT INTO `admin_operation_log` VALUES ('627', '1', 'admin/cate/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:48:59', '2020-07-05 23:48:59');
INSERT INTO `admin_operation_log` VALUES ('628', '1', 'admin/cate/28/edit', 'GET', '127.0.0.1', '[]', '2020-07-05 23:50:21', '2020-07-05 23:50:21');
INSERT INTO `admin_operation_log` VALUES ('629', '1', 'admin/cate/28/edit', 'GET', '127.0.0.1', '[]', '2020-07-05 23:50:37', '2020-07-05 23:50:37');
INSERT INTO `admin_operation_log` VALUES ('630', '1', 'admin/cate/28/edit', 'GET', '127.0.0.1', '[]', '2020-07-05 23:50:52', '2020-07-05 23:50:52');
INSERT INTO `admin_operation_log` VALUES ('631', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:50:55', '2020-07-05 23:50:55');
INSERT INTO `admin_operation_log` VALUES ('632', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:50:56', '2020-07-05 23:50:56');
INSERT INTO `admin_operation_log` VALUES ('633', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:50:57', '2020-07-05 23:50:57');
INSERT INTO `admin_operation_log` VALUES ('634', '1', 'admin/cate/30/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:51:01', '2020-07-05 23:51:01');
INSERT INTO `admin_operation_log` VALUES ('635', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:51:03', '2020-07-05 23:51:03');
INSERT INTO `admin_operation_log` VALUES ('636', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:51:06', '2020-07-05 23:51:06');
INSERT INTO `admin_operation_log` VALUES ('637', '1', 'admin/cate', 'POST', '127.0.0.1', '{\"text\":\"\\u6d4b\\u8bd5\\u4e8c\\u7ea7\",\"parent_id\":\"28\",\"_token\":\"41vY9BFOp5L8uZqyR0AstTDrjbQHQo4kJPkZL8vh\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-05 23:51:30', '2020-07-05 23:51:30');
INSERT INTO `admin_operation_log` VALUES ('638', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:51:30', '2020-07-05 23:51:30');
INSERT INTO `admin_operation_log` VALUES ('639', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_token\":\"41vY9BFOp5L8uZqyR0AstTDrjbQHQo4kJPkZL8vh\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-05 23:51:33', '2020-07-05 23:51:33');
INSERT INTO `admin_operation_log` VALUES ('640', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:51:35', '2020-07-05 23:51:35');
INSERT INTO `admin_operation_log` VALUES ('641', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:51:38', '2020-07-05 23:51:38');
INSERT INTO `admin_operation_log` VALUES ('642', '1', 'admin/push', 'GET', '127.0.0.1', '[]', '2020-07-05 23:51:49', '2020-07-05 23:51:49');
INSERT INTO `admin_operation_log` VALUES ('643', '1', 'admin/push/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-05 23:51:55', '2020-07-05 23:51:55');
INSERT INTO `admin_operation_log` VALUES ('644', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-06 09:50:18', '2020-07-06 09:50:18');
INSERT INTO `admin_operation_log` VALUES ('645', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"oWPcyIRbN0lHM1gDfFBTpMELy5pPCXjsdQW8O0fH\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-06 09:50:26', '2020-07-06 09:50:26');
INSERT INTO `admin_operation_log` VALUES ('646', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-06 09:50:27', '2020-07-06 09:50:27');
INSERT INTO `admin_operation_log` VALUES ('647', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 09:50:37', '2020-07-06 09:50:37');
INSERT INTO `admin_operation_log` VALUES ('648', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 09:50:38', '2020-07-06 09:50:38');
INSERT INTO `admin_operation_log` VALUES ('649', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 09:50:41', '2020-07-06 09:50:41');
INSERT INTO `admin_operation_log` VALUES ('650', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 09:50:42', '2020-07-06 09:50:42');
INSERT INTO `admin_operation_log` VALUES ('651', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 09:50:44', '2020-07-06 09:50:44');
INSERT INTO `admin_operation_log` VALUES ('652', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 09:50:53', '2020-07-06 09:50:53');
INSERT INTO `admin_operation_log` VALUES ('653', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 09:50:55', '2020-07-06 09:50:55');
INSERT INTO `admin_operation_log` VALUES ('654', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 09:50:56', '2020-07-06 09:50:56');
INSERT INTO `admin_operation_log` VALUES ('655', '1', 'admin/help', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 09:50:58', '2020-07-06 09:50:58');
INSERT INTO `admin_operation_log` VALUES ('656', '1', 'admin/help', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 09:51:00', '2020-07-06 09:51:00');
INSERT INTO `admin_operation_log` VALUES ('657', '1', 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 09:51:01', '2020-07-06 09:51:01');
INSERT INTO `admin_operation_log` VALUES ('658', '1', 'admin/tixian', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 09:51:02', '2020-07-06 09:51:02');
INSERT INTO `admin_operation_log` VALUES ('659', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 09:51:05', '2020-07-06 09:51:05');
INSERT INTO `admin_operation_log` VALUES ('660', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 09:51:06', '2020-07-06 09:51:06');
INSERT INTO `admin_operation_log` VALUES ('661', '1', 'admin/video', 'GET', '127.0.0.1', '[]', '2020-07-06 09:59:44', '2020-07-06 09:59:44');
INSERT INTO `admin_operation_log` VALUES ('662', '1', 'admin/video', 'GET', '127.0.0.1', '[]', '2020-07-06 10:01:17', '2020-07-06 10:01:17');
INSERT INTO `admin_operation_log` VALUES ('663', '1', 'admin/video', 'GET', '127.0.0.1', '[]', '2020-07-06 10:01:38', '2020-07-06 10:01:38');
INSERT INTO `admin_operation_log` VALUES ('664', '1', 'admin/video', 'GET', '127.0.0.1', '[]', '2020-07-06 10:02:19', '2020-07-06 10:02:19');
INSERT INTO `admin_operation_log` VALUES ('665', '1', 'admin/video', 'GET', '127.0.0.1', '[]', '2020-07-06 10:03:57', '2020-07-06 10:03:57');
INSERT INTO `admin_operation_log` VALUES ('666', '1', 'admin/video', 'GET', '127.0.0.1', '[]', '2020-07-06 10:04:20', '2020-07-06 10:04:20');
INSERT INTO `admin_operation_log` VALUES ('667', '1', 'admin/video', 'GET', '127.0.0.1', '[]', '2020-07-06 10:04:33', '2020-07-06 10:04:33');
INSERT INTO `admin_operation_log` VALUES ('668', '1', 'admin/video', 'GET', '127.0.0.1', '[]', '2020-07-06 10:05:03', '2020-07-06 10:05:03');
INSERT INTO `admin_operation_log` VALUES ('669', '1', 'admin/video', 'GET', '127.0.0.1', '[]', '2020-07-06 10:05:12', '2020-07-06 10:05:12');
INSERT INTO `admin_operation_log` VALUES ('670', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 11:04:47', '2020-07-06 11:04:47');
INSERT INTO `admin_operation_log` VALUES ('671', '1', 'admin/help', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 11:04:49', '2020-07-06 11:04:49');
INSERT INTO `admin_operation_log` VALUES ('672', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 11:04:52', '2020-07-06 11:04:52');
INSERT INTO `admin_operation_log` VALUES ('673', '1', 'admin/help', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 11:04:53', '2020-07-06 11:04:53');
INSERT INTO `admin_operation_log` VALUES ('674', '1', 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 11:04:54', '2020-07-06 11:04:54');
INSERT INTO `admin_operation_log` VALUES ('675', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 11:05:39', '2020-07-06 11:05:39');
INSERT INTO `admin_operation_log` VALUES ('676', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-address-book-o\",\"uri\":\"user\",\"roles\":[null],\"permissions\":null,\"_token\":\"Z4Mj9WmZqozT7d9vftQcboJrn2bFKmq2r9HJUawx\"}', '2020-07-06 11:05:56', '2020-07-06 11:05:56');
INSERT INTO `admin_operation_log` VALUES ('677', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 11:05:57', '2020-07-06 11:05:57');
INSERT INTO `admin_operation_log` VALUES ('678', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"Z4Mj9WmZqozT7d9vftQcboJrn2bFKmq2r9HJUawx\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":17},{\\\"id\\\":15},{\\\"id\\\":9},{\\\"id\\\":14},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13},{\\\"id\\\":16}]\"}', '2020-07-06 11:06:11', '2020-07-06 11:06:11');
INSERT INTO `admin_operation_log` VALUES ('679', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 11:06:12', '2020-07-06 11:06:12');
INSERT INTO `admin_operation_log` VALUES ('680', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-06 11:06:15', '2020-07-06 11:06:15');
INSERT INTO `admin_operation_log` VALUES ('681', '1', 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 11:06:18', '2020-07-06 11:06:18');
INSERT INTO `admin_operation_log` VALUES ('682', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:07:29', '2020-07-06 11:07:29');
INSERT INTO `admin_operation_log` VALUES ('683', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:10:30', '2020-07-06 11:10:30');
INSERT INTO `admin_operation_log` VALUES ('684', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:11:17', '2020-07-06 11:11:17');
INSERT INTO `admin_operation_log` VALUES ('685', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:14:04', '2020-07-06 11:14:04');
INSERT INTO `admin_operation_log` VALUES ('686', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:14:56', '2020-07-06 11:14:56');
INSERT INTO `admin_operation_log` VALUES ('687', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:15:15', '2020-07-06 11:15:15');
INSERT INTO `admin_operation_log` VALUES ('688', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:15:46', '2020-07-06 11:15:46');
INSERT INTO `admin_operation_log` VALUES ('689', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:16:07', '2020-07-06 11:16:07');
INSERT INTO `admin_operation_log` VALUES ('690', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:16:26', '2020-07-06 11:16:26');
INSERT INTO `admin_operation_log` VALUES ('691', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:16:42', '2020-07-06 11:16:42');
INSERT INTO `admin_operation_log` VALUES ('692', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:17:03', '2020-07-06 11:17:03');
INSERT INTO `admin_operation_log` VALUES ('693', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:22:32', '2020-07-06 11:22:32');
INSERT INTO `admin_operation_log` VALUES ('694', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:23:18', '2020-07-06 11:23:18');
INSERT INTO `admin_operation_log` VALUES ('695', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:25:45', '2020-07-06 11:25:45');
INSERT INTO `admin_operation_log` VALUES ('696', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:26:26', '2020-07-06 11:26:26');
INSERT INTO `admin_operation_log` VALUES ('697', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:27:00', '2020-07-06 11:27:00');
INSERT INTO `admin_operation_log` VALUES ('698', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:27:39', '2020-07-06 11:27:39');
INSERT INTO `admin_operation_log` VALUES ('699', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:28:36', '2020-07-06 11:28:36');
INSERT INTO `admin_operation_log` VALUES ('700', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:29:17', '2020-07-06 11:29:17');
INSERT INTO `admin_operation_log` VALUES ('701', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:29:48', '2020-07-06 11:29:48');
INSERT INTO `admin_operation_log` VALUES ('702', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:30:33', '2020-07-06 11:30:33');
INSERT INTO `admin_operation_log` VALUES ('703', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:30:53', '2020-07-06 11:30:53');
INSERT INTO `admin_operation_log` VALUES ('704', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:31:33', '2020-07-06 11:31:33');
INSERT INTO `admin_operation_log` VALUES ('705', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:36:50', '2020-07-06 11:36:50');
INSERT INTO `admin_operation_log` VALUES ('706', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:37:03', '2020-07-06 11:37:03');
INSERT INTO `admin_operation_log` VALUES ('707', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:37:42', '2020-07-06 11:37:42');
INSERT INTO `admin_operation_log` VALUES ('708', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:40:03', '2020-07-06 11:40:03');
INSERT INTO `admin_operation_log` VALUES ('709', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:40:27', '2020-07-06 11:40:27');
INSERT INTO `admin_operation_log` VALUES ('710', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-06 11:41:09', '2020-07-06 11:41:09');
INSERT INTO `admin_operation_log` VALUES ('711', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 11:47:21', '2020-07-06 11:47:21');
INSERT INTO `admin_operation_log` VALUES ('712', '1', 'admin/help', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 11:47:25', '2020-07-06 11:47:25');
INSERT INTO `admin_operation_log` VALUES ('713', '1', 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 11:47:27', '2020-07-06 11:47:27');
INSERT INTO `admin_operation_log` VALUES ('714', '1', 'admin/about', 'GET', '127.0.0.1', '[]', '2020-07-06 11:51:39', '2020-07-06 11:51:39');
INSERT INTO `admin_operation_log` VALUES ('715', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-06 11:55:47', '2020-07-06 11:55:47');
INSERT INTO `admin_operation_log` VALUES ('716', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-06 11:56:25', '2020-07-06 11:56:25');
INSERT INTO `admin_operation_log` VALUES ('717', '1', 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 11:56:33', '2020-07-06 11:56:33');
INSERT INTO `admin_operation_log` VALUES ('718', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-06 11:56:34', '2020-07-06 11:56:34');
INSERT INTO `admin_operation_log` VALUES ('719', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-06 11:58:46', '2020-07-06 11:58:46');
INSERT INTO `admin_operation_log` VALUES ('720', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-10 11:32:09', '2020-07-10 11:32:09');
INSERT INTO `admin_operation_log` VALUES ('721', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"IyOtjg6iuvGLJhGg2v1AaeYtZ1xl3t6lZzhFfWWs\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-10 11:32:40', '2020-07-10 11:32:40');
INSERT INTO `admin_operation_log` VALUES ('722', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-10 11:32:41', '2020-07-10 11:32:41');
INSERT INTO `admin_operation_log` VALUES ('723', '1', 'admin/tixian', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 11:33:51', '2020-07-10 11:33:51');
INSERT INTO `admin_operation_log` VALUES ('724', '1', 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 11:33:52', '2020-07-10 11:33:52');
INSERT INTO `admin_operation_log` VALUES ('725', '1', 'admin/help', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 11:33:53', '2020-07-10 11:33:53');
INSERT INTO `admin_operation_log` VALUES ('726', '1', 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 11:53:42', '2020-07-10 11:53:42');
INSERT INTO `admin_operation_log` VALUES ('727', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-10 11:53:46', '2020-07-10 11:53:46');
INSERT INTO `admin_operation_log` VALUES ('728', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-10 11:53:54', '2020-07-10 11:53:54');
INSERT INTO `admin_operation_log` VALUES ('729', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-10 11:54:32', '2020-07-10 11:54:32');
INSERT INTO `admin_operation_log` VALUES ('730', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-10 11:54:37', '2020-07-10 11:54:37');
INSERT INTO `admin_operation_log` VALUES ('731', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-10 11:54:59', '2020-07-10 11:54:59');
INSERT INTO `admin_operation_log` VALUES ('732', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-10 11:55:13', '2020-07-10 11:55:13');
INSERT INTO `admin_operation_log` VALUES ('733', '1', 'admin/user', 'GET', '127.0.0.1', '[]', '2020-07-10 11:55:30', '2020-07-10 11:55:30');
INSERT INTO `admin_operation_log` VALUES ('734', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 11:55:48', '2020-07-10 11:55:48');
INSERT INTO `admin_operation_log` VALUES ('735', '1', 'admin/video/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 11:55:55', '2020-07-10 11:55:55');
INSERT INTO `admin_operation_log` VALUES ('736', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 11:56:03', '2020-07-10 11:56:03');
INSERT INTO `admin_operation_log` VALUES ('737', '1', 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 11:56:04', '2020-07-10 11:56:04');
INSERT INTO `admin_operation_log` VALUES ('738', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 11:56:05', '2020-07-10 11:56:05');
INSERT INTO `admin_operation_log` VALUES ('739', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 11:56:06', '2020-07-10 11:56:06');
INSERT INTO `admin_operation_log` VALUES ('740', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 11:56:07', '2020-07-10 11:56:07');
INSERT INTO `admin_operation_log` VALUES ('741', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 11:56:08', '2020-07-10 11:56:08');
INSERT INTO `admin_operation_log` VALUES ('742', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 11:56:09', '2020-07-10 11:56:09');
INSERT INTO `admin_operation_log` VALUES ('743', '1', 'admin/help', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 11:56:11', '2020-07-10 11:56:11');
INSERT INTO `admin_operation_log` VALUES ('744', '1', 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 11:56:12', '2020-07-10 11:56:12');
INSERT INTO `admin_operation_log` VALUES ('745', '1', 'admin/tixian', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 11:56:13', '2020-07-10 11:56:13');
INSERT INTO `admin_operation_log` VALUES ('746', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-10 14:30:43', '2020-07-10 14:30:43');
INSERT INTO `admin_operation_log` VALUES ('747', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"rxpo8Drf7Y8DcUNU3SiTM3XJegs6O2ToCiadC3qu\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-10 14:30:48', '2020-07-10 14:30:48');
INSERT INTO `admin_operation_log` VALUES ('748', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-10 14:30:49', '2020-07-10 14:30:49');
INSERT INTO `admin_operation_log` VALUES ('749', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:30:53', '2020-07-10 14:30:53');
INSERT INTO `admin_operation_log` VALUES ('750', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-10 14:30:54', '2020-07-10 14:30:54');
INSERT INTO `admin_operation_log` VALUES ('751', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-10 14:35:03', '2020-07-10 14:35:03');
INSERT INTO `admin_operation_log` VALUES ('752', '1', 'admin/cate/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:39:43', '2020-07-10 14:39:43');
INSERT INTO `admin_operation_log` VALUES ('753', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:39:50', '2020-07-10 14:39:50');
INSERT INTO `admin_operation_log` VALUES ('754', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-10 14:39:52', '2020-07-10 14:39:52');
INSERT INTO `admin_operation_log` VALUES ('755', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:39:53', '2020-07-10 14:39:53');
INSERT INTO `admin_operation_log` VALUES ('756', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:39:59', '2020-07-10 14:39:59');
INSERT INTO `admin_operation_log` VALUES ('757', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:40:02', '2020-07-10 14:40:02');
INSERT INTO `admin_operation_log` VALUES ('758', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:40:03', '2020-07-10 14:40:03');
INSERT INTO `admin_operation_log` VALUES ('759', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:40:12', '2020-07-10 14:40:12');
INSERT INTO `admin_operation_log` VALUES ('760', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-10 14:40:14', '2020-07-10 14:40:14');
INSERT INTO `admin_operation_log` VALUES ('761', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_parent_id_\":\"30\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_children_page_30\":\"1\"}', '2020-07-10 14:40:16', '2020-07-10 14:40:16');
INSERT INTO `admin_operation_log` VALUES ('762', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_parent_id_\":\"46\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_children_page_46\":\"1\"}', '2020-07-10 14:40:54', '2020-07-10 14:40:54');
INSERT INTO `admin_operation_log` VALUES ('763', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_parent_id_\":\"48\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_children_page_48\":\"1\"}', '2020-07-10 14:40:55', '2020-07-10 14:40:55');
INSERT INTO `admin_operation_log` VALUES ('764', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_children_page_29\":\"1\"}', '2020-07-10 14:40:57', '2020-07-10 14:40:57');
INSERT INTO `admin_operation_log` VALUES ('765', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-10 14:40:58', '2020-07-10 14:40:58');
INSERT INTO `admin_operation_log` VALUES ('766', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-10 14:41:01', '2020-07-10 14:41:01');
INSERT INTO `admin_operation_log` VALUES ('767', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_parent_id_\":\"29\",\"_tier_\":\"2\",\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_children_page_29\":\"1\"}', '2020-07-10 14:41:21', '2020-07-10 14:41:21');
INSERT INTO `admin_operation_log` VALUES ('768', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:41:22', '2020-07-10 14:41:22');
INSERT INTO `admin_operation_log` VALUES ('769', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:41:37', '2020-07-10 14:41:37');
INSERT INTO `admin_operation_log` VALUES ('770', '1', 'admin/push', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:42:20', '2020-07-10 14:42:20');
INSERT INTO `admin_operation_log` VALUES ('771', '1', 'admin/push', 'GET', '127.0.0.1', '[]', '2020-07-10 14:47:03', '2020-07-10 14:47:03');
INSERT INTO `admin_operation_log` VALUES ('772', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:47:07', '2020-07-10 14:47:07');
INSERT INTO `admin_operation_log` VALUES ('773', '1', 'admin/cate/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:47:09', '2020-07-10 14:47:09');
INSERT INTO `admin_operation_log` VALUES ('774', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:47:13', '2020-07-10 14:47:13');
INSERT INTO `admin_operation_log` VALUES ('775', '1', 'admin/cate/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:47:15', '2020-07-10 14:47:15');
INSERT INTO `admin_operation_log` VALUES ('776', '1', 'admin/cate/28', 'PUT', '127.0.0.1', '{\"_id\":\"wAWW8guOv7sNoSd0\",\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"upload_column\":\"image\",\"_method\":\"PUT\",\"id\":\"WU_FILE_1\",\"name\":\"bg.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Thu Nov 14 2019 11:55:21 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"26157\"}', '2020-07-10 14:47:53', '2020-07-10 14:47:53');
INSERT INTO `admin_operation_log` VALUES ('777', '1', 'admin/cate/28', 'PUT', '127.0.0.1', '{\"_id\":\"wAWW8guOv7sNoSd0\",\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_method\":\"PUT\",\"image\":\"images\\/de2485bd1bdaf5c8a6436f468a3489cf.jpg\"}', '2020-07-10 14:47:53', '2020-07-10 14:47:53');
INSERT INTO `admin_operation_log` VALUES ('778', '1', 'admin/cate/28', 'PUT', '127.0.0.1', '{\"text\":\"\\u7cbe\\u54c1\\u5178\\u85cf\",\"parent_id\":null,\"image\":\"images\\/de2485bd1bdaf5c8a6436f468a3489cf.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-10 14:47:54', '2020-07-10 14:47:54');
INSERT INTO `admin_operation_log` VALUES ('779', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:47:54', '2020-07-10 14:47:54');
INSERT INTO `admin_operation_log` VALUES ('780', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_children_page_30\":\"1\"}', '2020-07-10 14:49:39', '2020-07-10 14:49:39');
INSERT INTO `admin_operation_log` VALUES ('781', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-10 14:49:53', '2020-07-10 14:49:53');
INSERT INTO `admin_operation_log` VALUES ('782', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-10 14:49:56', '2020-07-10 14:49:56');
INSERT INTO `admin_operation_log` VALUES ('783', '1', 'admin/cate/30/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:50:27', '2020-07-10 14:50:27');
INSERT INTO `admin_operation_log` VALUES ('784', '1', 'admin/cate/30', 'PUT', '127.0.0.1', '{\"_id\":\"OcR7Zxh2YHMSAtgm\",\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"upload_column\":\"image\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"bg.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Thu Nov 14 2019 11:55:21 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"26157\"}', '2020-07-10 14:50:34', '2020-07-10 14:50:34');
INSERT INTO `admin_operation_log` VALUES ('785', '1', 'admin/cate/30', 'PUT', '127.0.0.1', '{\"_id\":\"OcR7Zxh2YHMSAtgm\",\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_method\":\"PUT\",\"image\":\"images\\/0e50269ca4e4a318092c160682b802cb.jpg\"}', '2020-07-10 14:50:34', '2020-07-10 14:50:34');
INSERT INTO `admin_operation_log` VALUES ('786', '1', 'admin/cate/30', 'PUT', '127.0.0.1', '{\"text\":\"\\u573a\\u9986\\u8bad\\u89c8\",\"parent_id\":null,\"image\":\"images\\/0e50269ca4e4a318092c160682b802cb.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-10 14:50:35', '2020-07-10 14:50:35');
INSERT INTO `admin_operation_log` VALUES ('787', '1', 'admin/cate/30', 'PUT', '127.0.0.1', '{\"text\":\"\\u573a\\u9986\\u8bad\\u89c8\",\"parent_id\":null,\"image\":\"images\\/0e50269ca4e4a318092c160682b802cb.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-10 14:50:55', '2020-07-10 14:50:55');
INSERT INTO `admin_operation_log` VALUES ('788', '1', 'admin/cate/30', 'PUT', '127.0.0.1', '{\"text\":\"\\u573a\\u9986\\u8bad\\u89c8\",\"parent_id\":null,\"image\":\"images\\/0e50269ca4e4a318092c160682b802cb.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-10 14:52:39', '2020-07-10 14:52:39');
INSERT INTO `admin_operation_log` VALUES ('789', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:52:39', '2020-07-10 14:52:39');
INSERT INTO `admin_operation_log` VALUES ('790', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-10 14:54:53', '2020-07-10 14:54:53');
INSERT INTO `admin_operation_log` VALUES ('791', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-10 14:55:02', '2020-07-10 14:55:02');
INSERT INTO `admin_operation_log` VALUES ('792', '1', 'admin/cate/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 14:55:42', '2020-07-10 14:55:42');
INSERT INTO `admin_operation_log` VALUES ('793', '1', 'admin/cate/28', 'PUT', '127.0.0.1', '{\"text\":\"\\u7cbe\\u54c1\\u5178\\u85cf\",\"parent_id\":null,\"image\":\"images\\/de2485bd1bdaf5c8a6436f468a3489cf.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-10 14:55:44', '2020-07-10 14:55:44');
INSERT INTO `admin_operation_log` VALUES ('794', '1', 'admin/cate/28/edit', 'GET', '127.0.0.1', '[]', '2020-07-10 14:59:36', '2020-07-10 14:59:36');
INSERT INTO `admin_operation_log` VALUES ('795', '1', 'admin/cate/28', 'PUT', '127.0.0.1', '{\"text\":\"\\u7cbe\\u54c1\\u5178\\u85cf\",\"parent_id\":null,\"image\":\"images\\/de2485bd1bdaf5c8a6436f468a3489cf.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_method\":\"PUT\"}', '2020-07-10 15:00:21', '2020-07-10 15:00:21');
INSERT INTO `admin_operation_log` VALUES ('796', '1', 'admin/cate/28', 'PUT', '127.0.0.1', '{\"text\":\"\\u7cbe\\u54c1\\u5178\\u85cf\",\"parent_id\":null,\"image\":\"images\\/de2485bd1bdaf5c8a6436f468a3489cf.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_method\":\"PUT\"}', '2020-07-10 15:00:38', '2020-07-10 15:00:38');
INSERT INTO `admin_operation_log` VALUES ('797', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 15:00:39', '2020-07-10 15:00:39');
INSERT INTO `admin_operation_log` VALUES ('798', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-10 15:01:08', '2020-07-10 15:01:08');
INSERT INTO `admin_operation_log` VALUES ('799', '1', 'admin/cate/30/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 15:01:14', '2020-07-10 15:01:14');
INSERT INTO `admin_operation_log` VALUES ('800', '1', 'admin/cate/30', 'PUT', '127.0.0.1', '{\"text\":\"\\u573a\\u9986\\u8bad\\u89c8\",\"parent_id\":null,\"image\":\"images\\/0e50269ca4e4a318092c160682b802cb.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/cate\"}', '2020-07-10 15:01:18', '2020-07-10 15:01:18');
INSERT INTO `admin_operation_log` VALUES ('801', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 15:01:19', '2020-07-10 15:01:19');
INSERT INTO `admin_operation_log` VALUES ('802', '1', 'admin/cate', 'GET', '127.0.0.1', '[]', '2020-07-10 15:02:29', '2020-07-10 15:02:29');
INSERT INTO `admin_operation_log` VALUES ('803', '1', 'admin/cate/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 15:02:33', '2020-07-10 15:02:33');
INSERT INTO `admin_operation_log` VALUES ('804', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 15:02:43', '2020-07-10 15:02:43');
INSERT INTO `admin_operation_log` VALUES ('805', '1', 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 15:02:50', '2020-07-10 15:02:50');
INSERT INTO `admin_operation_log` VALUES ('806', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 15:02:52', '2020-07-10 15:02:52');
INSERT INTO `admin_operation_log` VALUES ('807', '1', 'admin/cate', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_token\":\"mFXi81suKWIeR3AiBVMu0au23vEeM2yonyhqPzNE\",\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_children_page_30\":\"1\"}', '2020-07-10 15:02:57', '2020-07-10 15:02:57');
INSERT INTO `admin_operation_log` VALUES ('808', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 16:45:45', '2020-07-10 16:45:45');
INSERT INTO `admin_operation_log` VALUES ('809', '1', 'admin/order/16', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-10 16:45:48', '2020-07-10 16:45:48');
INSERT INTO `admin_operation_log` VALUES ('810', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-10 19:24:52', '2020-07-10 19:24:52');
INSERT INTO `admin_operation_log` VALUES ('811', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"qqWHRQ6OC6MriT28nWVcaA2r8uOdnqlUTeYhSNBR\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-10 19:25:04', '2020-07-10 19:25:04');
INSERT INTO `admin_operation_log` VALUES ('812', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-10 19:25:05', '2020-07-10 19:25:05');
INSERT INTO `admin_operation_log` VALUES ('813', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"sign\",\"_token\":\"fpKPl6bhTzkuPm8BJxgw81LyUZY3rhL5kl34Gtoc\"}', '2020-07-10 19:25:17', '2020-07-10 19:25:17');
INSERT INTO `admin_operation_log` VALUES ('814', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"sign\"}', '2020-07-10 19:25:18', '2020-07-10 19:25:18');
INSERT INTO `admin_operation_log` VALUES ('815', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"sign\",\"exist-table\":\"collect|sign\",\"model_name\":\"App\\\\Models\\\\Sign\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SignController\",\"create\":[\"model\"],\"fields\":[{\"name\":\"order_id\",\"translation\":null,\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"sign\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"primary_key\":\"id\",\"_token\":\"fpKPl6bhTzkuPm8BJxgw81LyUZY3rhL5kl34Gtoc\"}', '2020-07-10 19:25:41', '2020-07-10 19:25:41');
INSERT INTO `admin_operation_log` VALUES ('816', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-10 19:25:42', '2020-07-10 19:25:42');
INSERT INTO `admin_operation_log` VALUES ('817', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-11 11:29:11', '2020-07-11 11:29:11');
INSERT INTO `admin_operation_log` VALUES ('818', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"AMjGW4Q2T0DFPCY1pj1iZFSqRTobCOEDjvOnOgpP\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-11 11:29:16', '2020-07-11 11:29:16');
INSERT INTO `admin_operation_log` VALUES ('819', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-11 11:29:17', '2020-07-11 11:29:17');
INSERT INTO `admin_operation_log` VALUES ('820', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 11:29:24', '2020-07-11 11:29:24');
INSERT INTO `admin_operation_log` VALUES ('821', '1', 'admin/video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 11:29:25', '2020-07-11 11:29:25');
INSERT INTO `admin_operation_log` VALUES ('822', '1', 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 11:29:27', '2020-07-11 11:29:27');
INSERT INTO `admin_operation_log` VALUES ('823', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 11:29:28', '2020-07-11 11:29:28');
INSERT INTO `admin_operation_log` VALUES ('824', '1', 'admin/swipe/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 11:29:35', '2020-07-11 11:29:35');
INSERT INTO `admin_operation_log` VALUES ('825', '1', 'admin/swipe/1', 'PUT', '127.0.0.1', '{\"_id\":\"EB9tSDPMYGX6Esbi\",\"_token\":\"zqYE4qbkz2nLpsE143mmUvQxl6vkPzCHEISb6H6B\",\"upload_column\":\"img\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"bg.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Thu Nov 14 2019 11:55:21 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"26157\"}', '2020-07-11 11:29:47', '2020-07-11 11:29:47');
INSERT INTO `admin_operation_log` VALUES ('826', '1', 'admin/swipe/1', 'PUT', '127.0.0.1', '{\"_id\":\"EB9tSDPMYGX6Esbi\",\"_token\":\"zqYE4qbkz2nLpsE143mmUvQxl6vkPzCHEISb6H6B\",\"_method\":\"PUT\",\"img\":\"images\\/b8de9c6d415f135e37fea9b3c8394018.jpg,images\\/d0e472a1e698e83fdcc614b9e750e097.jpg\"}', '2020-07-11 11:29:48', '2020-07-11 11:29:48');
INSERT INTO `admin_operation_log` VALUES ('827', '1', 'admin/swipe/1', 'PUT', '127.0.0.1', '{\"img\":\"images\\/b8de9c6d415f135e37fea9b3c8394018.jpg,images\\/d0e472a1e698e83fdcc614b9e750e097.jpg\",\"file-img\":null,\"_file_\":null,\"file\":null,\"_token\":\"zqYE4qbkz2nLpsE143mmUvQxl6vkPzCHEISb6H6B\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/swipe\"}', '2020-07-11 11:29:48', '2020-07-11 11:29:48');
INSERT INTO `admin_operation_log` VALUES ('828', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 11:29:49', '2020-07-11 11:29:49');
INSERT INTO `admin_operation_log` VALUES ('829', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 11:38:42', '2020-07-11 11:38:42');
INSERT INTO `admin_operation_log` VALUES ('830', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"collect\",\"tb\":\"moneylog\",\"_token\":\"zqYE4qbkz2nLpsE143mmUvQxl6vkPzCHEISb6H6B\"}', '2020-07-11 11:38:47', '2020-07-11 11:38:47');
INSERT INTO `admin_operation_log` VALUES ('831', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"moneylog\"}', '2020-07-11 11:38:48', '2020-07-11 11:38:48');
INSERT INTO `admin_operation_log` VALUES ('832', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"moneylog\",\"exist-table\":\"collect|moneylog\",\"model_name\":\"App\\\\Models\\\\Moneylog\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\MoneylogController\",\"create\":[\"model\"],\"fields\":[{\"name\":\"user_id\",\"translation\":\"\\u7528\\u6237id\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u7528\\u6237id\"},{\"name\":\"action\",\"translation\":\"\\/\\/\\u63d0\\u73b0\\u53ca\\u83b7\\u53d6\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\/\\/\\u63d0\\u73b0\\u53ca\\u83b7\\u53d6\"},{\"name\":\"money\",\"translation\":null,\"type\":\"decimal\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"zqYE4qbkz2nLpsE143mmUvQxl6vkPzCHEISb6H6B\"}', '2020-07-11 11:38:58', '2020-07-11 11:38:58');
INSERT INTO `admin_operation_log` VALUES ('833', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-11 11:38:59', '2020-07-11 11:38:59');
INSERT INTO `admin_operation_log` VALUES ('834', '1', 'admin/tixian', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 12:15:00', '2020-07-11 12:15:00');
INSERT INTO `admin_operation_log` VALUES ('835', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 13:20:43', '2020-07-11 13:20:43');
INSERT INTO `admin_operation_log` VALUES ('836', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 13:21:25', '2020-07-11 13:21:25');
INSERT INTO `admin_operation_log` VALUES ('837', '1', 'admin/tixian', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 14:10:37', '2020-07-11 14:10:37');
INSERT INTO `admin_operation_log` VALUES ('838', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:37:53', '2020-07-11 14:37:53');
INSERT INTO `admin_operation_log` VALUES ('839', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:38:11', '2020-07-11 14:38:11');
INSERT INTO `admin_operation_log` VALUES ('840', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:40:51', '2020-07-11 14:40:51');
INSERT INTO `admin_operation_log` VALUES ('841', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:41:01', '2020-07-11 14:41:01');
INSERT INTO `admin_operation_log` VALUES ('842', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:42:02', '2020-07-11 14:42:02');
INSERT INTO `admin_operation_log` VALUES ('843', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:42:14', '2020-07-11 14:42:14');
INSERT INTO `admin_operation_log` VALUES ('844', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:43:14', '2020-07-11 14:43:14');
INSERT INTO `admin_operation_log` VALUES ('845', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:43:56', '2020-07-11 14:43:56');
INSERT INTO `admin_operation_log` VALUES ('846', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:44:31', '2020-07-11 14:44:31');
INSERT INTO `admin_operation_log` VALUES ('847', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:44:52', '2020-07-11 14:44:52');
INSERT INTO `admin_operation_log` VALUES ('848', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:45:44', '2020-07-11 14:45:44');
INSERT INTO `admin_operation_log` VALUES ('849', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:46:56', '2020-07-11 14:46:56');
INSERT INTO `admin_operation_log` VALUES ('850', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:47:40', '2020-07-11 14:47:40');
INSERT INTO `admin_operation_log` VALUES ('851', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:48:23', '2020-07-11 14:48:23');
INSERT INTO `admin_operation_log` VALUES ('852', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:48:53', '2020-07-11 14:48:53');
INSERT INTO `admin_operation_log` VALUES ('853', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:49:23', '2020-07-11 14:49:23');
INSERT INTO `admin_operation_log` VALUES ('854', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:50:44', '2020-07-11 14:50:44');
INSERT INTO `admin_operation_log` VALUES ('855', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:51:42', '2020-07-11 14:51:42');
INSERT INTO `admin_operation_log` VALUES ('856', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:52:08', '2020-07-11 14:52:08');
INSERT INTO `admin_operation_log` VALUES ('857', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:53:25', '2020-07-11 14:53:25');
INSERT INTO `admin_operation_log` VALUES ('858', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:55:29', '2020-07-11 14:55:29');
INSERT INTO `admin_operation_log` VALUES ('859', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 14:58:54', '2020-07-11 14:58:54');
INSERT INTO `admin_operation_log` VALUES ('860', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:05:11', '2020-07-11 15:05:11');
INSERT INTO `admin_operation_log` VALUES ('861', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:05:17', '2020-07-11 15:05:17');
INSERT INTO `admin_operation_log` VALUES ('862', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:05:30', '2020-07-11 15:05:30');
INSERT INTO `admin_operation_log` VALUES ('863', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:06:03', '2020-07-11 15:06:03');
INSERT INTO `admin_operation_log` VALUES ('864', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:06:14', '2020-07-11 15:06:14');
INSERT INTO `admin_operation_log` VALUES ('865', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:18:56', '2020-07-11 15:18:56');
INSERT INTO `admin_operation_log` VALUES ('866', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:19:05', '2020-07-11 15:19:05');
INSERT INTO `admin_operation_log` VALUES ('867', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:22:00', '2020-07-11 15:22:00');
INSERT INTO `admin_operation_log` VALUES ('868', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:22:29', '2020-07-11 15:22:29');
INSERT INTO `admin_operation_log` VALUES ('869', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:22:47', '2020-07-11 15:22:47');
INSERT INTO `admin_operation_log` VALUES ('870', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:23:23', '2020-07-11 15:23:23');
INSERT INTO `admin_operation_log` VALUES ('871', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:23:33', '2020-07-11 15:23:33');
INSERT INTO `admin_operation_log` VALUES ('872', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:24:46', '2020-07-11 15:24:46');
INSERT INTO `admin_operation_log` VALUES ('873', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:27:14', '2020-07-11 15:27:14');
INSERT INTO `admin_operation_log` VALUES ('874', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:29:56', '2020-07-11 15:29:56');
INSERT INTO `admin_operation_log` VALUES ('875', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:34:54', '2020-07-11 15:34:54');
INSERT INTO `admin_operation_log` VALUES ('876', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:50:11', '2020-07-11 15:50:11');
INSERT INTO `admin_operation_log` VALUES ('877', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:50:41', '2020-07-11 15:50:41');
INSERT INTO `admin_operation_log` VALUES ('878', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:51:31', '2020-07-11 15:51:31');
INSERT INTO `admin_operation_log` VALUES ('879', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:51:48', '2020-07-11 15:51:48');
INSERT INTO `admin_operation_log` VALUES ('880', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 15:54:28', '2020-07-11 15:54:28');
INSERT INTO `admin_operation_log` VALUES ('881', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:54:30', '2020-07-11 15:54:30');
INSERT INTO `admin_operation_log` VALUES ('882', '1', 'admin/tixian/1', 'GET', '127.0.0.1', '[]', '2020-07-11 15:55:06', '2020-07-11 15:55:06');
INSERT INTO `admin_operation_log` VALUES ('883', '1', 'admin/tixian', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 15:56:23', '2020-07-11 15:56:23');
INSERT INTO `admin_operation_log` VALUES ('884', '1', 'admin/tixian', 'GET', '127.0.0.1', '[]', '2020-07-11 15:57:02', '2020-07-11 15:57:02');
INSERT INTO `admin_operation_log` VALUES ('885', '1', 'admin/tixian', 'GET', '127.0.0.1', '[]', '2020-07-11 15:58:26', '2020-07-11 15:58:26');
INSERT INTO `admin_operation_log` VALUES ('886', '1', 'admin', 'GET', '112.96.38.58', '[]', '2020-07-11 16:06:30', '2020-07-11 16:06:30');
INSERT INTO `admin_operation_log` VALUES ('887', '1', 'admin/about', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:06:36', '2020-07-11 16:06:36');
INSERT INTO `admin_operation_log` VALUES ('888', '1', 'admin/tixian', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:06:37', '2020-07-11 16:06:37');
INSERT INTO `admin_operation_log` VALUES ('889', '1', 'admin/tixian', 'GET', '112.96.38.58', '[]', '2020-07-11 16:08:08', '2020-07-11 16:08:08');
INSERT INTO `admin_operation_log` VALUES ('890', '1', 'admin/tixian', 'GET', '112.96.38.58', '[]', '2020-07-11 16:12:59', '2020-07-11 16:12:59');
INSERT INTO `admin_operation_log` VALUES ('891', '1', 'admin/tixian', 'GET', '112.96.38.58', '[]', '2020-07-11 16:20:15', '2020-07-11 16:20:15');
INSERT INTO `admin_operation_log` VALUES ('892', '1', 'admin/order', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:25:08', '2020-07-11 16:25:08');
INSERT INTO `admin_operation_log` VALUES ('893', '1', 'admin/order/37,36,35,34,33', 'DELETE', '112.96.38.58', '{\"_method\":\"delete\",\"_token\":\"ra2GUXaBlb0tiSlJ4UuaRnb46PfCgI9hEzZ5HxuL\"}', '2020-07-11 16:25:24', '2020-07-11 16:25:24');
INSERT INTO `admin_operation_log` VALUES ('894', '1', 'admin/order', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:25:24', '2020-07-11 16:25:24');
INSERT INTO `admin_operation_log` VALUES ('895', '1', 'admin/order', 'GET', '112.96.38.58', '[]', '2020-07-11 16:27:10', '2020-07-11 16:27:10');
INSERT INTO `admin_operation_log` VALUES ('896', '1', 'admin/auth/setting', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:27:14', '2020-07-11 16:27:14');
INSERT INTO `admin_operation_log` VALUES ('897', '1', 'admin/auth/setting', 'PUT', '112.96.38.58', '{\"_id\":\"SjN54UOY88lxIAmH\",\"_token\":\"ra2GUXaBlb0tiSlJ4UuaRnb46PfCgI9hEzZ5HxuL\",\"upload_column\":\"avatar\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"bg.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Thu Nov 14 2019 11:55:21 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"26157\"}', '2020-07-11 16:27:27', '2020-07-11 16:27:27');
INSERT INTO `admin_operation_log` VALUES ('898', '1', 'admin/auth/setting', 'PUT', '112.96.38.58', '{\"_id\":\"SjN54UOY88lxIAmH\",\"_token\":\"ra2GUXaBlb0tiSlJ4UuaRnb46PfCgI9hEzZ5HxuL\",\"_method\":\"PUT\",\"avatar\":\"images\\/bg.jpg\"}', '2020-07-11 16:27:27', '2020-07-11 16:27:27');
INSERT INTO `admin_operation_log` VALUES ('899', '1', 'admin/auth/setting', 'PUT', '112.96.38.58', '{\"name\":\"Administrator\",\"avatar\":\"images\\/bg.jpg\",\"file-avatar\":null,\"_file_\":null,\"old_password\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"ra2GUXaBlb0tiSlJ4UuaRnb46PfCgI9hEzZ5HxuL\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/order\"}', '2020-07-11 16:27:28', '2020-07-11 16:27:28');
INSERT INTO `admin_operation_log` VALUES ('900', '1', 'admin/auth/setting', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:27:28', '2020-07-11 16:27:28');
INSERT INTO `admin_operation_log` VALUES ('901', '1', 'admin/auth/setting', 'GET', '112.96.38.58', '[]', '2020-07-11 16:27:31', '2020-07-11 16:27:31');
INSERT INTO `admin_operation_log` VALUES ('902', '1', 'admin/user', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:27:34', '2020-07-11 16:27:34');
INSERT INTO `admin_operation_log` VALUES ('903', '1', 'admin/swipe', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:27:35', '2020-07-11 16:27:35');
INSERT INTO `admin_operation_log` VALUES ('904', '1', 'admin/user', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:27:36', '2020-07-11 16:27:36');
INSERT INTO `admin_operation_log` VALUES ('905', '1', 'admin/video', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:27:52', '2020-07-11 16:27:52');
INSERT INTO `admin_operation_log` VALUES ('906', '1', 'admin/video/create', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:27:57', '2020-07-11 16:27:57');
INSERT INTO `admin_operation_log` VALUES ('907', '1', 'admin/cate', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:27:59', '2020-07-11 16:27:59');
INSERT INTO `admin_operation_log` VALUES ('908', '1', 'admin/cate', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\",\"_token\":\"ra2GUXaBlb0tiSlJ4UuaRnb46PfCgI9hEzZ5HxuL\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-11 16:28:03', '2020-07-11 16:28:03');
INSERT INTO `admin_operation_log` VALUES ('909', '1', 'admin/push', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:28:06', '2020-07-11 16:28:06');
INSERT INTO `admin_operation_log` VALUES ('910', '1', 'admin/product', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:28:06', '2020-07-11 16:28:06');
INSERT INTO `admin_operation_log` VALUES ('911', '1', 'admin/order', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:28:08', '2020-07-11 16:28:08');
INSERT INTO `admin_operation_log` VALUES ('912', '1', 'admin/help', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:28:10', '2020-07-11 16:28:10');
INSERT INTO `admin_operation_log` VALUES ('913', '1', 'admin/about', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:28:10', '2020-07-11 16:28:10');
INSERT INTO `admin_operation_log` VALUES ('914', '1', 'admin/tixian', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:28:11', '2020-07-11 16:28:11');
INSERT INTO `admin_operation_log` VALUES ('915', '1', 'admin/video', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:28:12', '2020-07-11 16:28:12');
INSERT INTO `admin_operation_log` VALUES ('916', '1', 'admin/user', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:28:13', '2020-07-11 16:28:13');
INSERT INTO `admin_operation_log` VALUES ('917', '1', 'admin/user', 'GET', '112.96.38.58', '[]', '2020-07-11 16:28:56', '2020-07-11 16:28:56');
INSERT INTO `admin_operation_log` VALUES ('918', '1', 'admin', 'GET', '112.96.38.58', '[]', '2020-07-11 16:40:41', '2020-07-11 16:40:41');
INSERT INTO `admin_operation_log` VALUES ('919', '1', 'admin/cate', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:40:53', '2020-07-11 16:40:53');
INSERT INTO `admin_operation_log` VALUES ('920', '1', 'admin/push', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:40:54', '2020-07-11 16:40:54');
INSERT INTO `admin_operation_log` VALUES ('921', '1', 'admin/product', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:40:55', '2020-07-11 16:40:55');
INSERT INTO `admin_operation_log` VALUES ('922', '1', 'admin/product', 'GET', '112.96.38.58', '[]', '2020-07-11 16:40:57', '2020-07-11 16:40:57');
INSERT INTO `admin_operation_log` VALUES ('923', '1', 'admin/user', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:40:59', '2020-07-11 16:40:59');
INSERT INTO `admin_operation_log` VALUES ('924', '1', 'admin/video', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:41:03', '2020-07-11 16:41:03');
INSERT INTO `admin_operation_log` VALUES ('925', '1', 'admin/cate', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:41:04', '2020-07-11 16:41:04');
INSERT INTO `admin_operation_log` VALUES ('926', '1', 'admin/cate', 'GET', '112.96.38.58', '[]', '2020-07-11 16:42:56', '2020-07-11 16:42:56');
INSERT INTO `admin_operation_log` VALUES ('927', '1', 'admin/cate', 'GET', '112.96.38.58', '[]', '2020-07-11 16:43:03', '2020-07-11 16:43:03');
INSERT INTO `admin_operation_log` VALUES ('928', '1', 'admin/cate', 'GET', '112.96.38.58', '[]', '2020-07-11 16:43:06', '2020-07-11 16:43:06');
INSERT INTO `admin_operation_log` VALUES ('929', '1', 'admin/user', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:43:18', '2020-07-11 16:43:18');
INSERT INTO `admin_operation_log` VALUES ('930', '1', 'admin/user', 'GET', '112.96.38.58', '[]', '2020-07-11 16:43:56', '2020-07-11 16:43:56');
INSERT INTO `admin_operation_log` VALUES ('931', '1', 'admin/video', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:44:03', '2020-07-11 16:44:03');
INSERT INTO `admin_operation_log` VALUES ('932', '1', 'admin/video', 'GET', '112.96.38.58', '[]', '2020-07-11 16:44:05', '2020-07-11 16:44:05');
INSERT INTO `admin_operation_log` VALUES ('933', '1', 'admin/auth/logout', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:44:09', '2020-07-11 16:44:09');
INSERT INTO `admin_operation_log` VALUES ('934', '0', 'admin/auth/login', 'GET', '112.96.38.58', '[]', '2020-07-11 16:44:09', '2020-07-11 16:44:09');
INSERT INTO `admin_operation_log` VALUES ('935', '0', 'admin/auth/login', 'POST', '112.96.38.58', '{\"_token\":\"abbXf2jgyGFqmTan4LTSeVObCRIkqo1Ppk3qhWoa\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-11 16:44:13', '2020-07-11 16:44:13');
INSERT INTO `admin_operation_log` VALUES ('936', '1', 'admin', 'GET', '112.96.38.58', '[]', '2020-07-11 16:44:13', '2020-07-11 16:44:13');
INSERT INTO `admin_operation_log` VALUES ('937', '1', 'admin/product', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:44:22', '2020-07-11 16:44:22');
INSERT INTO `admin_operation_log` VALUES ('938', '1', 'admin/product/create', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 16:57:25', '2020-07-11 16:57:25');
INSERT INTO `admin_operation_log` VALUES ('939', '1', 'admin/tixian', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 17:19:11', '2020-07-11 17:19:11');
INSERT INTO `admin_operation_log` VALUES ('940', '1', 'admin/tixian/1', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 17:19:13', '2020-07-11 17:19:13');
INSERT INTO `admin_operation_log` VALUES ('941', '1', 'admin/tixian', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 17:19:46', '2020-07-11 17:19:46');
INSERT INTO `admin_operation_log` VALUES ('942', '1', 'admin/about', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 17:19:47', '2020-07-11 17:19:47');
INSERT INTO `admin_operation_log` VALUES ('943', '1', 'admin/about/1/edit', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 17:19:50', '2020-07-11 17:19:50');
INSERT INTO `admin_operation_log` VALUES ('944', '1', 'admin/about', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 17:19:52', '2020-07-11 17:19:52');
INSERT INTO `admin_operation_log` VALUES ('945', '1', 'admin/help', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 17:19:55', '2020-07-11 17:19:55');
INSERT INTO `admin_operation_log` VALUES ('946', '1', 'admin/order', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 17:19:57', '2020-07-11 17:19:57');
INSERT INTO `admin_operation_log` VALUES ('947', '1', 'admin/order/13', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 17:20:04', '2020-07-11 17:20:04');
INSERT INTO `admin_operation_log` VALUES ('948', '1', 'admin/order', 'GET', '112.96.38.58', '{\"_pjax\":\"#pjax-container\"}', '2020-07-11 17:20:06', '2020-07-11 17:20:06');
INSERT INTO `admin_operation_log` VALUES ('949', '0', 'admin/auth/login', 'GET', '116.23.17.137', '[]', '2020-07-12 15:48:27', '2020-07-12 15:48:27');
INSERT INTO `admin_operation_log` VALUES ('950', '0', 'admin/auth/login', 'GET', '116.23.17.137', '[]', '2020-07-12 15:48:51', '2020-07-12 15:48:51');
INSERT INTO `admin_operation_log` VALUES ('951', '0', 'admin/auth/login', 'GET', '116.23.17.137', '[]', '2020-07-12 15:51:07', '2020-07-12 15:51:07');
INSERT INTO `admin_operation_log` VALUES ('952', '0', 'admin/auth/login', 'GET', '116.23.17.137', '[]', '2020-07-12 15:52:26', '2020-07-12 15:52:26');
INSERT INTO `admin_operation_log` VALUES ('953', '0', 'admin/auth/login', 'GET', '116.23.17.137', '[]', '2020-07-12 18:03:13', '2020-07-12 18:03:13');
INSERT INTO `admin_operation_log` VALUES ('954', '0', 'admin/auth/login', 'POST', '116.23.17.137', '{\"_token\":\"FyXlm5tUAJ0JaPzOVCGM1BDZGFwhzDTXQgtejlKs\",\"username\":\"676773354@qq.com\",\"password\":\"wy1******\"}', '2020-07-12 18:03:28', '2020-07-12 18:03:28');
INSERT INTO `admin_operation_log` VALUES ('955', '0', 'admin/auth/login', 'POST', '116.23.17.137', '{\"_token\":\"FyXlm5tUAJ0JaPzOVCGM1BDZGFwhzDTXQgtejlKs\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-12 18:03:57', '2020-07-12 18:03:57');
INSERT INTO `admin_operation_log` VALUES ('956', '1', 'admin', 'GET', '116.23.17.137', '[]', '2020-07-12 18:03:58', '2020-07-12 18:03:58');
INSERT INTO `admin_operation_log` VALUES ('957', '1', 'admin', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:29:36', '2020-07-12 18:29:36');
INSERT INTO `admin_operation_log` VALUES ('958', '1', 'admin/swipe', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:29:42', '2020-07-12 18:29:42');
INSERT INTO `admin_operation_log` VALUES ('959', '1', 'admin/swipe/1/edit', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:29:47', '2020-07-12 18:29:47');
INSERT INTO `admin_operation_log` VALUES ('960', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"_file_del_\":null,\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_method\":\"PUT\",\"key\":\"images\\/d0e472a1e698e83fdcc614b9e750e097.jpg\",\"_column\":\"img\"}', '2020-07-12 18:30:13', '2020-07-12 18:30:13');
INSERT INTO `admin_operation_log` VALUES ('961', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"_file_del_\":null,\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_method\":\"PUT\",\"key\":\"images\\/b8de9c6d415f135e37fea9b3c8394018.jpg\",\"_column\":\"img\"}', '2020-07-12 18:30:14', '2020-07-12 18:30:14');
INSERT INTO `admin_operation_log` VALUES ('962', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"img\":null,\"file-img\":null,\"_file_\":null,\"file\":null,\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/swipe\"}', '2020-07-12 18:30:24', '2020-07-12 18:30:24');
INSERT INTO `admin_operation_log` VALUES ('963', '1', 'admin/swipe', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:30:25', '2020-07-12 18:30:25');
INSERT INTO `admin_operation_log` VALUES ('964', '1', 'admin/swipe', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:30:28', '2020-07-12 18:30:28');
INSERT INTO `admin_operation_log` VALUES ('965', '1', 'admin/swipe/1/edit', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:30:31', '2020-07-12 18:30:31');
INSERT INTO `admin_operation_log` VALUES ('966', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"_id\":\"d7qmOzrKwnPPG5iJ\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"upload_column\":\"img\",\"_method\":\"PUT\",\"id\":\"WU_FILE_4\",\"name\":\"1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Tue Apr 23 2013 13:06:57 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"94377\"}', '2020-07-12 18:33:35', '2020-07-12 18:33:35');
INSERT INTO `admin_operation_log` VALUES ('967', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"_id\":\"d7qmOzrKwnPPG5iJ\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_method\":\"PUT\",\"img\":\"images\\/f5f837ce3e3b374924ca9d01c4698974.jpg\"}', '2020-07-12 18:33:35', '2020-07-12 18:33:35');
INSERT INTO `admin_operation_log` VALUES ('968', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"_id\":\"d7qmOzrKwnPPG5iJ\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"upload_column\":\"img\",\"_method\":\"PUT\",\"id\":\"WU_FILE_5\",\"name\":\"6.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 21:40:03 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"92716\"}', '2020-07-12 18:33:39', '2020-07-12 18:33:39');
INSERT INTO `admin_operation_log` VALUES ('969', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"_id\":\"d7qmOzrKwnPPG5iJ\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_method\":\"PUT\",\"img\":\"images\\/f5f837ce3e3b374924ca9d01c4698974.jpg,images\\/75f69828f2188ba1fa1fc71ee8ddbde7.jpg\"}', '2020-07-12 18:33:39', '2020-07-12 18:33:39');
INSERT INTO `admin_operation_log` VALUES ('970', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"_id\":\"d7qmOzrKwnPPG5iJ\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"upload_column\":\"img\",\"_method\":\"PUT\",\"id\":\"WU_FILE_6\",\"name\":\"12.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 12:50:16 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"63705\"}', '2020-07-12 18:33:47', '2020-07-12 18:33:47');
INSERT INTO `admin_operation_log` VALUES ('971', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"_id\":\"d7qmOzrKwnPPG5iJ\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"upload_column\":\"img\",\"_method\":\"PUT\",\"id\":\"WU_FILE_7\",\"name\":\"13.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 12:49:34 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"168725\"}', '2020-07-12 18:33:47', '2020-07-12 18:33:47');
INSERT INTO `admin_operation_log` VALUES ('972', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"_id\":\"d7qmOzrKwnPPG5iJ\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_method\":\"PUT\",\"img\":\"images\\/f5f837ce3e3b374924ca9d01c4698974.jpg,images\\/75f69828f2188ba1fa1fc71ee8ddbde7.jpg,images\\/43b064b7010459e1a610f07c1d6b5286.jpg,images\\/6028df07e45426cf1ab5339d3820d5b3.jpg\"}', '2020-07-12 18:33:47', '2020-07-12 18:33:47');
INSERT INTO `admin_operation_log` VALUES ('973', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"img\":\"images\\/f5f837ce3e3b374924ca9d01c4698974.jpg,images\\/75f69828f2188ba1fa1fc71ee8ddbde7.jpg,images\\/43b064b7010459e1a610f07c1d6b5286.jpg,images\\/6028df07e45426cf1ab5339d3820d5b3.jpg\",\"file-img\":null,\"_file_\":null,\"file\":null,\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/swipe\"}', '2020-07-12 18:33:48', '2020-07-12 18:33:48');
INSERT INTO `admin_operation_log` VALUES ('974', '1', 'admin/swipe', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:33:48', '2020-07-12 18:33:48');
INSERT INTO `admin_operation_log` VALUES ('975', '1', 'admin/user', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:33:51', '2020-07-12 18:33:51');
INSERT INTO `admin_operation_log` VALUES ('976', '1', 'admin/video', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:33:52', '2020-07-12 18:33:52');
INSERT INTO `admin_operation_log` VALUES ('977', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:34:00', '2020-07-12 18:34:00');
INSERT INTO `admin_operation_log` VALUES ('978', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 18:34:07', '2020-07-12 18:34:07');
INSERT INTO `admin_operation_log` VALUES ('979', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_children_page_29\":\"1\"}', '2020-07-12 18:34:10', '2020-07-12 18:34:10');
INSERT INTO `admin_operation_log` VALUES ('980', '1', 'admin/cate/29/edit', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:34:15', '2020-07-12 18:34:15');
INSERT INTO `admin_operation_log` VALUES ('981', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:34:27', '2020-07-12 18:34:27');
INSERT INTO `admin_operation_log` VALUES ('982', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 18:34:29', '2020-07-12 18:34:29');
INSERT INTO `admin_operation_log` VALUES ('983', '1', 'admin/cate/28/edit', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:34:32', '2020-07-12 18:34:32');
INSERT INTO `admin_operation_log` VALUES ('984', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:34:40', '2020-07-12 18:34:40');
INSERT INTO `admin_operation_log` VALUES ('985', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_children_page_30\":\"1\"}', '2020-07-12 18:34:41', '2020-07-12 18:34:41');
INSERT INTO `admin_operation_log` VALUES ('986', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"33\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_children_page_33\":\"1\"}', '2020-07-12 18:34:43', '2020-07-12 18:34:43');
INSERT INTO `admin_operation_log` VALUES ('987', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"28\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_children_page_28\":\"1\"}', '2020-07-12 18:34:44', '2020-07-12 18:34:44');
INSERT INTO `admin_operation_log` VALUES ('988', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_children_page_29\":\"1\"}', '2020-07-12 18:34:45', '2020-07-12 18:34:45');
INSERT INTO `admin_operation_log` VALUES ('989', '1', 'admin/push', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:34:53', '2020-07-12 18:34:53');
INSERT INTO `admin_operation_log` VALUES ('990', '1', 'admin/push', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:34:56', '2020-07-12 18:34:56');
INSERT INTO `admin_operation_log` VALUES ('991', '1', 'admin/product', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:34:56', '2020-07-12 18:34:56');
INSERT INTO `admin_operation_log` VALUES ('992', '1', 'admin/order', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:35:00', '2020-07-12 18:35:00');
INSERT INTO `admin_operation_log` VALUES ('993', '1', 'admin/product', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:35:01', '2020-07-12 18:35:01');
INSERT INTO `admin_operation_log` VALUES ('994', '1', 'admin/product/create', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:35:02', '2020-07-12 18:35:02');
INSERT INTO `admin_operation_log` VALUES ('995', '1', 'admin/product', 'POST', '116.23.17.137', '{\"_id\":\"ktZf7GXcORNPdYFq\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"upload_column\":\"image\",\"id\":\"WU_FILE_8\",\"name\":\"29\\u4e49\\u8584\\u4e91\\u5929.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 12:40:36 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"139816\"}', '2020-07-12 18:35:55', '2020-07-12 18:35:55');
INSERT INTO `admin_operation_log` VALUES ('996', '1', 'admin/product', 'POST', '116.23.17.137', '{\"cid\":\"29\",\"title\":\"\\u4e49\\u8584\\u4e91\\u5929\",\"description\":\"<p>\\u4e49\\u8584\\u4e91\\u5929\\u4e49\\u8584\\u4e91\\u5929\\u4e49\\u8584\\u4e91\\u5929\\u4e49\\u8584\\u4e91\\u5929<br data-mce-bogus=\\\"1\\\"><\\/p>\",\"image\":\"images\\/343c950281d1630cf0b3f64ad3dbf494.jpg\",\"file-image\":null,\"_file_\":null,\"file\":null,\"price\":\"1887\",\"stock\":\"01\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-12 18:35:59', '2020-07-12 18:35:59');
INSERT INTO `admin_operation_log` VALUES ('997', '1', 'admin/product', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:35:59', '2020-07-12 18:35:59');
INSERT INTO `admin_operation_log` VALUES ('998', '1', 'admin/order', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:36:03', '2020-07-12 18:36:03');
INSERT INTO `admin_operation_log` VALUES ('999', '1', 'admin/help', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:36:05', '2020-07-12 18:36:05');
INSERT INTO `admin_operation_log` VALUES ('1000', '1', 'admin/help/1/edit', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:36:08', '2020-07-12 18:36:08');
INSERT INTO `admin_operation_log` VALUES ('1001', '1', 'admin/about', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:36:11', '2020-07-12 18:36:11');
INSERT INTO `admin_operation_log` VALUES ('1002', '1', 'admin/tixian', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:36:12', '2020-07-12 18:36:12');
INSERT INTO `admin_operation_log` VALUES ('1003', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:46:56', '2020-07-12 18:46:56');
INSERT INTO `admin_operation_log` VALUES ('1004', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 18:46:58', '2020-07-12 18:46:58');
INSERT INTO `admin_operation_log` VALUES ('1005', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_children_page_29\":\"1\"}', '2020-07-12 18:46:59', '2020-07-12 18:46:59');
INSERT INTO `admin_operation_log` VALUES ('1006', '1', 'admin/video', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:59:20', '2020-07-12 18:59:20');
INSERT INTO `admin_operation_log` VALUES ('1007', '1', 'admin/video/1/edit', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:59:28', '2020-07-12 18:59:28');
INSERT INTO `admin_operation_log` VALUES ('1008', '1', 'admin/video', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:59:34', '2020-07-12 18:59:34');
INSERT INTO `admin_operation_log` VALUES ('1009', '1', 'admin/video/create', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 18:59:38', '2020-07-12 18:59:38');
INSERT INTO `admin_operation_log` VALUES ('1010', '1', 'admin/video', 'POST', '116.23.17.137', '{\"_id\":\"16ArIN2oDaAgkKtI\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"upload_column\":\"video\",\"id\":\"WU_FILE_9\",\"name\":\"190204084208765161.mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Sun Jul 12 2020 19:00:23 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"4246316\"}', '2020-07-12 19:00:54', '2020-07-12 19:00:54');
INSERT INTO `admin_operation_log` VALUES ('1011', '1', 'admin/video', 'POST', '116.23.17.137', '{\"title\":\"\\u4e49\\u8584\\u4e91\\u5929\",\"description\":\"123321\",\"video\":\"files\\/d74e248f5dd09532107c16ad6b227bbb.mp4\",\"file-video\":null,\"_file_\":null,\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/video\"}', '2020-07-12 19:00:56', '2020-07-12 19:00:56');
INSERT INTO `admin_operation_log` VALUES ('1012', '1', 'admin/video', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 19:00:56', '2020-07-12 19:00:56');
INSERT INTO `admin_operation_log` VALUES ('1013', '1', 'admin/video/create', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 19:00:58', '2020-07-12 19:00:58');
INSERT INTO `admin_operation_log` VALUES ('1014', '1', 'admin/video', 'POST', '116.23.17.137', '{\"_id\":\"uZmZgHTHFfjheh5J\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"upload_column\":\"video\",\"id\":\"WU_FILE_10\",\"name\":\"190321153853126488.mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Sun Jul 12 2020 19:00:36 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"12937054\",\"chunks\":\"3\",\"chunk\":\"2\"}', '2020-07-12 19:01:19', '2020-07-12 19:01:19');
INSERT INTO `admin_operation_log` VALUES ('1015', '1', 'admin/video', 'POST', '116.23.17.137', '{\"_id\":\"uZmZgHTHFfjheh5J\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"upload_column\":\"video\",\"id\":\"WU_FILE_10\",\"name\":\"190321153853126488.mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Sun Jul 12 2020 19:00:36 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"12937054\",\"chunks\":\"3\",\"chunk\":\"0\"}', '2020-07-12 19:01:21', '2020-07-12 19:01:21');
INSERT INTO `admin_operation_log` VALUES ('1016', '1', 'admin/video', 'POST', '116.23.17.137', '{\"_id\":\"uZmZgHTHFfjheh5J\",\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"upload_column\":\"video\",\"id\":\"WU_FILE_10\",\"name\":\"190321153853126488.mp4\",\"type\":\"video\\/mp4\",\"lastModifiedDate\":\"Sun Jul 12 2020 19:00:36 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"12937054\",\"chunks\":\"3\",\"chunk\":\"1\"}', '2020-07-12 19:01:21', '2020-07-12 19:01:21');
INSERT INTO `admin_operation_log` VALUES ('1017', '1', 'admin/video', 'POST', '116.23.17.137', '{\"title\":\"\\u6d4b\\u8bd5\\u89c6\\u9891\\u770b\\u770b\",\"description\":\"\\u8d77\\u98de\\u8d77\\u98de\\u8d77\\u98de\\u8d77\\u98de\\u8d77\\u98de\\u8d77\\u98de\\u8d77\\u98de\\u8d77\\u98de\\u8d77\\u98de\",\"video\":\"files\\/cd2bd04abec1d414a3a961da63694b12.mp4\",\"file-video\":null,\"_file_\":null,\"_token\":\"SUJZxouqseR8KHWJCG0kh3AdpkrMYuKvEJHimXr8\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/video\"}', '2020-07-12 19:01:22', '2020-07-12 19:01:22');
INSERT INTO `admin_operation_log` VALUES ('1018', '1', 'admin/video', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 19:01:22', '2020-07-12 19:01:22');
INSERT INTO `admin_operation_log` VALUES ('1019', '0', 'admin/auth/login', 'GET', '112.96.38.62', '[]', '2020-07-12 21:08:56', '2020-07-12 21:08:56');
INSERT INTO `admin_operation_log` VALUES ('1020', '0', 'admin/auth/login', 'GET', '112.96.38.62', '[]', '2020-07-12 21:11:25', '2020-07-12 21:11:25');
INSERT INTO `admin_operation_log` VALUES ('1021', '0', 'admin/auth/login', 'POST', '112.96.38.62', '{\"_token\":\"KufHk3ewDMkbHGyinhdzEp1rLrKPFhpIAVc9lUeQ\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-12 21:11:29', '2020-07-12 21:11:29');
INSERT INTO `admin_operation_log` VALUES ('1022', '1', 'admin', 'GET', '112.96.38.62', '[]', '2020-07-12 21:11:30', '2020-07-12 21:11:30');
INSERT INTO `admin_operation_log` VALUES ('1023', '1', 'admin/swipe', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 21:11:33', '2020-07-12 21:11:33');
INSERT INTO `admin_operation_log` VALUES ('1024', '1', 'admin/swipe/1/edit', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 21:11:37', '2020-07-12 21:11:37');
INSERT INTO `admin_operation_log` VALUES ('1025', '1', 'admin/video', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 21:13:07', '2020-07-12 21:13:07');
INSERT INTO `admin_operation_log` VALUES ('1026', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 21:13:50', '2020-07-12 21:13:50');
INSERT INTO `admin_operation_log` VALUES ('1027', '1', 'admin/product', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 21:13:55', '2020-07-12 21:13:55');
INSERT INTO `admin_operation_log` VALUES ('1028', '1', 'admin/product', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 21:14:00', '2020-07-12 21:14:00');
INSERT INTO `admin_operation_log` VALUES ('1029', '1', 'admin/product/3/edit', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 21:27:07', '2020-07-12 21:27:07');
INSERT INTO `admin_operation_log` VALUES ('1030', '1', 'admin/swipe', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:26:03', '2020-07-12 22:26:03');
INSERT INTO `admin_operation_log` VALUES ('1031', '1', 'admin/swipe/1/edit', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:26:05', '2020-07-12 22:26:05');
INSERT INTO `admin_operation_log` VALUES ('1032', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:41:18', '2020-07-12 22:41:18');
INSERT INTO `admin_operation_log` VALUES ('1033', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 22:41:19', '2020-07-12 22:41:19');
INSERT INTO `admin_operation_log` VALUES ('1034', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:41:33', '2020-07-12 22:41:33');
INSERT INTO `admin_operation_log` VALUES ('1035', '1', 'admin/cate/create', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:41:47', '2020-07-12 22:41:47');
INSERT INTO `admin_operation_log` VALUES ('1036', '1', 'admin/cate/create', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:41:58', '2020-07-12 22:41:58');
INSERT INTO `admin_operation_log` VALUES ('1037', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:41:59', '2020-07-12 22:41:59');
INSERT INTO `admin_operation_log` VALUES ('1038', '1', 'admin/cate/create', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:42:01', '2020-07-12 22:42:01');
INSERT INTO `admin_operation_log` VALUES ('1039', '1', 'admin/cate', 'POST', '116.23.17.137', '{\"text\":\"123\",\"parent_id\":\"28\",\"image\":null,\"file-image\":null,\"_file_\":null,\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-12 22:42:10', '2020-07-12 22:42:10');
INSERT INTO `admin_operation_log` VALUES ('1040', '1', 'admin/cate', 'POST', '116.23.17.137', '{\"_id\":\"OD9DVzglc2hTP4py\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"upload_column\":\"image\",\"id\":\"WU_FILE_11\",\"name\":\"1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Tue Apr 23 2013 13:06:57 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"94377\"}', '2020-07-12 22:42:19', '2020-07-12 22:42:19');
INSERT INTO `admin_operation_log` VALUES ('1041', '1', 'admin/cate', 'POST', '116.23.17.137', '{\"text\":\"123\",\"parent_id\":\"28\",\"image\":\"images\\/309b7ce8bff7b892847cad9cc73ba3cd.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-12 22:42:20', '2020-07-12 22:42:20');
INSERT INTO `admin_operation_log` VALUES ('1042', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:42:20', '2020-07-12 22:42:20');
INSERT INTO `admin_operation_log` VALUES ('1043', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 22:42:23', '2020-07-12 22:42:23');
INSERT INTO `admin_operation_log` VALUES ('1044', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"30\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_30\":\"1\"}', '2020-07-12 22:42:25', '2020-07-12 22:42:25');
INSERT INTO `admin_operation_log` VALUES ('1045', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:42:29', '2020-07-12 22:42:29');
INSERT INTO `admin_operation_log` VALUES ('1046', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 22:42:30', '2020-07-12 22:42:30');
INSERT INTO `admin_operation_log` VALUES ('1047', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_45\":\"1\"}', '2020-07-12 22:42:32', '2020-07-12 22:42:32');
INSERT INTO `admin_operation_log` VALUES ('1048', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"46\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_46\":\"1\"}', '2020-07-12 22:42:32', '2020-07-12 22:42:32');
INSERT INTO `admin_operation_log` VALUES ('1049', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"47\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_47\":\"1\"}', '2020-07-12 22:42:34', '2020-07-12 22:42:34');
INSERT INTO `admin_operation_log` VALUES ('1050', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"48\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_48\":\"1\"}', '2020-07-12 22:42:35', '2020-07-12 22:42:35');
INSERT INTO `admin_operation_log` VALUES ('1051', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_29\":\"1\"}', '2020-07-12 22:42:37', '2020-07-12 22:42:37');
INSERT INTO `admin_operation_log` VALUES ('1052', '1', 'admin/cate/29/edit', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:42:39', '2020-07-12 22:42:39');
INSERT INTO `admin_operation_log` VALUES ('1053', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:42:41', '2020-07-12 22:42:41');
INSERT INTO `admin_operation_log` VALUES ('1054', '1', 'admin/cate/29/edit', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:42:43', '2020-07-12 22:42:43');
INSERT INTO `admin_operation_log` VALUES ('1055', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:42:51', '2020-07-12 22:42:51');
INSERT INTO `admin_operation_log` VALUES ('1056', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 22:42:52', '2020-07-12 22:42:52');
INSERT INTO `admin_operation_log` VALUES ('1057', '1', 'admin/cate/create', 'GET', '112.96.38.62', '[]', '2020-07-12 22:44:32', '2020-07-12 22:44:32');
INSERT INTO `admin_operation_log` VALUES ('1058', '1', 'admin/cate', 'GET', '116.23.17.137', '[]', '2020-07-12 22:44:48', '2020-07-12 22:44:48');
INSERT INTO `admin_operation_log` VALUES ('1059', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 22:44:50', '2020-07-12 22:44:50');
INSERT INTO `admin_operation_log` VALUES ('1060', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"29\",\"_tier_\":\"2\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_29\":\"1\"}', '2020-07-12 22:44:52', '2020-07-12 22:44:52');
INSERT INTO `admin_operation_log` VALUES ('1061', '1', 'admin/cate/create', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:44:54', '2020-07-12 22:44:54');
INSERT INTO `admin_operation_log` VALUES ('1062', '1', 'admin', 'GET', '112.96.38.62', '[]', '2020-07-12 22:45:12', '2020-07-12 22:45:12');
INSERT INTO `admin_operation_log` VALUES ('1063', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:45:18', '2020-07-12 22:45:18');
INSERT INTO `admin_operation_log` VALUES ('1064', '1', 'admin/cate/create', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:45:20', '2020-07-12 22:45:20');
INSERT INTO `admin_operation_log` VALUES ('1065', '1', 'admin/cate', 'POST', '116.23.17.137', '{\"_id\":\"kIVnIAyWL6BcUkdb\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"upload_column\":\"image\",\"id\":\"WU_FILE_0\",\"name\":\"31\\u5cf0\\u56de\\u8def\\u8f6c.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 02:14:32 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"303118\"}', '2020-07-12 22:46:36', '2020-07-12 22:46:36');
INSERT INTO `admin_operation_log` VALUES ('1066', '1', 'admin/cate', 'POST', '116.23.17.137', '{\"text\":\"123\",\"parent_id\":\"29\",\"image\":\"images\\/3eddaafb79c93cc5a3ba6301e69e226f.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-12 22:46:37', '2020-07-12 22:46:37');
INSERT INTO `admin_operation_log` VALUES ('1067', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:46:37', '2020-07-12 22:46:37');
INSERT INTO `admin_operation_log` VALUES ('1068', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 22:46:39', '2020-07-12 22:46:39');
INSERT INTO `admin_operation_log` VALUES ('1069', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_29\":\"1\"}', '2020-07-12 22:46:40', '2020-07-12 22:46:40');
INSERT INTO `admin_operation_log` VALUES ('1070', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:46:45', '2020-07-12 22:46:45');
INSERT INTO `admin_operation_log` VALUES ('1071', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 22:46:46', '2020-07-12 22:46:46');
INSERT INTO `admin_operation_log` VALUES ('1072', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_29\":\"1\"}', '2020-07-12 22:46:47', '2020-07-12 22:46:47');
INSERT INTO `admin_operation_log` VALUES ('1073', '1', 'admin/cate/create', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:46:49', '2020-07-12 22:46:49');
INSERT INTO `admin_operation_log` VALUES ('1074', '1', 'admin/cate', 'POST', '116.23.17.137', '{\"_id\":\"Pc7hN30TW9CCyGSb\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"upload_column\":\"image\",\"id\":\"WU_FILE_1\",\"name\":\"25.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Wed Aug 07 2013 14:15:08 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"95172\"}', '2020-07-12 22:46:56', '2020-07-12 22:46:56');
INSERT INTO `admin_operation_log` VALUES ('1075', '1', 'admin/cate', 'POST', '116.23.17.137', '{\"text\":\"123\",\"parent_id\":\"29\",\"image\":\"images\\/ec2424792e2e83510a29b0c6f69b6722.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-12 22:46:57', '2020-07-12 22:46:57');
INSERT INTO `admin_operation_log` VALUES ('1076', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:46:57', '2020-07-12 22:46:57');
INSERT INTO `admin_operation_log` VALUES ('1077', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:46:59', '2020-07-12 22:46:59');
INSERT INTO `admin_operation_log` VALUES ('1078', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 22:47:00', '2020-07-12 22:47:00');
INSERT INTO `admin_operation_log` VALUES ('1079', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_29\":\"1\"}', '2020-07-12 22:47:01', '2020-07-12 22:47:01');
INSERT INTO `admin_operation_log` VALUES ('1080', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"47\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_47\":\"1\"}', '2020-07-12 22:47:04', '2020-07-12 22:47:04');
INSERT INTO `admin_operation_log` VALUES ('1081', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"48\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_48\":\"1\"}', '2020-07-12 22:47:06', '2020-07-12 22:47:06');
INSERT INTO `admin_operation_log` VALUES ('1082', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_45\":\"1\"}', '2020-07-12 22:47:07', '2020-07-12 22:47:07');
INSERT INTO `admin_operation_log` VALUES ('1083', '1', 'admin/cate/create', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:47:09', '2020-07-12 22:47:09');
INSERT INTO `admin_operation_log` VALUES ('1084', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:47:12', '2020-07-12 22:47:12');
INSERT INTO `admin_operation_log` VALUES ('1085', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 22:47:13', '2020-07-12 22:47:13');
INSERT INTO `admin_operation_log` VALUES ('1086', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_parent_id_\":\"48\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_children_page_48\":\"1\"}', '2020-07-12 22:47:17', '2020-07-12 22:47:17');
INSERT INTO `admin_operation_log` VALUES ('1087', '1', 'admin/cate/48/edit', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:47:19', '2020-07-12 22:47:19');
INSERT INTO `admin_operation_log` VALUES ('1088', '1', 'admin/cate', 'POST', '116.23.17.137', '{\"_id\":\"Eor102WQf37bem1s\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"upload_column\":\"image\",\"id\":\"WU_FILE_2\",\"name\":\"32\\u9f99\\u51e4\\u5448\\u7965.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Thu Jan 04 2018 15:58:47 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"110029\"}', '2020-07-12 22:47:22', '2020-07-12 22:47:22');
INSERT INTO `admin_operation_log` VALUES ('1089', '1', 'admin/cate', 'POST', '116.23.17.137', '{\"text\":\"\\u6d4b\\u8bd5\\u4e09\\u7ea7\",\"parent_id\":\"48\",\"image\":\"images\\/8d9302d38350196e8f92f5f98fcd44a6.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-12 22:47:23', '2020-07-12 22:47:23');
INSERT INTO `admin_operation_log` VALUES ('1090', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:47:23', '2020-07-12 22:47:23');
INSERT INTO `admin_operation_log` VALUES ('1091', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 22:47:24', '2020-07-12 22:47:24');
INSERT INTO `admin_operation_log` VALUES ('1092', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"48\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_48\":\"1\"}', '2020-07-12 22:47:26', '2020-07-12 22:47:26');
INSERT INTO `admin_operation_log` VALUES ('1093', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:47:29', '2020-07-12 22:47:29');
INSERT INTO `admin_operation_log` VALUES ('1094', '1', 'admin/cate', 'GET', '116.23.17.137', '[]', '2020-07-12 22:47:33', '2020-07-12 22:47:33');
INSERT INTO `admin_operation_log` VALUES ('1095', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 22:47:36', '2020-07-12 22:47:36');
INSERT INTO `admin_operation_log` VALUES ('1096', '1', 'admin/cate/create', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:47:36', '2020-07-12 22:47:36');
INSERT INTO `admin_operation_log` VALUES ('1097', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"48\",\"_tier_\":\"2\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_48\":\"1\"}', '2020-07-12 22:47:37', '2020-07-12 22:47:37');
INSERT INTO `admin_operation_log` VALUES ('1098', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_30\":\"1\"}', '2020-07-12 22:47:38', '2020-07-12 22:47:38');
INSERT INTO `admin_operation_log` VALUES ('1099', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"33\",\"_tier_\":\"2\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_children_page_33\":\"1\"}', '2020-07-12 22:47:39', '2020-07-12 22:47:39');
INSERT INTO `admin_operation_log` VALUES ('1100', '1', 'admin/cate', 'POST', '112.96.38.62', '{\"_id\":\"D7JT9LOYWNHJL8KV\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"upload_column\":\"image\",\"id\":\"WU_FILE_0\",\"name\":\"bg.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Thu Nov 14 2019 11:55:21 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"26157\"}', '2020-07-12 22:48:21', '2020-07-12 22:48:21');
INSERT INTO `admin_operation_log` VALUES ('1101', '1', 'admin/cate', 'POST', '112.96.38.62', '{\"text\":\"\\u5f20\\u73b2\\u73b2\\u662f\\u4e2a\\u5c0f\\u4ed9\\u5973\",\"parent_id\":\"48\",\"image\":\"images\\/266c916de3a536b4e0ffe97c23234218.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-12 22:48:23', '2020-07-12 22:48:23');
INSERT INTO `admin_operation_log` VALUES ('1102', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:48:23', '2020-07-12 22:48:23');
INSERT INTO `admin_operation_log` VALUES ('1103', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 22:48:26', '2020-07-12 22:48:26');
INSERT INTO `admin_operation_log` VALUES ('1104', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_parent_id_\":\"48\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_children_page_48\":\"1\"}', '2020-07-12 22:48:27', '2020-07-12 22:48:27');
INSERT INTO `admin_operation_log` VALUES ('1105', '1', 'admin/cate', 'GET', '112.96.38.62', '[]', '2020-07-12 22:48:29', '2020-07-12 22:48:29');
INSERT INTO `admin_operation_log` VALUES ('1106', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 22:48:32', '2020-07-12 22:48:32');
INSERT INTO `admin_operation_log` VALUES ('1107', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_parent_id_\":\"48\",\"_tier_\":\"2\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_children_page_48\":\"1\"}', '2020-07-12 22:48:33', '2020-07-12 22:48:33');
INSERT INTO `admin_operation_log` VALUES ('1108', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_parent_id_\":\"47\",\"_tier_\":\"2\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_children_page_47\":\"1\"}', '2020-07-12 22:48:56', '2020-07-12 22:48:56');
INSERT INTO `admin_operation_log` VALUES ('1109', '1', 'admin/cate/create', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:49:17', '2020-07-12 22:49:17');
INSERT INTO `admin_operation_log` VALUES ('1110', '1', 'admin/cate', 'POST', '112.96.38.62', '{\"_id\":\"YKtgYqFPhyliEAP8\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"upload_column\":\"image\",\"id\":\"WU_FILE_0\",\"name\":\"teacher03.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Thu Nov 14 2019 15:03:55 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"50694\"}', '2020-07-12 22:49:38', '2020-07-12 22:49:38');
INSERT INTO `admin_operation_log` VALUES ('1111', '1', 'admin/cate', 'POST', '112.96.38.62', '{\"text\":\"\\u65e0\\u6cd5\\u4f7f\\u7528\\u76ee\\u7684\\u5730\\u5217\\u8868\",\"parent_id\":\"33\",\"image\":\"images\\/9e82d74db877240ca00bf32564850a07.png\",\"file-image\":null,\"_file_\":null,\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-12 22:49:39', '2020-07-12 22:49:39');
INSERT INTO `admin_operation_log` VALUES ('1112', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:49:39', '2020-07-12 22:49:39');
INSERT INTO `admin_operation_log` VALUES ('1113', '1', 'admin/swipe', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:49:41', '2020-07-12 22:49:41');
INSERT INTO `admin_operation_log` VALUES ('1114', '1', 'admin/swipe/1/edit', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:49:48', '2020-07-12 22:49:48');
INSERT INTO `admin_operation_log` VALUES ('1115', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"_file_del_\":null,\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_method\":\"PUT\",\"key\":\"images\\/6028df07e45426cf1ab5339d3820d5b3.jpg\",\"_column\":\"img\"}', '2020-07-12 22:49:52', '2020-07-12 22:49:52');
INSERT INTO `admin_operation_log` VALUES ('1116', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"_file_del_\":null,\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_method\":\"PUT\",\"key\":\"images\\/43b064b7010459e1a610f07c1d6b5286.jpg\",\"_column\":\"img\"}', '2020-07-12 22:49:53', '2020-07-12 22:49:53');
INSERT INTO `admin_operation_log` VALUES ('1117', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"_file_del_\":null,\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_method\":\"PUT\",\"key\":\"images\\/75f69828f2188ba1fa1fc71ee8ddbde7.jpg\",\"_column\":\"img\"}', '2020-07-12 22:49:55', '2020-07-12 22:49:55');
INSERT INTO `admin_operation_log` VALUES ('1118', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"_file_del_\":null,\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_method\":\"PUT\",\"key\":\"images\\/f5f837ce3e3b374924ca9d01c4698974.jpg\",\"_column\":\"img\"}', '2020-07-12 22:49:57', '2020-07-12 22:49:57');
INSERT INTO `admin_operation_log` VALUES ('1119', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"_id\":\"eWE57dUdVap1qgrN\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"upload_column\":\"img\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"q1.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Sun Jul 12 2020 22:49:34 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"183012\"}', '2020-07-12 22:50:02', '2020-07-12 22:50:02');
INSERT INTO `admin_operation_log` VALUES ('1120', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"_id\":\"eWE57dUdVap1qgrN\",\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_method\":\"PUT\",\"img\":\"images\\/607df6b6c385c05eed2daa5fca8261fd.png\"}', '2020-07-12 22:50:03', '2020-07-12 22:50:03');
INSERT INTO `admin_operation_log` VALUES ('1121', '1', 'admin/swipe/1', 'PUT', '116.23.17.137', '{\"img\":\"images\\/607df6b6c385c05eed2daa5fca8261fd.png\",\"file-img\":null,\"_file_\":null,\"file\":null,\"_token\":\"Cj2DPmSYCUQIB5hzhg45aNuIQy6XLMYSeyjjSgym\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/swipe\"}', '2020-07-12 22:50:10', '2020-07-12 22:50:10');
INSERT INTO `admin_operation_log` VALUES ('1122', '1', 'admin/swipe', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:50:10', '2020-07-12 22:50:10');
INSERT INTO `admin_operation_log` VALUES ('1123', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 22:59:42', '2020-07-12 22:59:42');
INSERT INTO `admin_operation_log` VALUES ('1124', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_parent_id_\":\"48\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_children_page_48\":\"1\"}', '2020-07-12 22:59:44', '2020-07-12 22:59:44');
INSERT INTO `admin_operation_log` VALUES ('1125', '1', 'admin/cate/create', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 22:59:46', '2020-07-12 22:59:46');
INSERT INTO `admin_operation_log` VALUES ('1126', '1', 'admin/cate', 'POST', '112.96.38.62', '{\"_id\":\"ZgxocC0s3D9tcJWR\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"upload_column\":\"image\",\"id\":\"WU_FILE_1\",\"name\":\"bg.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Thu Nov 14 2019 11:55:21 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"26157\"}', '2020-07-12 23:00:27', '2020-07-12 23:00:27');
INSERT INTO `admin_operation_log` VALUES ('1127', '1', 'admin/cate', 'POST', '112.96.38.62', '{\"text\":\"\\u5f20\\u73b2\\u73b2\\u662f\\u4e2a\\u5c0f\\u4ed9\\u5973\\u54c7\",\"parent_id\":\"33\",\"image\":\"images\\/f8e0111a81a03611f1eea9f7f0b25263.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-12 23:00:29', '2020-07-12 23:00:29');
INSERT INTO `admin_operation_log` VALUES ('1128', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 23:00:29', '2020-07-12 23:00:29');
INSERT INTO `admin_operation_log` VALUES ('1129', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-12 23:00:30', '2020-07-12 23:00:30');
INSERT INTO `admin_operation_log` VALUES ('1130', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_parent_id_\":\"47\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_children_page_47\":\"1\"}', '2020-07-12 23:00:32', '2020-07-12 23:00:32');
INSERT INTO `admin_operation_log` VALUES ('1131', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_parent_id_\":\"48\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_children_page_48\":\"1\"}', '2020-07-12 23:00:33', '2020-07-12 23:00:33');
INSERT INTO `admin_operation_log` VALUES ('1132', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_children_page_45\":\"1\"}', '2020-07-12 23:00:35', '2020-07-12 23:00:35');
INSERT INTO `admin_operation_log` VALUES ('1133', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_children_page_29\":\"1\"}', '2020-07-12 23:00:36', '2020-07-12 23:00:36');
INSERT INTO `admin_operation_log` VALUES ('1134', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_parent_id_\":\"30\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_children_page_30\":\"1\"}', '2020-07-12 23:00:38', '2020-07-12 23:00:38');
INSERT INTO `admin_operation_log` VALUES ('1135', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_parent_id_\":\"33\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_children_page_33\":\"1\"}', '2020-07-12 23:00:39', '2020-07-12 23:00:39');
INSERT INTO `admin_operation_log` VALUES ('1136', '1', 'admin/cate/49/edit', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 23:02:38', '2020-07-12 23:02:38');
INSERT INTO `admin_operation_log` VALUES ('1137', '1', 'admin/cate/49', 'PUT', '112.96.38.62', '{\"_file_del_\":null,\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_method\":\"PUT\",\"key\":\"images\\/f8e0111a81a03611f1eea9f7f0b25263.jpg\",\"_column\":\"image\"}', '2020-07-12 23:02:41', '2020-07-12 23:02:41');
INSERT INTO `admin_operation_log` VALUES ('1138', '1', 'admin/cate/49', 'PUT', '112.96.38.62', '{\"_id\":\"XVLDVHwupM4CTdNr\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"upload_column\":\"image\",\"_method\":\"PUT\",\"id\":\"WU_FILE_2\",\"name\":\"bg.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Thu Nov 14 2019 11:55:21 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"26157\"}', '2020-07-12 23:02:47', '2020-07-12 23:02:47');
INSERT INTO `admin_operation_log` VALUES ('1139', '1', 'admin/cate/49', 'PUT', '112.96.38.62', '{\"_id\":\"XVLDVHwupM4CTdNr\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_method\":\"PUT\",\"image\":\"images\\/a43c5e794e562fe24666699750db66fd.jpg\"}', '2020-07-12 23:02:47', '2020-07-12 23:02:47');
INSERT INTO `admin_operation_log` VALUES ('1140', '1', 'admin/cate/49', 'PUT', '112.96.38.62', '{\"text\":\"\\u5f20\\u73b2\\u73b2\\u662f\\u4e2a\\u5c0f\\u4ed9\\u5973\\u54c7\",\"parent_id\":\"33\",\"image\":\"images\\/a43c5e794e562fe24666699750db66fd.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-12 23:02:48', '2020-07-12 23:02:48');
INSERT INTO `admin_operation_log` VALUES ('1141', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 23:02:48', '2020-07-12 23:02:48');
INSERT INTO `admin_operation_log` VALUES ('1142', '1', 'admin/cate', 'GET', '112.96.38.62', '[]', '2020-07-12 23:18:09', '2020-07-12 23:18:09');
INSERT INTO `admin_operation_log` VALUES ('1143', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_children_page_30\":\"1\"}', '2020-07-12 23:18:12', '2020-07-12 23:18:12');
INSERT INTO `admin_operation_log` VALUES ('1144', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_parent_id_\":\"33\",\"_tier_\":\"2\",\"_token\":\"bYPAArTtsB0a2kY5FcNVVAPZg1ddVg9R293btpfZ\",\"_children_page_33\":\"1\"}', '2020-07-12 23:18:13', '2020-07-12 23:18:13');
INSERT INTO `admin_operation_log` VALUES ('1145', '1', 'admin/cate', 'GET', '112.96.38.62', '[]', '2020-07-12 23:23:03', '2020-07-12 23:23:03');
INSERT INTO `admin_operation_log` VALUES ('1146', '1', 'admin/cate/create', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 23:23:05', '2020-07-12 23:23:05');
INSERT INTO `admin_operation_log` VALUES ('1147', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-12 23:23:09', '2020-07-12 23:23:09');
INSERT INTO `admin_operation_log` VALUES ('1148', '0', 'admin/auth/login', 'GET', '112.96.38.62', '[]', '2020-07-13 08:22:41', '2020-07-13 08:22:41');
INSERT INTO `admin_operation_log` VALUES ('1149', '0', 'admin/auth/login', 'POST', '112.96.38.62', '{\"_token\":\"Uv0x9HIvB3v3Y4ZxNvkaFO3TLB7A24JxM8jgGyLw\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-13 08:22:47', '2020-07-13 08:22:47');
INSERT INTO `admin_operation_log` VALUES ('1150', '1', 'admin', 'GET', '112.96.38.62', '[]', '2020-07-13 08:22:47', '2020-07-13 08:22:47');
INSERT INTO `admin_operation_log` VALUES ('1151', '1', 'admin/order', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 08:22:49', '2020-07-13 08:22:49');
INSERT INTO `admin_operation_log` VALUES ('1152', '1', 'admin/product', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 08:23:07', '2020-07-13 08:23:07');
INSERT INTO `admin_operation_log` VALUES ('1153', '1', 'admin/order', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 08:23:08', '2020-07-13 08:23:08');
INSERT INTO `admin_operation_log` VALUES ('1154', '1', 'admin/help', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 08:23:12', '2020-07-13 08:23:12');
INSERT INTO `admin_operation_log` VALUES ('1155', '1', 'admin/order', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 08:23:12', '2020-07-13 08:23:12');
INSERT INTO `admin_operation_log` VALUES ('1156', '1', 'admin/user', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 08:23:35', '2020-07-13 08:23:35');
INSERT INTO `admin_operation_log` VALUES ('1157', '1', 'admin/order', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 08:23:50', '2020-07-13 08:23:50');
INSERT INTO `admin_operation_log` VALUES ('1158', '1', 'admin/order', 'GET', '112.96.38.62', '[]', '2020-07-13 08:26:13', '2020-07-13 08:26:13');
INSERT INTO `admin_operation_log` VALUES ('1159', '1', 'admin/order', 'GET', '112.96.38.62', '[]', '2020-07-13 10:20:28', '2020-07-13 10:20:28');
INSERT INTO `admin_operation_log` VALUES ('1160', '1', 'admin/about', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:20:31', '2020-07-13 10:20:31');
INSERT INTO `admin_operation_log` VALUES ('1161', '1', 'admin/help', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:20:33', '2020-07-13 10:20:33');
INSERT INTO `admin_operation_log` VALUES ('1162', '1', 'admin/tixian', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:20:34', '2020-07-13 10:20:34');
INSERT INTO `admin_operation_log` VALUES ('1163', '1', 'admin/product', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:20:37', '2020-07-13 10:20:37');
INSERT INTO `admin_operation_log` VALUES ('1164', '1', 'admin/push', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:20:38', '2020-07-13 10:20:38');
INSERT INTO `admin_operation_log` VALUES ('1165', '1', 'admin/push', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:20:39', '2020-07-13 10:20:39');
INSERT INTO `admin_operation_log` VALUES ('1166', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:20:40', '2020-07-13 10:20:40');
INSERT INTO `admin_operation_log` VALUES ('1167', '1', 'admin/video', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:20:50', '2020-07-13 10:20:50');
INSERT INTO `admin_operation_log` VALUES ('1168', '1', 'admin/video/3/edit', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:21:03', '2020-07-13 10:21:03');
INSERT INTO `admin_operation_log` VALUES ('1169', '1', 'admin/video', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:21:08', '2020-07-13 10:21:08');
INSERT INTO `admin_operation_log` VALUES ('1170', '1', 'admin/video/1/edit', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:21:11', '2020-07-13 10:21:11');
INSERT INTO `admin_operation_log` VALUES ('1171', '1', 'admin/video/1', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:21:14', '2020-07-13 10:21:14');
INSERT INTO `admin_operation_log` VALUES ('1172', '1', 'admin/video', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:21:15', '2020-07-13 10:21:15');
INSERT INTO `admin_operation_log` VALUES ('1173', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:21:19', '2020-07-13 10:21:19');
INSERT INTO `admin_operation_log` VALUES ('1174', '1', 'admin/cate/28/edit', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:21:21', '2020-07-13 10:21:21');
INSERT INTO `admin_operation_log` VALUES ('1175', '1', 'admin/push', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:21:30', '2020-07-13 10:21:30');
INSERT INTO `admin_operation_log` VALUES ('1176', '1', 'admin/order', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:21:31', '2020-07-13 10:21:31');
INSERT INTO `admin_operation_log` VALUES ('1177', '1', 'admin/help', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:21:34', '2020-07-13 10:21:34');
INSERT INTO `admin_operation_log` VALUES ('1178', '1', 'admin/help/1/edit', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:21:36', '2020-07-13 10:21:36');
INSERT INTO `admin_operation_log` VALUES ('1179', '1', 'admin/about', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:21:40', '2020-07-13 10:21:40');
INSERT INTO `admin_operation_log` VALUES ('1180', '1', 'admin/about/1/edit', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:21:42', '2020-07-13 10:21:42');
INSERT INTO `admin_operation_log` VALUES ('1181', '1', 'admin/video', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:22:00', '2020-07-13 10:22:00');
INSERT INTO `admin_operation_log` VALUES ('1182', '1', 'admin/user', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:22:00', '2020-07-13 10:22:00');
INSERT INTO `admin_operation_log` VALUES ('1183', '1', 'admin/video', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:22:03', '2020-07-13 10:22:03');
INSERT INTO `admin_operation_log` VALUES ('1184', '1', 'admin/video/1/edit', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:22:05', '2020-07-13 10:22:05');
INSERT INTO `admin_operation_log` VALUES ('1185', '1', 'admin/video/1/edit', 'GET', '112.96.38.62', '[]', '2020-07-13 10:22:20', '2020-07-13 10:22:20');
INSERT INTO `admin_operation_log` VALUES ('1186', '1', 'admin/video/1/edit', 'GET', '112.96.38.62', '[]', '2020-07-13 10:22:22', '2020-07-13 10:22:22');
INSERT INTO `admin_operation_log` VALUES ('1187', '1', 'admin/video/1/edit', 'GET', '112.96.38.62', '[]', '2020-07-13 10:32:11', '2020-07-13 10:32:11');
INSERT INTO `admin_operation_log` VALUES ('1188', '1', 'admin/help', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:14', '2020-07-13 10:32:14');
INSERT INTO `admin_operation_log` VALUES ('1189', '1', 'admin/help/1/edit', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:17', '2020-07-13 10:32:17');
INSERT INTO `admin_operation_log` VALUES ('1190', '1', 'admin/order', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:22', '2020-07-13 10:32:22');
INSERT INTO `admin_operation_log` VALUES ('1191', '1', 'admin/product', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:23', '2020-07-13 10:32:23');
INSERT INTO `admin_operation_log` VALUES ('1192', '1', 'admin/product', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:24', '2020-07-13 10:32:24');
INSERT INTO `admin_operation_log` VALUES ('1193', '1', 'admin/help', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:24', '2020-07-13 10:32:24');
INSERT INTO `admin_operation_log` VALUES ('1194', '1', 'admin/about', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:25', '2020-07-13 10:32:25');
INSERT INTO `admin_operation_log` VALUES ('1195', '1', 'admin/help', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:27', '2020-07-13 10:32:27');
INSERT INTO `admin_operation_log` VALUES ('1196', '1', 'admin/about', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:28', '2020-07-13 10:32:28');
INSERT INTO `admin_operation_log` VALUES ('1197', '1', 'admin/tixian', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:29', '2020-07-13 10:32:29');
INSERT INTO `admin_operation_log` VALUES ('1198', '1', 'admin/product', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:30', '2020-07-13 10:32:30');
INSERT INTO `admin_operation_log` VALUES ('1199', '1', 'admin/tixian', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:31', '2020-07-13 10:32:31');
INSERT INTO `admin_operation_log` VALUES ('1200', '1', 'admin/tixian/1', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:34', '2020-07-13 10:32:34');
INSERT INTO `admin_operation_log` VALUES ('1201', '1', 'admin/product', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:37', '2020-07-13 10:32:37');
INSERT INTO `admin_operation_log` VALUES ('1202', '1', 'admin/push', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:38', '2020-07-13 10:32:38');
INSERT INTO `admin_operation_log` VALUES ('1203', '1', 'admin/cate', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:39', '2020-07-13 10:32:39');
INSERT INTO `admin_operation_log` VALUES ('1204', '1', 'admin/video', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:32:40', '2020-07-13 10:32:40');
INSERT INTO `admin_operation_log` VALUES ('1205', '1', 'admin/video/3/edit', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:33:09', '2020-07-13 10:33:09');
INSERT INTO `admin_operation_log` VALUES ('1206', '1', 'admin/video', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:33:15', '2020-07-13 10:33:15');
INSERT INTO `admin_operation_log` VALUES ('1207', '1', 'admin/user', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:33:15', '2020-07-13 10:33:15');
INSERT INTO `admin_operation_log` VALUES ('1208', '1', 'admin/video', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:33:18', '2020-07-13 10:33:18');
INSERT INTO `admin_operation_log` VALUES ('1209', '1', 'admin/video/create', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:33:23', '2020-07-13 10:33:23');
INSERT INTO `admin_operation_log` VALUES ('1210', '1', 'admin/user', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:33:25', '2020-07-13 10:33:25');
INSERT INTO `admin_operation_log` VALUES ('1211', '1', 'admin/swipe', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:33:26', '2020-07-13 10:33:26');
INSERT INTO `admin_operation_log` VALUES ('1212', '1', 'admin', 'GET', '112.96.38.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 10:33:27', '2020-07-13 10:33:27');

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
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$JbkfAw5dQRD9zPweB7E8lejqQd7j/WE6cR9cbuUNpcXZBfZN2.TRe', 'Administrator', 'images/bg.jpg', '6XJFWWBCYasYQHPJES43MlXfxFDOnHH57mOID43F5m7qpIP3mmfHjYuU9IEt', '2020-06-21 12:44:18', '2020-07-11 16:27:27');

-- ----------------------------
-- Table structure for card
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moeny` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mannumber` int(11) DEFAULT NULL,
  `phone` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of card
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cart_items
-- ----------------------------
INSERT INTO `cart_items` VALUES ('3', '3', '1', '1', '2020-07-05 19:20:58', '2020-07-05 19:20:58');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) DEFAULT '0',
  `is_directory` tinyint(1) DEFAULT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类图片',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('28', '精品典藏', '0', null, 'images/de2485bd1bdaf5c8a6436f468a3489cf.jpg', null, '2020-07-01 12:50:16', '2020-07-10 14:47:54');
INSERT INTO `categories` VALUES ('29', '原缘典藏', '28', null, null, null, '2020-07-01 12:51:28', '2020-07-01 12:51:28');
INSERT INTO `categories` VALUES ('30', '场馆训览', '0', null, 'images/0e50269ca4e4a318092c160682b802cb.jpg', null, '2020-07-01 12:54:14', '2020-07-10 14:52:39');
INSERT INTO `categories` VALUES ('33', '场馆训览子分类', '30', null, null, null, '2020-07-01 13:03:55', '2020-07-01 13:03:55');
INSERT INTO `categories` VALUES ('45', '水木恒缘', '28', null, null, null, '2020-07-01 13:26:19', '2020-07-01 13:26:19');
INSERT INTO `categories` VALUES ('46', '原缘玉秀', '28', null, null, null, '2020-07-01 13:26:42', '2020-07-01 13:26:42');
INSERT INTO `categories` VALUES ('47', '古保收藏', '28', null, null, null, '2020-07-01 15:05:41', '2020-07-01 15:05:41');
INSERT INTO `categories` VALUES ('48', '测试二级', '28', null, null, null, '2020-07-05 23:51:30', '2020-07-05 23:51:30');
INSERT INTO `categories` VALUES ('49', '张玲玲是个小仙女哇', '33', null, 'images/a43c5e794e562fe24666699750db66fd.jpg', null, '2020-07-12 23:00:29', '2020-07-12 23:02:47');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
INSERT INTO `failed_jobs` VALUES ('11', 'redis', 'default', '{\"displayName\":\"App\\\\Jobs\\\\CloseOrder\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CloseOrder\",\"command\":\"O:19:\\\"App\\\\Jobs\\\\CloseOrder\\\":9:{s:8:\\\"\\u0000*\\u0000order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:29;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";i:30;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"},\"id\":\"C67oUJhpi8NJLcavfUk5FJhz7COssYyG\",\"attempts\":0}', 'Illuminate\\Database\\Eloquent\\MassAssignmentException: Add [status] to fillable property to allow mass assignment on [App\\Models\\Order]. in E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php:332\nStack trace:\n#0 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(608): Illuminate\\Database\\Eloquent\\Model->fill(Array)\n#1 E:\\laragon\\www\\collect\\app\\Jobs\\CloseOrder.php(38): Illuminate\\Database\\Eloquent\\Model->update(Array)\n#2 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Concerns\\ManagesTransactions.php(29): App\\Jobs\\CloseOrder->App\\Jobs\\{closure}(Object(Illuminate\\Database\\MySqlConnection))\n#3 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\DatabaseManager.php(349): Illuminate\\Database\\Connection->transaction(Object(Closure))\n#4 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(261): Illuminate\\Database\\DatabaseManager->__call(\'transaction\', Array)\n#5 E:\\laragon\\www\\collect\\app\\Jobs\\CloseOrder.php(40): Illuminate\\Support\\Facades\\Facade::__callStatic(\'transaction\', Array)\n#6 [internal function]: App\\Jobs\\CloseOrder->handle()\n#7 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#8 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#10 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#11 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#12 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#13 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\CloseOrder))\n#14 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\CloseOrder))\n#15 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\CloseOrder), false)\n#17 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\CloseOrder))\n#18 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\CloseOrder))\n#19 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(App\\Jobs\\CloseOrder))\n#21 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#22 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#23 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#24 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#26 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#27 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#28 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#29 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#30 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#31 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#32 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#33 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#34 E:\\laragon\\www\\collect\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 E:\\laragon\\www\\collect\\vendor\\symfony\\console\\Application.php(1000): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 E:\\laragon\\www\\collect\\vendor\\symfony\\console\\Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 E:\\laragon\\www\\collect\\vendor\\symfony\\console\\Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 E:\\laragon\\www\\collect\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 {main}', '2020-07-10 18:32:44');
INSERT INTO `failed_jobs` VALUES ('12', 'redis', 'default', '{\"displayName\":\"App\\\\Jobs\\\\CloseOrder\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CloseOrder\",\"command\":\"O:19:\\\"App\\\\Jobs\\\\CloseOrder\\\":9:{s:8:\\\"\\u0000*\\u0000order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:30;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";i:30;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"},\"id\":\"D7rhuHtLyh0CpeJuqQIkT10xUgdpopxb\",\"attempts\":0}', 'Illuminate\\Database\\Eloquent\\MassAssignmentException: Add [status] to fillable property to allow mass assignment on [App\\Models\\Order]. in E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php:332\nStack trace:\n#0 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(608): Illuminate\\Database\\Eloquent\\Model->fill(Array)\n#1 E:\\laragon\\www\\collect\\app\\Jobs\\CloseOrder.php(38): Illuminate\\Database\\Eloquent\\Model->update(Array)\n#2 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Concerns\\ManagesTransactions.php(29): App\\Jobs\\CloseOrder->App\\Jobs\\{closure}(Object(Illuminate\\Database\\MySqlConnection))\n#3 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\DatabaseManager.php(349): Illuminate\\Database\\Connection->transaction(Object(Closure))\n#4 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(261): Illuminate\\Database\\DatabaseManager->__call(\'transaction\', Array)\n#5 E:\\laragon\\www\\collect\\app\\Jobs\\CloseOrder.php(40): Illuminate\\Support\\Facades\\Facade::__callStatic(\'transaction\', Array)\n#6 [internal function]: App\\Jobs\\CloseOrder->handle()\n#7 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#8 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#10 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#11 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#12 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#13 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\CloseOrder))\n#14 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\CloseOrder))\n#15 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\CloseOrder), false)\n#17 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\CloseOrder))\n#18 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\CloseOrder))\n#19 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(App\\Jobs\\CloseOrder))\n#21 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#22 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#23 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#24 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#26 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#27 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#28 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#29 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#30 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#31 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#32 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#33 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#34 E:\\laragon\\www\\collect\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 E:\\laragon\\www\\collect\\vendor\\symfony\\console\\Application.php(1000): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 E:\\laragon\\www\\collect\\vendor\\symfony\\console\\Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 E:\\laragon\\www\\collect\\vendor\\symfony\\console\\Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 E:\\laragon\\www\\collect\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 {main}', '2020-07-10 18:36:17');
INSERT INTO `failed_jobs` VALUES ('13', 'redis', 'default', '{\"displayName\":\"App\\\\Jobs\\\\CloseOrder\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CloseOrder\",\"command\":\"O:19:\\\"App\\\\Jobs\\\\CloseOrder\\\":9:{s:8:\\\"\\u0000*\\u0000order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:31;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";i:30;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"},\"id\":\"ro87px4HurCV3AX1m1lcOmB5v3Ew5Onu\",\"attempts\":0}', 'Illuminate\\Database\\Eloquent\\MassAssignmentException: Add [status] to fillable property to allow mass assignment on [App\\Models\\Order]. in E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php:332\nStack trace:\n#0 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(608): Illuminate\\Database\\Eloquent\\Model->fill(Array)\n#1 E:\\laragon\\www\\collect\\app\\Jobs\\CloseOrder.php(38): Illuminate\\Database\\Eloquent\\Model->update(Array)\n#2 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Concerns\\ManagesTransactions.php(29): App\\Jobs\\CloseOrder->App\\Jobs\\{closure}(Object(Illuminate\\Database\\MySqlConnection))\n#3 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\DatabaseManager.php(349): Illuminate\\Database\\Connection->transaction(Object(Closure))\n#4 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(261): Illuminate\\Database\\DatabaseManager->__call(\'transaction\', Array)\n#5 E:\\laragon\\www\\collect\\app\\Jobs\\CloseOrder.php(40): Illuminate\\Support\\Facades\\Facade::__callStatic(\'transaction\', Array)\n#6 [internal function]: App\\Jobs\\CloseOrder->handle()\n#7 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#8 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#10 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#11 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#12 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#13 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\CloseOrder))\n#14 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\CloseOrder))\n#15 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\CloseOrder), false)\n#17 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\CloseOrder))\n#18 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\CloseOrder))\n#19 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(App\\Jobs\\CloseOrder))\n#21 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#22 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#23 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#24 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#26 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#27 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#28 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#29 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#30 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#31 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#32 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#33 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#34 E:\\laragon\\www\\collect\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 E:\\laragon\\www\\collect\\vendor\\symfony\\console\\Application.php(1000): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 E:\\laragon\\www\\collect\\vendor\\symfony\\console\\Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 E:\\laragon\\www\\collect\\vendor\\symfony\\console\\Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 E:\\laragon\\www\\collect\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 {main}', '2020-07-10 18:38:12');
INSERT INTO `failed_jobs` VALUES ('14', 'redis', 'default', '{\"displayName\":\"App\\\\Jobs\\\\CloseOrder\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CloseOrder\",\"command\":\"O:19:\\\"App\\\\Jobs\\\\CloseOrder\\\":9:{s:8:\\\"\\u0000*\\u0000order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";i:3600;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"},\"id\":\"7blAfvXLHaOJyibhhnqNTTsyv9lWntJv\",\"attempts\":0}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Order]. in E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:470\nStack trace:\n#0 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\CloseOrder->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(45): App\\Jobs\\CloseOrder->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\CloseOrder->__wakeup()\n#4 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:19:\"App\\\\Jobs\\\\...\')\n#5 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#6 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 E:\\laragon\\www\\collect\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 E:\\laragon\\www\\collect\\vendor\\symfony\\console\\Application.php(1000): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 E:\\laragon\\www\\collect\\vendor\\symfony\\console\\Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 E:\\laragon\\www\\collect\\vendor\\symfony\\console\\Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 E:\\laragon\\www\\collect\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 E:\\laragon\\www\\collect\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-07-10 18:53:27');

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
-- Table structure for moneylog
-- ----------------------------
DROP TABLE IF EXISTS `moneylog`;
CREATE TABLE `moneylog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '//提现及获取',
  `money` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of moneylog
-- ----------------------------
INSERT INTO `moneylog` VALUES ('1', '3', '提现', '50.00', null, null);
INSERT INTO `moneylog` VALUES ('2', '3', '下级购买获得佣金', '50.00', '2020-07-11 11:57:05', '2020-07-11 11:57:05');
INSERT INTO `moneylog` VALUES ('3', '3', '下级购买获得佣金', '50.00', '2020-07-11 11:58:42', '2020-07-11 11:58:42');
INSERT INTO `moneylog` VALUES ('16', '3', '提现', '20.00', '2020-07-11 15:48:24', '2020-07-11 15:48:24');
INSERT INTO `moneylog` VALUES ('17', '3', '提现', '20.00', '2020-07-11 15:50:04', '2020-07-11 15:50:04');
INSERT INTO `moneylog` VALUES ('18', '1', '下级购买获得佣金', '0.01', '2020-07-11 16:24:53', '2020-07-11 16:24:53');

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
INSERT INTO `notifications` VALUES ('cdea53ab-b26a-4e7a-a87d-65d3adb482a1', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '3', '{\"id\":5,\"title\":\"\\u6d4b\\u8bd5\\u901a\\u77e5\",\"content\":\"\\u901a\\u77e5\\u5185\\u5bb9\"}', '2020-07-03 14:35:08', '2020-07-03 14:35:01', '2020-07-03 14:35:08');
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
  `status` tinyint(5) DEFAULT '1' COMMENT '1未支付2待发货3已发货',
  `ship_data` text COLLATE utf8mb4_unicode_ci COMMENT '物流数据',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `no` (`no`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('13', '20200705134944066375', '3', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, null, null, '2', null, '2020-07-05 13:49:44', '2020-07-05 13:49:44');
INSERT INTO `order` VALUES ('16', '20200705161811046178', '1', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, '2020-07-05 16:18:33', '4200000586202007058370743547', '3', '{\"express_company\":\"\\u4e2d\\u901a\",\"express_no\":\"123456\"}', '2020-07-05 16:18:11', '2020-07-05 16:18:33');
INSERT INTO `order` VALUES ('38', '20200711162254554880', '3', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, '2020-07-11 16:24:53', '4200000598202007113745637953', '2', null, '2020-07-11 16:22:54', '2020-07-11 16:24:53');

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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES ('6', '11', '2', '2', '50.00');
INSERT INTO `order_items` VALUES ('7', '11', '1', '4', '0.01');
INSERT INTO `order_items` VALUES ('8', '12', '2', '2', '50.00');
INSERT INTO `order_items` VALUES ('9', '12', '1', '4', '0.01');
INSERT INTO `order_items` VALUES ('10', '13', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('11', '13', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('12', '14', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('13', '14', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('14', '15', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('15', '15', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('16', '16', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('17', '16', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('18', '18', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('19', '18', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('20', '19', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('21', '19', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('22', '20', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('23', '20', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('24', '21', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('25', '21', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('26', '22', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('27', '22', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('28', '23', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('29', '23', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('30', '24', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('31', '24', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('32', '25', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('33', '25', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('34', '26', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('35', '26', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('36', '27', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('37', '27', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('38', '28', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('39', '28', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('40', '29', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('41', '29', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('42', '30', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('43', '30', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('44', '31', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('45', '31', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('46', '32', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('47', '32', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('48', '33', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('49', '33', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('50', '34', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('51', '34', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('52', '35', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('53', '35', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('54', '36', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('55', '36', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('56', '37', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('57', '37', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('58', '38', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('59', '38', '2', '4', '0.01');

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
  `recommended` tinyint(10) DEFAULT '1' COMMENT '推荐位1否2是',
  `status` tinyint(5) DEFAULT NULL COMMENT '状态1上架2下架',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '45', '彩云恒通骨王雕刻', '<p>贪财有道，好色有品，博学有识，读书有瘾，喝酒有量，玩笑有度，没事不会惹事，有事也不会怕事 对外是顶天立地，对内是没有脾气的<br data-mce-bogus=\"1\"></p>', '[\"images\\/01.png\",\"images\\/02.png\"]', null, '50.00', '50', '1', '1', '2020-07-01 15:09:08', '2020-07-02 17:56:16');
INSERT INTO `products` VALUES ('2', '47', '文玩收藏商品', '<p>这你是商品描述</p>', '[\"images\\/05.png\",\"images\\/04.png\"]', null, '0.01', '50', '1', '1', '2020-07-01 17:12:14', '2020-07-01 17:12:14');
INSERT INTO `products` VALUES ('3', '29', '义薄云天', '<p>义薄云天义薄云天义薄云天义薄云天<br data-mce-bogus=\"1\"></p>', '[\"images\\/343c950281d1630cf0b3f64ad3dbf494.jpg\"]', null, '1887.00', '1', '1', '1', '2020-07-12 18:35:59', '2020-07-12 18:35:59');

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
-- Table structure for sign
-- ----------------------------
DROP TABLE IF EXISTS `sign`;
CREATE TABLE `sign` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sign
-- ----------------------------
INSERT INTO `sign` VALUES ('2', '37', '{\"appId\":\"wx5da558002fdd6736\",\"timeStamp\":\"1594380989\",\"nonceStr\":\"LNuVlMKUiviOlmwU\",\"package\":\"prepay_id=wx10193630382509413399229f1480146700\",\"signType\":\"MD5\",\"paySign\":\"91A65AD00064B496F7E3823B9289AE8A\"}');
INSERT INTO `sign` VALUES ('3', '38', '{\"appId\":\"wx5da558002fdd6736\",\"timeStamp\":\"1594455774\",\"nonceStr\":\"QJtrmdgSqgg2hdnn\",\"package\":\"prepay_id=wx11162254323341dfe68654cf1624258400\",\"signType\":\"MD5\",\"paySign\":\"61095EE361C77B090BD9C711C787E7AC\"}');

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
INSERT INTO `swipe` VALUES ('1', '[\"images\\/607df6b6c385c05eed2daa5fca8261fd.png\"]');

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
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `weapp_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'snow雪11', 'https://wx.qlogo.cn/mmopen/vi_32/fvSzic2fdNUMgDEXQMSMy4qUHQCCCcyPhyZCaKibRcGFckNYyqicx2mfJiagqjKV0USu8icX9fnibDE9wqb4aMazNseA/132', null, null, null, '2', 'oUf9a5AT4xPDZy8lJ5Fpskh5gTqE', 'eyJpdiI6IkNIbEJKekVQUzljZzZ5TW03Z1dSNWc9PSIsInZhbHVlIjoiMWhlcTlCUlBqcUVjbnJyWmQ3SCtWR3BjRGMxYmVnNXd0RnF1djEyZytJZ0dlVmVsSWZxemFNXC9pazBLU25CRzciLCJtYWMiOiIzNDY0OTZmMmM0N2Q1N2FkY2YxOWNjOTVkM2U2N2ZiODcxMjlkYjRmYTlkMGJkZTkxOGNhOGY0YzFkMWNhYjA5In0=', '2020-06-18 17:27:23', '2020-07-11 16:24:53', '1', '0.01', '0');
INSERT INTO `users` VALUES ('3', 'snow雪', 'https://wx.qlogo.cn/mmopen/vi_32/P3OQkgnojFxA8yYWQQicicUbobTBg7lBh9E1m6kBR0kibQ90lv9QYowBWalB0knWBLZas27GZ0oJjWpciarPj0OLXw/132', null, null, null, null, 'oLZ7u0Frz9g4DmtKM21pqfqclkzM', 'eyJpdiI6InlHaDZUSkxNd1hZUUJWSmt5TE14d0E9PSIsInZhbHVlIjoiK3hjZ20xSHM1TDdEb2syWjRCZ1g2XC92YnlWcndcL3RUVE5KUldWOXl2UTJnUGI1RFVKWFVcL01IcHhaXC9ZOGFHKzkiLCJtYWMiOiJhNjQ0YjhmN2I1OGRlMWNkMzk4YTQxZmE2NmJkNjQ5OTMxMWI2Y2MwMzY2ZmY5NzczOTE4ZDE4MjgxZDkzMThhIn0=', '2020-07-05 19:08:21', '2020-07-11 16:21:04', '0', '0.00', '1');
INSERT INTO `users` VALUES ('4', 'snow雪33', null, null, null, null, null, 'sssss', null, null, null, '0', '0.00', '3');
INSERT INTO `users` VALUES ('5', 'snow雪', 'https://wx.qlogo.cn/mmopen/vi_32/357r4VUYVBSRHwviaIo1xFicRKTxTzE6XGEds5LQJNFtVmgTLhZXiawXnUh1WJvfoPh6wyuI88aicrafvseOawRAiaw/132', null, null, null, null, 'obkkt5M-nEszHFpzye-6S7Y_V-Qc', 'eyJpdiI6IlwvajJ0Y213enB1NlRZN0dLNCsrVTdRPT0iLCJ2YWx1ZSI6IjJRWnFQZGRRXC9aSFNOSlJIc1NhbDFKdDRicGZzNWF1XC8yNk0xS01YY0p2VUc0VmY3dkxQK25vWjUwc0xqajYzSyIsIm1hYyI6ImI5OTc2MTU4ZmQyMmJhODNlOGIxY2I0ZTUxNDM2MTE1NDNiMGE3NzBlMDE5OWUwMTkwNGUwYWVjNDhiZDg0YTUifQ==', '2020-07-12 21:09:59', '2020-07-12 21:09:59', '0', '0.00', '0');
INSERT INTO `users` VALUES ('6', '沙茶酱', 'https://wx.qlogo.cn/mmopen/vi_32/W2XzgxgBicvDohDylT4tZp53W8SlGz6UB3VKyR826CibgmHVkBqJGyKcNb6ibh0PibqHDFfpmcSQrqGOvpc2q651ZQ/132', null, null, null, null, 'obkkt5NTitx4lVbwj2j9zqvR6Vnc', 'eyJpdiI6Ik1jVDZjUENOSkZQMXYxa2p5dFJNMFE9PSIsInZhbHVlIjoiNzJmZjNrRkFJVUNpVEdpQlh6MkJxSDdMRjBhdjBnMkREOW1QcGNaTGQwQ3QzOGVFN01vem5ZZUdMdGFkUlcyciIsIm1hYyI6ImEwMTY4YzdmNzk1NGVlYmQ2NGU1ZGU1ZDQ4Zjk3NWZmZTQ0M2FiMWVhY2E4NGFmOWNlMzJjZjM2MTU1OTNiNDEifQ==', '2020-07-12 21:28:21', '2020-07-12 22:40:36', '0', '0.00', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '测试视频', '测试视频描述', 'files/70c4662e8faeacb3df2ef4c3517f49c0.mp4', '2020-07-03 17:13:25', '2020-07-03 17:28:56');
INSERT INTO `video` VALUES ('2', '义薄云天', '123321', 'files/d74e248f5dd09532107c16ad6b227bbb.mp4', '2020-07-12 19:00:56', '2020-07-12 19:00:56');
INSERT INTO `video` VALUES ('3', '测试视频看看', '起飞起飞起飞起飞起飞起飞起飞起飞起飞', 'files/cd2bd04abec1d414a3a961da63694b12.mp4', '2020-07-12 19:01:22', '2020-07-12 19:01:22');

-- ----------------------------
-- Table structure for withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `withdrawal`;
CREATE TABLE `withdrawal` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '银行卡号',
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开户行',
  `moeny` decimal(10,2) DEFAULT NULL,
  `mannumber` int(11) DEFAULT NULL COMMENT '身份证号',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `status` tinyint(5) DEFAULT '1' COMMENT '1已申请2,已拨款',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of withdrawal
-- ----------------------------
INSERT INTO `withdrawal` VALUES ('1', '3', '张三', '123456789', '中国银行', '20.00', '123456789', '15766925847', '2', '2020-07-05 18:53:11', '2020-07-11 15:50:05');
