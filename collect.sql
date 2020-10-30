/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50724
Source Host           : 127.0.0.1:3306
Source Database       : collect

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-10-30 11:54:34
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
) ENGINE=InnoDB AUTO_INCREMENT=2766 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `admin_operation_log` VALUES ('1213', '0', 'admin/auth/login', 'GET', '117.136.79.14', '[]', '2020-07-13 18:16:00', '2020-07-13 18:16:00');
INSERT INTO `admin_operation_log` VALUES ('1214', '1', 'admin/swipe', 'GET', '116.23.17.137', '[]', '2020-07-13 19:17:50', '2020-07-13 19:17:50');
INSERT INTO `admin_operation_log` VALUES ('1215', '0', 'admin/auth/login', 'GET', '112.96.199.62', '[]', '2020-07-13 21:14:20', '2020-07-13 21:14:20');
INSERT INTO `admin_operation_log` VALUES ('1216', '0', 'admin/auth/login', 'POST', '112.96.199.62', '{\"_token\":\"kxAPZv47w5cdVsuGrP0xPWiNywRoYp7dWDn4YHew\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-13 21:14:26', '2020-07-13 21:14:26');
INSERT INTO `admin_operation_log` VALUES ('1217', '1', 'admin', 'GET', '112.96.199.62', '[]', '2020-07-13 21:14:26', '2020-07-13 21:14:26');
INSERT INTO `admin_operation_log` VALUES ('1218', '1', 'admin', 'GET', '112.96.199.62', '[]', '2020-07-13 21:15:33', '2020-07-13 21:15:33');
INSERT INTO `admin_operation_log` VALUES ('1219', '1', 'admin', 'GET', '112.96.199.62', '[]', '2020-07-13 21:15:37', '2020-07-13 21:15:37');
INSERT INTO `admin_operation_log` VALUES ('1220', '1', 'admin/swipe', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:15:38', '2020-07-13 21:15:38');
INSERT INTO `admin_operation_log` VALUES ('1221', '1', 'admin/video', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:15:42', '2020-07-13 21:15:42');
INSERT INTO `admin_operation_log` VALUES ('1222', '1', 'admin/swipe', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:15:43', '2020-07-13 21:15:43');
INSERT INTO `admin_operation_log` VALUES ('1223', '1', 'admin/user', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:15:45', '2020-07-13 21:15:45');
INSERT INTO `admin_operation_log` VALUES ('1224', '1', 'admin/video', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:15:48', '2020-07-13 21:15:48');
INSERT INTO `admin_operation_log` VALUES ('1225', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:15:54', '2020-07-13 21:15:54');
INSERT INTO `admin_operation_log` VALUES ('1226', '1', 'admin/push', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:16:01', '2020-07-13 21:16:01');
INSERT INTO `admin_operation_log` VALUES ('1227', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:16:02', '2020-07-13 21:16:02');
INSERT INTO `admin_operation_log` VALUES ('1228', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-13 21:16:05', '2020-07-13 21:16:05');
INSERT INTO `admin_operation_log` VALUES ('1229', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_parent_id_\":\"30\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_children_page_30\":\"1\"}', '2020-07-13 21:16:06', '2020-07-13 21:16:06');
INSERT INTO `admin_operation_log` VALUES ('1230', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_parent_id_\":\"33\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_children_page_33\":\"1\"}', '2020-07-13 21:16:08', '2020-07-13 21:16:08');
INSERT INTO `admin_operation_log` VALUES ('1231', '1', 'admin/user', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:16:10', '2020-07-13 21:16:10');
INSERT INTO `admin_operation_log` VALUES ('1232', '1', 'admin/swipe', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:16:11', '2020-07-13 21:16:11');
INSERT INTO `admin_operation_log` VALUES ('1233', '1', 'admin/user', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:16:12', '2020-07-13 21:16:12');
INSERT INTO `admin_operation_log` VALUES ('1234', '1', 'admin/swipe', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:16:13', '2020-07-13 21:16:13');
INSERT INTO `admin_operation_log` VALUES ('1235', '1', 'admin/swipe/1/edit', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:16:16', '2020-07-13 21:16:16');
INSERT INTO `admin_operation_log` VALUES ('1236', '1', 'admin/swipe', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:16:20', '2020-07-13 21:16:20');
INSERT INTO `admin_operation_log` VALUES ('1237', '1', 'admin', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:16:21', '2020-07-13 21:16:21');
INSERT INTO `admin_operation_log` VALUES ('1238', '1', 'admin/dcat-api/form', 'POST', '112.96.199.62', '{\"minmoney\":\"6\",\"rate\":\"6\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Setting\",\"_current_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin?_pjax=%23pjax-container\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\"}', '2020-07-13 21:16:27', '2020-07-13 21:16:27');
INSERT INTO `admin_operation_log` VALUES ('1239', '1', 'admin', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:16:27', '2020-07-13 21:16:27');
INSERT INTO `admin_operation_log` VALUES ('1240', '1', 'admin/dcat-api/form', 'POST', '112.96.199.62', '{\"minmoney\":\"6.00\",\"rate\":\"1\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Setting\",\"_current_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin?_pjax=%23pjax-container\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\"}', '2020-07-13 21:16:37', '2020-07-13 21:16:37');
INSERT INTO `admin_operation_log` VALUES ('1241', '1', 'admin', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:16:37', '2020-07-13 21:16:37');
INSERT INTO `admin_operation_log` VALUES ('1242', '1', 'admin', 'GET', '112.96.199.62', '[]', '2020-07-13 21:17:50', '2020-07-13 21:17:50');
INSERT INTO `admin_operation_log` VALUES ('1243', '0', 'admin/auth/login', 'GET', '120.230.122.162', '[]', '2020-07-13 21:48:38', '2020-07-13 21:48:38');
INSERT INTO `admin_operation_log` VALUES ('1244', '0', 'admin/auth/login', 'GET', '120.230.122.162', '[]', '2020-07-13 21:48:47', '2020-07-13 21:48:47');
INSERT INTO `admin_operation_log` VALUES ('1245', '0', 'admin/auth/login', 'POST', '120.230.122.162', '{\"_token\":\"djbUX3Ay4sV2eqtSkS8ex8V0VFBmXtQYUCHXsZeW\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-13 21:49:14', '2020-07-13 21:49:14');
INSERT INTO `admin_operation_log` VALUES ('1246', '1', 'admin/swipe', 'GET', '120.230.122.162', '[]', '2020-07-13 21:49:15', '2020-07-13 21:49:15');
INSERT INTO `admin_operation_log` VALUES ('1247', '1', 'admin/user', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:49:46', '2020-07-13 21:49:46');
INSERT INTO `admin_operation_log` VALUES ('1248', '1', 'admin/swipe', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:49:52', '2020-07-13 21:49:52');
INSERT INTO `admin_operation_log` VALUES ('1249', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:50:16', '2020-07-13 21:50:16');
INSERT INTO `admin_operation_log` VALUES ('1250', '1', 'admin/cate/create', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:50:21', '2020-07-13 21:50:21');
INSERT INTO `admin_operation_log` VALUES ('1251', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:50:26', '2020-07-13 21:50:26');
INSERT INTO `admin_operation_log` VALUES ('1252', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-13 21:50:28', '2020-07-13 21:50:28');
INSERT INTO `admin_operation_log` VALUES ('1253', '1', 'admin/cate/create', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:50:43', '2020-07-13 21:50:43');
INSERT INTO `admin_operation_log` VALUES ('1254', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:50:45', '2020-07-13 21:50:45');
INSERT INTO `admin_operation_log` VALUES ('1255', '1', 'admin/cate/create', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:50:46', '2020-07-13 21:50:46');
INSERT INTO `admin_operation_log` VALUES ('1256', '1', 'admin/swipe/1/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:50:48', '2020-07-13 21:50:48');
INSERT INTO `admin_operation_log` VALUES ('1257', '1', 'admin/swipe/1', 'PUT', '120.230.122.162', '{\"_id\":\"bMjrrVnOrU6GNl86\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"upload_column\":\"img\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"QQ\\u6d4f\\u89c8\\u5668\\u622a\\u56fe20181011205546.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Thu Oct 11 2018 20:55:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"60099\"}', '2020-07-13 21:51:12', '2020-07-13 21:51:12');
INSERT INTO `admin_operation_log` VALUES ('1258', '1', 'admin/swipe/1', 'PUT', '120.230.122.162', '{\"_id\":\"bMjrrVnOrU6GNl86\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_method\":\"PUT\",\"img\":\"images\\/607df6b6c385c05eed2daa5fca8261fd.png,images\\/5a7bfb147c7a250cbef800ec74f004e6.png\"}', '2020-07-13 21:51:12', '2020-07-13 21:51:12');
INSERT INTO `admin_operation_log` VALUES ('1259', '1', 'admin/swipe/1', 'PUT', '120.230.122.162', '{\"img\":\"images\\/607df6b6c385c05eed2daa5fca8261fd.png,images\\/5a7bfb147c7a250cbef800ec74f004e6.png\",\"file-img\":null,\"_file_\":null,\"file\":null,\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/swipe\"}', '2020-07-13 21:51:13', '2020-07-13 21:51:13');
INSERT INTO `admin_operation_log` VALUES ('1260', '1', 'admin/swipe', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:51:13', '2020-07-13 21:51:13');
INSERT INTO `admin_operation_log` VALUES ('1261', '1', 'admin/swipe/1/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:51:38', '2020-07-13 21:51:38');
INSERT INTO `admin_operation_log` VALUES ('1262', '1', 'admin/swipe/1', 'PUT', '120.230.122.162', '{\"_file_del_\":null,\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_method\":\"PUT\",\"key\":\"images\\/5a7bfb147c7a250cbef800ec74f004e6.png\",\"_column\":\"img\"}', '2020-07-13 21:51:41', '2020-07-13 21:51:41');
INSERT INTO `admin_operation_log` VALUES ('1263', '1', 'admin/swipe/1', 'PUT', '120.230.122.162', '{\"img\":\"images\\/607df6b6c385c05eed2daa5fca8261fd.png\",\"file-img\":null,\"_file_\":null,\"file\":null,\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/swipe\"}', '2020-07-13 21:51:43', '2020-07-13 21:51:43');
INSERT INTO `admin_operation_log` VALUES ('1264', '1', 'admin/swipe', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:51:43', '2020-07-13 21:51:43');
INSERT INTO `admin_operation_log` VALUES ('1265', '1', 'admin/cate', 'POST', '112.96.199.62', '{\"_id\":\"yM0DSlSPFI6V4Q10\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"upload_column\":\"image\",\"id\":\"WU_FILE_0\",\"name\":\"bg.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Thu Nov 14 2019 11:55:21 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"26157\"}', '2020-07-13 21:52:20', '2020-07-13 21:52:20');
INSERT INTO `admin_operation_log` VALUES ('1266', '1', 'admin/cate', 'POST', '112.96.199.62', '{\"text\":\"\\u73b2\\u73b2ling\",\"parent_id\":\"45\",\"image\":\"images\\/70f160e212ab9e2c1f1b082ddfc5fe54.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-13 21:52:22', '2020-07-13 21:52:22');
INSERT INTO `admin_operation_log` VALUES ('1267', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:52:22', '2020-07-13 21:52:22');
INSERT INTO `admin_operation_log` VALUES ('1268', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-13 21:52:25', '2020-07-13 21:52:25');
INSERT INTO `admin_operation_log` VALUES ('1269', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_children_page_45\":\"1\"}', '2020-07-13 21:52:27', '2020-07-13 21:52:27');
INSERT INTO `admin_operation_log` VALUES ('1270', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:52:54', '2020-07-13 21:52:54');
INSERT INTO `admin_operation_log` VALUES ('1271', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_children_page_29\":\"1\"}', '2020-07-13 21:52:54', '2020-07-13 21:52:54');
INSERT INTO `admin_operation_log` VALUES ('1272', '1', 'admin/cate/create', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:52:56', '2020-07-13 21:52:56');
INSERT INTO `admin_operation_log` VALUES ('1273', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\",\"_token\":\"pl3MXVIh4A6ghCCX5t0KpzWW9bjBuhReZmLgqW3S\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-13 21:52:57', '2020-07-13 21:52:57');
INSERT INTO `admin_operation_log` VALUES ('1274', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"pl3MXVIh4A6ghCCX5t0KpzWW9bjBuhReZmLgqW3S\",\"_children_page_29\":\"1\"}', '2020-07-13 21:52:57', '2020-07-13 21:52:57');
INSERT INTO `admin_operation_log` VALUES ('1275', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"pl3MXVIh4A6ghCCX5t0KpzWW9bjBuhReZmLgqW3S\",\"_children_page_45\":\"1\"}', '2020-07-13 21:52:59', '2020-07-13 21:52:59');
INSERT INTO `admin_operation_log` VALUES ('1276', '1', 'admin/cate/create', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:53:03', '2020-07-13 21:53:03');
INSERT INTO `admin_operation_log` VALUES ('1277', '1', 'admin/cate', 'POST', '116.23.17.137', '{\"_id\":\"IfhMgw4JorYPCOyr\",\"_token\":\"pl3MXVIh4A6ghCCX5t0KpzWW9bjBuhReZmLgqW3S\",\"upload_column\":\"image\",\"id\":\"WU_FILE_0\",\"name\":\"31\\u5cf0\\u56de\\u8def\\u8f6c.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 02:14:32 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"303118\"}', '2020-07-13 21:53:21', '2020-07-13 21:53:21');
INSERT INTO `admin_operation_log` VALUES ('1278', '1', 'admin/cate', 'POST', '116.23.17.137', '{\"text\":\"\\u6d4b\\u8bd5\\u4e09\\u7ea7\",\"parent_id\":\"46\",\"image\":\"images\\/3feb849e9250e6e50c7d0e6f0770dd2d.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"pl3MXVIh4A6ghCCX5t0KpzWW9bjBuhReZmLgqW3S\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-13 21:53:23', '2020-07-13 21:53:23');
INSERT INTO `admin_operation_log` VALUES ('1279', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:53:23', '2020-07-13 21:53:23');
INSERT INTO `admin_operation_log` VALUES ('1280', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:53:25', '2020-07-13 21:53:25');
INSERT INTO `admin_operation_log` VALUES ('1281', '1', 'admin/cate', 'POST', '112.96.199.62', '{\"_id\":\"vayo3mawTCVkCdZT\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"upload_column\":\"image\",\"id\":\"WU_FILE_1\",\"name\":\"bg.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Thu Nov 14 2019 11:55:21 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"26157\"}', '2020-07-13 21:53:26', '2020-07-13 21:53:26');
INSERT INTO `admin_operation_log` VALUES ('1282', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\",\"_token\":\"pl3MXVIh4A6ghCCX5t0KpzWW9bjBuhReZmLgqW3S\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-13 21:53:27', '2020-07-13 21:53:27');
INSERT INTO `admin_operation_log` VALUES ('1283', '1', 'admin/cate', 'GET', '116.23.17.137', '{\"_parent_id_\":\"46\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"pl3MXVIh4A6ghCCX5t0KpzWW9bjBuhReZmLgqW3S\",\"_children_page_46\":\"1\"}', '2020-07-13 21:53:28', '2020-07-13 21:53:28');
INSERT INTO `admin_operation_log` VALUES ('1284', '1', 'admin/cate', 'POST', '112.96.199.62', '{\"text\":\"\\u6ef4\\u6ef4\\u6ef4,\\u73b2\\u73b2\\u5450\",\"parent_id\":\"45\",\"image\":\"images\\/4e27b7293325940dacb08718842b9541.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-13 21:53:30', '2020-07-13 21:53:30');
INSERT INTO `admin_operation_log` VALUES ('1285', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:53:31', '2020-07-13 21:53:31');
INSERT INTO `admin_operation_log` VALUES ('1286', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-13 21:53:33', '2020-07-13 21:53:33');
INSERT INTO `admin_operation_log` VALUES ('1287', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_children_page_45\":\"1\"}', '2020-07-13 21:53:35', '2020-07-13 21:53:35');
INSERT INTO `admin_operation_log` VALUES ('1288', '1', 'admin/user', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:53:42', '2020-07-13 21:53:42');
INSERT INTO `admin_operation_log` VALUES ('1289', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:53:43', '2020-07-13 21:53:43');
INSERT INTO `admin_operation_log` VALUES ('1290', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:54:22', '2020-07-13 21:54:22');
INSERT INTO `admin_operation_log` VALUES ('1291', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-13 21:54:24', '2020-07-13 21:54:24');
INSERT INTO `admin_operation_log` VALUES ('1292', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_children_page_29\":\"1\"}', '2020-07-13 21:54:26', '2020-07-13 21:54:26');
INSERT INTO `admin_operation_log` VALUES ('1293', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_children_page_45\":\"1\"}', '2020-07-13 21:54:27', '2020-07-13 21:54:27');
INSERT INTO `admin_operation_log` VALUES ('1294', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:54:28', '2020-07-13 21:54:28');
INSERT INTO `admin_operation_log` VALUES ('1295', '1', 'admin/push', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:54:29', '2020-07-13 21:54:29');
INSERT INTO `admin_operation_log` VALUES ('1296', '1', 'admin/push', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:54:32', '2020-07-13 21:54:32');
INSERT INTO `admin_operation_log` VALUES ('1297', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:54:33', '2020-07-13 21:54:33');
INSERT INTO `admin_operation_log` VALUES ('1298', '1', 'admin/order', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:54:35', '2020-07-13 21:54:35');
INSERT INTO `admin_operation_log` VALUES ('1299', '1', 'admin/help', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:54:37', '2020-07-13 21:54:37');
INSERT INTO `admin_operation_log` VALUES ('1300', '1', 'admin/help/1/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:54:39', '2020-07-13 21:54:39');
INSERT INTO `admin_operation_log` VALUES ('1301', '1', 'admin/about', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:54:43', '2020-07-13 21:54:43');
INSERT INTO `admin_operation_log` VALUES ('1302', '1', 'admin/tixian', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:54:44', '2020-07-13 21:54:44');
INSERT INTO `admin_operation_log` VALUES ('1303', '1', 'admin/tixian/1', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:54:49', '2020-07-13 21:54:49');
INSERT INTO `admin_operation_log` VALUES ('1304', '1', 'admin/auth/users', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:55:19', '2020-07-13 21:55:19');
INSERT INTO `admin_operation_log` VALUES ('1305', '1', 'admin/auth/roles', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:55:20', '2020-07-13 21:55:20');
INSERT INTO `admin_operation_log` VALUES ('1306', '1', 'admin/auth/permissions', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:55:21', '2020-07-13 21:55:21');
INSERT INTO `admin_operation_log` VALUES ('1307', '1', 'admin/auth/permissions', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:55:22', '2020-07-13 21:55:22');
INSERT INTO `admin_operation_log` VALUES ('1308', '1', 'admin/auth/menu', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 21:55:23', '2020-07-13 21:55:23');
INSERT INTO `admin_operation_log` VALUES ('1309', '1', 'admin/user', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 22:33:16', '2020-07-13 22:33:16');
INSERT INTO `admin_operation_log` VALUES ('1310', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 22:33:18', '2020-07-13 22:33:18');
INSERT INTO `admin_operation_log` VALUES ('1311', '1', 'admin/push', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 22:33:19', '2020-07-13 22:33:19');
INSERT INTO `admin_operation_log` VALUES ('1312', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 22:33:20', '2020-07-13 22:33:20');
INSERT INTO `admin_operation_log` VALUES ('1313', '1', 'admin/swipe', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:44:36', '2020-07-13 23:44:36');
INSERT INTO `admin_operation_log` VALUES ('1314', '1', 'admin/swipe/1/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:45:23', '2020-07-13 23:45:23');
INSERT INTO `admin_operation_log` VALUES ('1315', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:48:43', '2020-07-13 23:48:43');
INSERT INTO `admin_operation_log` VALUES ('1316', '1', 'admin/product/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:48:45', '2020-07-13 23:48:45');
INSERT INTO `admin_operation_log` VALUES ('1317', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:50:26', '2020-07-13 23:50:26');
INSERT INTO `admin_operation_log` VALUES ('1318', '1', 'admin', 'GET', '112.96.199.62', '[]', '2020-07-13 23:50:38', '2020-07-13 23:50:38');
INSERT INTO `admin_operation_log` VALUES ('1319', '1', 'admin/user', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:50:40', '2020-07-13 23:50:40');
INSERT INTO `admin_operation_log` VALUES ('1320', '1', 'admin/product', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:50:43', '2020-07-13 23:50:43');
INSERT INTO `admin_operation_log` VALUES ('1321', '1', 'admin/product/2/edit', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:50:48', '2020-07-13 23:50:48');
INSERT INTO `admin_operation_log` VALUES ('1322', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:51:52', '2020-07-13 23:51:52');
INSERT INTO `admin_operation_log` VALUES ('1323', '1', 'admin/cate/28/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:51:57', '2020-07-13 23:51:57');
INSERT INTO `admin_operation_log` VALUES ('1324', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:52:00', '2020-07-13 23:52:00');
INSERT INTO `admin_operation_log` VALUES ('1325', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-13 23:52:02', '2020-07-13 23:52:02');
INSERT INTO `admin_operation_log` VALUES ('1326', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_children_page_29\":\"1\"}', '2020-07-13 23:52:05', '2020-07-13 23:52:05');
INSERT INTO `admin_operation_log` VALUES ('1327', '1', 'admin/cate/29/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:53:00', '2020-07-13 23:53:00');
INSERT INTO `admin_operation_log` VALUES ('1328', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:53:07', '2020-07-13 23:53:07');
INSERT INTO `admin_operation_log` VALUES ('1329', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-13 23:53:11', '2020-07-13 23:53:11');
INSERT INTO `admin_operation_log` VALUES ('1330', '1', 'admin/cate/29/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:53:15', '2020-07-13 23:53:15');
INSERT INTO `admin_operation_log` VALUES ('1331', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:53:18', '2020-07-13 23:53:18');
INSERT INTO `admin_operation_log` VALUES ('1332', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-13 23:53:20', '2020-07-13 23:53:20');
INSERT INTO `admin_operation_log` VALUES ('1333', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_children_page_29\":\"1\"}', '2020-07-13 23:53:26', '2020-07-13 23:53:26');
INSERT INTO `admin_operation_log` VALUES ('1334', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:53:35', '2020-07-13 23:53:35');
INSERT INTO `admin_operation_log` VALUES ('1335', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:53:39', '2020-07-13 23:53:39');
INSERT INTO `admin_operation_log` VALUES ('1336', '1', 'admin/push', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:53:40', '2020-07-13 23:53:40');
INSERT INTO `admin_operation_log` VALUES ('1337', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:53:41', '2020-07-13 23:53:41');
INSERT INTO `admin_operation_log` VALUES ('1338', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-13 23:53:55', '2020-07-13 23:53:55');
INSERT INTO `admin_operation_log` VALUES ('1339', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_children_page_45\":\"1\"}', '2020-07-13 23:56:49', '2020-07-13 23:56:49');
INSERT INTO `admin_operation_log` VALUES ('1340', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_children_page_29\":\"1\"}', '2020-07-13 23:56:53', '2020-07-13 23:56:53');
INSERT INTO `admin_operation_log` VALUES ('1341', '1', 'admin/cate/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:56:57', '2020-07-13 23:56:57');
INSERT INTO `admin_operation_log` VALUES ('1342', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:57:30', '2020-07-13 23:57:30');
INSERT INTO `admin_operation_log` VALUES ('1343', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-13 23:57:32', '2020-07-13 23:57:32');
INSERT INTO `admin_operation_log` VALUES ('1344', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_children_page_29\":\"1\"}', '2020-07-13 23:57:42', '2020-07-13 23:57:42');
INSERT INTO `admin_operation_log` VALUES ('1345', '1', 'admin/cate/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:57:45', '2020-07-13 23:57:45');
INSERT INTO `admin_operation_log` VALUES ('1346', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:58:05', '2020-07-13 23:58:05');
INSERT INTO `admin_operation_log` VALUES ('1347', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-13 23:59:11', '2020-07-13 23:59:11');
INSERT INTO `admin_operation_log` VALUES ('1348', '1', 'admin/cate/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:59:17', '2020-07-13 23:59:17');
INSERT INTO `admin_operation_log` VALUES ('1349', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:59:27', '2020-07-13 23:59:27');
INSERT INTO `admin_operation_log` VALUES ('1350', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:59:34', '2020-07-13 23:59:34');
INSERT INTO `admin_operation_log` VALUES ('1351', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-13 23:59:35', '2020-07-13 23:59:35');
INSERT INTO `admin_operation_log` VALUES ('1352', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-13 23:59:36', '2020-07-13 23:59:36');
INSERT INTO `admin_operation_log` VALUES ('1353', '1', 'admin/cate/51/edit', 'GET', '116.23.17.137', '{\"_pjax\":\"#pjax-container\"}', '2020-07-13 23:59:41', '2020-07-13 23:59:41');
INSERT INTO `admin_operation_log` VALUES ('1354', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_parent_id_\":\"30\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_children_page_30\":\"1\"}', '2020-07-14 00:00:07', '2020-07-14 00:00:07');
INSERT INTO `admin_operation_log` VALUES ('1355', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_parent_id_\":\"33\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_children_page_33\":\"1\"}', '2020-07-14 00:00:09', '2020-07-14 00:00:09');
INSERT INTO `admin_operation_log` VALUES ('1356', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"30\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_children_page_30\":\"1\"}', '2020-07-14 00:00:11', '2020-07-14 00:00:11');
INSERT INTO `admin_operation_log` VALUES ('1357', '1', 'admin/cate/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:00:19', '2020-07-14 00:00:19');
INSERT INTO `admin_operation_log` VALUES ('1358', '1', 'admin/cate/create', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:00:21', '2020-07-14 00:00:21');
INSERT INTO `admin_operation_log` VALUES ('1359', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:00:42', '2020-07-14 00:00:42');
INSERT INTO `admin_operation_log` VALUES ('1360', '1', 'admin/cate/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:00:46', '2020-07-14 00:00:46');
INSERT INTO `admin_operation_log` VALUES ('1361', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:00:50', '2020-07-14 00:00:50');
INSERT INTO `admin_operation_log` VALUES ('1362', '1', 'admin/cate/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:00:51', '2020-07-14 00:00:51');
INSERT INTO `admin_operation_log` VALUES ('1363', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:01:22', '2020-07-14 00:01:22');
INSERT INTO `admin_operation_log` VALUES ('1364', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 00:01:23', '2020-07-14 00:01:23');
INSERT INTO `admin_operation_log` VALUES ('1365', '1', 'admin/cate/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:01:24', '2020-07-14 00:01:24');
INSERT INTO `admin_operation_log` VALUES ('1366', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:01:32', '2020-07-14 00:01:32');
INSERT INTO `admin_operation_log` VALUES ('1367', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 00:01:34', '2020-07-14 00:01:34');
INSERT INTO `admin_operation_log` VALUES ('1368', '1', 'admin/cate/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:01:49', '2020-07-14 00:01:49');
INSERT INTO `admin_operation_log` VALUES ('1369', '1', 'admin/cate', 'POST', '120.230.122.162', '{\"_id\":\"MdOEY2HBYgGonqby\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"upload_column\":\"image\",\"id\":\"WU_FILE_2\",\"name\":\"607df6b6c385c05eed2daa5fca8261fd.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Mon Jul 13 2020 23:45:56 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"183012\"}', '2020-07-14 00:02:08', '2020-07-14 00:02:08');
INSERT INTO `admin_operation_log` VALUES ('1370', '1', 'admin/cate', 'POST', '120.230.122.162', '{\"text\":\"\\u54c8\\u54c8\\u54c8\",\"parent_id\":\"45\",\"image\":\"images\\/4403becf61c9ecf986ef2decb8a3d88d.png\",\"file-image\":null,\"_file_\":null,\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-14 00:02:10', '2020-07-14 00:02:10');
INSERT INTO `admin_operation_log` VALUES ('1371', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:02:10', '2020-07-14 00:02:10');
INSERT INTO `admin_operation_log` VALUES ('1372', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 00:03:10', '2020-07-14 00:03:10');
INSERT INTO `admin_operation_log` VALUES ('1373', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_children_page_45\":\"1\"}', '2020-07-14 00:03:15', '2020-07-14 00:03:15');
INSERT INTO `admin_operation_log` VALUES ('1374', '1', 'admin/cate/53/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:03:25', '2020-07-14 00:03:25');
INSERT INTO `admin_operation_log` VALUES ('1375', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:03:32', '2020-07-14 00:03:32');
INSERT INTO `admin_operation_log` VALUES ('1376', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 00:03:34', '2020-07-14 00:03:34');
INSERT INTO `admin_operation_log` VALUES ('1377', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_children_page_45\":\"1\"}', '2020-07-14 00:03:38', '2020-07-14 00:03:38');
INSERT INTO `admin_operation_log` VALUES ('1378', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:03:44', '2020-07-14 00:03:44');
INSERT INTO `admin_operation_log` VALUES ('1379', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 00:03:45', '2020-07-14 00:03:45');
INSERT INTO `admin_operation_log` VALUES ('1380', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_children_page_45\":\"1\"}', '2020-07-14 00:03:48', '2020-07-14 00:03:48');
INSERT INTO `admin_operation_log` VALUES ('1381', '1', 'admin/cate/53/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:03:49', '2020-07-14 00:03:49');
INSERT INTO `admin_operation_log` VALUES ('1382', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:03:56', '2020-07-14 00:03:56');
INSERT INTO `admin_operation_log` VALUES ('1383', '1', 'admin/cate', 'GET', '120.230.122.162', '[]', '2020-07-14 00:04:15', '2020-07-14 00:04:15');
INSERT INTO `admin_operation_log` VALUES ('1384', '1', 'admin/cate', 'GET', '120.230.122.162', '[]', '2020-07-14 00:04:19', '2020-07-14 00:04:19');
INSERT INTO `admin_operation_log` VALUES ('1385', '1', 'admin/cate', 'GET', '120.230.122.162', '[]', '2020-07-14 00:04:26', '2020-07-14 00:04:26');
INSERT INTO `admin_operation_log` VALUES ('1386', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 00:04:28', '2020-07-14 00:04:28');
INSERT INTO `admin_operation_log` VALUES ('1387', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"45\",\"_tier_\":\"2\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_children_page_45\":\"1\"}', '2020-07-14 00:04:33', '2020-07-14 00:04:33');
INSERT INTO `admin_operation_log` VALUES ('1388', '1', 'admin/cate/53/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:04:38', '2020-07-14 00:04:38');
INSERT INTO `admin_operation_log` VALUES ('1389', '1', 'admin/cate/53/edit', 'GET', '120.230.122.162', '[]', '2020-07-14 00:04:41', '2020-07-14 00:04:41');
INSERT INTO `admin_operation_log` VALUES ('1390', '1', 'admin', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:04:47', '2020-07-14 00:04:47');
INSERT INTO `admin_operation_log` VALUES ('1391', '1', 'admin/swipe', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:04:51', '2020-07-14 00:04:51');
INSERT INTO `admin_operation_log` VALUES ('1392', '1', 'admin/user', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:04:52', '2020-07-14 00:04:52');
INSERT INTO `admin_operation_log` VALUES ('1393', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:04:54', '2020-07-14 00:04:54');
INSERT INTO `admin_operation_log` VALUES ('1394', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:04:55', '2020-07-14 00:04:55');
INSERT INTO `admin_operation_log` VALUES ('1395', '1', 'admin/push', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:04:57', '2020-07-14 00:04:57');
INSERT INTO `admin_operation_log` VALUES ('1396', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:05:03', '2020-07-14 00:05:03');
INSERT INTO `admin_operation_log` VALUES ('1397', '1', 'admin/order', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:05:06', '2020-07-14 00:05:06');
INSERT INTO `admin_operation_log` VALUES ('1398', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:05:09', '2020-07-14 00:05:09');
INSERT INTO `admin_operation_log` VALUES ('1399', '1', 'admin/push', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:05:12', '2020-07-14 00:05:12');
INSERT INTO `admin_operation_log` VALUES ('1400', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:05:14', '2020-07-14 00:05:14');
INSERT INTO `admin_operation_log` VALUES ('1401', '1', 'admin/user', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:05:19', '2020-07-14 00:05:19');
INSERT INTO `admin_operation_log` VALUES ('1402', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:05:20', '2020-07-14 00:05:20');
INSERT INTO `admin_operation_log` VALUES ('1403', '1', 'admin/push', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:05:20', '2020-07-14 00:05:20');
INSERT INTO `admin_operation_log` VALUES ('1404', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:05:22', '2020-07-14 00:05:22');
INSERT INTO `admin_operation_log` VALUES ('1405', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:05:25', '2020-07-14 00:05:25');
INSERT INTO `admin_operation_log` VALUES ('1406', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 00:05:28', '2020-07-14 00:05:28');
INSERT INTO `admin_operation_log` VALUES ('1407', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_children_page_45\":\"1\"}', '2020-07-14 00:05:31', '2020-07-14 00:05:31');
INSERT INTO `admin_operation_log` VALUES ('1408', '1', 'admin/cate', 'GET', '112.96.199.62', '[]', '2020-07-14 00:06:11', '2020-07-14 00:06:11');
INSERT INTO `admin_operation_log` VALUES ('1409', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 00:06:14', '2020-07-14 00:06:14');
INSERT INTO `admin_operation_log` VALUES ('1410', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_parent_id_\":\"46\",\"_tier_\":\"2\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_children_page_46\":\"1\"}', '2020-07-14 00:06:22', '2020-07-14 00:06:22');
INSERT INTO `admin_operation_log` VALUES ('1411', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_parent_id_\":\"51\",\"_tier_\":\"3\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_children_page_51\":\"1\"}', '2020-07-14 00:06:23', '2020-07-14 00:06:23');
INSERT INTO `admin_operation_log` VALUES ('1412', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:07:06', '2020-07-14 00:07:06');
INSERT INTO `admin_operation_log` VALUES ('1413', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:07:08', '2020-07-14 00:07:08');
INSERT INTO `admin_operation_log` VALUES ('1414', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 00:07:10', '2020-07-14 00:07:10');
INSERT INTO `admin_operation_log` VALUES ('1415', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_children_page_45\":\"1\"}', '2020-07-14 00:07:12', '2020-07-14 00:07:12');
INSERT INTO `admin_operation_log` VALUES ('1416', '1', 'admin/cate/53', 'DELETE', '120.230.122.162', '{\"_method\":\"delete\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\"}', '2020-07-14 00:07:18', '2020-07-14 00:07:18');
INSERT INTO `admin_operation_log` VALUES ('1417', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:07:18', '2020-07-14 00:07:18');
INSERT INTO `admin_operation_log` VALUES ('1418', '1', 'admin/cate', 'GET', '112.96.199.62', '[]', '2020-07-14 00:07:45', '2020-07-14 00:07:45');
INSERT INTO `admin_operation_log` VALUES ('1419', '1', 'admin/user', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:07:57', '2020-07-14 00:07:57');
INSERT INTO `admin_operation_log` VALUES ('1420', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:07:58', '2020-07-14 00:07:58');
INSERT INTO `admin_operation_log` VALUES ('1421', '1', 'admin/push', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:07:59', '2020-07-14 00:07:59');
INSERT INTO `admin_operation_log` VALUES ('1422', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:08:04', '2020-07-14 00:08:04');
INSERT INTO `admin_operation_log` VALUES ('1423', '1', 'admin/product', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:08:04', '2020-07-14 00:08:04');
INSERT INTO `admin_operation_log` VALUES ('1424', '1', 'admin/product', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:08:06', '2020-07-14 00:08:06');
INSERT INTO `admin_operation_log` VALUES ('1425', '1', 'admin/push', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:08:07', '2020-07-14 00:08:07');
INSERT INTO `admin_operation_log` VALUES ('1426', '1', 'admin/swipe', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:08:08', '2020-07-14 00:08:08');
INSERT INTO `admin_operation_log` VALUES ('1427', '1', 'admin/product/1/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:08:12', '2020-07-14 00:08:12');
INSERT INTO `admin_operation_log` VALUES ('1428', '1', 'admin/user', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:08:54', '2020-07-14 00:08:54');
INSERT INTO `admin_operation_log` VALUES ('1429', '1', 'admin/product', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:08:56', '2020-07-14 00:08:56');
INSERT INTO `admin_operation_log` VALUES ('1430', '1', 'admin/product/1/edit', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:09:00', '2020-07-14 00:09:00');
INSERT INTO `admin_operation_log` VALUES ('1431', '1', 'admin/auth/menu', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:10:30', '2020-07-14 00:10:30');
INSERT INTO `admin_operation_log` VALUES ('1432', '1', 'admin/video', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:15:05', '2020-07-14 00:15:05');
INSERT INTO `admin_operation_log` VALUES ('1433', '1', 'admin/user', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:15:06', '2020-07-14 00:15:06');
INSERT INTO `admin_operation_log` VALUES ('1434', '1', 'admin/product', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:16:46', '2020-07-14 00:16:46');
INSERT INTO `admin_operation_log` VALUES ('1435', '1', 'admin/product/1/edit', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:16:51', '2020-07-14 00:16:51');
INSERT INTO `admin_operation_log` VALUES ('1436', '1', 'admin', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:17:31', '2020-07-14 00:17:31');
INSERT INTO `admin_operation_log` VALUES ('1437', '1', 'admin/auth/users', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:17:33', '2020-07-14 00:17:33');
INSERT INTO `admin_operation_log` VALUES ('1438', '1', 'admin/swipe', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:17:35', '2020-07-14 00:17:35');
INSERT INTO `admin_operation_log` VALUES ('1439', '1', 'admin/user', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:17:35', '2020-07-14 00:17:35');
INSERT INTO `admin_operation_log` VALUES ('1440', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:17:36', '2020-07-14 00:17:36');
INSERT INTO `admin_operation_log` VALUES ('1441', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:17:36', '2020-07-14 00:17:36');
INSERT INTO `admin_operation_log` VALUES ('1442', '1', 'admin/push', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:17:37', '2020-07-14 00:17:37');
INSERT INTO `admin_operation_log` VALUES ('1443', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:17:38', '2020-07-14 00:17:38');
INSERT INTO `admin_operation_log` VALUES ('1444', '1', 'admin/order', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:17:39', '2020-07-14 00:17:39');
INSERT INTO `admin_operation_log` VALUES ('1445', '1', 'admin/help', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:17:41', '2020-07-14 00:17:41');
INSERT INTO `admin_operation_log` VALUES ('1446', '1', 'admin/about', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:17:41', '2020-07-14 00:17:41');
INSERT INTO `admin_operation_log` VALUES ('1447', '1', 'admin/tixian', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:17:42', '2020-07-14 00:17:42');
INSERT INTO `admin_operation_log` VALUES ('1448', '1', 'admin/about', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:02', '2020-07-14 00:20:02');
INSERT INTO `admin_operation_log` VALUES ('1449', '1', 'admin/help', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:03', '2020-07-14 00:20:03');
INSERT INTO `admin_operation_log` VALUES ('1450', '1', 'admin/order', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:05', '2020-07-14 00:20:05');
INSERT INTO `admin_operation_log` VALUES ('1451', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:07', '2020-07-14 00:20:07');
INSERT INTO `admin_operation_log` VALUES ('1452', '1', 'admin/push', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:08', '2020-07-14 00:20:08');
INSERT INTO `admin_operation_log` VALUES ('1453', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:08', '2020-07-14 00:20:08');
INSERT INTO `admin_operation_log` VALUES ('1454', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:09', '2020-07-14 00:20:09');
INSERT INTO `admin_operation_log` VALUES ('1455', '1', 'admin/user', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:09', '2020-07-14 00:20:09');
INSERT INTO `admin_operation_log` VALUES ('1456', '1', 'admin/swipe', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:10', '2020-07-14 00:20:10');
INSERT INTO `admin_operation_log` VALUES ('1457', '1', 'admin/user', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:13', '2020-07-14 00:20:13');
INSERT INTO `admin_operation_log` VALUES ('1458', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:14', '2020-07-14 00:20:14');
INSERT INTO `admin_operation_log` VALUES ('1459', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:15', '2020-07-14 00:20:15');
INSERT INTO `admin_operation_log` VALUES ('1460', '1', 'admin/push', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:16', '2020-07-14 00:20:16');
INSERT INTO `admin_operation_log` VALUES ('1461', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:16', '2020-07-14 00:20:16');
INSERT INTO `admin_operation_log` VALUES ('1462', '1', 'admin/order', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:17', '2020-07-14 00:20:17');
INSERT INTO `admin_operation_log` VALUES ('1463', '1', 'admin/help', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:19', '2020-07-14 00:20:19');
INSERT INTO `admin_operation_log` VALUES ('1464', '1', 'admin/about', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:19', '2020-07-14 00:20:19');
INSERT INTO `admin_operation_log` VALUES ('1465', '1', 'admin/swipe', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:20', '2020-07-14 00:20:20');
INSERT INTO `admin_operation_log` VALUES ('1466', '1', 'admin/user', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:21', '2020-07-14 00:20:21');
INSERT INTO `admin_operation_log` VALUES ('1467', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:32', '2020-07-14 00:20:32');
INSERT INTO `admin_operation_log` VALUES ('1468', '1', 'admin', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:32', '2020-07-14 00:20:32');
INSERT INTO `admin_operation_log` VALUES ('1469', '1', 'admin/user', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:33', '2020-07-14 00:20:33');
INSERT INTO `admin_operation_log` VALUES ('1470', '1', 'admin/swipe', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:33', '2020-07-14 00:20:33');
INSERT INTO `admin_operation_log` VALUES ('1471', '1', 'admin/user', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:35', '2020-07-14 00:20:35');
INSERT INTO `admin_operation_log` VALUES ('1472', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:36', '2020-07-14 00:20:36');
INSERT INTO `admin_operation_log` VALUES ('1473', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:20:37', '2020-07-14 00:20:37');
INSERT INTO `admin_operation_log` VALUES ('1474', '1', 'admin', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:24:46', '2020-07-14 00:24:46');
INSERT INTO `admin_operation_log` VALUES ('1475', '1', 'admin/swipe', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:24:46', '2020-07-14 00:24:46');
INSERT INTO `admin_operation_log` VALUES ('1476', '1', 'admin/swipe/1/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:24:50', '2020-07-14 00:24:50');
INSERT INTO `admin_operation_log` VALUES ('1477', '0', 'admin/auth/login', 'GET', '183.192.15.98', '[]', '2020-07-14 00:30:24', '2020-07-14 00:30:24');
INSERT INTO `admin_operation_log` VALUES ('1478', '0', 'admin/auth/login', 'POST', '183.192.15.98', '{\"_token\":\"DUTcIMwgl63vEmuZ9urwT4Wsusdg46nAbN5f2GpQ\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-14 00:30:31', '2020-07-14 00:30:31');
INSERT INTO `admin_operation_log` VALUES ('1479', '1', 'admin/swipe', 'GET', '183.192.15.98', '[]', '2020-07-14 00:30:32', '2020-07-14 00:30:32');
INSERT INTO `admin_operation_log` VALUES ('1480', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:30:38', '2020-07-14 00:30:38');
INSERT INTO `admin_operation_log` VALUES ('1481', '1', 'admin/user', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:30:46', '2020-07-14 00:30:46');
INSERT INTO `admin_operation_log` VALUES ('1482', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:30:48', '2020-07-14 00:30:48');
INSERT INTO `admin_operation_log` VALUES ('1483', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:30:52', '2020-07-14 00:30:52');
INSERT INTO `admin_operation_log` VALUES ('1484', '1', 'admin/swipe', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:30:57', '2020-07-14 00:30:57');
INSERT INTO `admin_operation_log` VALUES ('1485', '1', 'admin/swipe/1/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:31:00', '2020-07-14 00:31:00');
INSERT INTO `admin_operation_log` VALUES ('1486', '1', 'admin/swipe/1/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:31:03', '2020-07-14 00:31:03');
INSERT INTO `admin_operation_log` VALUES ('1487', '1', 'admin/user', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:33:24', '2020-07-14 00:33:24');
INSERT INTO `admin_operation_log` VALUES ('1488', '1', 'admin/user', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:33:31', '2020-07-14 00:33:31');
INSERT INTO `admin_operation_log` VALUES ('1489', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:33:55', '2020-07-14 00:33:55');
INSERT INTO `admin_operation_log` VALUES ('1490', '1', 'admin/video', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:34:01', '2020-07-14 00:34:01');
INSERT INTO `admin_operation_log` VALUES ('1491', '1', 'admin/video/create', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:34:23', '2020-07-14 00:34:23');
INSERT INTO `admin_operation_log` VALUES ('1492', '1', 'admin/video/1/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:34:51', '2020-07-14 00:34:51');
INSERT INTO `admin_operation_log` VALUES ('1493', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:34:55', '2020-07-14 00:34:55');
INSERT INTO `admin_operation_log` VALUES ('1494', '1', 'admin', 'GET', '112.96.199.62', '[]', '2020-07-14 00:36:14', '2020-07-14 00:36:14');
INSERT INTO `admin_operation_log` VALUES ('1495', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:36:14', '2020-07-14 00:36:14');
INSERT INTO `admin_operation_log` VALUES ('1496', '1', 'admin/product', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:36:15', '2020-07-14 00:36:15');
INSERT INTO `admin_operation_log` VALUES ('1497', '1', 'admin/product/1/edit', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:36:17', '2020-07-14 00:36:17');
INSERT INTO `admin_operation_log` VALUES ('1498', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:36:20', '2020-07-14 00:36:20');
INSERT INTO `admin_operation_log` VALUES ('1499', '1', 'admin/video/1/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:36:23', '2020-07-14 00:36:23');
INSERT INTO `admin_operation_log` VALUES ('1500', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:36:26', '2020-07-14 00:36:26');
INSERT INTO `admin_operation_log` VALUES ('1501', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:36:33', '2020-07-14 00:36:33');
INSERT INTO `admin_operation_log` VALUES ('1502', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"lAbLQqy1mQgucMD6sxWTQczjJOCiDvm5nIDfBYsH\",\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_children_page_30\":\"1\"}', '2020-07-14 00:36:35', '2020-07-14 00:36:35');
INSERT INTO `admin_operation_log` VALUES ('1503', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_parent_id_\":\"28\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"lAbLQqy1mQgucMD6sxWTQczjJOCiDvm5nIDfBYsH\",\"_children_page_28\":\"1\"}', '2020-07-14 00:36:37', '2020-07-14 00:36:37');
INSERT INTO `admin_operation_log` VALUES ('1504', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 00:36:53', '2020-07-14 00:36:53');
INSERT INTO `admin_operation_log` VALUES ('1505', '0', 'admin/auth/login', 'GET', '116.23.17.137', '[]', '2020-07-14 00:37:13', '2020-07-14 00:37:13');
INSERT INTO `admin_operation_log` VALUES ('1506', '0', 'admin/auth/login', 'POST', '116.23.17.137', '{\"_token\":\"daYLS10z3NEH7J7uKg4uCC9TkEMG1l3sCS3Q2mgS\",\"username\":\"Admin\",\"password\":\"adm******\"}', '2020-07-14 00:37:26', '2020-07-14 00:37:26');
INSERT INTO `admin_operation_log` VALUES ('1507', '1', 'admin/product/1/edit', 'GET', '116.23.17.137', '[]', '2020-07-14 00:37:26', '2020-07-14 00:37:26');
INSERT INTO `admin_operation_log` VALUES ('1508', '1', 'admin/auth/login', 'GET', '116.23.17.137', '[]', '2020-07-14 00:37:40', '2020-07-14 00:37:40');
INSERT INTO `admin_operation_log` VALUES ('1509', '1', 'admin', 'GET', '116.23.17.137', '[]', '2020-07-14 00:37:41', '2020-07-14 00:37:41');
INSERT INTO `admin_operation_log` VALUES ('1510', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"lAbLQqy1mQgucMD6sxWTQczjJOCiDvm5nIDfBYsH\",\"_children_page_29\":\"1\"}', '2020-07-14 00:37:56', '2020-07-14 00:37:56');
INSERT INTO `admin_operation_log` VALUES ('1511', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"lAbLQqy1mQgucMD6sxWTQczjJOCiDvm5nIDfBYsH\",\"_children_page_45\":\"1\"}', '2020-07-14 00:37:59', '2020-07-14 00:37:59');
INSERT INTO `admin_operation_log` VALUES ('1512', '1', 'admin/cate/29/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:38:00', '2020-07-14 00:38:00');
INSERT INTO `admin_operation_log` VALUES ('1513', '1', 'admin/product/1', 'PUT', '112.96.199.62', '{\"_id\":\"rKPSdAbs99Pbd0JG\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"upload_column\":\"smallimage\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"wen.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Fri Oct 19 2018 17:55:13 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"758\"}', '2020-07-14 00:38:16', '2020-07-14 00:38:16');
INSERT INTO `admin_operation_log` VALUES ('1514', '1', 'admin/product/1', 'PUT', '112.96.199.62', '{\"_id\":\"rKPSdAbs99Pbd0JG\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_method\":\"PUT\",\"smallimage\":\"images\\/e3ed6085143aeca9231896dc5b07e978.png\"}', '2020-07-14 00:38:16', '2020-07-14 00:38:16');
INSERT INTO `admin_operation_log` VALUES ('1515', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:38:17', '2020-07-14 00:38:17');
INSERT INTO `admin_operation_log` VALUES ('1516', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 00:38:19', '2020-07-14 00:38:19');
INSERT INTO `admin_operation_log` VALUES ('1517', '1', 'admin/product/1', 'PUT', '112.96.199.62', '{\"cid\":\"45\",\"title\":\"\\u5f69\\u4e91\\u6052\\u901a\\u9aa8\\u738b\\u96d5\\u523b\",\"smalldescription\":\"\\u8fd9\\u91cc\\u662f\\u7b80\\u4ecb\",\"description\":\"<p>\\u8d2a\\u8d22\\u6709\\u9053\\uff0c\\u597d\\u8272\\u6709\\u54c1\\uff0c\\u535a\\u5b66\\u6709\\u8bc6\\uff0c\\u8bfb\\u4e66\\u6709\\u763e\\uff0c\\u559d\\u9152\\u6709\\u91cf\\uff0c\\u73a9\\u7b11\\u6709\\u5ea6\\uff0c\\u6ca1\\u4e8b\\u4e0d\\u4f1a\\u60f9\\u4e8b\\uff0c\\u6709\\u4e8b\\u4e5f\\u4e0d\\u4f1a\\u6015\\u4e8b \\u5bf9\\u5916\\u662f\\u9876\\u5929\\u7acb\\u5730\\uff0c\\u5bf9\\u5185\\u662f\\u6ca1\\u6709\\u813e\\u6c14\\u7684<\\/p><p><br data-mce-bogus=\\\"1\\\"><\\/p><p><br data-mce-bogus=\\\"1\\\"><\\/p><p>\\u8fd9\\u91cc\\u662f\\u7cbe\\u54c1\\u4ecb\\u7ecd<\\/p>\",\"smallimage\":\"images\\/e3ed6085143aeca9231896dc5b07e978.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/01.png,images\\/02.png\",\"file-image\":null,\"file\":null,\"price\":\"50.00\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"cUuF8qLsmvOpzgKfxgXqFStg8BDV3xIosOYTZk25\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-14 00:38:20', '2020-07-14 00:38:20');
INSERT INTO `admin_operation_log` VALUES ('1518', '1', 'admin/product', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:38:20', '2020-07-14 00:38:20');
INSERT INTO `admin_operation_log` VALUES ('1519', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_children_page_29\":\"1\"}', '2020-07-14 00:38:36', '2020-07-14 00:38:36');
INSERT INTO `admin_operation_log` VALUES ('1520', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_children_page_45\":\"1\"}', '2020-07-14 00:38:40', '2020-07-14 00:38:40');
INSERT INTO `admin_operation_log` VALUES ('1521', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_parent_id_\":\"50\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"3\",\"_token\":\"lAbLQqy1mQgucMD6sxWTQczjJOCiDvm5nIDfBYsH\",\"_children_page_50\":\"1\"}', '2020-07-14 00:39:00', '2020-07-14 00:39:00');
INSERT INTO `admin_operation_log` VALUES ('1522', '1', 'admin/cate/50/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:39:13', '2020-07-14 00:39:13');
INSERT INTO `admin_operation_log` VALUES ('1523', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:39:13', '2020-07-14 00:39:13');
INSERT INTO `admin_operation_log` VALUES ('1524', '1', 'admin/product/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:39:15', '2020-07-14 00:39:15');
INSERT INTO `admin_operation_log` VALUES ('1525', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:39:17', '2020-07-14 00:39:17');
INSERT INTO `admin_operation_log` VALUES ('1526', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:39:23', '2020-07-14 00:39:23');
INSERT INTO `admin_operation_log` VALUES ('1527', '1', 'admin/product/create', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:39:25', '2020-07-14 00:39:25');
INSERT INTO `admin_operation_log` VALUES ('1528', '1', 'admin/product/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:39:27', '2020-07-14 00:39:27');
INSERT INTO `admin_operation_log` VALUES ('1529', '1', 'admin/product/1/edit', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:39:47', '2020-07-14 00:39:47');
INSERT INTO `admin_operation_log` VALUES ('1530', '1', 'admin/push', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:39:54', '2020-07-14 00:39:54');
INSERT INTO `admin_operation_log` VALUES ('1531', '1', 'admin/push/3/edit', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:39:56', '2020-07-14 00:39:56');
INSERT INTO `admin_operation_log` VALUES ('1532', '1', 'admin/product', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:39:58', '2020-07-14 00:39:58');
INSERT INTO `admin_operation_log` VALUES ('1533', '1', 'admin/order', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:39:59', '2020-07-14 00:39:59');
INSERT INTO `admin_operation_log` VALUES ('1534', '1', 'admin/order/13', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:40:02', '2020-07-14 00:40:02');
INSERT INTO `admin_operation_log` VALUES ('1535', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:41:20', '2020-07-14 00:41:20');
INSERT INTO `admin_operation_log` VALUES ('1536', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"lAbLQqy1mQgucMD6sxWTQczjJOCiDvm5nIDfBYsH\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 00:41:22', '2020-07-14 00:41:22');
INSERT INTO `admin_operation_log` VALUES ('1537', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"lAbLQqy1mQgucMD6sxWTQczjJOCiDvm5nIDfBYsH\",\"_children_page_45\":\"1\"}', '2020-07-14 00:41:23', '2020-07-14 00:41:23');
INSERT INTO `admin_operation_log` VALUES ('1538', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:41:31', '2020-07-14 00:41:31');
INSERT INTO `admin_operation_log` VALUES ('1539', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:42:51', '2020-07-14 00:42:51');
INSERT INTO `admin_operation_log` VALUES ('1540', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:42:53', '2020-07-14 00:42:53');
INSERT INTO `admin_operation_log` VALUES ('1541', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"lAbLQqy1mQgucMD6sxWTQczjJOCiDvm5nIDfBYsH\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 00:42:55', '2020-07-14 00:42:55');
INSERT INTO `admin_operation_log` VALUES ('1542', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"lAbLQqy1mQgucMD6sxWTQczjJOCiDvm5nIDfBYsH\",\"_children_page_45\":\"1\"}', '2020-07-14 00:42:56', '2020-07-14 00:42:56');
INSERT INTO `admin_operation_log` VALUES ('1543', '1', 'admin/product/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:42:59', '2020-07-14 00:42:59');
INSERT INTO `admin_operation_log` VALUES ('1544', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:43:00', '2020-07-14 00:43:00');
INSERT INTO `admin_operation_log` VALUES ('1545', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:43:04', '2020-07-14 00:43:04');
INSERT INTO `admin_operation_log` VALUES ('1546', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"lAbLQqy1mQgucMD6sxWTQczjJOCiDvm5nIDfBYsH\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 00:43:05', '2020-07-14 00:43:05');
INSERT INTO `admin_operation_log` VALUES ('1547', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"lAbLQqy1mQgucMD6sxWTQczjJOCiDvm5nIDfBYsH\",\"_children_page_45\":\"1\"}', '2020-07-14 00:43:07', '2020-07-14 00:43:07');
INSERT INTO `admin_operation_log` VALUES ('1548', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:43:20', '2020-07-14 00:43:20');
INSERT INTO `admin_operation_log` VALUES ('1549', '1', 'admin/order', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:44:17', '2020-07-14 00:44:17');
INSERT INTO `admin_operation_log` VALUES ('1550', '1', 'admin/help', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:44:19', '2020-07-14 00:44:19');
INSERT INTO `admin_operation_log` VALUES ('1551', '1', 'admin/about', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:44:20', '2020-07-14 00:44:20');
INSERT INTO `admin_operation_log` VALUES ('1552', '1', 'admin/tixian', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:44:21', '2020-07-14 00:44:21');
INSERT INTO `admin_operation_log` VALUES ('1553', '1', 'admin/user', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:44:23', '2020-07-14 00:44:23');
INSERT INTO `admin_operation_log` VALUES ('1554', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:46:08', '2020-07-14 00:46:08');
INSERT INTO `admin_operation_log` VALUES ('1555', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:46:11', '2020-07-14 00:46:11');
INSERT INTO `admin_operation_log` VALUES ('1556', '1', 'admin/push', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:46:20', '2020-07-14 00:46:20');
INSERT INTO `admin_operation_log` VALUES ('1557', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:46:20', '2020-07-14 00:46:20');
INSERT INTO `admin_operation_log` VALUES ('1558', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:46:51', '2020-07-14 00:46:51');
INSERT INTO `admin_operation_log` VALUES ('1559', '1', 'admin/push', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:46:55', '2020-07-14 00:46:55');
INSERT INTO `admin_operation_log` VALUES ('1560', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:46:57', '2020-07-14 00:46:57');
INSERT INTO `admin_operation_log` VALUES ('1561', '1', 'admin/push', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:46:59', '2020-07-14 00:46:59');
INSERT INTO `admin_operation_log` VALUES ('1562', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:47:06', '2020-07-14 00:47:06');
INSERT INTO `admin_operation_log` VALUES ('1563', '1', 'admin/order', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:47:08', '2020-07-14 00:47:08');
INSERT INTO `admin_operation_log` VALUES ('1564', '1', 'admin/order/16', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:47:13', '2020-07-14 00:47:13');
INSERT INTO `admin_operation_log` VALUES ('1565', '1', 'admin/order', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:47:13', '2020-07-14 00:47:13');
INSERT INTO `admin_operation_log` VALUES ('1566', '1', 'admin/order', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:47:14', '2020-07-14 00:47:14');
INSERT INTO `admin_operation_log` VALUES ('1567', '1', 'admin/order/16', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:47:20', '2020-07-14 00:47:20');
INSERT INTO `admin_operation_log` VALUES ('1568', '1', 'admin/order', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:47:28', '2020-07-14 00:47:28');
INSERT INTO `admin_operation_log` VALUES ('1569', '1', 'admin/order/16', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:47:36', '2020-07-14 00:47:36');
INSERT INTO `admin_operation_log` VALUES ('1570', '1', 'admin/order/16', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:47:38', '2020-07-14 00:47:38');
INSERT INTO `admin_operation_log` VALUES ('1571', '1', 'admin/order', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:47:47', '2020-07-14 00:47:47');
INSERT INTO `admin_operation_log` VALUES ('1572', '1', 'admin/help', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:47:55', '2020-07-14 00:47:55');
INSERT INTO `admin_operation_log` VALUES ('1573', '1', 'admin/about', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:47:57', '2020-07-14 00:47:57');
INSERT INTO `admin_operation_log` VALUES ('1574', '1', 'admin/tixian', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:47:57', '2020-07-14 00:47:57');
INSERT INTO `admin_operation_log` VALUES ('1575', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:48:07', '2020-07-14 00:48:07');
INSERT INTO `admin_operation_log` VALUES ('1576', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:48:09', '2020-07-14 00:48:09');
INSERT INTO `admin_operation_log` VALUES ('1577', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:48:20', '2020-07-14 00:48:20');
INSERT INTO `admin_operation_log` VALUES ('1578', '1', 'admin/cate', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:48:25', '2020-07-14 00:48:25');
INSERT INTO `admin_operation_log` VALUES ('1579', '1', 'admin/product', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:48:25', '2020-07-14 00:48:25');
INSERT INTO `admin_operation_log` VALUES ('1580', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:48:25', '2020-07-14 00:48:25');
INSERT INTO `admin_operation_log` VALUES ('1581', '1', 'admin/video/1/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:48:25', '2020-07-14 00:48:25');
INSERT INTO `admin_operation_log` VALUES ('1582', '1', 'admin/product/1/edit', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:48:28', '2020-07-14 00:48:28');
INSERT INTO `admin_operation_log` VALUES ('1583', '1', 'admin/video', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:48:28', '2020-07-14 00:48:28');
INSERT INTO `admin_operation_log` VALUES ('1584', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:48:30', '2020-07-14 00:48:30');
INSERT INTO `admin_operation_log` VALUES ('1585', '1', 'admin/video/1/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:48:33', '2020-07-14 00:48:33');
INSERT INTO `admin_operation_log` VALUES ('1586', '1', 'admin/video/2/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:48:35', '2020-07-14 00:48:35');
INSERT INTO `admin_operation_log` VALUES ('1587', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:48:39', '2020-07-14 00:48:39');
INSERT INTO `admin_operation_log` VALUES ('1588', '1', 'admin/video', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:48:44', '2020-07-14 00:48:44');
INSERT INTO `admin_operation_log` VALUES ('1589', '1', 'admin/video/1/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:48:58', '2020-07-14 00:48:58');
INSERT INTO `admin_operation_log` VALUES ('1590', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:49:02', '2020-07-14 00:49:02');
INSERT INTO `admin_operation_log` VALUES ('1591', '1', 'admin/swipe', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:49:06', '2020-07-14 00:49:06');
INSERT INTO `admin_operation_log` VALUES ('1592', '1', 'admin/user', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:49:08', '2020-07-14 00:49:08');
INSERT INTO `admin_operation_log` VALUES ('1593', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:49:09', '2020-07-14 00:49:09');
INSERT INTO `admin_operation_log` VALUES ('1594', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:49:51', '2020-07-14 00:49:51');
INSERT INTO `admin_operation_log` VALUES ('1595', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:49:54', '2020-07-14 00:49:54');
INSERT INTO `admin_operation_log` VALUES ('1596', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"XK5J5GJZCdVGAemELKXApPb2q5JQ3n9aQi2YLcIJ\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 00:49:56', '2020-07-14 00:49:56');
INSERT INTO `admin_operation_log` VALUES ('1597', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:51:12', '2020-07-14 00:51:12');
INSERT INTO `admin_operation_log` VALUES ('1598', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:51:16', '2020-07-14 00:51:16');
INSERT INTO `admin_operation_log` VALUES ('1599', '1', 'admin/product/1/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:51:17', '2020-07-14 00:51:17');
INSERT INTO `admin_operation_log` VALUES ('1600', '1', 'admin/product/1/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:51:21', '2020-07-14 00:51:21');
INSERT INTO `admin_operation_log` VALUES ('1601', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:51:54', '2020-07-14 00:51:54');
INSERT INTO `admin_operation_log` VALUES ('1602', '1', 'admin/order', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:52:41', '2020-07-14 00:52:41');
INSERT INTO `admin_operation_log` VALUES ('1603', '1', 'admin', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:52:44', '2020-07-14 00:52:44');
INSERT INTO `admin_operation_log` VALUES ('1604', '1', 'admin/tixian', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:52:55', '2020-07-14 00:52:55');
INSERT INTO `admin_operation_log` VALUES ('1605', '1', 'admin/order', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:53:38', '2020-07-14 00:53:38');
INSERT INTO `admin_operation_log` VALUES ('1606', '1', 'admin/order/38', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:53:41', '2020-07-14 00:53:41');
INSERT INTO `admin_operation_log` VALUES ('1607', '1', 'admin/order/38', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:54:35', '2020-07-14 00:54:35');
INSERT INTO `admin_operation_log` VALUES ('1608', '1', 'admin/help', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:54:37', '2020-07-14 00:54:37');
INSERT INTO `admin_operation_log` VALUES ('1609', '1', 'admin/about', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:54:38', '2020-07-14 00:54:38');
INSERT INTO `admin_operation_log` VALUES ('1610', '1', 'admin/tixian', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:54:38', '2020-07-14 00:54:38');
INSERT INTO `admin_operation_log` VALUES ('1611', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:54:40', '2020-07-14 00:54:40');
INSERT INTO `admin_operation_log` VALUES ('1612', '1', 'admin/user', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:54:43', '2020-07-14 00:54:43');
INSERT INTO `admin_operation_log` VALUES ('1613', '1', 'admin/tixian', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:02', '2020-07-14 00:55:02');
INSERT INTO `admin_operation_log` VALUES ('1614', '1', 'admin/about', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:03', '2020-07-14 00:55:03');
INSERT INTO `admin_operation_log` VALUES ('1615', '1', 'admin/help', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:03', '2020-07-14 00:55:03');
INSERT INTO `admin_operation_log` VALUES ('1616', '1', 'admin/order', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:04', '2020-07-14 00:55:04');
INSERT INTO `admin_operation_log` VALUES ('1617', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:04', '2020-07-14 00:55:04');
INSERT INTO `admin_operation_log` VALUES ('1618', '1', 'admin/push', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:05', '2020-07-14 00:55:05');
INSERT INTO `admin_operation_log` VALUES ('1619', '1', 'admin/user', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:05', '2020-07-14 00:55:05');
INSERT INTO `admin_operation_log` VALUES ('1620', '1', 'admin/user', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:07', '2020-07-14 00:55:07');
INSERT INTO `admin_operation_log` VALUES ('1621', '1', 'admin/user', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:07', '2020-07-14 00:55:07');
INSERT INTO `admin_operation_log` VALUES ('1622', '1', 'admin/auth/users', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:09', '2020-07-14 00:55:09');
INSERT INTO `admin_operation_log` VALUES ('1623', '1', 'admin/auth/roles', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:09', '2020-07-14 00:55:09');
INSERT INTO `admin_operation_log` VALUES ('1624', '1', 'admin/auth/permissions', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:10', '2020-07-14 00:55:10');
INSERT INTO `admin_operation_log` VALUES ('1625', '1', 'admin/auth/menu', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:10', '2020-07-14 00:55:10');
INSERT INTO `admin_operation_log` VALUES ('1626', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:12', '2020-07-14 00:55:12');
INSERT INTO `admin_operation_log` VALUES ('1627', '1', 'admin/auth/users', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:13', '2020-07-14 00:55:13');
INSERT INTO `admin_operation_log` VALUES ('1628', '1', 'admin/tixian', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:16', '2020-07-14 00:55:16');
INSERT INTO `admin_operation_log` VALUES ('1629', '1', 'admin/about', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:18', '2020-07-14 00:55:18');
INSERT INTO `admin_operation_log` VALUES ('1630', '1', 'admin/help', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:19', '2020-07-14 00:55:19');
INSERT INTO `admin_operation_log` VALUES ('1631', '1', 'admin/order', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:21', '2020-07-14 00:55:21');
INSERT INTO `admin_operation_log` VALUES ('1632', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:22', '2020-07-14 00:55:22');
INSERT INTO `admin_operation_log` VALUES ('1633', '1', 'admin/push', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:23', '2020-07-14 00:55:23');
INSERT INTO `admin_operation_log` VALUES ('1634', '1', 'admin/user', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:25', '2020-07-14 00:55:25');
INSERT INTO `admin_operation_log` VALUES ('1635', '1', 'admin/auth/menu', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:29', '2020-07-14 00:55:29');
INSERT INTO `admin_operation_log` VALUES ('1636', '1', 'admin/auth/permissions', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:30', '2020-07-14 00:55:30');
INSERT INTO `admin_operation_log` VALUES ('1637', '1', 'admin/auth/roles', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:32', '2020-07-14 00:55:32');
INSERT INTO `admin_operation_log` VALUES ('1638', '1', 'admin/auth/users', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:32', '2020-07-14 00:55:32');
INSERT INTO `admin_operation_log` VALUES ('1639', '1', 'admin', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:35', '2020-07-14 00:55:35');
INSERT INTO `admin_operation_log` VALUES ('1640', '1', 'admin', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:35', '2020-07-14 00:55:35');
INSERT INTO `admin_operation_log` VALUES ('1641', '1', 'admin', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:37', '2020-07-14 00:55:37');
INSERT INTO `admin_operation_log` VALUES ('1642', '1', 'admin', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:47', '2020-07-14 00:55:47');
INSERT INTO `admin_operation_log` VALUES ('1643', '1', 'admin', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:49', '2020-07-14 00:55:49');
INSERT INTO `admin_operation_log` VALUES ('1644', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:50', '2020-07-14 00:55:50');
INSERT INTO `admin_operation_log` VALUES ('1645', '1', 'admin/product/1/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:55:54', '2020-07-14 00:55:54');
INSERT INTO `admin_operation_log` VALUES ('1646', '1', 'admin/push', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:57:10', '2020-07-14 00:57:10');
INSERT INTO `admin_operation_log` VALUES ('1647', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:57:11', '2020-07-14 00:57:11');
INSERT INTO `admin_operation_log` VALUES ('1648', '1', 'admin/video', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:57:12', '2020-07-14 00:57:12');
INSERT INTO `admin_operation_log` VALUES ('1649', '1', 'admin/user', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:57:13', '2020-07-14 00:57:13');
INSERT INTO `admin_operation_log` VALUES ('1650', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:57:15', '2020-07-14 00:57:15');
INSERT INTO `admin_operation_log` VALUES ('1651', '1', 'admin/auth/users', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:57:17', '2020-07-14 00:57:17');
INSERT INTO `admin_operation_log` VALUES ('1652', '1', 'admin/auth/roles', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:57:18', '2020-07-14 00:57:18');
INSERT INTO `admin_operation_log` VALUES ('1653', '1', 'admin/auth/permissions', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:57:19', '2020-07-14 00:57:19');
INSERT INTO `admin_operation_log` VALUES ('1654', '1', 'admin/swipe', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:57:19', '2020-07-14 00:57:19');
INSERT INTO `admin_operation_log` VALUES ('1655', '1', 'admin/user', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:57:20', '2020-07-14 00:57:20');
INSERT INTO `admin_operation_log` VALUES ('1656', '1', 'admin/auth/menu', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:57:20', '2020-07-14 00:57:20');
INSERT INTO `admin_operation_log` VALUES ('1657', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:57:21', '2020-07-14 00:57:21');
INSERT INTO `admin_operation_log` VALUES ('1658', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:57:22', '2020-07-14 00:57:22');
INSERT INTO `admin_operation_log` VALUES ('1659', '1', 'admin/push', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:57:24', '2020-07-14 00:57:24');
INSERT INTO `admin_operation_log` VALUES ('1660', '1', 'admin/auth/permissions', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:57:25', '2020-07-14 00:57:25');
INSERT INTO `admin_operation_log` VALUES ('1661', '1', 'admin/tixian', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:58:21', '2020-07-14 00:58:21');
INSERT INTO `admin_operation_log` VALUES ('1662', '1', 'admin/about', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:58:22', '2020-07-14 00:58:22');
INSERT INTO `admin_operation_log` VALUES ('1663', '1', 'admin/help', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:58:23', '2020-07-14 00:58:23');
INSERT INTO `admin_operation_log` VALUES ('1664', '1', 'admin/order', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:58:48', '2020-07-14 00:58:48');
INSERT INTO `admin_operation_log` VALUES ('1665', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:58:49', '2020-07-14 00:58:49');
INSERT INTO `admin_operation_log` VALUES ('1666', '1', 'admin/push', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:58:49', '2020-07-14 00:58:49');
INSERT INTO `admin_operation_log` VALUES ('1667', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:58:49', '2020-07-14 00:58:49');
INSERT INTO `admin_operation_log` VALUES ('1668', '1', 'admin/video', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:58:50', '2020-07-14 00:58:50');
INSERT INTO `admin_operation_log` VALUES ('1669', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:58:50', '2020-07-14 00:58:50');
INSERT INTO `admin_operation_log` VALUES ('1670', '1', 'admin', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:58:51', '2020-07-14 00:58:51');
INSERT INTO `admin_operation_log` VALUES ('1671', '1', 'admin/video', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 00:59:30', '2020-07-14 00:59:30');
INSERT INTO `admin_operation_log` VALUES ('1672', '1', 'admin/video', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:00:03', '2020-07-14 01:00:03');
INSERT INTO `admin_operation_log` VALUES ('1673', '1', 'admin/video/1/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:00:06', '2020-07-14 01:00:06');
INSERT INTO `admin_operation_log` VALUES ('1674', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:01:10', '2020-07-14 01:01:10');
INSERT INTO `admin_operation_log` VALUES ('1675', '1', 'admin/product/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:01:18', '2020-07-14 01:01:18');
INSERT INTO `admin_operation_log` VALUES ('1676', '1', 'admin/product', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:01:27', '2020-07-14 01:01:27');
INSERT INTO `admin_operation_log` VALUES ('1677', '1', 'admin/product/create', 'GET', '112.96.199.62', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:01:30', '2020-07-14 01:01:30');
INSERT INTO `admin_operation_log` VALUES ('1678', '1', 'admin/auth/users', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:01:58', '2020-07-14 01:01:58');
INSERT INTO `admin_operation_log` VALUES ('1679', '1', 'admin/auth/roles', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:01:59', '2020-07-14 01:01:59');
INSERT INTO `admin_operation_log` VALUES ('1680', '1', 'admin/auth/permissions', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:00', '2020-07-14 01:02:00');
INSERT INTO `admin_operation_log` VALUES ('1681', '1', 'admin/auth/menu', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:00', '2020-07-14 01:02:00');
INSERT INTO `admin_operation_log` VALUES ('1682', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:01', '2020-07-14 01:02:01');
INSERT INTO `admin_operation_log` VALUES ('1683', '1', 'admin/user', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:05', '2020-07-14 01:02:05');
INSERT INTO `admin_operation_log` VALUES ('1684', '1', 'admin/video', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:08', '2020-07-14 01:02:08');
INSERT INTO `admin_operation_log` VALUES ('1685', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:08', '2020-07-14 01:02:08');
INSERT INTO `admin_operation_log` VALUES ('1686', '1', 'admin/push', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:10', '2020-07-14 01:02:10');
INSERT INTO `admin_operation_log` VALUES ('1687', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:11', '2020-07-14 01:02:11');
INSERT INTO `admin_operation_log` VALUES ('1688', '1', 'admin/order', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:11', '2020-07-14 01:02:11');
INSERT INTO `admin_operation_log` VALUES ('1689', '1', 'admin/help', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:12', '2020-07-14 01:02:12');
INSERT INTO `admin_operation_log` VALUES ('1690', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:13', '2020-07-14 01:02:13');
INSERT INTO `admin_operation_log` VALUES ('1691', '1', 'admin/push', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:13', '2020-07-14 01:02:13');
INSERT INTO `admin_operation_log` VALUES ('1692', '1', 'admin/push/create', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:16', '2020-07-14 01:02:16');
INSERT INTO `admin_operation_log` VALUES ('1693', '1', 'admin/push', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:19', '2020-07-14 01:02:19');
INSERT INTO `admin_operation_log` VALUES ('1694', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:20', '2020-07-14 01:02:20');
INSERT INTO `admin_operation_log` VALUES ('1695', '1', 'admin/help', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:21', '2020-07-14 01:02:21');
INSERT INTO `admin_operation_log` VALUES ('1696', '1', 'admin/order', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:22', '2020-07-14 01:02:22');
INSERT INTO `admin_operation_log` VALUES ('1697', '1', 'admin/order/38', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:29', '2020-07-14 01:02:29');
INSERT INTO `admin_operation_log` VALUES ('1698', '1', 'admin/help', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:33', '2020-07-14 01:02:33');
INSERT INTO `admin_operation_log` VALUES ('1699', '1', 'admin/about', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:34', '2020-07-14 01:02:34');
INSERT INTO `admin_operation_log` VALUES ('1700', '1', 'admin/tixian', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:35', '2020-07-14 01:02:35');
INSERT INTO `admin_operation_log` VALUES ('1701', '1', 'admin', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:37', '2020-07-14 01:02:37');
INSERT INTO `admin_operation_log` VALUES ('1702', '1', 'admin', 'GET', '183.192.15.98', '[]', '2020-07-14 01:02:48', '2020-07-14 01:02:48');
INSERT INTO `admin_operation_log` VALUES ('1703', '1', 'admin/auth/logout', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:02:51', '2020-07-14 01:02:51');
INSERT INTO `admin_operation_log` VALUES ('1704', '0', 'admin/auth/login', 'GET', '183.192.15.98', '[]', '2020-07-14 01:02:51', '2020-07-14 01:02:51');
INSERT INTO `admin_operation_log` VALUES ('1705', '1', 'admin/product/create', 'GET', '112.96.199.62', '[]', '2020-07-14 01:05:34', '2020-07-14 01:05:34');
INSERT INTO `admin_operation_log` VALUES ('1706', '1', 'admin', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 01:07:36', '2020-07-14 01:07:36');
INSERT INTO `admin_operation_log` VALUES ('1707', '0', 'admin/auth/login', 'GET', '185.112.126.33', '[]', '2020-07-14 10:09:08', '2020-07-14 10:09:08');
INSERT INTO `admin_operation_log` VALUES ('1708', '0', 'admin/auth/login', 'POST', '185.112.126.33', '{\"_token\":\"8sa0BL9kHvCqASIh5YxJRBFaolElm0b0Q5n2C9Hs\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-14 10:09:17', '2020-07-14 10:09:17');
INSERT INTO `admin_operation_log` VALUES ('1709', '1', 'admin', 'GET', '185.112.126.33', '[]', '2020-07-14 10:09:17', '2020-07-14 10:09:17');
INSERT INTO `admin_operation_log` VALUES ('1710', '1', 'admin/auth/users', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:09:26', '2020-07-14 10:09:26');
INSERT INTO `admin_operation_log` VALUES ('1711', '1', 'admin/auth/roles', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:09:29', '2020-07-14 10:09:29');
INSERT INTO `admin_operation_log` VALUES ('1712', '1', 'admin/auth/permissions', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:09:31', '2020-07-14 10:09:31');
INSERT INTO `admin_operation_log` VALUES ('1713', '1', 'admin/auth/menu', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:09:33', '2020-07-14 10:09:33');
INSERT INTO `admin_operation_log` VALUES ('1714', '1', 'admin/swipe', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:10:21', '2020-07-14 10:10:21');
INSERT INTO `admin_operation_log` VALUES ('1715', '1', 'admin/user', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:11:08', '2020-07-14 10:11:08');
INSERT INTO `admin_operation_log` VALUES ('1716', '1', 'admin/swipe', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:11:12', '2020-07-14 10:11:12');
INSERT INTO `admin_operation_log` VALUES ('1717', '1', 'admin/swipe', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:11:16', '2020-07-14 10:11:16');
INSERT INTO `admin_operation_log` VALUES ('1718', '1', 'admin/user', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:11:24', '2020-07-14 10:11:24');
INSERT INTO `admin_operation_log` VALUES ('1719', '1', 'admin/video', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:11:29', '2020-07-14 10:11:29');
INSERT INTO `admin_operation_log` VALUES ('1720', '1', 'admin/cate', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:11:37', '2020-07-14 10:11:37');
INSERT INTO `admin_operation_log` VALUES ('1721', '1', 'admin/push', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:12:21', '2020-07-14 10:12:21');
INSERT INTO `admin_operation_log` VALUES ('1722', '1', 'admin/product', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:12:27', '2020-07-14 10:12:27');
INSERT INTO `admin_operation_log` VALUES ('1723', '1', 'admin/order', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:12:31', '2020-07-14 10:12:31');
INSERT INTO `admin_operation_log` VALUES ('1724', '1', 'admin/help', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:12:49', '2020-07-14 10:12:49');
INSERT INTO `admin_operation_log` VALUES ('1725', '1', 'admin/about', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:12:52', '2020-07-14 10:12:52');
INSERT INTO `admin_operation_log` VALUES ('1726', '1', 'admin/tixian', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:12:54', '2020-07-14 10:12:54');
INSERT INTO `admin_operation_log` VALUES ('1727', '1', 'admin/swipe', 'GET', '185.112.126.33', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 10:12:59', '2020-07-14 10:12:59');
INSERT INTO `admin_operation_log` VALUES ('1728', '0', 'admin/auth/login', 'GET', '185.112.126.33', '[]', '2020-07-14 16:00:58', '2020-07-14 16:00:58');
INSERT INTO `admin_operation_log` VALUES ('1729', '0', 'admin/auth/login', 'POST', '185.112.126.33', '{\"_token\":\"ksjf354jeSp2QYrqcaf53A58CPiCGafbpgBGBVVh\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-14 16:01:23', '2020-07-14 16:01:23');
INSERT INTO `admin_operation_log` VALUES ('1730', '1', 'admin', 'GET', '185.112.126.33', '[]', '2020-07-14 16:01:35', '2020-07-14 16:01:35');
INSERT INTO `admin_operation_log` VALUES ('1731', '0', 'admin/auth/login', 'GET', '223.104.212.169', '[]', '2020-07-14 16:13:23', '2020-07-14 16:13:23');
INSERT INTO `admin_operation_log` VALUES ('1732', '0', 'admin/auth/login', 'POST', '223.104.212.169', '{\"_token\":\"65bnFMYX13wK62jBLFkatyrDqbtwUSpEyk06b9fk\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-14 16:13:31', '2020-07-14 16:13:31');
INSERT INTO `admin_operation_log` VALUES ('1733', '1', 'admin', 'GET', '223.104.212.169', '[]', '2020-07-14 16:13:31', '2020-07-14 16:13:31');
INSERT INTO `admin_operation_log` VALUES ('1734', '1', 'admin/order', 'GET', '223.104.212.169', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 16:13:41', '2020-07-14 16:13:41');
INSERT INTO `admin_operation_log` VALUES ('1735', '1', 'admin/cate', 'GET', '223.104.212.169', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 16:13:56', '2020-07-14 16:13:56');
INSERT INTO `admin_operation_log` VALUES ('1736', '1', 'admin/push', 'GET', '223.104.212.169', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 16:13:57', '2020-07-14 16:13:57');
INSERT INTO `admin_operation_log` VALUES ('1737', '0', 'admin/auth/login', 'GET', '116.23.16.199', '[]', '2020-07-14 19:07:11', '2020-07-14 19:07:11');
INSERT INTO `admin_operation_log` VALUES ('1738', '0', 'admin/auth/login', 'POST', '116.23.16.199', '{\"_token\":\"naGrX8PalxU0so07Uf38dmwM10OKqaZObvzRfITi\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-14 19:58:53', '2020-07-14 19:58:53');
INSERT INTO `admin_operation_log` VALUES ('1739', '1', 'admin/cate/51/edit', 'GET', '116.23.16.199', '[]', '2020-07-14 19:58:53', '2020-07-14 19:58:53');
INSERT INTO `admin_operation_log` VALUES ('1740', '1', 'admin/swipe', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 19:59:02', '2020-07-14 19:59:02');
INSERT INTO `admin_operation_log` VALUES ('1741', '0', 'admin/auth/login', 'GET', '120.230.122.162', '[]', '2020-07-14 21:19:46', '2020-07-14 21:19:46');
INSERT INTO `admin_operation_log` VALUES ('1742', '0', 'admin/auth/login', 'POST', '120.230.122.162', '{\"_token\":\"AEkZzN7OIfdmZkFzjBTTmarOg6teAN2OcaOvRnlT\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-14 21:19:55', '2020-07-14 21:19:55');
INSERT INTO `admin_operation_log` VALUES ('1743', '1', 'admin', 'GET', '120.230.122.162', '[]', '2020-07-14 21:19:55', '2020-07-14 21:19:55');
INSERT INTO `admin_operation_log` VALUES ('1744', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:20:01', '2020-07-14 21:20:01');
INSERT INTO `admin_operation_log` VALUES ('1745', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:20:03', '2020-07-14 21:20:03');
INSERT INTO `admin_operation_log` VALUES ('1746', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:20:03', '2020-07-14 21:20:03');
INSERT INTO `admin_operation_log` VALUES ('1747', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\",\"_token\":\"ln6LkVIQUUGLguZNc5d4SZFIAIws88YG336Lqf6a\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 21:20:04', '2020-07-14 21:20:04');
INSERT INTO `admin_operation_log` VALUES ('1748', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"bScDQGwLd2RICkphaAdRq8BKRslBnT6penmClj23\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 21:20:04', '2020-07-14 21:20:04');
INSERT INTO `admin_operation_log` VALUES ('1749', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"ln6LkVIQUUGLguZNc5d4SZFIAIws88YG336Lqf6a\",\"_children_page_29\":\"1\"}', '2020-07-14 21:20:05', '2020-07-14 21:20:05');
INSERT INTO `admin_operation_log` VALUES ('1750', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"ln6LkVIQUUGLguZNc5d4SZFIAIws88YG336Lqf6a\",\"_children_page_45\":\"1\"}', '2020-07-14 21:20:06', '2020-07-14 21:20:06');
INSERT INTO `admin_operation_log` VALUES ('1751', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"bScDQGwLd2RICkphaAdRq8BKRslBnT6penmClj23\",\"_children_page_29\":\"1\"}', '2020-07-14 21:20:06', '2020-07-14 21:20:06');
INSERT INTO `admin_operation_log` VALUES ('1752', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"bScDQGwLd2RICkphaAdRq8BKRslBnT6penmClj23\",\"_children_page_45\":\"1\"}', '2020-07-14 21:20:09', '2020-07-14 21:20:09');
INSERT INTO `admin_operation_log` VALUES ('1753', '1', 'admin/cate/45/edit', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:20:12', '2020-07-14 21:20:12');
INSERT INTO `admin_operation_log` VALUES ('1754', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:20:25', '2020-07-14 21:20:25');
INSERT INTO `admin_operation_log` VALUES ('1755', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:20:25', '2020-07-14 21:20:25');
INSERT INTO `admin_operation_log` VALUES ('1756', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\",\"_token\":\"ln6LkVIQUUGLguZNc5d4SZFIAIws88YG336Lqf6a\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 21:20:27', '2020-07-14 21:20:27');
INSERT INTO `admin_operation_log` VALUES ('1757', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_parent_id_\":\"46\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"ln6LkVIQUUGLguZNc5d4SZFIAIws88YG336Lqf6a\",\"_children_page_46\":\"1\"}', '2020-07-14 21:20:28', '2020-07-14 21:20:28');
INSERT INTO `admin_operation_log` VALUES ('1758', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"ln6LkVIQUUGLguZNc5d4SZFIAIws88YG336Lqf6a\",\"_children_page_45\":\"1\"}', '2020-07-14 21:20:30', '2020-07-14 21:20:30');
INSERT INTO `admin_operation_log` VALUES ('1759', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:20:40', '2020-07-14 21:20:40');
INSERT INTO `admin_operation_log` VALUES ('1760', '1', 'admin/product/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:20:44', '2020-07-14 21:20:44');
INSERT INTO `admin_operation_log` VALUES ('1761', '1', 'admin/product', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:20:47', '2020-07-14 21:20:47');
INSERT INTO `admin_operation_log` VALUES ('1762', '1', 'admin/product/create', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:20:49', '2020-07-14 21:20:49');
INSERT INTO `admin_operation_log` VALUES ('1763', '1', 'admin/product', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:21:24', '2020-07-14 21:21:24');
INSERT INTO `admin_operation_log` VALUES ('1764', '1', 'admin/order', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:23:07', '2020-07-14 21:23:07');
INSERT INTO `admin_operation_log` VALUES ('1765', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:23:08', '2020-07-14 21:23:08');
INSERT INTO `admin_operation_log` VALUES ('1766', '1', 'admin/user', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:30:34', '2020-07-14 21:30:34');
INSERT INTO `admin_operation_log` VALUES ('1767', '1', 'admin/swipe', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:30:35', '2020-07-14 21:30:35');
INSERT INTO `admin_operation_log` VALUES ('1768', '1', 'admin/video', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:30:36', '2020-07-14 21:30:36');
INSERT INTO `admin_operation_log` VALUES ('1769', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:30:38', '2020-07-14 21:30:38');
INSERT INTO `admin_operation_log` VALUES ('1770', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\",\"_token\":\"ln6LkVIQUUGLguZNc5d4SZFIAIws88YG336Lqf6a\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 21:30:44', '2020-07-14 21:30:44');
INSERT INTO `admin_operation_log` VALUES ('1771', '1', 'admin/cate/29/edit', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:30:48', '2020-07-14 21:30:48');
INSERT INTO `admin_operation_log` VALUES ('1772', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:30:50', '2020-07-14 21:30:50');
INSERT INTO `admin_operation_log` VALUES ('1773', '1', 'admin/cate/create', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:30:51', '2020-07-14 21:30:51');
INSERT INTO `admin_operation_log` VALUES ('1774', '1', 'admin/cate', 'POST', '116.23.16.199', '{\"_id\":\"ZRQvyHrN67pVIJBi\",\"_token\":\"ln6LkVIQUUGLguZNc5d4SZFIAIws88YG336Lqf6a\",\"upload_column\":\"image\",\"id\":\"WU_FILE_0\",\"name\":\"1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Tue Apr 23 2013 13:06:57 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"94377\"}', '2020-07-14 21:31:04', '2020-07-14 21:31:04');
INSERT INTO `admin_operation_log` VALUES ('1775', '1', 'admin/cate', 'POST', '116.23.16.199', '{\"text\":\"\\u6d4b\\u8bd52\\u7ea7\",\"parent_id\":\"28\",\"image\":\"images\\/d7a9f61619067cd1a6dc6d2f17896dec.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"ln6LkVIQUUGLguZNc5d4SZFIAIws88YG336Lqf6a\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-14 21:31:05', '2020-07-14 21:31:05');
INSERT INTO `admin_operation_log` VALUES ('1776', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 21:31:05', '2020-07-14 21:31:05');
INSERT INTO `admin_operation_log` VALUES ('1777', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\",\"_token\":\"ln6LkVIQUUGLguZNc5d4SZFIAIws88YG336Lqf6a\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-14 21:31:07', '2020-07-14 21:31:07');
INSERT INTO `admin_operation_log` VALUES ('1778', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"ln6LkVIQUUGLguZNc5d4SZFIAIws88YG336Lqf6a\",\"_children_page_29\":\"1\"}', '2020-07-14 21:31:08', '2020-07-14 21:31:08');
INSERT INTO `admin_operation_log` VALUES ('1779', '0', 'admin/auth/login', 'GET', '42.236.10.78', '[]', '2020-07-14 21:42:52', '2020-07-14 21:42:52');
INSERT INTO `admin_operation_log` VALUES ('1780', '0', 'admin/auth/login', 'GET', '27.115.124.6', '[]', '2020-07-14 21:46:25', '2020-07-14 21:46:25');
INSERT INTO `admin_operation_log` VALUES ('1781', '0', 'admin/auth/login', 'GET', '180.163.220.67', '[]', '2020-07-14 22:10:15', '2020-07-14 22:10:15');
INSERT INTO `admin_operation_log` VALUES ('1782', '0', 'admin/auth/login', 'GET', '180.163.220.66', '[]', '2020-07-14 22:10:37', '2020-07-14 22:10:37');
INSERT INTO `admin_operation_log` VALUES ('1783', '0', 'admin/auth/login', 'GET', '223.104.63.86', '[]', '2020-07-14 22:15:12', '2020-07-14 22:15:12');
INSERT INTO `admin_operation_log` VALUES ('1784', '0', 'admin/auth/login', 'POST', '223.104.63.86', '{\"_token\":\"4L4dMkmaC5rxDtr0xS6PthnacZgZ6wuAJNjxJVAa\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-14 22:30:53', '2020-07-14 22:30:53');
INSERT INTO `admin_operation_log` VALUES ('1785', '1', 'admin/product/create', 'GET', '223.104.63.86', '[]', '2020-07-14 22:30:53', '2020-07-14 22:30:53');
INSERT INTO `admin_operation_log` VALUES ('1786', '1', 'admin/product/create', 'GET', '223.104.63.86', '[]', '2020-07-14 22:30:59', '2020-07-14 22:30:59');
INSERT INTO `admin_operation_log` VALUES ('1787', '1', 'admin/auth/permissions', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 22:31:11', '2020-07-14 22:31:11');
INSERT INTO `admin_operation_log` VALUES ('1788', '1', 'admin/auth/menu', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 22:31:14', '2020-07-14 22:31:14');
INSERT INTO `admin_operation_log` VALUES ('1789', '1', 'admin/user', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 22:31:16', '2020-07-14 22:31:16');
INSERT INTO `admin_operation_log` VALUES ('1790', '1', 'admin/video', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 22:31:17', '2020-07-14 22:31:17');
INSERT INTO `admin_operation_log` VALUES ('1791', '1', 'admin/user', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 22:31:19', '2020-07-14 22:31:19');
INSERT INTO `admin_operation_log` VALUES ('1792', '1', 'admin/video', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 22:31:27', '2020-07-14 22:31:27');
INSERT INTO `admin_operation_log` VALUES ('1793', '1', 'admin/cate', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 22:31:31', '2020-07-14 22:31:31');
INSERT INTO `admin_operation_log` VALUES ('1794', '1', 'admin/cate', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\",\"_token\":\"P4IuQfrG63DEjPTioN5PhoTTxwzFg6NMklBiGj7s\",\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_children_page_30\":\"1\"}', '2020-07-14 22:31:32', '2020-07-14 22:31:32');
INSERT INTO `admin_operation_log` VALUES ('1795', '1', 'admin/cate', 'GET', '223.104.63.86', '{\"_parent_id_\":\"33\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"P4IuQfrG63DEjPTioN5PhoTTxwzFg6NMklBiGj7s\",\"_children_page_33\":\"1\"}', '2020-07-14 22:31:33', '2020-07-14 22:31:33');
INSERT INTO `admin_operation_log` VALUES ('1796', '1', 'admin/video', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 22:43:28', '2020-07-14 22:43:28');
INSERT INTO `admin_operation_log` VALUES ('1797', '1', 'admin/video', 'GET', '223.104.63.86', '[]', '2020-07-14 22:50:16', '2020-07-14 22:50:16');
INSERT INTO `admin_operation_log` VALUES ('1798', '1', 'admin', 'GET', '223.104.63.86', '[]', '2020-07-14 23:04:09', '2020-07-14 23:04:09');
INSERT INTO `admin_operation_log` VALUES ('1799', '1', 'admin/video', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:04:11', '2020-07-14 23:04:11');
INSERT INTO `admin_operation_log` VALUES ('1800', '1', 'admin/video/1/edit', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:04:15', '2020-07-14 23:04:15');
INSERT INTO `admin_operation_log` VALUES ('1801', '1', 'admin/cate', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:04:21', '2020-07-14 23:04:21');
INSERT INTO `admin_operation_log` VALUES ('1802', '1', 'admin/push', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:04:22', '2020-07-14 23:04:22');
INSERT INTO `admin_operation_log` VALUES ('1803', '1', 'admin/help', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:04:24', '2020-07-14 23:04:24');
INSERT INTO `admin_operation_log` VALUES ('1804', '1', 'admin/about', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:04:24', '2020-07-14 23:04:24');
INSERT INTO `admin_operation_log` VALUES ('1805', '1', 'admin/about/1/edit', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:28', '2020-07-14 23:05:28');
INSERT INTO `admin_operation_log` VALUES ('1806', '1', 'admin/help', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:34', '2020-07-14 23:05:34');
INSERT INTO `admin_operation_log` VALUES ('1807', '1', 'admin/order', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:34', '2020-07-14 23:05:34');
INSERT INTO `admin_operation_log` VALUES ('1808', '1', 'admin/product', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:35', '2020-07-14 23:05:35');
INSERT INTO `admin_operation_log` VALUES ('1809', '1', 'admin/push', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:36', '2020-07-14 23:05:36');
INSERT INTO `admin_operation_log` VALUES ('1810', '1', 'admin/cate', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:37', '2020-07-14 23:05:37');
INSERT INTO `admin_operation_log` VALUES ('1811', '1', 'admin/video', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:38', '2020-07-14 23:05:38');
INSERT INTO `admin_operation_log` VALUES ('1812', '1', 'admin/user', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:39', '2020-07-14 23:05:39');
INSERT INTO `admin_operation_log` VALUES ('1813', '1', 'admin/swipe', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:42', '2020-07-14 23:05:42');
INSERT INTO `admin_operation_log` VALUES ('1814', '1', 'admin/auth/roles', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:44', '2020-07-14 23:05:44');
INSERT INTO `admin_operation_log` VALUES ('1815', '1', 'admin/auth/users', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:45', '2020-07-14 23:05:45');
INSERT INTO `admin_operation_log` VALUES ('1816', '1', 'admin', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:46', '2020-07-14 23:05:46');
INSERT INTO `admin_operation_log` VALUES ('1817', '1', 'admin/user', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:47', '2020-07-14 23:05:47');
INSERT INTO `admin_operation_log` VALUES ('1818', '1', 'admin/swipe', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:48', '2020-07-14 23:05:48');
INSERT INTO `admin_operation_log` VALUES ('1819', '1', 'admin/video', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:48', '2020-07-14 23:05:48');
INSERT INTO `admin_operation_log` VALUES ('1820', '1', 'admin/cate', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:49', '2020-07-14 23:05:49');
INSERT INTO `admin_operation_log` VALUES ('1821', '1', 'admin/cate', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:05:50', '2020-07-14 23:05:50');
INSERT INTO `admin_operation_log` VALUES ('1822', '1', 'admin/cate', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\",\"_token\":\"P4IuQfrG63DEjPTioN5PhoTTxwzFg6NMklBiGj7s\",\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_children_page_30\":\"1\"}', '2020-07-14 23:05:52', '2020-07-14 23:05:52');
INSERT INTO `admin_operation_log` VALUES ('1823', '1', 'admin/user', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:10:47', '2020-07-14 23:10:47');
INSERT INTO `admin_operation_log` VALUES ('1824', '1', 'admin/swipe', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-14 23:10:49', '2020-07-14 23:10:49');
INSERT INTO `admin_operation_log` VALUES ('1825', '0', 'admin/auth/login', 'GET', '116.23.16.199', '[]', '2020-07-15 11:35:36', '2020-07-15 11:35:36');
INSERT INTO `admin_operation_log` VALUES ('1826', '0', 'admin/auth/login', 'POST', '116.23.16.199', '{\"_token\":\"hRbhz5piYPJMpqWID2u7hQwai5jW8sQE2cZCKY6R\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-15 11:56:25', '2020-07-15 11:56:25');
INSERT INTO `admin_operation_log` VALUES ('1827', '1', 'admin/cate', 'GET', '116.23.16.199', '[]', '2020-07-15 11:56:25', '2020-07-15 11:56:25');
INSERT INTO `admin_operation_log` VALUES ('1828', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_token\":\"i8zdOhSkGYGmlZH5G54JvNzfdFNfm7uMIFGPG5j8\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-15 11:56:27', '2020-07-15 11:56:27');
INSERT INTO `admin_operation_log` VALUES ('1829', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_parent_id_\":\"29\",\"_tier_\":\"2\",\"_token\":\"i8zdOhSkGYGmlZH5G54JvNzfdFNfm7uMIFGPG5j8\",\"_children_page_29\":\"1\"}', '2020-07-15 11:57:53', '2020-07-15 11:57:53');
INSERT INTO `admin_operation_log` VALUES ('1830', '1', 'admin/order', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 11:58:53', '2020-07-15 11:58:53');
INSERT INTO `admin_operation_log` VALUES ('1831', '1', 'admin/product', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 11:58:53', '2020-07-15 11:58:53');
INSERT INTO `admin_operation_log` VALUES ('1832', '1', 'admin/product/1/edit', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 11:59:01', '2020-07-15 11:59:01');
INSERT INTO `admin_operation_log` VALUES ('1833', '1', 'admin/product', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 11:59:04', '2020-07-15 11:59:04');
INSERT INTO `admin_operation_log` VALUES ('1834', '1', 'admin/product/create', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 11:59:05', '2020-07-15 11:59:05');
INSERT INTO `admin_operation_log` VALUES ('1835', '1', 'admin/product', 'POST', '116.23.16.199', '{\"cid\":\"48\",\"title\":\"\\u4e49\\u8584\\u4e91\\u5929\",\"smalldescription\":\"test\",\"description\":\"<p>test11<\\/p>\",\"smallimage\":null,\"file-smallimage\":null,\"_file_\":null,\"image\":null,\"file-image\":null,\"file\":null,\"price\":\"198\",\"recommended\":\"2\",\"status\":\"1\",\"_token\":\"i8zdOhSkGYGmlZH5G54JvNzfdFNfm7uMIFGPG5j8\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-15 11:59:51', '2020-07-15 11:59:51');
INSERT INTO `admin_operation_log` VALUES ('1836', '1', 'admin/product', 'POST', '116.23.16.199', '{\"cid\":\"48\",\"title\":\"\\u6d4b\\u8bd5\\u4e8c\\u7ea7\\u5546\\u54c1\",\"smalldescription\":\"test\",\"description\":\"<p>test11<\\/p>\",\"smallimage\":null,\"file-smallimage\":null,\"_file_\":null,\"image\":null,\"file-image\":null,\"file\":null,\"price\":\"198\",\"recommended\":\"2\",\"status\":\"1\",\"_token\":\"i8zdOhSkGYGmlZH5G54JvNzfdFNfm7uMIFGPG5j8\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-15 12:00:12', '2020-07-15 12:00:12');
INSERT INTO `admin_operation_log` VALUES ('1837', '1', 'admin/product', 'POST', '116.23.16.199', '{\"_id\":\"G87NIcQVPJhcZaGE\",\"_token\":\"i8zdOhSkGYGmlZH5G54JvNzfdFNfm7uMIFGPG5j8\",\"upload_column\":\"smallimage\",\"id\":\"WU_FILE_0\",\"name\":\"32\\u9f99\\u51e4\\u5448\\u7965.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Thu Jan 04 2018 15:58:47 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"110029\"}', '2020-07-15 12:00:15', '2020-07-15 12:00:15');
INSERT INTO `admin_operation_log` VALUES ('1838', '1', 'admin/product', 'POST', '116.23.16.199', '{\"_id\":\"iipiZVSnOTtljg6i\",\"_token\":\"i8zdOhSkGYGmlZH5G54JvNzfdFNfm7uMIFGPG5j8\",\"upload_column\":\"image\",\"id\":\"WU_FILE_1\",\"name\":\"34\\u5f97\\u5929\\u72ec\\u79c0.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 02:42:12 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"69237\"}', '2020-07-15 12:00:16', '2020-07-15 12:00:16');
INSERT INTO `admin_operation_log` VALUES ('1839', '1', 'admin/product', 'POST', '116.23.16.199', '{\"_id\":\"iipiZVSnOTtljg6i\",\"_token\":\"i8zdOhSkGYGmlZH5G54JvNzfdFNfm7uMIFGPG5j8\",\"upload_column\":\"image\",\"id\":\"WU_FILE_2\",\"name\":\"35\\u592a\\u5e08\\u4e0e\\u5c11\\u5e08.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 12:41:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"118246\"}', '2020-07-15 12:00:16', '2020-07-15 12:00:16');
INSERT INTO `admin_operation_log` VALUES ('1840', '1', 'admin/product', 'POST', '116.23.16.199', '{\"cid\":\"48\",\"title\":\"\\u6d4b\\u8bd5\\u4e8c\\u7ea7\\u5546\\u54c1\",\"smalldescription\":\"test\",\"description\":\"<p>test11<\\/p>\",\"smallimage\":\"images\\/db7f78a3a7bf42b488a85f05cb44cf67.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/787deea6fee04530a167053aac880428.jpg,images\\/538bba15cde03299a89688bbb11ebba2.jpg\",\"file-image\":null,\"file\":null,\"price\":\"198\",\"recommended\":\"2\",\"status\":\"1\",\"_token\":\"i8zdOhSkGYGmlZH5G54JvNzfdFNfm7uMIFGPG5j8\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-15 12:00:18', '2020-07-15 12:00:18');
INSERT INTO `admin_operation_log` VALUES ('1841', '1', 'admin/product', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 12:00:18', '2020-07-15 12:00:18');
INSERT INTO `admin_operation_log` VALUES ('1842', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 12:00:25', '2020-07-15 12:00:25');
INSERT INTO `admin_operation_log` VALUES ('1843', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\",\"_token\":\"i8zdOhSkGYGmlZH5G54JvNzfdFNfm7uMIFGPG5j8\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-15 12:00:27', '2020-07-15 12:00:27');
INSERT INTO `admin_operation_log` VALUES ('1844', '1', 'admin/cate', 'GET', '116.23.16.199', '{\"_parent_id_\":\"48\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"i8zdOhSkGYGmlZH5G54JvNzfdFNfm7uMIFGPG5j8\",\"_children_page_48\":\"1\"}', '2020-07-15 12:00:29', '2020-07-15 12:00:29');
INSERT INTO `admin_operation_log` VALUES ('1845', '1', 'admin/product', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 12:32:09', '2020-07-15 12:32:09');
INSERT INTO `admin_operation_log` VALUES ('1846', '1', 'admin/product/create', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 12:32:13', '2020-07-15 12:32:13');
INSERT INTO `admin_operation_log` VALUES ('1847', '1', 'admin/product', 'POST', '116.23.16.199', '{\"_id\":\"olxw33lsItQgQgd4\",\"_token\":\"i8zdOhSkGYGmlZH5G54JvNzfdFNfm7uMIFGPG5j8\",\"upload_column\":\"smallimage\",\"id\":\"WU_FILE_3\",\"name\":\"24.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Tue May 27 2014 16:57:48 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"129528\"}', '2020-07-15 12:32:38', '2020-07-15 12:32:38');
INSERT INTO `admin_operation_log` VALUES ('1848', '1', 'admin/product', 'POST', '116.23.16.199', '{\"_id\":\"9jhhNjgcHKp6D4kQ\",\"_token\":\"i8zdOhSkGYGmlZH5G54JvNzfdFNfm7uMIFGPG5j8\",\"upload_column\":\"image\",\"id\":\"WU_FILE_4\",\"name\":\"172.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Mon Jun 15 2020 13:37:53 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"89473\"}', '2020-07-15 12:32:42', '2020-07-15 12:32:42');
INSERT INTO `admin_operation_log` VALUES ('1849', '1', 'admin/product', 'POST', '116.23.16.199', '{\"cid\":\"48\",\"title\":\"\\u4e49\\u8584\\u4e91\\u592988\",\"smalldescription\":\"\\u6d4b\\u8bd5\\u5546\\u54c1\\u6d4b\\u8bd5\\u5546\\u54c1\",\"description\":\"<p>\\u6d4b\\u8bd5\\u5546\\u54c1\\u6d4b\\u8bd5\\u5546\\u54c1\\u6d4b\\u8bd5\\u5546\\u54c1\\u6d4b\\u8bd5\\u5546\\u54c1<br data-mce-bogus=\\\"1\\\"><\\/p>\",\"smallimage\":\"images\\/07a3d81cf1d24723b139278db56b2143.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/e659443fb7e8d16de7ad3b692cca81fc.jpg\",\"file-image\":null,\"file\":null,\"price\":\"111\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"i8zdOhSkGYGmlZH5G54JvNzfdFNfm7uMIFGPG5j8\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-15 12:32:47', '2020-07-15 12:32:47');
INSERT INTO `admin_operation_log` VALUES ('1850', '1', 'admin/product', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 12:32:47', '2020-07-15 12:32:47');
INSERT INTO `admin_operation_log` VALUES ('1851', '1', 'admin/video', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 12:37:18', '2020-07-15 12:37:18');
INSERT INTO `admin_operation_log` VALUES ('1852', '1', 'admin/video', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 12:37:21', '2020-07-15 12:37:21');
INSERT INTO `admin_operation_log` VALUES ('1853', '1', 'admin/video/1/edit', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 12:37:26', '2020-07-15 12:37:26');
INSERT INTO `admin_operation_log` VALUES ('1854', '1', 'admin/video', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 12:37:29', '2020-07-15 12:37:29');
INSERT INTO `admin_operation_log` VALUES ('1855', '1', 'admin/video/2/edit', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 12:37:32', '2020-07-15 12:37:32');
INSERT INTO `admin_operation_log` VALUES ('1856', '1', 'admin/video', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 12:37:35', '2020-07-15 12:37:35');
INSERT INTO `admin_operation_log` VALUES ('1857', '1', 'admin/video/3/edit', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 12:37:38', '2020-07-15 12:37:38');
INSERT INTO `admin_operation_log` VALUES ('1858', '1', 'admin/video', 'GET', '116.23.16.199', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 12:37:40', '2020-07-15 12:37:40');
INSERT INTO `admin_operation_log` VALUES ('1859', '0', 'admin/auth/login', 'GET', '183.192.15.98', '[]', '2020-07-15 21:03:37', '2020-07-15 21:03:37');
INSERT INTO `admin_operation_log` VALUES ('1860', '0', 'admin/auth/login', 'POST', '183.192.15.98', '{\"_token\":\"S25peH1woHKgunhprREIBNNeZpQKVKlB0fADXmxs\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-15 21:03:42', '2020-07-15 21:03:42');
INSERT INTO `admin_operation_log` VALUES ('1861', '1', 'admin/swipe', 'GET', '183.192.15.98', '[]', '2020-07-15 21:03:42', '2020-07-15 21:03:42');
INSERT INTO `admin_operation_log` VALUES ('1862', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:05:27', '2020-07-15 21:05:27');
INSERT INTO `admin_operation_log` VALUES ('1863', '1', 'admin/swipe/1/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:05:36', '2020-07-15 21:05:36');
INSERT INTO `admin_operation_log` VALUES ('1864', '1', 'admin/swipe/1', 'PUT', '183.192.15.98', '{\"img\":\"images\\/607df6b6c385c05eed2daa5fca8261fd.png\",\"file-img\":null,\"_file_\":null,\"file\":null,\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/swipe\"}', '2020-07-15 21:11:11', '2020-07-15 21:11:11');
INSERT INTO `admin_operation_log` VALUES ('1865', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:11:12', '2020-07-15 21:11:12');
INSERT INTO `admin_operation_log` VALUES ('1866', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:11:16', '2020-07-15 21:11:16');
INSERT INTO `admin_operation_log` VALUES ('1867', '1', 'admin/swipe/1/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:11:19', '2020-07-15 21:11:19');
INSERT INTO `admin_operation_log` VALUES ('1868', '1', 'admin/swipe/1', 'PUT', '183.192.15.98', '{\"_id\":\"DfYsyz35FmVYE8dT\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"upload_column\":\"img\",\"_method\":\"PUT\",\"id\":\"WU_FILE_1\",\"name\":\"lunbo1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Wed Jul 15 2020 21:10:56 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"141060\"}', '2020-07-15 21:11:27', '2020-07-15 21:11:27');
INSERT INTO `admin_operation_log` VALUES ('1869', '1', 'admin/swipe/1', 'PUT', '183.192.15.98', '{\"_id\":\"DfYsyz35FmVYE8dT\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_method\":\"PUT\",\"img\":\"images\\/607df6b6c385c05eed2daa5fca8261fd.png,images\\/4abf547252bd3b8fee0e8d8904476fad.jpg\"}', '2020-07-15 21:11:28', '2020-07-15 21:11:28');
INSERT INTO `admin_operation_log` VALUES ('1870', '1', 'admin/swipe/1', 'PUT', '183.192.15.98', '{\"img\":\"images\\/607df6b6c385c05eed2daa5fca8261fd.png,images\\/4abf547252bd3b8fee0e8d8904476fad.jpg\",\"file-img\":null,\"_file_\":null,\"file\":null,\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/swipe\"}', '2020-07-15 21:11:29', '2020-07-15 21:11:29');
INSERT INTO `admin_operation_log` VALUES ('1871', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:11:29', '2020-07-15 21:11:29');
INSERT INTO `admin_operation_log` VALUES ('1872', '1', 'admin/swipe/1/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:13:41', '2020-07-15 21:13:41');
INSERT INTO `admin_operation_log` VALUES ('1873', '1', 'admin/swipe/1', 'PUT', '183.192.15.98', '{\"_file_del_\":null,\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_method\":\"PUT\",\"key\":\"images\\/607df6b6c385c05eed2daa5fca8261fd.png\",\"_column\":\"img\"}', '2020-07-15 21:13:44', '2020-07-15 21:13:44');
INSERT INTO `admin_operation_log` VALUES ('1874', '1', 'admin/swipe/1', 'PUT', '183.192.15.98', '{\"_id\":\"w57vKqcwtgIyaALo\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"upload_column\":\"img\",\"_method\":\"PUT\",\"id\":\"WU_FILE_2\",\"name\":\"lunbo2.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Jun 12 2020 16:25:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"108883\"}', '2020-07-15 21:13:52', '2020-07-15 21:13:52');
INSERT INTO `admin_operation_log` VALUES ('1875', '1', 'admin/swipe/1', 'PUT', '183.192.15.98', '{\"_id\":\"w57vKqcwtgIyaALo\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_method\":\"PUT\",\"img\":\"images\\/4abf547252bd3b8fee0e8d8904476fad.jpg,images\\/ddb12255862fff1cc3f0bcdae1858322.jpg\"}', '2020-07-15 21:13:52', '2020-07-15 21:13:52');
INSERT INTO `admin_operation_log` VALUES ('1876', '1', 'admin/swipe/1', 'PUT', '183.192.15.98', '{\"img\":\"images\\/4abf547252bd3b8fee0e8d8904476fad.jpg,images\\/ddb12255862fff1cc3f0bcdae1858322.jpg\",\"file-img\":null,\"_file_\":null,\"file\":null,\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/swipe\"}', '2020-07-15 21:13:53', '2020-07-15 21:13:53');
INSERT INTO `admin_operation_log` VALUES ('1877', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:13:53', '2020-07-15 21:13:53');
INSERT INTO `admin_operation_log` VALUES ('1878', '1', 'admin/swipe/1/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:17:41', '2020-07-15 21:17:41');
INSERT INTO `admin_operation_log` VALUES ('1879', '1', 'admin/swipe/1', 'PUT', '183.192.15.98', '{\"_id\":\"28fT6x7KyVB2Mqxo\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"upload_column\":\"img\",\"_method\":\"PUT\",\"id\":\"WU_FILE_3\",\"name\":\"lunbo3.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Mon Jun 15 2020 00:14:43 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"376715\"}', '2020-07-15 21:17:49', '2020-07-15 21:17:49');
INSERT INTO `admin_operation_log` VALUES ('1880', '1', 'admin/swipe/1', 'PUT', '183.192.15.98', '{\"_id\":\"28fT6x7KyVB2Mqxo\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_method\":\"PUT\",\"img\":\"images\\/4abf547252bd3b8fee0e8d8904476fad.jpg,images\\/ddb12255862fff1cc3f0bcdae1858322.jpg,images\\/b1ab49a1e2346cbc9e1490bcccb8043a.jpg\"}', '2020-07-15 21:17:49', '2020-07-15 21:17:49');
INSERT INTO `admin_operation_log` VALUES ('1881', '1', 'admin/swipe/1', 'PUT', '183.192.15.98', '{\"img\":\"images\\/4abf547252bd3b8fee0e8d8904476fad.jpg,images\\/ddb12255862fff1cc3f0bcdae1858322.jpg,images\\/b1ab49a1e2346cbc9e1490bcccb8043a.jpg\",\"file-img\":null,\"_file_\":null,\"file\":null,\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/swipe\"}', '2020-07-15 21:17:50', '2020-07-15 21:17:50');
INSERT INTO `admin_operation_log` VALUES ('1882', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:17:50', '2020-07-15 21:17:50');
INSERT INTO `admin_operation_log` VALUES ('1883', '1', 'admin/video', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:19:33', '2020-07-15 21:19:33');
INSERT INTO `admin_operation_log` VALUES ('1884', '1', 'admin/video/1/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:19:43', '2020-07-15 21:19:43');
INSERT INTO `admin_operation_log` VALUES ('1885', '1', 'admin/video/1', 'PUT', '183.192.15.98', '{\"title\":\"\\u6d4b\\u8bd5\\u89c6\\u9891\",\"description\":\"<p>\\u516c\\u53f8\\u4ecb\\u7ecd<\\/p>\",\"video\":\"files\\/70c4662e8faeacb3df2ef4c3517f49c0.mp4\",\"file-video\":null,\"_file_\":null,\"status\":\"1\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/video\"}', '2020-07-15 21:19:56', '2020-07-15 21:19:56');
INSERT INTO `admin_operation_log` VALUES ('1886', '1', 'admin/video', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:19:56', '2020-07-15 21:19:56');
INSERT INTO `admin_operation_log` VALUES ('1887', '1', 'admin/video/1/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:20:02', '2020-07-15 21:20:02');
INSERT INTO `admin_operation_log` VALUES ('1888', '1', 'admin/video/1', 'PUT', '183.192.15.98', '{\"title\":\"\\u516c\\u53f8\\u4ecb\\u7ecd\",\"description\":\"<p>\\u516c\\u53f8\\u4ecb\\u7ecd<\\/p>\",\"video\":\"files\\/70c4662e8faeacb3df2ef4c3517f49c0.mp4\",\"file-video\":null,\"_file_\":null,\"status\":\"1\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/video\"}', '2020-07-15 21:20:13', '2020-07-15 21:20:13');
INSERT INTO `admin_operation_log` VALUES ('1889', '1', 'admin/video', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:20:14', '2020-07-15 21:20:14');
INSERT INTO `admin_operation_log` VALUES ('1890', '1', 'admin/video/2/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:20:17', '2020-07-15 21:20:17');
INSERT INTO `admin_operation_log` VALUES ('1891', '1', 'admin/video/2', 'PUT', '183.192.15.98', '{\"title\":\"\\u7cbe\\u54c1\\u63a8\\u8350\",\"description\":\"<p>\\u7cbe\\u54c1\\u63a8\\u8350<\\/p>\",\"video\":\"files\\/d74e248f5dd09532107c16ad6b227bbb.mp4\",\"file-video\":null,\"_file_\":null,\"status\":\"1\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/video\"}', '2020-07-15 21:21:30', '2020-07-15 21:21:30');
INSERT INTO `admin_operation_log` VALUES ('1892', '1', 'admin/video', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:21:30', '2020-07-15 21:21:30');
INSERT INTO `admin_operation_log` VALUES ('1893', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:22:45', '2020-07-15 21:22:45');
INSERT INTO `admin_operation_log` VALUES ('1894', '1', 'admin/cate/create', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:22:50', '2020-07-15 21:22:50');
INSERT INTO `admin_operation_log` VALUES ('1895', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:23:02', '2020-07-15 21:23:02');
INSERT INTO `admin_operation_log` VALUES ('1896', '1', 'admin/push', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:26:36', '2020-07-15 21:26:36');
INSERT INTO `admin_operation_log` VALUES ('1897', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:26:36', '2020-07-15 21:26:36');
INSERT INTO `admin_operation_log` VALUES ('1898', '1', 'admin/product/1/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:26:44', '2020-07-15 21:26:44');
INSERT INTO `admin_operation_log` VALUES ('1899', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:26:49', '2020-07-15 21:26:49');
INSERT INTO `admin_operation_log` VALUES ('1900', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-15 21:26:51', '2020-07-15 21:26:51');
INSERT INTO `admin_operation_log` VALUES ('1901', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_parent_id_\":\"30\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_children_page_30\":\"1\"}', '2020-07-15 21:26:55', '2020-07-15 21:26:55');
INSERT INTO `admin_operation_log` VALUES ('1902', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_parent_id_\":\"33\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_children_page_33\":\"1\"}', '2020-07-15 21:26:56', '2020-07-15 21:26:56');
INSERT INTO `admin_operation_log` VALUES ('1903', '1', 'admin/cate/48', 'DELETE', '183.192.15.98', '{\"_method\":\"delete\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\"}', '2020-07-15 21:27:17', '2020-07-15 21:27:17');
INSERT INTO `admin_operation_log` VALUES ('1904', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:27:17', '2020-07-15 21:27:17');
INSERT INTO `admin_operation_log` VALUES ('1905', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-15 21:27:19', '2020-07-15 21:27:19');
INSERT INTO `admin_operation_log` VALUES ('1906', '1', 'admin/cate/54', 'DELETE', '183.192.15.98', '{\"_method\":\"delete\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\"}', '2020-07-15 21:27:23', '2020-07-15 21:27:23');
INSERT INTO `admin_operation_log` VALUES ('1907', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:27:23', '2020-07-15 21:27:23');
INSERT INTO `admin_operation_log` VALUES ('1908', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-15 21:27:26', '2020-07-15 21:27:26');
INSERT INTO `admin_operation_log` VALUES ('1909', '1', 'admin/cate/create', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:35:21', '2020-07-15 21:35:21');
INSERT INTO `admin_operation_log` VALUES ('1910', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:35:34', '2020-07-15 21:35:34');
INSERT INTO `admin_operation_log` VALUES ('1911', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-15 21:35:36', '2020-07-15 21:35:36');
INSERT INTO `admin_operation_log` VALUES ('1912', '1', 'admin/cate/45/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:35:42', '2020-07-15 21:35:42');
INSERT INTO `admin_operation_log` VALUES ('1913', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:35:57', '2020-07-15 21:35:57');
INSERT INTO `admin_operation_log` VALUES ('1914', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-15 21:35:58', '2020-07-15 21:35:58');
INSERT INTO `admin_operation_log` VALUES ('1915', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:35:59', '2020-07-15 21:35:59');
INSERT INTO `admin_operation_log` VALUES ('1916', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:36:00', '2020-07-15 21:36:00');
INSERT INTO `admin_operation_log` VALUES ('1917', '1', 'admin/cate/28/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:36:04', '2020-07-15 21:36:04');
INSERT INTO `admin_operation_log` VALUES ('1918', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:36:58', '2020-07-15 21:36:58');
INSERT INTO `admin_operation_log` VALUES ('1919', '1', 'admin/cate/create', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:37:03', '2020-07-15 21:37:03');
INSERT INTO `admin_operation_log` VALUES ('1920', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:37:07', '2020-07-15 21:37:07');
INSERT INTO `admin_operation_log` VALUES ('1921', '1', 'admin/push', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:37:21', '2020-07-15 21:37:21');
INSERT INTO `admin_operation_log` VALUES ('1922', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:37:25', '2020-07-15 21:37:25');
INSERT INTO `admin_operation_log` VALUES ('1923', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:37:30', '2020-07-15 21:37:30');
INSERT INTO `admin_operation_log` VALUES ('1924', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-15 21:37:31', '2020-07-15 21:37:31');
INSERT INTO `admin_operation_log` VALUES ('1925', '1', 'admin/cate/47/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:37:51', '2020-07-15 21:37:51');
INSERT INTO `admin_operation_log` VALUES ('1926', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:38:00', '2020-07-15 21:38:00');
INSERT INTO `admin_operation_log` VALUES ('1927', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:38:03', '2020-07-15 21:38:03');
INSERT INTO `admin_operation_log` VALUES ('1928', '1', 'admin/product/1,2,3,4,5', 'DELETE', '183.192.15.98', '{\"_method\":\"delete\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\"}', '2020-07-15 21:38:13', '2020-07-15 21:38:13');
INSERT INTO `admin_operation_log` VALUES ('1929', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:38:13', '2020-07-15 21:38:13');
INSERT INTO `admin_operation_log` VALUES ('1930', '1', 'admin/product/create', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:38:16', '2020-07-15 21:38:16');
INSERT INTO `admin_operation_log` VALUES ('1931', '1', 'admin/product', 'POST', '183.192.15.98', '{\"cid\":\"29\",\"title\":\"\\u8377\\u5858\\u79cb\\u8da3\",\"smalldescription\":\"\\u8377\\u5858\\u79cb\\u8da3\",\"description\":\"<p>\\u8377\\u5858\\u79cb\\u8da3<br data-mce-bogus=\\\"1\\\"><\\/p>\",\"smallimage\":null,\"file-smallimage\":null,\"_file_\":null,\"image\":null,\"file-image\":null,\"file\":null,\"price\":\"1000\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-15 21:40:51', '2020-07-15 21:40:51');
INSERT INTO `admin_operation_log` VALUES ('1932', '1', 'admin/product', 'POST', '183.192.15.98', '{\"_id\":\"ydfBhEAcNZz5gNXf\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"upload_column\":\"smallimage\",\"id\":\"WU_FILE_4\",\"name\":\"1\\u8377\\u5858\\u79cb\\u8da3.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Tue Apr 23 2013 13:06:57 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"94377\"}', '2020-07-15 21:40:59', '2020-07-15 21:40:59');
INSERT INTO `admin_operation_log` VALUES ('1933', '1', 'admin/product', 'POST', '183.192.15.98', '{\"_id\":\"Pj4KInHXCXMK1v9c\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"upload_column\":\"image\",\"id\":\"WU_FILE_5\",\"name\":\"2\\u539a\\u5fb7\\u8f7d\\u7269.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 21:33:32 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"94267\"}', '2020-07-15 21:41:01', '2020-07-15 21:41:01');
INSERT INTO `admin_operation_log` VALUES ('1934', '1', 'admin/product', 'POST', '183.192.15.98', '{\"_id\":\"Pj4KInHXCXMK1v9c\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"upload_column\":\"image\",\"id\":\"WU_FILE_6\",\"name\":\"3\\u65e0\\u6781\\u5373\\u9053.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 21:35:01 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"110842\"}', '2020-07-15 21:41:02', '2020-07-15 21:41:02');
INSERT INTO `admin_operation_log` VALUES ('1935', '1', 'admin/product', 'POST', '183.192.15.98', '{\"_id\":\"Pj4KInHXCXMK1v9c\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"upload_column\":\"image\",\"id\":\"WU_FILE_7\",\"name\":\"4\\u795e\\u6c60\\u8f7d\\u5730\\u7075.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 23:32:39 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"335855\"}', '2020-07-15 21:41:02', '2020-07-15 21:41:02');
INSERT INTO `admin_operation_log` VALUES ('1936', '1', 'admin/product', 'POST', '183.192.15.98', '{\"cid\":\"29\",\"title\":\"\\u8377\\u5858\\u79cb\\u8da3\",\"smalldescription\":\"\\u8377\\u5858\\u79cb\\u8da3\",\"description\":\"<p>\\u8377\\u5858\\u79cb\\u8da3<br data-mce-bogus=\\\"1\\\"><\\/p>\",\"smallimage\":\"images\\/ebda0c7f0554566eba1b62bed8c5071a.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/ec61eed55f2e1e93c76f727f9caac393.jpg,images\\/a577cb30a4f05ac7e24923d6ed0a55af.jpg,images\\/62f24b116a559b110af537d2c28fe58e.jpg\",\"file-image\":null,\"file\":null,\"price\":\"1000\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-15 21:41:04', '2020-07-15 21:41:04');
INSERT INTO `admin_operation_log` VALUES ('1937', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:41:04', '2020-07-15 21:41:04');
INSERT INTO `admin_operation_log` VALUES ('1938', '1', 'admin/product/create', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:49:11', '2020-07-15 21:49:11');
INSERT INTO `admin_operation_log` VALUES ('1939', '1', 'admin/product', 'POST', '183.192.15.98', '{\"_id\":\"dgXWaDIW1i9JJo8G\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"upload_column\":\"image\",\"id\":\"WU_FILE_9\",\"name\":\"2\\u539a\\u5fb7\\u8f7d\\u7269.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 21:33:32 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"94267\"}', '2020-07-15 21:49:57', '2020-07-15 21:49:57');
INSERT INTO `admin_operation_log` VALUES ('1940', '1', 'admin/product', 'POST', '183.192.15.98', '{\"_id\":\"dgXWaDIW1i9JJo8G\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"upload_column\":\"image\",\"id\":\"WU_FILE_10\",\"name\":\"21\\u5723\\u706b.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 12:44:08 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"107124\"}', '2020-07-15 21:49:57', '2020-07-15 21:49:57');
INSERT INTO `admin_operation_log` VALUES ('1941', '1', 'admin/product', 'POST', '183.192.15.98', '{\"_id\":\"1ByYBi3ZgyMa7Qt4\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"upload_column\":\"smallimage\",\"id\":\"WU_FILE_8\",\"name\":\"12\\u5927\\u9053\\u65e0\\u5f62.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 12:50:16 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"63705\"}', '2020-07-15 21:49:58', '2020-07-15 21:49:58');
INSERT INTO `admin_operation_log` VALUES ('1942', '1', 'admin/product', 'POST', '183.192.15.98', '{\"cid\":\"45\",\"title\":\"\\u5927\\u9053\\u65e0\\u5f62\",\"smalldescription\":\"\\u5927\\u9053\\u65e0\\u5f62\",\"description\":\"<p>\\u5927\\u9053\\u65e0\\u5f62<br data-mce-bogus=\\\"1\\\"><\\/p>\",\"smallimage\":\"images\\/c7cad6fa93085a9fc5c551bb8067818a.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/9758e36d3b44b075b0fd2f833b87a4a2.jpg,images\\/c9f5a87dd87145f4dcc294dd59941490.jpg\",\"file-image\":null,\"file\":null,\"price\":\"100\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-15 21:50:07', '2020-07-15 21:50:07');
INSERT INTO `admin_operation_log` VALUES ('1943', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:50:07', '2020-07-15 21:50:07');
INSERT INTO `admin_operation_log` VALUES ('1944', '1', 'admin/product/create', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:50:10', '2020-07-15 21:50:10');
INSERT INTO `admin_operation_log` VALUES ('1945', '1', 'admin/product', 'POST', '183.192.15.98', '{\"_id\":\"lsBJm4omrFJzxui4\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"upload_column\":\"smallimage\",\"id\":\"WU_FILE_11\",\"name\":\"22\\u53cc\\u5cf0\\u51dd\\u79c0.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 12:10:32 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"344035\"}', '2020-07-15 21:50:36', '2020-07-15 21:50:36');
INSERT INTO `admin_operation_log` VALUES ('1946', '1', 'admin/product', 'POST', '183.192.15.98', '{\"cid\":\"46\",\"title\":\"\\u53cc\\u5cf0\\u51dd\\u79c0\",\"smalldescription\":\"\\u53cc\\u5cf0\\u51dd\\u79c0\",\"description\":\"<p>\\u53cc\\u5cf0\\u51dd\\u79c0<br data-mce-bogus=\\\"1\\\"><\\/p>\",\"smallimage\":\"images\\/715b9296bdeeba2a7905a02a0acf39f1.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":null,\"file-image\":null,\"file\":null,\"price\":\"2000\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-15 21:50:53', '2020-07-15 21:50:53');
INSERT INTO `admin_operation_log` VALUES ('1947', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:50:53', '2020-07-15 21:50:53');
INSERT INTO `admin_operation_log` VALUES ('1948', '1', 'admin/product/8/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:51:44', '2020-07-15 21:51:44');
INSERT INTO `admin_operation_log` VALUES ('1949', '1', 'admin/order', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:51:55', '2020-07-15 21:51:55');
INSERT INTO `admin_operation_log` VALUES ('1950', '1', 'admin/order/38', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:51:57', '2020-07-15 21:51:57');
INSERT INTO `admin_operation_log` VALUES ('1951', '1', 'admin/order/38', 'GET', '183.192.15.98', '[]', '2020-07-15 21:51:57', '2020-07-15 21:51:57');
INSERT INTO `admin_operation_log` VALUES ('1952', '1', 'admin/order', 'GET', '183.192.15.98', '[]', '2020-07-15 21:52:07', '2020-07-15 21:52:07');
INSERT INTO `admin_operation_log` VALUES ('1953', '1', 'admin/order/38', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:52:10', '2020-07-15 21:52:10');
INSERT INTO `admin_operation_log` VALUES ('1954', '1', 'admin/order/38', 'GET', '183.192.15.98', '[]', '2020-07-15 21:52:10', '2020-07-15 21:52:10');
INSERT INTO `admin_operation_log` VALUES ('1955', '1', 'admin/help', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:52:21', '2020-07-15 21:52:21');
INSERT INTO `admin_operation_log` VALUES ('1956', '1', 'admin/about', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:52:22', '2020-07-15 21:52:22');
INSERT INTO `admin_operation_log` VALUES ('1957', '1', 'admin/tixian', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:52:23', '2020-07-15 21:52:23');
INSERT INTO `admin_operation_log` VALUES ('1958', '1', 'admin/about', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:52:24', '2020-07-15 21:52:24');
INSERT INTO `admin_operation_log` VALUES ('1959', '1', 'admin/help', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:52:24', '2020-07-15 21:52:24');
INSERT INTO `admin_operation_log` VALUES ('1960', '1', 'admin/order', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:52:25', '2020-07-15 21:52:25');
INSERT INTO `admin_operation_log` VALUES ('1961', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:52:25', '2020-07-15 21:52:25');
INSERT INTO `admin_operation_log` VALUES ('1962', '1', 'admin/order', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:53:28', '2020-07-15 21:53:28');
INSERT INTO `admin_operation_log` VALUES ('1963', '1', 'admin/tixian', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:53:47', '2020-07-15 21:53:47');
INSERT INTO `admin_operation_log` VALUES ('1964', '1', 'admin/help', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:53:47', '2020-07-15 21:53:47');
INSERT INTO `admin_operation_log` VALUES ('1965', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:53:49', '2020-07-15 21:53:49');
INSERT INTO `admin_operation_log` VALUES ('1966', '1', 'admin', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:53:50', '2020-07-15 21:53:50');
INSERT INTO `admin_operation_log` VALUES ('1967', '1', 'admin', 'GET', '183.192.15.98', '[]', '2020-07-15 21:54:01', '2020-07-15 21:54:01');
INSERT INTO `admin_operation_log` VALUES ('1968', '1', 'admin', 'GET', '183.192.15.98', '[]', '2020-07-15 21:54:01', '2020-07-15 21:54:01');
INSERT INTO `admin_operation_log` VALUES ('1969', '1', 'admin/auth/users', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:55:24', '2020-07-15 21:55:24');
INSERT INTO `admin_operation_log` VALUES ('1970', '1', 'admin/auth/roles', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:55:25', '2020-07-15 21:55:25');
INSERT INTO `admin_operation_log` VALUES ('1971', '1', 'admin/auth/permissions', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:55:26', '2020-07-15 21:55:26');
INSERT INTO `admin_operation_log` VALUES ('1972', '1', 'admin/auth/menu', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:55:27', '2020-07-15 21:55:27');
INSERT INTO `admin_operation_log` VALUES ('1973', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 21:55:29', '2020-07-15 21:55:29');
INSERT INTO `admin_operation_log` VALUES ('1974', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:29:29', '2020-07-15 22:29:29');
INSERT INTO `admin_operation_log` VALUES ('1975', '1', 'admin/swipe', 'GET', '183.192.15.98', '[]', '2020-07-15 22:29:30', '2020-07-15 22:29:30');
INSERT INTO `admin_operation_log` VALUES ('1976', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:36:22', '2020-07-15 22:36:22');
INSERT INTO `admin_operation_log` VALUES ('1977', '1', 'admin/product/6/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:36:24', '2020-07-15 22:36:24');
INSERT INTO `admin_operation_log` VALUES ('1978', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:37:07', '2020-07-15 22:37:07');
INSERT INTO `admin_operation_log` VALUES ('1979', '1', 'admin/product/7/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:37:11', '2020-07-15 22:37:11');
INSERT INTO `admin_operation_log` VALUES ('1980', '1', 'admin/push', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:37:17', '2020-07-15 22:37:17');
INSERT INTO `admin_operation_log` VALUES ('1981', '1', 'admin/push', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:37:19', '2020-07-15 22:37:19');
INSERT INTO `admin_operation_log` VALUES ('1982', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:37:19', '2020-07-15 22:37:19');
INSERT INTO `admin_operation_log` VALUES ('1983', '1', 'admin/product/7/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:37:31', '2020-07-15 22:37:31');
INSERT INTO `admin_operation_log` VALUES ('1984', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:37:42', '2020-07-15 22:37:42');
INSERT INTO `admin_operation_log` VALUES ('1985', '0', 'admin/auth/login', 'GET', '120.230.122.162', '[]', '2020-07-15 22:38:03', '2020-07-15 22:38:03');
INSERT INTO `admin_operation_log` VALUES ('1986', '1', 'admin/product/7/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:38:14', '2020-07-15 22:38:14');
INSERT INTO `admin_operation_log` VALUES ('1987', '0', 'admin/auth/login', 'POST', '120.230.122.162', '{\"_token\":\"CD9EtGICtzEpf8wrRHNWRalacgKSbxklT7UeIjqL\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-15 22:38:35', '2020-07-15 22:38:35');
INSERT INTO `admin_operation_log` VALUES ('1988', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:38:35', '2020-07-15 22:38:35');
INSERT INTO `admin_operation_log` VALUES ('1989', '1', 'admin/product', 'GET', '120.230.122.162', '[]', '2020-07-15 22:38:35', '2020-07-15 22:38:35');
INSERT INTO `admin_operation_log` VALUES ('1990', '1', 'admin/product/6/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:39:50', '2020-07-15 22:39:50');
INSERT INTO `admin_operation_log` VALUES ('1991', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:40:08', '2020-07-15 22:40:08');
INSERT INTO `admin_operation_log` VALUES ('1992', '1', 'admin/product/6/edit', 'GET', '120.230.122.162', '[]', '2020-07-15 22:40:08', '2020-07-15 22:40:08');
INSERT INTO `admin_operation_log` VALUES ('1993', '1', 'admin/cate/create', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:40:16', '2020-07-15 22:40:16');
INSERT INTO `admin_operation_log` VALUES ('1994', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:40:25', '2020-07-15 22:40:25');
INSERT INTO `admin_operation_log` VALUES ('1995', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:40:35', '2020-07-15 22:40:35');
INSERT INTO `admin_operation_log` VALUES ('1996', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:40:36', '2020-07-15 22:40:36');
INSERT INTO `admin_operation_log` VALUES ('1997', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-15 22:40:39', '2020-07-15 22:40:39');
INSERT INTO `admin_operation_log` VALUES ('1998', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_children_page_29\":\"1\"}', '2020-07-15 22:40:45', '2020-07-15 22:40:45');
INSERT INTO `admin_operation_log` VALUES ('1999', '1', 'admin/product/6/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:41:01', '2020-07-15 22:41:01');
INSERT INTO `admin_operation_log` VALUES ('2000', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:41:06', '2020-07-15 22:41:06');
INSERT INTO `admin_operation_log` VALUES ('2001', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-15 22:41:08', '2020-07-15 22:41:08');
INSERT INTO `admin_operation_log` VALUES ('2002', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:41:09', '2020-07-15 22:41:09');
INSERT INTO `admin_operation_log` VALUES ('2003', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-15 22:41:11', '2020-07-15 22:41:11');
INSERT INTO `admin_operation_log` VALUES ('2004', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_children_page_29\":\"1\"}', '2020-07-15 22:41:12', '2020-07-15 22:41:12');
INSERT INTO `admin_operation_log` VALUES ('2005', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:41:25', '2020-07-15 22:41:25');
INSERT INTO `admin_operation_log` VALUES ('2006', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:41:27', '2020-07-15 22:41:27');
INSERT INTO `admin_operation_log` VALUES ('2007', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-15 22:41:29', '2020-07-15 22:41:29');
INSERT INTO `admin_operation_log` VALUES ('2008', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\",\"_token\":\"FeIvQ4Xmdh4Mgshms6YBIVPVsBeh2wl9LXRf7KRA\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-15 22:41:32', '2020-07-15 22:41:32');
INSERT INTO `admin_operation_log` VALUES ('2009', '1', 'admin/cate/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:41:40', '2020-07-15 22:41:40');
INSERT INTO `admin_operation_log` VALUES ('2010', '1', 'admin/cate/28/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:41:43', '2020-07-15 22:41:43');
INSERT INTO `admin_operation_log` VALUES ('2011', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:41:48', '2020-07-15 22:41:48');
INSERT INTO `admin_operation_log` VALUES ('2012', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:41:49', '2020-07-15 22:41:49');
INSERT INTO `admin_operation_log` VALUES ('2013', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-15 22:41:51', '2020-07-15 22:41:51');
INSERT INTO `admin_operation_log` VALUES ('2014', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:41:53', '2020-07-15 22:41:53');
INSERT INTO `admin_operation_log` VALUES ('2015', '1', 'admin/cate/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:41:58', '2020-07-15 22:41:58');
INSERT INTO `admin_operation_log` VALUES ('2016', '1', 'admin/cate/create', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:42:07', '2020-07-15 22:42:07');
INSERT INTO `admin_operation_log` VALUES ('2017', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:42:10', '2020-07-15 22:42:10');
INSERT INTO `admin_operation_log` VALUES ('2018', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-15 22:42:12', '2020-07-15 22:42:12');
INSERT INTO `admin_operation_log` VALUES ('2019', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:42:26', '2020-07-15 22:42:26');
INSERT INTO `admin_operation_log` VALUES ('2020', '1', 'admin/product/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:42:28', '2020-07-15 22:42:28');
INSERT INTO `admin_operation_log` VALUES ('2021', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:42:37', '2020-07-15 22:42:37');
INSERT INTO `admin_operation_log` VALUES ('2022', '1', 'admin/product/6/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:42:41', '2020-07-15 22:42:41');
INSERT INTO `admin_operation_log` VALUES ('2023', '1', 'admin/push', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:42:58', '2020-07-15 22:42:58');
INSERT INTO `admin_operation_log` VALUES ('2024', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:43:00', '2020-07-15 22:43:00');
INSERT INTO `admin_operation_log` VALUES ('2025', '1', 'admin/push', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:43:05', '2020-07-15 22:43:05');
INSERT INTO `admin_operation_log` VALUES ('2026', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:43:06', '2020-07-15 22:43:06');
INSERT INTO `admin_operation_log` VALUES ('2027', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-15 22:43:07', '2020-07-15 22:43:07');
INSERT INTO `admin_operation_log` VALUES ('2028', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_parent_id_\":\"30\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"BQEB2fBeuQ9EsYZgEFAh2neguLlE66yBg4huKBv5\",\"_children_page_30\":\"1\"}', '2020-07-15 22:43:10', '2020-07-15 22:43:10');
INSERT INTO `admin_operation_log` VALUES ('2029', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:43:11', '2020-07-15 22:43:11');
INSERT INTO `admin_operation_log` VALUES ('2030', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:43:36', '2020-07-15 22:43:36');
INSERT INTO `admin_operation_log` VALUES ('2031', '1', 'admin/product', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:43:42', '2020-07-15 22:43:42');
INSERT INTO `admin_operation_log` VALUES ('2032', '1', 'admin/product/6/edit', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:43:46', '2020-07-15 22:43:46');
INSERT INTO `admin_operation_log` VALUES ('2033', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:54:12', '2020-07-15 22:54:12');
INSERT INTO `admin_operation_log` VALUES ('2034', '1', 'admin/product/6/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:54:14', '2020-07-15 22:54:14');
INSERT INTO `admin_operation_log` VALUES ('2035', '1', 'admin/cate', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:54:36', '2020-07-15 22:54:36');
INSERT INTO `admin_operation_log` VALUES ('2036', '1', 'admin/push', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:57:40', '2020-07-15 22:57:40');
INSERT INTO `admin_operation_log` VALUES ('2037', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:57:40', '2020-07-15 22:57:40');
INSERT INTO `admin_operation_log` VALUES ('2038', '1', 'admin/order', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:57:41', '2020-07-15 22:57:41');
INSERT INTO `admin_operation_log` VALUES ('2039', '1', 'admin/help', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:57:42', '2020-07-15 22:57:42');
INSERT INTO `admin_operation_log` VALUES ('2040', '1', 'admin/about', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:57:42', '2020-07-15 22:57:42');
INSERT INTO `admin_operation_log` VALUES ('2041', '1', 'admin/tixian', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:57:43', '2020-07-15 22:57:43');
INSERT INTO `admin_operation_log` VALUES ('2042', '1', 'admin/order', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:57:46', '2020-07-15 22:57:46');
INSERT INTO `admin_operation_log` VALUES ('2043', '1', 'admin/order/38', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:57:53', '2020-07-15 22:57:53');
INSERT INTO `admin_operation_log` VALUES ('2044', '1', 'admin/order/38', 'GET', '183.192.15.98', '[]', '2020-07-15 22:57:53', '2020-07-15 22:57:53');
INSERT INTO `admin_operation_log` VALUES ('2045', '1', 'admin/product', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:58:50', '2020-07-15 22:58:50');
INSERT INTO `admin_operation_log` VALUES ('2046', '1', 'admin/product/6/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 22:58:52', '2020-07-15 22:58:52');
INSERT INTO `admin_operation_log` VALUES ('2047', '1', 'admin', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:09:43', '2020-07-15 23:09:43');
INSERT INTO `admin_operation_log` VALUES ('2048', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:10:07', '2020-07-15 23:10:07');
INSERT INTO `admin_operation_log` VALUES ('2049', '1', 'admin/user', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:10:08', '2020-07-15 23:10:08');
INSERT INTO `admin_operation_log` VALUES ('2050', '1', 'admin/swipe', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:10:08', '2020-07-15 23:10:08');
INSERT INTO `admin_operation_log` VALUES ('2051', '1', 'admin/swipe/1/edit', 'GET', '183.192.15.98', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:10:11', '2020-07-15 23:10:11');
INSERT INTO `admin_operation_log` VALUES ('2052', '1', 'admin/product', 'GET', '120.230.122.162', '[]', '2020-07-15 23:23:27', '2020-07-15 23:23:27');
INSERT INTO `admin_operation_log` VALUES ('2053', '1', 'admin/cate', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:23:31', '2020-07-15 23:23:31');
INSERT INTO `admin_operation_log` VALUES ('2054', '1', 'admin/cate/create', 'GET', '120.230.122.162', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:23:37', '2020-07-15 23:23:37');
INSERT INTO `admin_operation_log` VALUES ('2055', '0', 'admin/auth/login', 'GET', '223.104.63.86', '[]', '2020-07-15 23:33:53', '2020-07-15 23:33:53');
INSERT INTO `admin_operation_log` VALUES ('2056', '0', 'admin/auth/login', 'POST', '223.104.63.86', '{\"_token\":\"Cac5z4BpdX1pdMzVR7GZLxz2duIDmN7xuNCBp6Aq\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-15 23:34:01', '2020-07-15 23:34:01');
INSERT INTO `admin_operation_log` VALUES ('2057', '1', 'admin', 'GET', '223.104.63.86', '[]', '2020-07-15 23:34:02', '2020-07-15 23:34:02');
INSERT INTO `admin_operation_log` VALUES ('2058', '1', 'admin/product', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:34:07', '2020-07-15 23:34:07');
INSERT INTO `admin_operation_log` VALUES ('2059', '1', 'admin/product/6/edit', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:34:11', '2020-07-15 23:34:11');
INSERT INTO `admin_operation_log` VALUES ('2060', '1', 'admin/cate', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:34:31', '2020-07-15 23:34:31');
INSERT INTO `admin_operation_log` VALUES ('2061', '1', 'admin/cate/create', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:34:33', '2020-07-15 23:34:33');
INSERT INTO `admin_operation_log` VALUES ('2062', '1', 'admin/cate/create', 'GET', '223.104.63.86', '[]', '2020-07-15 23:38:31', '2020-07-15 23:38:31');
INSERT INTO `admin_operation_log` VALUES ('2063', '1', 'admin/product', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:38:39', '2020-07-15 23:38:39');
INSERT INTO `admin_operation_log` VALUES ('2064', '1', 'admin/user', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:38:42', '2020-07-15 23:38:42');
INSERT INTO `admin_operation_log` VALUES ('2065', '1', 'admin/video', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:38:43', '2020-07-15 23:38:43');
INSERT INTO `admin_operation_log` VALUES ('2066', '1', 'admin/cate', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:38:44', '2020-07-15 23:38:44');
INSERT INTO `admin_operation_log` VALUES ('2067', '1', 'admin/video', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:38:47', '2020-07-15 23:38:47');
INSERT INTO `admin_operation_log` VALUES ('2068', '1', 'admin/user', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:38:47', '2020-07-15 23:38:47');
INSERT INTO `admin_operation_log` VALUES ('2069', '1', 'admin/user', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:38:48', '2020-07-15 23:38:48');
INSERT INTO `admin_operation_log` VALUES ('2070', '1', 'admin/cate', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:38:49', '2020-07-15 23:38:49');
INSERT INTO `admin_operation_log` VALUES ('2071', '1', 'admin/video', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:38:50', '2020-07-15 23:38:50');
INSERT INTO `admin_operation_log` VALUES ('2072', '1', 'admin/cate', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:38:52', '2020-07-15 23:38:52');
INSERT INTO `admin_operation_log` VALUES ('2073', '1', 'admin/cate', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\",\"_token\":\"coZepV0IKieVZtkCCJjJ2daprVMrMFCYxb6Gmq5W\",\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_children_page_30\":\"1\"}', '2020-07-15 23:38:54', '2020-07-15 23:38:54');
INSERT INTO `admin_operation_log` VALUES ('2074', '1', 'admin/cate/create', 'GET', '223.104.63.86', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 23:38:55', '2020-07-15 23:38:55');
INSERT INTO `admin_operation_log` VALUES ('2075', '0', 'admin/auth/login', 'GET', '14.28.184.53', '[]', '2020-07-16 10:47:58', '2020-07-16 10:47:58');
INSERT INTO `admin_operation_log` VALUES ('2076', '0', 'admin/auth/login', 'GET', '14.28.184.53', '[]', '2020-07-16 10:56:24', '2020-07-16 10:56:24');
INSERT INTO `admin_operation_log` VALUES ('2077', '0', 'admin/auth/login', 'POST', '14.28.184.53', '{\"_token\":\"uNAyeAIpxfmCD8eUWxEcDmmdUmUh56AICNegi8VI\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-16 10:56:29', '2020-07-16 10:56:29');
INSERT INTO `admin_operation_log` VALUES ('2078', '1', 'admin/product/1/edit', 'GET', '14.28.184.53', '[]', '2020-07-16 10:56:30', '2020-07-16 10:56:30');
INSERT INTO `admin_operation_log` VALUES ('2079', '1', 'admin', 'GET', '14.28.184.53', '[]', '2020-07-16 10:56:39', '2020-07-16 10:56:39');
INSERT INTO `admin_operation_log` VALUES ('2080', '1', 'admin/swipe', 'GET', '14.28.184.53', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 10:56:54', '2020-07-16 10:56:54');
INSERT INTO `admin_operation_log` VALUES ('2081', '1', 'admin/user', 'GET', '14.28.184.53', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 10:58:20', '2020-07-16 10:58:20');
INSERT INTO `admin_operation_log` VALUES ('2082', '1', 'admin/video', 'GET', '14.28.184.53', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 10:58:29', '2020-07-16 10:58:29');
INSERT INTO `admin_operation_log` VALUES ('2083', '1', 'admin/cate', 'GET', '14.28.184.53', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 10:58:32', '2020-07-16 10:58:32');
INSERT INTO `admin_operation_log` VALUES ('2084', '1', 'admin/cate', 'GET', '14.28.184.53', '{\"_pjax\":\"#pjax-container\",\"_token\":\"9sK14aExWkwNbVOC1QUHROBUw5oAjZd1lp9TW6vy\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-16 10:58:36', '2020-07-16 10:58:36');
INSERT INTO `admin_operation_log` VALUES ('2085', '1', 'admin/product', 'GET', '14.28.184.53', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 10:58:39', '2020-07-16 10:58:39');
INSERT INTO `admin_operation_log` VALUES ('2086', '1', 'admin/product/create', 'GET', '14.28.184.53', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 10:58:47', '2020-07-16 10:58:47');
INSERT INTO `admin_operation_log` VALUES ('2087', '1', 'admin/product', 'GET', '14.28.184.53', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 10:58:57', '2020-07-16 10:58:57');
INSERT INTO `admin_operation_log` VALUES ('2088', '0', 'admin/auth/login', 'GET', '116.22.165.221', '[]', '2020-07-16 18:59:33', '2020-07-16 18:59:33');
INSERT INTO `admin_operation_log` VALUES ('2089', '0', 'admin/auth/login', 'POST', '116.22.165.221', '{\"_token\":\"ZqKATiXMbFptpLYM6hRnlcFFMV6X7czFsbp8Ii9w\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-16 19:09:33', '2020-07-16 19:09:33');
INSERT INTO `admin_operation_log` VALUES ('2090', '1', 'admin/video', 'GET', '116.22.165.221', '[]', '2020-07-16 19:09:33', '2020-07-16 19:09:33');
INSERT INTO `admin_operation_log` VALUES ('2091', '1', 'admin/product', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 19:09:36', '2020-07-16 19:09:36');
INSERT INTO `admin_operation_log` VALUES ('2092', '1', 'admin/product/create', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 19:10:12', '2020-07-16 19:10:12');
INSERT INTO `admin_operation_log` VALUES ('2093', '1', 'admin/product', 'POST', '116.22.165.221', '{\"_id\":\"hrlfgQ2u6HwmeNFh\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"upload_column\":\"image\",\"id\":\"WU_FILE_1\",\"name\":\"6.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 21:40:03 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"92716\"}', '2020-07-16 19:11:06', '2020-07-16 19:11:06');
INSERT INTO `admin_operation_log` VALUES ('2094', '1', 'admin/product', 'POST', '116.22.165.221', '{\"_id\":\"ixbzvQ3CJvMf0MGX\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"upload_column\":\"smallimage\",\"id\":\"WU_FILE_0\",\"name\":\"6.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 21:40:03 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"92716\"}', '2020-07-16 19:11:07', '2020-07-16 19:11:07');
INSERT INTO `admin_operation_log` VALUES ('2095', '1', 'admin/product', 'POST', '116.22.165.221', '{\"cid\":\"28\",\"title\":\"\\u4e49\\u8584\\u4e91\\u5929\",\"smalldescription\":\"\\u4e49\\u8584\\u4e91\\u5929\",\"description\":\"<p>\\u4e49\\u8584\\u4e91\\u5929\\u4e49\\u8584\\u4e91\\u5929<br data-mce-bogus=\\\"1\\\"><\\/p>\",\"smallimage\":\"images\\/0761333f3ea358444583c56a7e7d31d4.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/c231462bda735fa29f9f5f39b1de9d9e.jpg\",\"file-image\":null,\"file\":null,\"price\":\"1887\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-16 19:11:08', '2020-07-16 19:11:08');
INSERT INTO `admin_operation_log` VALUES ('2096', '1', 'admin/product', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 19:11:08', '2020-07-16 19:11:08');
INSERT INTO `admin_operation_log` VALUES ('2097', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:21:51', '2020-07-16 20:21:51');
INSERT INTO `admin_operation_log` VALUES ('2098', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_children_page_30\":\"1\"}', '2020-07-16 20:21:53', '2020-07-16 20:21:53');
INSERT INTO `admin_operation_log` VALUES ('2099', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_parent_id_\":\"33\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_children_page_33\":\"1\"}', '2020-07-16 20:21:54', '2020-07-16 20:21:54');
INSERT INTO `admin_operation_log` VALUES ('2100', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_parent_id_\":\"28\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_children_page_28\":\"1\"}', '2020-07-16 20:21:58', '2020-07-16 20:21:58');
INSERT INTO `admin_operation_log` VALUES ('2101', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_children_page_29\":\"1\"}', '2020-07-16 20:21:59', '2020-07-16 20:21:59');
INSERT INTO `admin_operation_log` VALUES ('2102', '1', 'admin/cate/29/edit', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:22:01', '2020-07-16 20:22:01');
INSERT INTO `admin_operation_log` VALUES ('2103', '1', 'admin/cate/29', 'PUT', '116.22.165.221', '{\"_id\":\"ymKgYVy7BavPFVQL\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"upload_column\":\"image\",\"_method\":\"PUT\",\"id\":\"WU_FILE_2\",\"name\":\"34\\u5f97\\u5929\\u72ec\\u79c0.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 02:42:12 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"69237\"}', '2020-07-16 20:22:07', '2020-07-16 20:22:07');
INSERT INTO `admin_operation_log` VALUES ('2104', '1', 'admin/cate/29', 'PUT', '116.22.165.221', '{\"_id\":\"ymKgYVy7BavPFVQL\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_method\":\"PUT\",\"image\":\"images\\/7a2f33226edc54921cbd3cfcf163c196.jpg\"}', '2020-07-16 20:22:08', '2020-07-16 20:22:08');
INSERT INTO `admin_operation_log` VALUES ('2105', '1', 'admin/cate/29', 'PUT', '116.22.165.221', '{\"text\":\"\\u539f\\u7f18\\u5178\\u85cf\",\"parent_id\":\"28\",\"image\":\"images\\/7a2f33226edc54921cbd3cfcf163c196.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-16 20:22:09', '2020-07-16 20:22:09');
INSERT INTO `admin_operation_log` VALUES ('2106', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:22:09', '2020-07-16 20:22:09');
INSERT INTO `admin_operation_log` VALUES ('2107', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-16 20:22:11', '2020-07-16 20:22:11');
INSERT INTO `admin_operation_log` VALUES ('2108', '0', 'admin/auth/login', 'GET', '112.96.133.133', '[]', '2020-07-16 20:22:13', '2020-07-16 20:22:13');
INSERT INTO `admin_operation_log` VALUES ('2109', '1', 'admin/cate/45/edit', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:22:14', '2020-07-16 20:22:14');
INSERT INTO `admin_operation_log` VALUES ('2110', '0', 'admin/auth/login', 'POST', '112.96.133.133', '{\"_token\":\"yx9sjwF9aYDfjz7Avc2dRou0a6XBnpF3ZHCLYczh\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-16 20:22:18', '2020-07-16 20:22:18');
INSERT INTO `admin_operation_log` VALUES ('2111', '1', 'admin/cate/45', 'PUT', '116.22.165.221', '{\"_id\":\"XXHD6BQMNVRHZHSA\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"upload_column\":\"image\",\"_method\":\"PUT\",\"id\":\"WU_FILE_3\",\"name\":\"13.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 12:49:34 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"168725\"}', '2020-07-16 20:22:18', '2020-07-16 20:22:18');
INSERT INTO `admin_operation_log` VALUES ('2112', '1', 'admin', 'GET', '112.96.133.133', '[]', '2020-07-16 20:22:18', '2020-07-16 20:22:18');
INSERT INTO `admin_operation_log` VALUES ('2113', '1', 'admin/cate/45', 'PUT', '116.22.165.221', '{\"_id\":\"XXHD6BQMNVRHZHSA\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_method\":\"PUT\",\"image\":\"images\\/9899d339590727b118790b57e23e8d80.jpg\"}', '2020-07-16 20:22:18', '2020-07-16 20:22:18');
INSERT INTO `admin_operation_log` VALUES ('2114', '1', 'admin/cate/45', 'PUT', '116.22.165.221', '{\"text\":\"\\u6c34\\u6728\\u6052\\u7f18\",\"parent_id\":\"28\",\"image\":\"images\\/9899d339590727b118790b57e23e8d80.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-16 20:22:19', '2020-07-16 20:22:19');
INSERT INTO `admin_operation_log` VALUES ('2115', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:22:19', '2020-07-16 20:22:19');
INSERT INTO `admin_operation_log` VALUES ('2116', '1', 'admin/user', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:22:20', '2020-07-16 20:22:20');
INSERT INTO `admin_operation_log` VALUES ('2117', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-16 20:22:21', '2020-07-16 20:22:21');
INSERT INTO `admin_operation_log` VALUES ('2118', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_parent_id_\":\"46\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_children_page_46\":\"1\"}', '2020-07-16 20:22:23', '2020-07-16 20:22:23');
INSERT INTO `admin_operation_log` VALUES ('2119', '1', 'admin/cate', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:22:24', '2020-07-16 20:22:24');
INSERT INTO `admin_operation_log` VALUES ('2120', '1', 'admin/cate/46/edit', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:22:26', '2020-07-16 20:22:26');
INSERT INTO `admin_operation_log` VALUES ('2121', '1', 'admin/cate/28/edit', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:22:28', '2020-07-16 20:22:28');
INSERT INTO `admin_operation_log` VALUES ('2122', '1', 'admin/cate', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:22:30', '2020-07-16 20:22:30');
INSERT INTO `admin_operation_log` VALUES ('2123', '1', 'admin/cate/46', 'PUT', '116.22.165.221', '{\"_id\":\"ldZhgnp5P36XoTc5\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"upload_column\":\"image\",\"_method\":\"PUT\",\"id\":\"WU_FILE_4\",\"name\":\"35\\u592a\\u5e08\\u4e0e\\u5c11\\u5e08.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 12:41:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"118246\"}', '2020-07-16 20:22:30', '2020-07-16 20:22:30');
INSERT INTO `admin_operation_log` VALUES ('2124', '1', 'admin/cate/46', 'PUT', '116.22.165.221', '{\"_id\":\"ldZhgnp5P36XoTc5\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_method\":\"PUT\",\"image\":\"images\\/6f419b97bc80092d4e5df8df401ad148.jpg\"}', '2020-07-16 20:22:30', '2020-07-16 20:22:30');
INSERT INTO `admin_operation_log` VALUES ('2125', '1', 'admin/cate/46', 'PUT', '116.22.165.221', '{\"text\":\"\\u539f\\u7f18\\u7389\\u79c0\",\"parent_id\":\"28\",\"image\":\"images\\/6f419b97bc80092d4e5df8df401ad148.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-16 20:22:31', '2020-07-16 20:22:31');
INSERT INTO `admin_operation_log` VALUES ('2126', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:22:31', '2020-07-16 20:22:31');
INSERT INTO `admin_operation_log` VALUES ('2127', '1', 'admin/cate/30/edit', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:22:32', '2020-07-16 20:22:32');
INSERT INTO `admin_operation_log` VALUES ('2128', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-16 20:22:33', '2020-07-16 20:22:33');
INSERT INTO `admin_operation_log` VALUES ('2129', '1', 'admin/cate', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:22:34', '2020-07-16 20:22:34');
INSERT INTO `admin_operation_log` VALUES ('2130', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_children_page_29\":\"1\"}', '2020-07-16 20:22:34', '2020-07-16 20:22:34');
INSERT INTO `admin_operation_log` VALUES ('2131', '1', 'admin/cate', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\",\"_token\":\"E4YCrCqRurU70Rk1AaJGFnLL5kItcvftdpVvG6e8\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-16 20:22:36', '2020-07-16 20:22:36');
INSERT INTO `admin_operation_log` VALUES ('2132', '1', 'admin/cate', 'GET', '112.96.133.133', '{\"_parent_id_\":\"30\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"E4YCrCqRurU70Rk1AaJGFnLL5kItcvftdpVvG6e8\",\"_children_page_30\":\"1\"}', '2020-07-16 20:22:39', '2020-07-16 20:22:39');
INSERT INTO `admin_operation_log` VALUES ('2133', '1', 'admin/cate', 'GET', '112.96.133.133', '{\"_parent_id_\":\"33\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"E4YCrCqRurU70Rk1AaJGFnLL5kItcvftdpVvG6e8\",\"_children_page_33\":\"1\"}', '2020-07-16 20:22:41', '2020-07-16 20:22:41');
INSERT INTO `admin_operation_log` VALUES ('2134', '1', 'admin/cate', 'GET', '112.96.133.133', '{\"_parent_id_\":\"47\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"E4YCrCqRurU70Rk1AaJGFnLL5kItcvftdpVvG6e8\",\"_children_page_47\":\"1\"}', '2020-07-16 20:22:55', '2020-07-16 20:22:55');
INSERT INTO `admin_operation_log` VALUES ('2135', '1', 'admin/cate/47/edit', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:22:58', '2020-07-16 20:22:58');
INSERT INTO `admin_operation_log` VALUES ('2136', '1', 'admin/cate', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:23:00', '2020-07-16 20:23:00');
INSERT INTO `admin_operation_log` VALUES ('2137', '1', 'admin/cate/create', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:23:02', '2020-07-16 20:23:02');
INSERT INTO `admin_operation_log` VALUES ('2138', '1', 'admin/cate', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:23:06', '2020-07-16 20:23:06');
INSERT INTO `admin_operation_log` VALUES ('2139', '1', 'admin/push', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:23:08', '2020-07-16 20:23:08');
INSERT INTO `admin_operation_log` VALUES ('2140', '1', 'admin/cate', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:23:35', '2020-07-16 20:23:35');
INSERT INTO `admin_operation_log` VALUES ('2141', '1', 'admin/cate', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\",\"_token\":\"E4YCrCqRurU70Rk1AaJGFnLL5kItcvftdpVvG6e8\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-16 20:23:37', '2020-07-16 20:23:37');
INSERT INTO `admin_operation_log` VALUES ('2142', '1', 'admin/cate/29/edit', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:23:39', '2020-07-16 20:23:39');
INSERT INTO `admin_operation_log` VALUES ('2143', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_parent_id_\":\"30\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_children_page_30\":\"1\"}', '2020-07-16 20:24:29', '2020-07-16 20:24:29');
INSERT INTO `admin_operation_log` VALUES ('2144', '1', 'admin/cate/47', 'DELETE', '116.22.165.221', '{\"_method\":\"delete\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\"}', '2020-07-16 20:24:41', '2020-07-16 20:24:41');
INSERT INTO `admin_operation_log` VALUES ('2145', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:24:41', '2020-07-16 20:24:41');
INSERT INTO `admin_operation_log` VALUES ('2146', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-16 20:24:43', '2020-07-16 20:24:43');
INSERT INTO `admin_operation_log` VALUES ('2147', '1', 'admin/cate', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:25:41', '2020-07-16 20:25:41');
INSERT INTO `admin_operation_log` VALUES ('2148', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_parent_id_\":\"30\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_children_page_30\":\"1\"}', '2020-07-16 20:27:48', '2020-07-16 20:27:48');
INSERT INTO `admin_operation_log` VALUES ('2149', '1', 'admin/cate/29/edit', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:27:54', '2020-07-16 20:27:54');
INSERT INTO `admin_operation_log` VALUES ('2150', '1', 'admin/cate', 'GET', '112.96.133.133', '{\"_pjax\":\"#pjax-container\",\"_token\":\"E4YCrCqRurU70Rk1AaJGFnLL5kItcvftdpVvG6e8\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-16 20:29:32', '2020-07-16 20:29:32');
INSERT INTO `admin_operation_log` VALUES ('2151', '1', 'admin/cate', 'GET', '112.96.133.133', '{\"_parent_id_\":\"30\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"E4YCrCqRurU70Rk1AaJGFnLL5kItcvftdpVvG6e8\",\"_children_page_30\":\"1\"}', '2020-07-16 20:30:00', '2020-07-16 20:30:00');
INSERT INTO `admin_operation_log` VALUES ('2152', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:34:52', '2020-07-16 20:34:52');
INSERT INTO `admin_operation_log` VALUES ('2153', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_children_page_30\":\"1\"}', '2020-07-16 20:34:54', '2020-07-16 20:34:54');
INSERT INTO `admin_operation_log` VALUES ('2154', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_parent_id_\":\"28\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_children_page_28\":\"1\"}', '2020-07-16 20:34:55', '2020-07-16 20:34:55');
INSERT INTO `admin_operation_log` VALUES ('2155', '1', 'admin/cate/33/edit', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:36:54', '2020-07-16 20:36:54');
INSERT INTO `admin_operation_log` VALUES ('2156', '1', 'admin/cate/33', 'PUT', '116.22.165.221', '{\"text\":\"\\u573a\\u9986\\u8bad\\u89c8\",\"parent_id\":\"30\",\"image\":null,\"file-image\":null,\"_file_\":null,\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-16 20:36:58', '2020-07-16 20:36:58');
INSERT INTO `admin_operation_log` VALUES ('2157', '1', 'admin/cate/33', 'PUT', '116.22.165.221', '{\"_id\":\"vusqSlVVKVtUdsKc\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"upload_column\":\"image\",\"_method\":\"PUT\",\"id\":\"WU_FILE_5\",\"name\":\"48\\u5c4f\\u5c71\\u6620\\u971e.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Mon Apr 22 2013 15:34:20 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"86677\"}', '2020-07-16 20:37:02', '2020-07-16 20:37:02');
INSERT INTO `admin_operation_log` VALUES ('2158', '1', 'admin/cate/33', 'PUT', '116.22.165.221', '{\"_id\":\"vusqSlVVKVtUdsKc\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_method\":\"PUT\",\"image\":\"images\\/81bee3bf383da801dc9384e588b2d411.jpg\"}', '2020-07-16 20:37:02', '2020-07-16 20:37:02');
INSERT INTO `admin_operation_log` VALUES ('2159', '1', 'admin/cate/33', 'PUT', '116.22.165.221', '{\"text\":\"\\u573a\\u9986\\u8bad\\u89c8\",\"parent_id\":\"30\",\"image\":\"images\\/81bee3bf383da801dc9384e588b2d411.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-16 20:37:03', '2020-07-16 20:37:03');
INSERT INTO `admin_operation_log` VALUES ('2160', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:37:03', '2020-07-16 20:37:03');
INSERT INTO `admin_operation_log` VALUES ('2161', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_children_page_30\":\"1\"}', '2020-07-16 20:37:04', '2020-07-16 20:37:04');
INSERT INTO `admin_operation_log` VALUES ('2162', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_parent_id_\":\"33\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_children_page_33\":\"1\"}', '2020-07-16 20:37:04', '2020-07-16 20:37:04');
INSERT INTO `admin_operation_log` VALUES ('2163', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_parent_id_\":\"49\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"3\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_children_page_49\":\"1\"}', '2020-07-16 20:37:06', '2020-07-16 20:37:06');
INSERT INTO `admin_operation_log` VALUES ('2164', '1', 'admin/cate/33/edit', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:41:16', '2020-07-16 20:41:16');
INSERT INTO `admin_operation_log` VALUES ('2165', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:41:23', '2020-07-16 20:41:23');
INSERT INTO `admin_operation_log` VALUES ('2166', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_children_page_30\":\"1\"}', '2020-07-16 20:41:25', '2020-07-16 20:41:25');
INSERT INTO `admin_operation_log` VALUES ('2167', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_parent_id_\":\"33\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_children_page_33\":\"1\"}', '2020-07-16 20:41:26', '2020-07-16 20:41:26');
INSERT INTO `admin_operation_log` VALUES ('2168', '1', 'admin/cate/create', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:41:28', '2020-07-16 20:41:28');
INSERT INTO `admin_operation_log` VALUES ('2169', '1', 'admin/cate', 'POST', '116.22.165.221', '{\"_id\":\"gEqYnhnHIoOoVOhY\",\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"upload_column\":\"image\",\"id\":\"WU_FILE_6\",\"name\":\"34\\u5f97\\u5929\\u72ec\\u79c0.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 02:42:12 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"69237\"}', '2020-07-16 20:41:39', '2020-07-16 20:41:39');
INSERT INTO `admin_operation_log` VALUES ('2170', '1', 'admin/cate', 'POST', '116.22.165.221', '{\"text\":\"\\u77f3\\u5934\\u60c5\\u7f18\",\"parent_id\":\"30\",\"image\":\"images\\/79e54195af1d25836b1fbde10bc273e9.jpg\",\"file-image\":null,\"_file_\":null,\"_token\":\"tjXnfdSv4YFrmDh0eXct4Ovq6qr5hL3ipwEXQwU6\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-16 20:41:40', '2020-07-16 20:41:40');
INSERT INTO `admin_operation_log` VALUES ('2171', '1', 'admin/cate', 'GET', '116.22.165.221', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 20:41:40', '2020-07-16 20:41:40');
INSERT INTO `admin_operation_log` VALUES ('2172', '0', 'admin/auth/login', 'GET', '14.27.43.7', '[]', '2020-07-17 10:38:06', '2020-07-17 10:38:06');
INSERT INTO `admin_operation_log` VALUES ('2173', '0', 'admin/auth/login', 'POST', '14.27.43.7', '{\"_token\":\"sv3KBPXwgLZaOiTBhlsWncxXy0LiNNXUJhAKatMZ\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-17 10:38:11', '2020-07-17 10:38:11');
INSERT INTO `admin_operation_log` VALUES ('2174', '1', 'admin', 'GET', '14.27.43.7', '[]', '2020-07-17 10:38:12', '2020-07-17 10:38:12');
INSERT INTO `admin_operation_log` VALUES ('2175', '1', 'admin', 'GET', '14.27.43.7', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 10:43:36', '2020-07-17 10:43:36');
INSERT INTO `admin_operation_log` VALUES ('2176', '0', 'admin/auth/login', 'GET', '14.24.145.22', '[]', '2020-07-17 15:03:28', '2020-07-17 15:03:28');
INSERT INTO `admin_operation_log` VALUES ('2177', '0', 'admin/auth/login', 'POST', '14.24.145.22', '{\"_token\":\"MQ1tzOLHZCKmezKy7YWUm5XMxwGOPd0fMBeMZvMK\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-17 15:03:33', '2020-07-17 15:03:33');
INSERT INTO `admin_operation_log` VALUES ('2178', '1', 'admin', 'GET', '14.24.145.22', '[]', '2020-07-17 15:03:34', '2020-07-17 15:03:34');
INSERT INTO `admin_operation_log` VALUES ('2179', '1', 'admin/push', 'GET', '14.24.145.22', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 15:03:38', '2020-07-17 15:03:38');
INSERT INTO `admin_operation_log` VALUES ('2180', '1', 'admin/push/create', 'GET', '14.24.145.22', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 15:03:45', '2020-07-17 15:03:45');
INSERT INTO `admin_operation_log` VALUES ('2181', '1', 'admin/push', 'POST', '14.24.145.22', '{\"title\":\"test notion\",\"content\":\"notionnotionnotion\",\"_token\":\"U1I39n6crbdWHXhrmFUE5doE0dPBgRFH4u2avI2d\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/push\"}', '2020-07-17 15:03:54', '2020-07-17 15:03:54');
INSERT INTO `admin_operation_log` VALUES ('2182', '1', 'admin/push', 'GET', '14.24.145.22', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 15:03:54', '2020-07-17 15:03:54');
INSERT INTO `admin_operation_log` VALUES ('2183', '1', 'admin/push', 'GET', '14.24.145.22', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 15:03:57', '2020-07-17 15:03:57');
INSERT INTO `admin_operation_log` VALUES ('2184', '1', 'admin/push/create', 'GET', '14.24.145.22', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 15:05:49', '2020-07-17 15:05:49');
INSERT INTO `admin_operation_log` VALUES ('2185', '1', 'admin/push', 'POST', '14.24.145.22', '{\"title\":\"test2222\",\"content\":\"test2222test2222test2222\",\"_token\":\"U1I39n6crbdWHXhrmFUE5doE0dPBgRFH4u2avI2d\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/push\"}', '2020-07-17 15:05:55', '2020-07-17 15:05:55');
INSERT INTO `admin_operation_log` VALUES ('2186', '1', 'admin/push', 'GET', '14.24.145.22', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 15:05:55', '2020-07-17 15:05:55');
INSERT INTO `admin_operation_log` VALUES ('2187', '0', 'admin/auth/login', 'GET', '112.96.133.133', '[]', '2020-07-17 16:02:05', '2020-07-17 16:02:05');
INSERT INTO `admin_operation_log` VALUES ('2188', '0', 'admin/auth/login', 'GET', '116.22.164.15', '[]', '2020-07-17 22:19:56', '2020-07-17 22:19:56');
INSERT INTO `admin_operation_log` VALUES ('2189', '0', 'admin/auth/login', 'GET', '117.136.12.184', '[]', '2020-07-17 23:30:27', '2020-07-17 23:30:27');
INSERT INTO `admin_operation_log` VALUES ('2190', '0', 'admin/auth/login', 'POST', '117.136.12.184', '{\"_token\":\"w5cJdhGtSXt1f1M5Ky80CCYj6nzYkrafcPgEB7Zc\",\"username\":\"admin\",\"password\":\"jok******\"}', '2020-07-17 23:36:00', '2020-07-17 23:36:00');
INSERT INTO `admin_operation_log` VALUES ('2191', '0', 'admin/auth/login', 'POST', '117.136.12.184', '{\"_token\":\"w5cJdhGtSXt1f1M5Ky80CCYj6nzYkrafcPgEB7Zc\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-17 23:36:04', '2020-07-17 23:36:04');
INSERT INTO `admin_operation_log` VALUES ('2192', '1', 'admin', 'GET', '117.136.12.184', '[]', '2020-07-17 23:36:04', '2020-07-17 23:36:04');
INSERT INTO `admin_operation_log` VALUES ('2193', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 23:36:06', '2020-07-17 23:36:06');
INSERT INTO `admin_operation_log` VALUES ('2194', '1', 'admin/product/6/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 23:36:11', '2020-07-17 23:36:11');
INSERT INTO `admin_operation_log` VALUES ('2195', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 23:36:16', '2020-07-17 23:36:16');
INSERT INTO `admin_operation_log` VALUES ('2196', '1', 'admin/product/8/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 23:36:21', '2020-07-17 23:36:21');
INSERT INTO `admin_operation_log` VALUES ('2197', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 23:36:28', '2020-07-17 23:36:28');
INSERT INTO `admin_operation_log` VALUES ('2198', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 00:47:24', '2020-07-18 00:47:24');
INSERT INTO `admin_operation_log` VALUES ('2199', '1', 'admin/order/48', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 00:47:32', '2020-07-18 00:47:32');
INSERT INTO `admin_operation_log` VALUES ('2200', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 00:47:49', '2020-07-18 00:47:49');
INSERT INTO `admin_operation_log` VALUES ('2201', '1', 'admin/order/48', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 00:47:53', '2020-07-18 00:47:53');
INSERT INTO `admin_operation_log` VALUES ('2202', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 00:52:51', '2020-07-18 00:52:51');
INSERT INTO `admin_operation_log` VALUES ('2203', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:07:23', '2020-07-18 01:07:23');
INSERT INTO `admin_operation_log` VALUES ('2204', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:23:50', '2020-07-18 01:23:50');
INSERT INTO `admin_operation_log` VALUES ('2205', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:23:50', '2020-07-18 01:23:50');
INSERT INTO `admin_operation_log` VALUES ('2206', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:23:52', '2020-07-18 01:23:52');
INSERT INTO `admin_operation_log` VALUES ('2207', '1', 'admin/product/6/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:23:54', '2020-07-18 01:23:54');
INSERT INTO `admin_operation_log` VALUES ('2208', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:23:57', '2020-07-18 01:23:57');
INSERT INTO `admin_operation_log` VALUES ('2209', '1', 'admin/product/6/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:24:00', '2020-07-18 01:24:00');
INSERT INTO `admin_operation_log` VALUES ('2210', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:24:03', '2020-07-18 01:24:03');
INSERT INTO `admin_operation_log` VALUES ('2211', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:24:27', '2020-07-18 01:24:27');
INSERT INTO `admin_operation_log` VALUES ('2212', '1', 'admin/cate/create', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:24:33', '2020-07-18 01:24:33');
INSERT INTO `admin_operation_log` VALUES ('2213', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:24:36', '2020-07-18 01:24:36');
INSERT INTO `admin_operation_log` VALUES ('2214', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:24:36', '2020-07-18 01:24:36');
INSERT INTO `admin_operation_log` VALUES ('2215', '1', 'admin/product/create', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:24:37', '2020-07-18 01:24:37');
INSERT INTO `admin_operation_log` VALUES ('2216', '1', 'admin/product/create', 'GET', '117.136.12.184', '[]', '2020-07-18 01:25:46', '2020-07-18 01:25:46');
INSERT INTO `admin_operation_log` VALUES ('2217', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:25:49', '2020-07-18 01:25:49');
INSERT INTO `admin_operation_log` VALUES ('2218', '1', 'admin/product/create', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:25:52', '2020-07-18 01:25:52');
INSERT INTO `admin_operation_log` VALUES ('2219', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:25:55', '2020-07-18 01:25:55');
INSERT INTO `admin_operation_log` VALUES ('2220', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:26:02', '2020-07-18 01:26:02');
INSERT INTO `admin_operation_log` VALUES ('2221', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\",\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_children_page_30\":\"1\"}', '2020-07-18 01:26:04', '2020-07-18 01:26:04');
INSERT INTO `admin_operation_log` VALUES ('2222', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_parent_id_\":\"55\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\",\"_children_page_55\":\"1\"}', '2020-07-18 01:26:05', '2020-07-18 01:26:05');
INSERT INTO `admin_operation_log` VALUES ('2223', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_parent_id_\":\"33\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\",\"_children_page_33\":\"1\"}', '2020-07-18 01:26:06', '2020-07-18 01:26:06');
INSERT INTO `admin_operation_log` VALUES ('2224', '1', 'admin/cate/49', 'DELETE', '117.136.12.184', '{\"_method\":\"delete\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\"}', '2020-07-18 01:26:09', '2020-07-18 01:26:09');
INSERT INTO `admin_operation_log` VALUES ('2225', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:26:09', '2020-07-18 01:26:09');
INSERT INTO `admin_operation_log` VALUES ('2226', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\",\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_children_page_30\":\"1\"}', '2020-07-18 01:26:11', '2020-07-18 01:26:11');
INSERT INTO `admin_operation_log` VALUES ('2227', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_parent_id_\":\"33\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\",\"_children_page_33\":\"1\"}', '2020-07-18 01:26:12', '2020-07-18 01:26:12');
INSERT INTO `admin_operation_log` VALUES ('2228', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_parent_id_\":\"28\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\",\"_children_page_28\":\"1\"}', '2020-07-18 01:26:14', '2020-07-18 01:26:14');
INSERT INTO `admin_operation_log` VALUES ('2229', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_parent_id_\":\"46\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\",\"_children_page_46\":\"1\"}', '2020-07-18 01:26:15', '2020-07-18 01:26:15');
INSERT INTO `admin_operation_log` VALUES ('2230', '1', 'admin/cate/51', 'DELETE', '117.136.12.184', '{\"_method\":\"delete\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\"}', '2020-07-18 01:26:19', '2020-07-18 01:26:19');
INSERT INTO `admin_operation_log` VALUES ('2231', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:26:19', '2020-07-18 01:26:19');
INSERT INTO `admin_operation_log` VALUES ('2232', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-18 01:26:22', '2020-07-18 01:26:22');
INSERT INTO `admin_operation_log` VALUES ('2233', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_parent_id_\":\"46\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\",\"_children_page_46\":\"1\"}', '2020-07-18 01:26:24', '2020-07-18 01:26:24');
INSERT INTO `admin_operation_log` VALUES ('2234', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\",\"_children_page_45\":\"1\"}', '2020-07-18 01:26:25', '2020-07-18 01:26:25');
INSERT INTO `admin_operation_log` VALUES ('2235', '1', 'admin/cate/50', 'DELETE', '117.136.12.184', '{\"_method\":\"delete\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\"}', '2020-07-18 01:26:28', '2020-07-18 01:26:28');
INSERT INTO `admin_operation_log` VALUES ('2236', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:26:29', '2020-07-18 01:26:29');
INSERT INTO `admin_operation_log` VALUES ('2237', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-18 01:26:31', '2020-07-18 01:26:31');
INSERT INTO `admin_operation_log` VALUES ('2238', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_parent_id_\":\"45\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\",\"_children_page_45\":\"1\"}', '2020-07-18 01:26:32', '2020-07-18 01:26:32');
INSERT INTO `admin_operation_log` VALUES ('2239', '1', 'admin/cate/52', 'DELETE', '117.136.12.184', '{\"_method\":\"delete\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\"}', '2020-07-18 01:26:35', '2020-07-18 01:26:35');
INSERT INTO `admin_operation_log` VALUES ('2240', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:26:35', '2020-07-18 01:26:35');
INSERT INTO `admin_operation_log` VALUES ('2241', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-18 01:26:37', '2020-07-18 01:26:37');
INSERT INTO `admin_operation_log` VALUES ('2242', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_parent_id_\":\"29\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"2\",\"_token\":\"M5rJ30mo7p81w2FpnnBvOvFHohZlkF0j9GGYEh6W\",\"_children_page_29\":\"1\"}', '2020-07-18 01:26:38', '2020-07-18 01:26:38');
INSERT INTO `admin_operation_log` VALUES ('2243', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:26:40', '2020-07-18 01:26:40');
INSERT INTO `admin_operation_log` VALUES ('2244', '1', 'admin/product/create', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:26:41', '2020-07-18 01:26:41');
INSERT INTO `admin_operation_log` VALUES ('2245', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 01:26:44', '2020-07-18 01:26:44');
INSERT INTO `admin_operation_log` VALUES ('2246', '0', 'admin/auth/login', 'GET', '116.22.164.15', '[]', '2020-07-18 12:56:40', '2020-07-18 12:56:40');
INSERT INTO `admin_operation_log` VALUES ('2247', '0', 'admin/auth/login', 'POST', '116.22.164.15', '{\"_token\":\"qjfDjC47rfoMzCCmYoAC6CAwidUXzMXFkix0moxk\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-18 14:53:50', '2020-07-18 14:53:50');
INSERT INTO `admin_operation_log` VALUES ('2248', '1', 'admin', 'GET', '116.22.164.15', '[]', '2020-07-18 14:53:50', '2020-07-18 14:53:50');
INSERT INTO `admin_operation_log` VALUES ('2249', '1', 'admin/video', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 14:53:53', '2020-07-18 14:53:53');
INSERT INTO `admin_operation_log` VALUES ('2250', '1', 'admin/user', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 14:53:54', '2020-07-18 14:53:54');
INSERT INTO `admin_operation_log` VALUES ('2251', '1', 'admin/cate', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 14:53:55', '2020-07-18 14:53:55');
INSERT INTO `admin_operation_log` VALUES ('2252', '1', 'admin/swipe', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 14:53:55', '2020-07-18 14:53:55');
INSERT INTO `admin_operation_log` VALUES ('2253', '1', 'admin/product', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 16:47:34', '2020-07-18 16:47:34');
INSERT INTO `admin_operation_log` VALUES ('2254', '1', 'admin/product/6/edit', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 16:47:38', '2020-07-18 16:47:38');
INSERT INTO `admin_operation_log` VALUES ('2255', '1', 'admin/product/6', 'PUT', '116.22.164.15', '{\"cid\":\"29\",\"title\":\"\\u8377\\u5858\\u79cb\\u8da3\",\"smalldescription\":\"\\u8377\\u5858\\u79cb\\u8da3\",\"description\":\"<p>\\u8377\\u5858\\u79cb\\u8da3<br data-mce-bogus=\\\"1\\\"><\\/p>\",\"smallimage\":\"images\\/ebda0c7f0554566eba1b62bed8c5071a.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/ec61eed55f2e1e93c76f727f9caac393.jpg,images\\/a577cb30a4f05ac7e24923d6ed0a55af.jpg,images\\/62f24b116a559b110af537d2c28fe58e.jpg\",\"file-image\":null,\"file\":null,\"price\":\"1000.00\",\"recommended\":\"2\",\"status\":\"2\",\"_token\":\"6NYXYN9XQvS0uoYS8jkSDenaKqNmgOsIIsaLevQQ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 16:47:43', '2020-07-18 16:47:43');
INSERT INTO `admin_operation_log` VALUES ('2256', '1', 'admin/product', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 16:47:43', '2020-07-18 16:47:43');
INSERT INTO `admin_operation_log` VALUES ('2257', '1', 'admin/user', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 17:17:48', '2020-07-18 17:17:48');
INSERT INTO `admin_operation_log` VALUES ('2258', '1', 'admin/swipe', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 17:17:49', '2020-07-18 17:17:49');
INSERT INTO `admin_operation_log` VALUES ('2259', '1', 'admin/user', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 17:17:50', '2020-07-18 17:17:50');
INSERT INTO `admin_operation_log` VALUES ('2260', '1', 'admin/help', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 17:18:06', '2020-07-18 17:18:06');
INSERT INTO `admin_operation_log` VALUES ('2261', '1', 'admin/order', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 17:18:07', '2020-07-18 17:18:07');
INSERT INTO `admin_operation_log` VALUES ('2262', '1', 'admin/product', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 17:18:07', '2020-07-18 17:18:07');
INSERT INTO `admin_operation_log` VALUES ('2263', '1', 'admin/push', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 17:18:08', '2020-07-18 17:18:08');
INSERT INTO `admin_operation_log` VALUES ('2264', '1', 'admin/cate', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 17:31:02', '2020-07-18 17:31:02');
INSERT INTO `admin_operation_log` VALUES ('2265', '1', 'admin/push', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 17:31:03', '2020-07-18 17:31:03');
INSERT INTO `admin_operation_log` VALUES ('2266', '1', 'admin/order', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 17:31:04', '2020-07-18 17:31:04');
INSERT INTO `admin_operation_log` VALUES ('2267', '1', 'admin/help', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 17:31:04', '2020-07-18 17:31:04');
INSERT INTO `admin_operation_log` VALUES ('2268', '1', 'admin/product', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 17:31:05', '2020-07-18 17:31:05');
INSERT INTO `admin_operation_log` VALUES ('2269', '0', 'admin/auth/login', 'GET', '117.136.12.184', '[]', '2020-07-18 17:55:07', '2020-07-18 17:55:07');
INSERT INTO `admin_operation_log` VALUES ('2270', '0', 'admin/auth/login', 'POST', '117.136.12.184', '{\"_token\":\"fVwb07cMVRyIbzXdlI4lRipaO8lHHLkSDefXI8GK\",\"username\":\"admin\",\"password\":\"123******\"}', '2020-07-18 17:55:12', '2020-07-18 17:55:12');
INSERT INTO `admin_operation_log` VALUES ('2271', '0', 'admin/auth/login', 'POST', '117.136.12.184', '{\"_token\":\"fVwb07cMVRyIbzXdlI4lRipaO8lHHLkSDefXI8GK\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-18 17:55:15', '2020-07-18 17:55:15');
INSERT INTO `admin_operation_log` VALUES ('2272', '1', 'admin', 'GET', '117.136.12.184', '[]', '2020-07-18 17:55:16', '2020-07-18 17:55:16');
INSERT INTO `admin_operation_log` VALUES ('2273', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 17:55:18', '2020-07-18 17:55:18');
INSERT INTO `admin_operation_log` VALUES ('2274', '1', 'admin/push/3,4,5,6,7,8', 'DELETE', '117.136.12.184', '{\"_method\":\"delete\",\"_token\":\"k5TfPiQy4EuBuOJ8Rd0byeIIqKXhCgnktL8L6WkR\"}', '2020-07-18 17:55:24', '2020-07-18 17:55:24');
INSERT INTO `admin_operation_log` VALUES ('2275', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 17:55:24', '2020-07-18 17:55:24');
INSERT INTO `admin_operation_log` VALUES ('2276', '1', 'admin/push/create', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 17:55:26', '2020-07-18 17:55:26');
INSERT INTO `admin_operation_log` VALUES ('2277', '1', 'admin/push', 'POST', '117.136.12.184', '{\"title\":\"\\u901a\\u77e5\\u6d4b\\u8bd5\",\"content\":\"111111111111\",\"_token\":\"k5TfPiQy4EuBuOJ8Rd0byeIIqKXhCgnktL8L6WkR\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/push\"}', '2020-07-18 17:55:37', '2020-07-18 17:55:37');
INSERT INTO `admin_operation_log` VALUES ('2278', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 17:55:37', '2020-07-18 17:55:37');
INSERT INTO `admin_operation_log` VALUES ('2279', '0', 'admin/auth/login', 'GET', '120.230.122.168', '[]', '2020-07-18 18:40:39', '2020-07-18 18:40:39');
INSERT INTO `admin_operation_log` VALUES ('2280', '0', 'admin/auth/login', 'GET', '120.230.122.168', '[]', '2020-07-18 18:40:42', '2020-07-18 18:40:42');
INSERT INTO `admin_operation_log` VALUES ('2281', '0', 'admin/auth/login', 'POST', '120.230.122.168', '{\"_token\":\"AqJeZpJ67a4GNBNskTDYVbN4bu86vOBWfaqfzezM\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-18 18:40:47', '2020-07-18 18:40:47');
INSERT INTO `admin_operation_log` VALUES ('2282', '1', 'admin/product', 'GET', '120.230.122.168', '[]', '2020-07-18 18:40:47', '2020-07-18 18:40:47');
INSERT INTO `admin_operation_log` VALUES ('2283', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:40:55', '2020-07-18 18:40:55');
INSERT INTO `admin_operation_log` VALUES ('2284', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:40:58', '2020-07-18 18:40:58');
INSERT INTO `admin_operation_log` VALUES ('2285', '1', 'admin/swipe', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:41:07', '2020-07-18 18:41:07');
INSERT INTO `admin_operation_log` VALUES ('2286', '1', 'admin/swipe/1/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:41:12', '2020-07-18 18:41:12');
INSERT INTO `admin_operation_log` VALUES ('2287', '1', 'admin/user', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:41:19', '2020-07-18 18:41:19');
INSERT INTO `admin_operation_log` VALUES ('2288', '1', 'admin/video', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:41:22', '2020-07-18 18:41:22');
INSERT INTO `admin_operation_log` VALUES ('2289', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:41:24', '2020-07-18 18:41:24');
INSERT INTO `admin_operation_log` VALUES ('2290', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-18 18:41:25', '2020-07-18 18:41:25');
INSERT INTO `admin_operation_log` VALUES ('2291', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_parent_id_\":\"30\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_children_page_30\":\"1\"}', '2020-07-18 18:41:28', '2020-07-18 18:41:28');
INSERT INTO `admin_operation_log` VALUES ('2292', '1', 'admin/cate/create', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:41:33', '2020-07-18 18:41:33');
INSERT INTO `admin_operation_log` VALUES ('2293', '1', 'admin/push', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:41:42', '2020-07-18 18:41:42');
INSERT INTO `admin_operation_log` VALUES ('2294', '1', 'admin/push/9/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:41:47', '2020-07-18 18:41:47');
INSERT INTO `admin_operation_log` VALUES ('2295', '1', 'admin/push/9', 'PUT', '120.230.122.168', '{\"title\":\"\\u901a\\u77e5\\u6d4b\\u8bd5\",\"content\":\"\\u6d4b\\u8bd5\\u54c8\\u54c8\\u54c8\\u54c8\\u54c8\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/push\"}', '2020-07-18 18:41:56', '2020-07-18 18:41:56');
INSERT INTO `admin_operation_log` VALUES ('2296', '1', 'admin/push', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:41:58', '2020-07-18 18:41:58');
INSERT INTO `admin_operation_log` VALUES ('2297', '1', 'admin/help', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:42:20', '2020-07-18 18:42:20');
INSERT INTO `admin_operation_log` VALUES ('2298', '1', 'admin/help/1/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:42:27', '2020-07-18 18:42:27');
INSERT INTO `admin_operation_log` VALUES ('2299', '1', 'admin/help/1', 'PUT', '120.230.122.168', '{\"content\":\"<p>\\u6d4b\\u8bd5\\u54c8\\u54c8\\u54c8\\u54c8\\u54c8\\u5e2e\\u52a9\\u4e2d\\u5fc3\\u5185\\u5bb9<\\/p>\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/help\"}', '2020-07-18 18:42:56', '2020-07-18 18:42:56');
INSERT INTO `admin_operation_log` VALUES ('2300', '1', 'admin/help', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:42:57', '2020-07-18 18:42:57');
INSERT INTO `admin_operation_log` VALUES ('2301', '1', 'admin/about', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:43:06', '2020-07-18 18:43:06');
INSERT INTO `admin_operation_log` VALUES ('2302', '1', 'admin/about/1/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:43:09', '2020-07-18 18:43:09');
INSERT INTO `admin_operation_log` VALUES ('2303', '1', 'admin/tixian', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:43:17', '2020-07-18 18:43:17');
INSERT INTO `admin_operation_log` VALUES ('2304', '1', 'admin/order', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:43:18', '2020-07-18 18:43:18');
INSERT INTO `admin_operation_log` VALUES ('2305', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:43:20', '2020-07-18 18:43:20');
INSERT INTO `admin_operation_log` VALUES ('2306', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:43:27', '2020-07-18 18:43:27');
INSERT INTO `admin_operation_log` VALUES ('2307', '1', 'admin/cate', 'GET', '120.230.122.168', '[]', '2020-07-18 18:43:28', '2020-07-18 18:43:28');
INSERT INTO `admin_operation_log` VALUES ('2308', '1', 'admin/cate/create', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:43:37', '2020-07-18 18:43:37');
INSERT INTO `admin_operation_log` VALUES ('2309', '1', 'admin/cate', 'POST', '120.230.122.168', '{\"text\":\"\\u54c8\\u54c8\\u54c8\\u54c8\",\"parent_id\":\"30\",\"image\":null,\"file-image\":null,\"_file_\":null,\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-18 18:43:44', '2020-07-18 18:43:44');
INSERT INTO `admin_operation_log` VALUES ('2310', '1', 'admin/cate', 'POST', '120.230.122.168', '{\"text\":\"\\u54c8\\u54c8\\u54c8\\u54c8\",\"parent_id\":\"30\",\"image\":null,\"file-image\":null,\"_file_\":null,\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-18 18:43:47', '2020-07-18 18:43:47');
INSERT INTO `admin_operation_log` VALUES ('2311', '1', 'admin/cate', 'POST', '120.230.122.168', '{\"_id\":\"E2OqKg40LaMstJCc\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"upload_column\":\"image\",\"id\":\"WU_FILE_1\",\"name\":\"\\u56fe\\u602a\\u517d_38ed696cd7f38eaa476825e27bc2c100_18533.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Sat Jul 18 2020 16:04:56 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"376575\"}', '2020-07-18 18:44:08', '2020-07-18 18:44:08');
INSERT INTO `admin_operation_log` VALUES ('2312', '1', 'admin/cate', 'POST', '120.230.122.168', '{\"text\":\"\\u54c8\\u54c8\\u54c8\\u54c8\",\"parent_id\":\"30\",\"image\":\"images\\/17594269d7bf5a7f251153aa08716037.png\",\"file-image\":null,\"_file_\":null,\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-18 18:44:15', '2020-07-18 18:44:15');
INSERT INTO `admin_operation_log` VALUES ('2313', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:44:16', '2020-07-18 18:44:16');
INSERT INTO `admin_operation_log` VALUES ('2314', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_parent_id_\":\"30\",\"_tier_\":\"1\",\"_children_page_30\":\"1\"}', '2020-07-18 18:44:43', '2020-07-18 18:44:43');
INSERT INTO `admin_operation_log` VALUES ('2315', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_parent_id_\":\"28\",\"_pjax\":\"#pjax-container\",\"_tier_\":\"1\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_children_page_28\":\"1\"}', '2020-07-18 18:44:55', '2020-07-18 18:44:55');
INSERT INTO `admin_operation_log` VALUES ('2316', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:44:59', '2020-07-18 18:44:59');
INSERT INTO `admin_operation_log` VALUES ('2317', '1', 'admin/product/create', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:45:13', '2020-07-18 18:45:13');
INSERT INTO `admin_operation_log` VALUES ('2318', '1', 'admin/product', 'POST', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"\\u7aef\\u4ee3\",\"smalldescription\":\"\\u554a\\u554a\",\"description\":\"<p>\\u554a\\u554a<\\/p>\",\"smallimage\":null,\"file-smallimage\":null,\"_file_\":null,\"image\":null,\"file-image\":null,\"file\":null,\"price\":\"1\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 18:45:43', '2020-07-18 18:45:43');
INSERT INTO `admin_operation_log` VALUES ('2319', '1', 'admin/product', 'POST', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"\\u7aef\\u4ee3\",\"smalldescription\":\"\\u554a\\u554a\",\"description\":\"<p>\\u554a\\u554a<\\/p>\",\"smallimage\":null,\"file-smallimage\":null,\"_file_\":null,\"image\":null,\"file-image\":null,\"file\":null,\"price\":\"1\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 18:45:46', '2020-07-18 18:45:46');
INSERT INTO `admin_operation_log` VALUES ('2320', '1', 'admin/product', 'POST', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"\\u7aef\\u4ee3\",\"smalldescription\":\"\\u554a\\u554a\",\"description\":\"<p>\\u554a\\u554a<\\/p>\",\"smallimage\":null,\"file-smallimage\":null,\"_file_\":null,\"image\":null,\"file-image\":null,\"file\":null,\"price\":\"1\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 18:45:49', '2020-07-18 18:45:49');
INSERT INTO `admin_operation_log` VALUES ('2321', '1', 'admin/product', 'POST', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"\\u7aef\\u4ee3\",\"smalldescription\":\"\\u554a\\u554a\",\"description\":\"<p>\\u554a\\u554a<\\/p>\",\"smallimage\":null,\"file-smallimage\":null,\"_file_\":null,\"image\":null,\"file-image\":null,\"file\":null,\"price\":\"1\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 18:46:01', '2020-07-18 18:46:01');
INSERT INTO `admin_operation_log` VALUES ('2322', '1', 'admin/product', 'POST', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"\\u7aef\\u4ee3\",\"smalldescription\":\"\\u554a\\u554a\",\"description\":\"<p>\\u554a\\u554a<\\/p>\",\"smallimage\":null,\"file-smallimage\":null,\"_file_\":null,\"image\":null,\"file-image\":null,\"file\":null,\"price\":\"1\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 18:46:13', '2020-07-18 18:46:13');
INSERT INTO `admin_operation_log` VALUES ('2323', '1', 'admin/product/create', 'GET', '120.230.122.168', '[]', '2020-07-18 18:46:32', '2020-07-18 18:46:32');
INSERT INTO `admin_operation_log` VALUES ('2324', '1', 'admin/product', 'POST', '120.230.122.168', '{\"_id\":\"fv4EsyQ8jeHsx8Y1\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"upload_column\":\"smallimage\",\"id\":\"WU_FILE_0\",\"name\":\"\\u56fe\\u602a\\u517d_38ed696cd7f38eaa476825e27bc2c100_18533.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Sat Jul 18 2020 16:04:56 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"376575\"}', '2020-07-18 18:46:50', '2020-07-18 18:46:50');
INSERT INTO `admin_operation_log` VALUES ('2325', '1', 'admin/product', 'POST', '120.230.122.168', '{\"_id\":\"SmMBkPp70XTvj8bT\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"upload_column\":\"image\",\"id\":\"WU_FILE_1\",\"name\":\"\\u56fe\\u602a\\u517d_38ed696cd7f38eaa476825e27bc2c100_18533.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Sat Jul 18 2020 16:04:56 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"376575\"}', '2020-07-18 18:46:55', '2020-07-18 18:46:55');
INSERT INTO `admin_operation_log` VALUES ('2326', '1', 'admin/product', 'POST', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"\\u554a\\u554a\",\"smalldescription\":\"\\u554a\\u554a\",\"description\":\"<p>\\u554a\\u554a\\u554a\\u554a<\\/p>\",\"smallimage\":\"images\\/34a6763fa7cd40cbe0692a672c0eeb52.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/5326dc2a06698068520dd2820b9cf805.png\",\"file-image\":null,\"file\":null,\"price\":\"1\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\"}', '2020-07-18 18:47:00', '2020-07-18 18:47:00');
INSERT INTO `admin_operation_log` VALUES ('2327', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:47:01', '2020-07-18 18:47:01');
INSERT INTO `admin_operation_log` VALUES ('2328', '1', 'admin/product/10/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:48:47', '2020-07-18 18:48:47');
INSERT INTO `admin_operation_log` VALUES ('2329', '1', 'admin/product/10', 'PUT', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"\\u554a\\u554a\",\"smalldescription\":\"\\u554a\\u554a\",\"description\":\"<p>\\u554a\\u554a\\u554a\\u554a<\\/p>\",\"smallimage\":\"images\\/34a6763fa7cd40cbe0692a672c0eeb52.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/5326dc2a06698068520dd2820b9cf805.png\",\"file-image\":null,\"file\":null,\"price\":\"0.01\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 18:49:06', '2020-07-18 18:49:06');
INSERT INTO `admin_operation_log` VALUES ('2330', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:49:06', '2020-07-18 18:49:06');
INSERT INTO `admin_operation_log` VALUES ('2331', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:50:16', '2020-07-18 18:50:16');
INSERT INTO `admin_operation_log` VALUES ('2332', '1', 'admin/cate/create', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:50:22', '2020-07-18 18:50:22');
INSERT INTO `admin_operation_log` VALUES ('2333', '1', 'admin/cate', 'POST', '120.230.122.168', '{\"_id\":\"xcc7B87LpTD7FKco\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"upload_column\":\"image\",\"id\":\"WU_FILE_0\",\"name\":\"\\u56fe\\u602a\\u517d_38ed696cd7f38eaa476825e27bc2c100_18533.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Sat Jul 18 2020 16:04:56 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"376575\"}', '2020-07-18 18:50:33', '2020-07-18 18:50:33');
INSERT INTO `admin_operation_log` VALUES ('2334', '1', 'admin/cate', 'POST', '120.230.122.168', '{\"text\":\"\\u641c\\u7d22\",\"parent_id\":\"28\",\"image\":\"images\\/8717c966cf1b53a93c6a626d5a48da9b.png\",\"file-image\":null,\"_file_\":null,\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/cate\"}', '2020-07-18 18:50:34', '2020-07-18 18:50:34');
INSERT INTO `admin_operation_log` VALUES ('2335', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:50:34', '2020-07-18 18:50:34');
INSERT INTO `admin_operation_log` VALUES ('2336', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_parent_id_\":\"28\",\"_tier_\":\"1\",\"_children_page_28\":\"1\"}', '2020-07-18 18:50:57', '2020-07-18 18:50:57');
INSERT INTO `admin_operation_log` VALUES ('2337', '1', 'admin/cate/57', 'DELETE', '120.230.122.168', '{\"_method\":\"delete\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\"}', '2020-07-18 18:51:02', '2020-07-18 18:51:02');
INSERT INTO `admin_operation_log` VALUES ('2338', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:51:03', '2020-07-18 18:51:03');
INSERT INTO `admin_operation_log` VALUES ('2339', '1', 'admin/push', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 18:53:46', '2020-07-18 18:53:46');
INSERT INTO `admin_operation_log` VALUES ('2340', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:00:29', '2020-07-18 19:00:29');
INSERT INTO `admin_operation_log` VALUES ('2341', '1', 'admin/product/create', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:00:31', '2020-07-18 19:00:31');
INSERT INTO `admin_operation_log` VALUES ('2342', '1', 'admin/swipe', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:00:46', '2020-07-18 19:00:46');
INSERT INTO `admin_operation_log` VALUES ('2343', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:00:48', '2020-07-18 19:00:48');
INSERT INTO `admin_operation_log` VALUES ('2344', '1', 'admin/user', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:00:52', '2020-07-18 19:00:52');
INSERT INTO `admin_operation_log` VALUES ('2345', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:00:54', '2020-07-18 19:00:54');
INSERT INTO `admin_operation_log` VALUES ('2346', '1', 'admin/product/6/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:00:57', '2020-07-18 19:00:57');
INSERT INTO `admin_operation_log` VALUES ('2347', '1', 'admin/order', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:01:05', '2020-07-18 19:01:05');
INSERT INTO `admin_operation_log` VALUES ('2348', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:01:17', '2020-07-18 19:01:17');
INSERT INTO `admin_operation_log` VALUES ('2349', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:01:44', '2020-07-18 19:01:44');
INSERT INTO `admin_operation_log` VALUES ('2350', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:01:47', '2020-07-18 19:01:47');
INSERT INTO `admin_operation_log` VALUES ('2351', '1', 'admin/push/9/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:01:50', '2020-07-18 19:01:50');
INSERT INTO `admin_operation_log` VALUES ('2352', '1', 'admin/push/9/edit', 'GET', '117.136.12.184', '[]', '2020-07-18 19:05:09', '2020-07-18 19:05:09');
INSERT INTO `admin_operation_log` VALUES ('2353', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:05:12', '2020-07-18 19:05:12');
INSERT INTO `admin_operation_log` VALUES ('2354', '1', 'admin/product/8/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:05:14', '2020-07-18 19:05:14');
INSERT INTO `admin_operation_log` VALUES ('2355', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:05:21', '2020-07-18 19:05:21');
INSERT INTO `admin_operation_log` VALUES ('2356', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:05:39', '2020-07-18 19:05:39');
INSERT INTO `admin_operation_log` VALUES ('2357', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:05:40', '2020-07-18 19:05:40');
INSERT INTO `admin_operation_log` VALUES ('2358', '1', 'admin/product/10/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:05:43', '2020-07-18 19:05:43');
INSERT INTO `admin_operation_log` VALUES ('2359', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:05:47', '2020-07-18 19:05:47');
INSERT INTO `admin_operation_log` VALUES ('2360', '1', 'admin/order', 'GET', '120.230.122.168', '[]', '2020-07-18 19:11:01', '2020-07-18 19:11:01');
INSERT INTO `admin_operation_log` VALUES ('2361', '1', 'admin/video', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:11:03', '2020-07-18 19:11:03');
INSERT INTO `admin_operation_log` VALUES ('2362', '1', 'admin/swipe', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:11:03', '2020-07-18 19:11:03');
INSERT INTO `admin_operation_log` VALUES ('2363', '1', 'admin', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:11:04', '2020-07-18 19:11:04');
INSERT INTO `admin_operation_log` VALUES ('2364', '1', 'admin/swipe', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:11:08', '2020-07-18 19:11:08');
INSERT INTO `admin_operation_log` VALUES ('2365', '1', 'admin/user', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:11:09', '2020-07-18 19:11:09');
INSERT INTO `admin_operation_log` VALUES ('2366', '1', 'admin/video', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:11:10', '2020-07-18 19:11:10');
INSERT INTO `admin_operation_log` VALUES ('2367', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:11:12', '2020-07-18 19:11:12');
INSERT INTO `admin_operation_log` VALUES ('2368', '1', 'admin/push', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:11:13', '2020-07-18 19:11:13');
INSERT INTO `admin_operation_log` VALUES ('2369', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:11:16', '2020-07-18 19:11:16');
INSERT INTO `admin_operation_log` VALUES ('2370', '1', 'admin/order', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:11:18', '2020-07-18 19:11:18');
INSERT INTO `admin_operation_log` VALUES ('2371', '1', 'admin/help', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:11:20', '2020-07-18 19:11:20');
INSERT INTO `admin_operation_log` VALUES ('2372', '1', 'admin/about', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:11:25', '2020-07-18 19:11:25');
INSERT INTO `admin_operation_log` VALUES ('2373', '1', 'admin/tixian', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:11:28', '2020-07-18 19:11:28');
INSERT INTO `admin_operation_log` VALUES ('2374', '1', 'admin/about', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:11:31', '2020-07-18 19:11:31');
INSERT INTO `admin_operation_log` VALUES ('2375', '1', 'admin/about/1/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:11:41', '2020-07-18 19:11:41');
INSERT INTO `admin_operation_log` VALUES ('2376', '1', 'admin/help', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:11:43', '2020-07-18 19:11:43');
INSERT INTO `admin_operation_log` VALUES ('2377', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:12:39', '2020-07-18 19:12:39');
INSERT INTO `admin_operation_log` VALUES ('2378', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:12:40', '2020-07-18 19:12:40');
INSERT INTO `admin_operation_log` VALUES ('2379', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:12:41', '2020-07-18 19:12:41');
INSERT INTO `admin_operation_log` VALUES ('2380', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:12:42', '2020-07-18 19:12:42');
INSERT INTO `admin_operation_log` VALUES ('2381', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:12:43', '2020-07-18 19:12:43');
INSERT INTO `admin_operation_log` VALUES ('2382', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:12:45', '2020-07-18 19:12:45');
INSERT INTO `admin_operation_log` VALUES ('2383', '1', 'admin/push', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:13:23', '2020-07-18 19:13:23');
INSERT INTO `admin_operation_log` VALUES ('2384', '1', 'admin/push/9/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:13:30', '2020-07-18 19:13:30');
INSERT INTO `admin_operation_log` VALUES ('2385', '1', 'admin/push', 'GET', '117.136.12.184', '[]', '2020-07-18 19:13:52', '2020-07-18 19:13:52');
INSERT INTO `admin_operation_log` VALUES ('2386', '1', 'admin/push/9/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:13:55', '2020-07-18 19:13:55');
INSERT INTO `admin_operation_log` VALUES ('2387', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:13:57', '2020-07-18 19:13:57');
INSERT INTO `admin_operation_log` VALUES ('2388', '1', 'admin/push', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:14:12', '2020-07-18 19:14:12');
INSERT INTO `admin_operation_log` VALUES ('2389', '1', 'admin/push/9/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:14:13', '2020-07-18 19:14:13');
INSERT INTO `admin_operation_log` VALUES ('2390', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:14:14', '2020-07-18 19:14:14');
INSERT INTO `admin_operation_log` VALUES ('2391', '1', 'admin/push/create', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:14:15', '2020-07-18 19:14:15');
INSERT INTO `admin_operation_log` VALUES ('2392', '1', 'admin/push', 'POST', '120.230.122.168', '{\"title\":\"\\u54c8\\u54c8\",\"content\":\"\\u6d4b\\u8bd5\\u7684\\u54c8\\u54c8\\u54c8\\u54c8\",\"_token\":\"hEjTNm7wzTX3TZjtVyeAnaAiWPKPOr8mj6oTsxbU\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/push\"}', '2020-07-18 19:14:23', '2020-07-18 19:14:23');
INSERT INTO `admin_operation_log` VALUES ('2393', '1', 'admin/push', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:14:24', '2020-07-18 19:14:24');
INSERT INTO `admin_operation_log` VALUES ('2394', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:14:57', '2020-07-18 19:14:57');
INSERT INTO `admin_operation_log` VALUES ('2395', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:14:59', '2020-07-18 19:14:59');
INSERT INTO `admin_operation_log` VALUES ('2396', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:15:00', '2020-07-18 19:15:00');
INSERT INTO `admin_operation_log` VALUES ('2397', '1', 'admin/video', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:15:01', '2020-07-18 19:15:01');
INSERT INTO `admin_operation_log` VALUES ('2398', '1', 'admin/user', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:15:02', '2020-07-18 19:15:02');
INSERT INTO `admin_operation_log` VALUES ('2399', '1', 'admin/video', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:15:03', '2020-07-18 19:15:03');
INSERT INTO `admin_operation_log` VALUES ('2400', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:15:03', '2020-07-18 19:15:03');
INSERT INTO `admin_operation_log` VALUES ('2401', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:15:48', '2020-07-18 19:15:48');
INSERT INTO `admin_operation_log` VALUES ('2402', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:15:49', '2020-07-18 19:15:49');
INSERT INTO `admin_operation_log` VALUES ('2403', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:15:51', '2020-07-18 19:15:51');
INSERT INTO `admin_operation_log` VALUES ('2404', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:15:52', '2020-07-18 19:15:52');
INSERT INTO `admin_operation_log` VALUES ('2405', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:10', '2020-07-18 19:16:10');
INSERT INTO `admin_operation_log` VALUES ('2406', '1', 'admin/product/6/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:13', '2020-07-18 19:16:13');
INSERT INTO `admin_operation_log` VALUES ('2407', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:15', '2020-07-18 19:16:15');
INSERT INTO `admin_operation_log` VALUES ('2408', '1', 'admin/push', 'GET', '120.230.122.168', '[]', '2020-07-18 19:16:19', '2020-07-18 19:16:19');
INSERT INTO `admin_operation_log` VALUES ('2409', '1', 'admin/auth/menu', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:19', '2020-07-18 19:16:19');
INSERT INTO `admin_operation_log` VALUES ('2410', '1', 'admin/push', 'GET', '120.230.122.168', '[]', '2020-07-18 19:16:21', '2020-07-18 19:16:21');
INSERT INTO `admin_operation_log` VALUES ('2411', '1', 'admin/push', 'GET', '120.230.122.168', '[]', '2020-07-18 19:16:23', '2020-07-18 19:16:23');
INSERT INTO `admin_operation_log` VALUES ('2412', '1', 'admin/push', 'GET', '120.230.122.168', '[]', '2020-07-18 19:16:25', '2020-07-18 19:16:25');
INSERT INTO `admin_operation_log` VALUES ('2413', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:27', '2020-07-18 19:16:27');
INSERT INTO `admin_operation_log` VALUES ('2414', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:28', '2020-07-18 19:16:28');
INSERT INTO `admin_operation_log` VALUES ('2415', '1', 'admin/auth/menu', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:29', '2020-07-18 19:16:29');
INSERT INTO `admin_operation_log` VALUES ('2416', '1', 'admin/product/create', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:30', '2020-07-18 19:16:30');
INSERT INTO `admin_operation_log` VALUES ('2417', '1', 'admin/product/create', 'GET', '120.230.122.168', '[]', '2020-07-18 19:16:37', '2020-07-18 19:16:37');
INSERT INTO `admin_operation_log` VALUES ('2418', '1', 'admin/auth/menu/2', 'DELETE', '117.136.12.184', '{\"_method\":\"delete\",\"_token\":\"k5TfPiQy4EuBuOJ8Rd0byeIIqKXhCgnktL8L6WkR\"}', '2020-07-18 19:16:43', '2020-07-18 19:16:43');
INSERT INTO `admin_operation_log` VALUES ('2419', '1', 'admin/auth/menu', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:43', '2020-07-18 19:16:43');
INSERT INTO `admin_operation_log` VALUES ('2420', '1', 'admin/auth/menu', 'GET', '117.136.12.184', '[]', '2020-07-18 19:16:44', '2020-07-18 19:16:44');
INSERT INTO `admin_operation_log` VALUES ('2421', '1', 'admin/product/create', 'GET', '120.230.122.168', '[]', '2020-07-18 19:16:46', '2020-07-18 19:16:46');
INSERT INTO `admin_operation_log` VALUES ('2422', '1', 'admin/product/create', 'GET', '120.230.122.168', '[]', '2020-07-18 19:16:48', '2020-07-18 19:16:48');
INSERT INTO `admin_operation_log` VALUES ('2423', '1', 'admin/swipe', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:49', '2020-07-18 19:16:49');
INSERT INTO `admin_operation_log` VALUES ('2424', '1', 'admin/user', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:50', '2020-07-18 19:16:50');
INSERT INTO `admin_operation_log` VALUES ('2425', '1', 'admin/video', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:50', '2020-07-18 19:16:50');
INSERT INTO `admin_operation_log` VALUES ('2426', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:51', '2020-07-18 19:16:51');
INSERT INTO `admin_operation_log` VALUES ('2427', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:53', '2020-07-18 19:16:53');
INSERT INTO `admin_operation_log` VALUES ('2428', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:54', '2020-07-18 19:16:54');
INSERT INTO `admin_operation_log` VALUES ('2429', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:54', '2020-07-18 19:16:54');
INSERT INTO `admin_operation_log` VALUES ('2430', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:16:55', '2020-07-18 19:16:55');
INSERT INTO `admin_operation_log` VALUES ('2431', '1', 'admin/tixian', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:18:31', '2020-07-18 19:18:31');
INSERT INTO `admin_operation_log` VALUES ('2432', '1', 'admin/about', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:18:32', '2020-07-18 19:18:32');
INSERT INTO `admin_operation_log` VALUES ('2433', '1', 'admin/help', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:18:33', '2020-07-18 19:18:33');
INSERT INTO `admin_operation_log` VALUES ('2434', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:18:34', '2020-07-18 19:18:34');
INSERT INTO `admin_operation_log` VALUES ('2435', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:18:35', '2020-07-18 19:18:35');
INSERT INTO `admin_operation_log` VALUES ('2436', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:18:36', '2020-07-18 19:18:36');
INSERT INTO `admin_operation_log` VALUES ('2437', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:18:49', '2020-07-18 19:18:49');
INSERT INTO `admin_operation_log` VALUES ('2438', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:18:50', '2020-07-18 19:18:50');
INSERT INTO `admin_operation_log` VALUES ('2439', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:18:51', '2020-07-18 19:18:51');
INSERT INTO `admin_operation_log` VALUES ('2440', '1', 'admin/video', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:18:51', '2020-07-18 19:18:51');
INSERT INTO `admin_operation_log` VALUES ('2441', '1', 'admin/swipe', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:18:52', '2020-07-18 19:18:52');
INSERT INTO `admin_operation_log` VALUES ('2442', '1', 'admin/user', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:18:54', '2020-07-18 19:18:54');
INSERT INTO `admin_operation_log` VALUES ('2443', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:19:26', '2020-07-18 19:19:26');
INSERT INTO `admin_operation_log` VALUES ('2444', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:19:27', '2020-07-18 19:19:27');
INSERT INTO `admin_operation_log` VALUES ('2445', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:19:28', '2020-07-18 19:19:28');
INSERT INTO `admin_operation_log` VALUES ('2446', '1', 'admin/push/9/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:19:40', '2020-07-18 19:19:40');
INSERT INTO `admin_operation_log` VALUES ('2447', '1', 'admin/push/9/edit', 'GET', '117.136.12.184', '[]', '2020-07-18 19:20:05', '2020-07-18 19:20:05');
INSERT INTO `admin_operation_log` VALUES ('2448', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:20:09', '2020-07-18 19:20:09');
INSERT INTO `admin_operation_log` VALUES ('2449', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:20:09', '2020-07-18 19:20:09');
INSERT INTO `admin_operation_log` VALUES ('2450', '1', 'admin/push', 'GET', '117.136.12.184', '[]', '2020-07-18 19:20:30', '2020-07-18 19:20:30');
INSERT INTO `admin_operation_log` VALUES ('2451', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:20:32', '2020-07-18 19:20:32');
INSERT INTO `admin_operation_log` VALUES ('2452', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:20:35', '2020-07-18 19:20:35');
INSERT INTO `admin_operation_log` VALUES ('2453', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:22:05', '2020-07-18 19:22:05');
INSERT INTO `admin_operation_log` VALUES ('2454', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:22:05', '2020-07-18 19:22:05');
INSERT INTO `admin_operation_log` VALUES ('2455', '1', 'admin/push', 'GET', '117.136.12.184', '[]', '2020-07-18 19:22:09', '2020-07-18 19:22:09');
INSERT INTO `admin_operation_log` VALUES ('2456', '1', 'admin/push/9', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:22:11', '2020-07-18 19:22:11');
INSERT INTO `admin_operation_log` VALUES ('2457', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:22:13', '2020-07-18 19:22:13');
INSERT INTO `admin_operation_log` VALUES ('2458', '1', 'admin/push/9', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:22:24', '2020-07-18 19:22:24');
INSERT INTO `admin_operation_log` VALUES ('2459', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:22:26', '2020-07-18 19:22:26');
INSERT INTO `admin_operation_log` VALUES ('2460', '1', 'admin/push/10', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:22:28', '2020-07-18 19:22:28');
INSERT INTO `admin_operation_log` VALUES ('2461', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:22:29', '2020-07-18 19:22:29');
INSERT INTO `admin_operation_log` VALUES ('2462', '1', 'admin/push/create', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:22:30', '2020-07-18 19:22:30');
INSERT INTO `admin_operation_log` VALUES ('2463', '1', 'admin/cate', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:22:32', '2020-07-18 19:22:32');
INSERT INTO `admin_operation_log` VALUES ('2464', '1', 'admin/video', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:22:36', '2020-07-18 19:22:36');
INSERT INTO `admin_operation_log` VALUES ('2465', '1', 'admin/video', 'GET', '117.136.12.184', '[]', '2020-07-18 19:23:01', '2020-07-18 19:23:01');
INSERT INTO `admin_operation_log` VALUES ('2466', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:23:02', '2020-07-18 19:23:02');
INSERT INTO `admin_operation_log` VALUES ('2467', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:23:03', '2020-07-18 19:23:03');
INSERT INTO `admin_operation_log` VALUES ('2468', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:24:08', '2020-07-18 19:24:08');
INSERT INTO `admin_operation_log` VALUES ('2469', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:24:09', '2020-07-18 19:24:09');
INSERT INTO `admin_operation_log` VALUES ('2470', '1', 'admin/product/6/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:24:17', '2020-07-18 19:24:17');
INSERT INTO `admin_operation_log` VALUES ('2471', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:24:20', '2020-07-18 19:24:20');
INSERT INTO `admin_operation_log` VALUES ('2472', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:24:22', '2020-07-18 19:24:22');
INSERT INTO `admin_operation_log` VALUES ('2473', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:24:23', '2020-07-18 19:24:23');
INSERT INTO `admin_operation_log` VALUES ('2474', '1', 'admin/push/9', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:24:25', '2020-07-18 19:24:25');
INSERT INTO `admin_operation_log` VALUES ('2475', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:24:26', '2020-07-18 19:24:26');
INSERT INTO `admin_operation_log` VALUES ('2476', '1', 'admin/push/create', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:24:29', '2020-07-18 19:24:29');
INSERT INTO `admin_operation_log` VALUES ('2477', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 19:43:05', '2020-07-18 19:43:05');
INSERT INTO `admin_operation_log` VALUES ('2478', '0', 'admin/auth/login', 'GET', '117.136.12.184', '[]', '2020-07-18 21:54:42', '2020-07-18 21:54:42');
INSERT INTO `admin_operation_log` VALUES ('2479', '0', 'admin/auth/login', 'POST', '117.136.12.184', '{\"_token\":\"5gVe3cLgaWHbocAj0H9MuUu8vTU2s9IY2wgIXA2J\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-18 21:56:16', '2020-07-18 21:56:16');
INSERT INTO `admin_operation_log` VALUES ('2480', '1', 'admin', 'GET', '117.136.12.184', '[]', '2020-07-18 21:56:16', '2020-07-18 21:56:16');
INSERT INTO `admin_operation_log` VALUES ('2481', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 21:56:18', '2020-07-18 21:56:18');
INSERT INTO `admin_operation_log` VALUES ('2482', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 21:56:19', '2020-07-18 21:56:19');
INSERT INTO `admin_operation_log` VALUES ('2483', '0', 'admin/auth/login', 'GET', '116.22.164.15', '[]', '2020-07-18 21:57:00', '2020-07-18 21:57:00');
INSERT INTO `admin_operation_log` VALUES ('2484', '0', 'admin/auth/login', 'POST', '116.22.164.15', '{\"_token\":\"Dmuxn78LYnmREc33Wy2zg34j8fiKBJCZMNG5fN3V\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-18 21:57:03', '2020-07-18 21:57:03');
INSERT INTO `admin_operation_log` VALUES ('2485', '1', 'admin', 'GET', '116.22.164.15', '[]', '2020-07-18 21:57:03', '2020-07-18 21:57:03');
INSERT INTO `admin_operation_log` VALUES ('2486', '1', 'admin/order', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 21:57:06', '2020-07-18 21:57:06');
INSERT INTO `admin_operation_log` VALUES ('2487', '1', 'admin/order', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-07-18 21:57:10', '2020-07-18 21:57:10');
INSERT INTO `admin_operation_log` VALUES ('2488', '1', 'admin/order/48', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 21:57:19', '2020-07-18 21:57:19');
INSERT INTO `admin_operation_log` VALUES ('2489', '1', 'admin/order/48', 'GET', '116.22.164.15', '[]', '2020-07-18 21:57:32', '2020-07-18 21:57:32');
INSERT INTO `admin_operation_log` VALUES ('2490', '1', 'admin/order', 'GET', '117.136.12.184', '[]', '2020-07-18 21:59:26', '2020-07-18 21:59:26');
INSERT INTO `admin_operation_log` VALUES ('2491', '1', 'admin/order/48', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:01:57', '2020-07-18 22:01:57');
INSERT INTO `admin_operation_log` VALUES ('2492', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:06:53', '2020-07-18 22:06:53');
INSERT INTO `admin_operation_log` VALUES ('2493', '1', 'admin/order/48', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:06:57', '2020-07-18 22:06:57');
INSERT INTO `admin_operation_log` VALUES ('2494', '1', 'admin/order/48', 'GET', '117.136.12.184', '[]', '2020-07-18 22:07:02', '2020-07-18 22:07:02');
INSERT INTO `admin_operation_log` VALUES ('2495', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:07:05', '2020-07-18 22:07:05');
INSERT INTO `admin_operation_log` VALUES ('2496', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:07:11', '2020-07-18 22:07:11');
INSERT INTO `admin_operation_log` VALUES ('2497', '1', 'admin/order/48', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:07:13', '2020-07-18 22:07:13');
INSERT INTO `admin_operation_log` VALUES ('2498', '0', 'admin/auth/login', 'GET', '120.230.122.168', '[]', '2020-07-18 22:28:15', '2020-07-18 22:28:15');
INSERT INTO `admin_operation_log` VALUES ('2499', '0', 'admin/auth/login', 'POST', '120.230.122.168', '{\"_token\":\"9up4sdr6P0JQ9rVfDzp4EGlzd8vxS6Fnhi4RAgSn\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-18 22:28:17', '2020-07-18 22:28:17');
INSERT INTO `admin_operation_log` VALUES ('2500', '1', 'admin', 'GET', '120.230.122.168', '[]', '2020-07-18 22:28:17', '2020-07-18 22:28:17');
INSERT INTO `admin_operation_log` VALUES ('2501', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:28:19', '2020-07-18 22:28:19');
INSERT INTO `admin_operation_log` VALUES ('2502', '1', 'admin/product/create', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:28:21', '2020-07-18 22:28:21');
INSERT INTO `admin_operation_log` VALUES ('2503', '1', 'admin/product', 'POST', '120.230.122.168', '{\"_id\":\"ZQ6A22yRC6D50gxa\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"upload_column\":\"smallimage\",\"id\":\"WU_FILE_0\",\"name\":\"\\u56fe\\u602a\\u517d_38ed696cd7f38eaa476825e27bc2c100_18533.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Sat Jul 18 2020 16:04:56 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"376575\"}', '2020-07-18 22:28:32', '2020-07-18 22:28:32');
INSERT INTO `admin_operation_log` VALUES ('2504', '1', 'admin/product', 'POST', '120.230.122.168', '{\"_id\":\"0BVaVvLMXetDa4Pz\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"upload_column\":\"image\",\"id\":\"WU_FILE_1\",\"name\":\"\\u56fe\\u602a\\u517d_38ed696cd7f38eaa476825e27bc2c100_18533.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Sat Jul 18 2020 16:04:56 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"376575\"}', '2020-07-18 22:28:36', '2020-07-18 22:28:36');
INSERT INTO `admin_operation_log` VALUES ('2505', '1', 'admin/product', 'POST', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"123\",\"smalldescription\":\"12\",\"description\":\"<p>111<\\/p>\",\"smallimage\":\"images\\/fd93d163bd692a0fe87eb205d42e431d.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/26e2a7cec1864907f4e5a9079be77468.png\",\"file-image\":null,\"file\":null,\"price\":\"1\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 22:28:39', '2020-07-18 22:28:39');
INSERT INTO `admin_operation_log` VALUES ('2506', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:28:39', '2020-07-18 22:28:39');
INSERT INTO `admin_operation_log` VALUES ('2507', '1', 'admin/product/create', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:28:42', '2020-07-18 22:28:42');
INSERT INTO `admin_operation_log` VALUES ('2508', '1', 'admin/product', 'POST', '120.230.122.168', '{\"_id\":\"3FBoXSAgVTLYzYE2\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"upload_column\":\"smallimage\",\"id\":\"WU_FILE_2\",\"name\":\"\\u56fe\\u602a\\u517d_38ed696cd7f38eaa476825e27bc2c100_18533.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Sat Jul 18 2020 16:04:56 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"376575\"}', '2020-07-18 22:28:52', '2020-07-18 22:28:52');
INSERT INTO `admin_operation_log` VALUES ('2509', '1', 'admin/product', 'POST', '120.230.122.168', '{\"_id\":\"zz6xgOqH4d4EVPVL\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"upload_column\":\"image\",\"id\":\"WU_FILE_3\",\"name\":\"\\u56fe\\u602a\\u517d_38ed696cd7f38eaa476825e27bc2c100_18533.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Sat Jul 18 2020 16:04:56 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"376575\"}', '2020-07-18 22:28:56', '2020-07-18 22:28:56');
INSERT INTO `admin_operation_log` VALUES ('2510', '1', 'admin/product', 'POST', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"122\",\"smalldescription\":\"334\",\"description\":\"<p>444<\\/p>\",\"smallimage\":\"images\\/a3d910434b34a6611eeb121607d12869.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/81e4eee0e8ac326838e31b564efe3e87.png\",\"file-image\":null,\"file\":null,\"price\":\"444\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 22:28:59', '2020-07-18 22:28:59');
INSERT INTO `admin_operation_log` VALUES ('2511', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:28:59', '2020-07-18 22:28:59');
INSERT INTO `admin_operation_log` VALUES ('2512', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:35:10', '2020-07-18 22:35:10');
INSERT INTO `admin_operation_log` VALUES ('2513', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:35:11', '2020-07-18 22:35:11');
INSERT INTO `admin_operation_log` VALUES ('2514', '1', 'admin/order', 'GET', '117.136.12.184', '[]', '2020-07-18 22:35:15', '2020-07-18 22:35:15');
INSERT INTO `admin_operation_log` VALUES ('2515', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:35:25', '2020-07-18 22:35:25');
INSERT INTO `admin_operation_log` VALUES ('2516', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:35:27', '2020-07-18 22:35:27');
INSERT INTO `admin_operation_log` VALUES ('2517', '1', 'admin/order/41', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:35:49', '2020-07-18 22:35:49');
INSERT INTO `admin_operation_log` VALUES ('2518', '1', 'admin/order/41', 'GET', '117.136.12.184', '[]', '2020-07-18 22:35:51', '2020-07-18 22:35:51');
INSERT INTO `admin_operation_log` VALUES ('2519', '1', 'admin/order/49,41,38,16,13', 'DELETE', '117.136.12.184', '{\"_method\":\"delete\",\"_token\":\"5HXL25t0BzjhkkDKBPIqoEHdyrbWauDbnFUlem8G\"}', '2020-07-18 22:36:09', '2020-07-18 22:36:09');
INSERT INTO `admin_operation_log` VALUES ('2520', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:36:09', '2020-07-18 22:36:09');
INSERT INTO `admin_operation_log` VALUES ('2521', '1', 'admin/order', 'GET', '117.136.12.184', '[]', '2020-07-18 22:36:13', '2020-07-18 22:36:13');
INSERT INTO `admin_operation_log` VALUES ('2522', '1', 'admin/product/11/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:48:05', '2020-07-18 22:48:05');
INSERT INTO `admin_operation_log` VALUES ('2523', '1', 'admin/product/11/edit', 'GET', '120.230.122.168', '[]', '2020-07-18 22:48:10', '2020-07-18 22:48:10');
INSERT INTO `admin_operation_log` VALUES ('2524', '1', 'admin/product/11', 'PUT', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"123\",\"smalldescription\":\"12\",\"description\":\"<p>111<\\/p>\",\"smallimage\":\"images\\/fd93d163bd692a0fe87eb205d42e431d.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/26e2a7cec1864907f4e5a9079be77468.png\",\"file-image\":null,\"file\":null,\"price\":\"1.00\",\"recommended\":\"1\",\"status\":\"2\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\"}', '2020-07-18 22:48:13', '2020-07-18 22:48:13');
INSERT INTO `admin_operation_log` VALUES ('2525', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:48:13', '2020-07-18 22:48:13');
INSERT INTO `admin_operation_log` VALUES ('2526', '1', 'admin/product/10/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:48:17', '2020-07-18 22:48:17');
INSERT INTO `admin_operation_log` VALUES ('2527', '1', 'admin/product/10', 'PUT', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"\\u554a\\u554a\",\"smalldescription\":\"\\u554a\\u554a\",\"description\":\"<p>\\u554a\\u554a\\u554a\\u554a<\\/p>\",\"smallimage\":\"images\\/34a6763fa7cd40cbe0692a672c0eeb52.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/5326dc2a06698068520dd2820b9cf805.png\",\"file-image\":null,\"file\":null,\"price\":\"0.01\",\"recommended\":\"1\",\"status\":\"2\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 22:48:21', '2020-07-18 22:48:21');
INSERT INTO `admin_operation_log` VALUES ('2528', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:48:21', '2020-07-18 22:48:21');
INSERT INTO `admin_operation_log` VALUES ('2529', '1', 'admin/product/10/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:49:19', '2020-07-18 22:49:19');
INSERT INTO `admin_operation_log` VALUES ('2530', '1', 'admin/product/10', 'PUT', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"\\u554a\\u554a\",\"smalldescription\":\"\\u554a\\u554a\",\"description\":\"<p>\\u554a\\u554a\\u554a\\u554a<\\/p>\",\"smallimage\":\"images\\/34a6763fa7cd40cbe0692a672c0eeb52.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/5326dc2a06698068520dd2820b9cf805.png\",\"file-image\":null,\"file\":null,\"price\":\"0.01\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 22:49:23', '2020-07-18 22:49:23');
INSERT INTO `admin_operation_log` VALUES ('2531', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:49:23', '2020-07-18 22:49:23');
INSERT INTO `admin_operation_log` VALUES ('2532', '1', 'admin/product/11/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:49:29', '2020-07-18 22:49:29');
INSERT INTO `admin_operation_log` VALUES ('2533', '1', 'admin/product/11', 'PUT', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"123\",\"smalldescription\":\"12\",\"description\":\"<p>111<\\/p>\",\"smallimage\":\"images\\/fd93d163bd692a0fe87eb205d42e431d.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/26e2a7cec1864907f4e5a9079be77468.png\",\"file-image\":null,\"file\":null,\"price\":\"1.00\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 22:49:33', '2020-07-18 22:49:33');
INSERT INTO `admin_operation_log` VALUES ('2534', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:49:33', '2020-07-18 22:49:33');
INSERT INTO `admin_operation_log` VALUES ('2535', '1', 'admin/order', 'GET', '120.230.122.168', '[]', '2020-07-18 22:49:59', '2020-07-18 22:49:59');
INSERT INTO `admin_operation_log` VALUES ('2536', '1', 'admin/order/74', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 22:50:02', '2020-07-18 22:50:02');
INSERT INTO `admin_operation_log` VALUES ('2537', '1', 'admin/order', 'GET', '120.230.122.168', '[]', '2020-07-18 22:50:06', '2020-07-18 22:50:06');
INSERT INTO `admin_operation_log` VALUES ('2538', '1', 'admin/order', 'GET', '120.230.122.168', '[]', '2020-07-18 23:03:16', '2020-07-18 23:03:16');
INSERT INTO `admin_operation_log` VALUES ('2539', '1', 'admin/product', 'GET', '120.230.122.168', '[]', '2020-07-18 23:11:17', '2020-07-18 23:11:17');
INSERT INTO `admin_operation_log` VALUES ('2540', '1', 'admin/product/12/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:19:11', '2020-07-18 23:19:11');
INSERT INTO `admin_operation_log` VALUES ('2541', '1', 'admin/product/12', 'PUT', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"122\",\"smalldescription\":\"334\",\"description\":\"<p>444<\\/p>\",\"smallimage\":\"images\\/a3d910434b34a6611eeb121607d12869.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/81e4eee0e8ac326838e31b564efe3e87.png\",\"file-image\":null,\"file\":null,\"price\":\"444.00\",\"recommended\":\"1\",\"status\":\"2\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 23:19:14', '2020-07-18 23:19:14');
INSERT INTO `admin_operation_log` VALUES ('2542', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:19:14', '2020-07-18 23:19:14');
INSERT INTO `admin_operation_log` VALUES ('2543', '1', 'admin/product', 'GET', '120.230.122.168', '[]', '2020-07-18 23:20:11', '2020-07-18 23:20:11');
INSERT INTO `admin_operation_log` VALUES ('2544', '1', 'admin/product', 'GET', '120.230.122.168', '[]', '2020-07-18 23:20:13', '2020-07-18 23:20:13');
INSERT INTO `admin_operation_log` VALUES ('2545', '1', 'admin/product', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:31:40', '2020-07-18 23:31:40');
INSERT INTO `admin_operation_log` VALUES ('2546', '1', 'admin/product/create', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:31:45', '2020-07-18 23:31:45');
INSERT INTO `admin_operation_log` VALUES ('2547', '1', 'admin/product', 'POST', '116.22.164.15', '{\"_id\":\"YQezKOliyVWYgQWU\",\"_token\":\"Hbe0UUA66dMnei6xL4IZhpDNG204uykawhdwF1TG\",\"upload_column\":\"smallimage\",\"id\":\"WU_FILE_0\",\"name\":\"31\\u5cf0\\u56de\\u8def\\u8f6c.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 02:14:32 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"303118\"}', '2020-07-18 23:32:11', '2020-07-18 23:32:11');
INSERT INTO `admin_operation_log` VALUES ('2548', '1', 'admin/product', 'POST', '116.22.164.15', '{\"_id\":\"XEur3YFkDpfTQ8f5\",\"_token\":\"Hbe0UUA66dMnei6xL4IZhpDNG204uykawhdwF1TG\",\"upload_column\":\"image\",\"id\":\"WU_FILE_1\",\"name\":\"34\\u5f97\\u5929\\u72ec\\u79c0.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 02:42:12 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"69237\"}', '2020-07-18 23:32:11', '2020-07-18 23:32:11');
INSERT INTO `admin_operation_log` VALUES ('2549', '1', 'admin/product', 'POST', '116.22.164.15', '{\"cid\":\"33\",\"title\":\"\\u4e49\\u8584\\u4e91\\u592988\",\"smalldescription\":\"test\",\"description\":\"<p>test<\\/p>\",\"smallimage\":\"images\\/0e4b0c01ee4cf7eeb229a53b21862abf.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/97f7f50f138775560c3ef31c236a7970.jpg\",\"file-image\":null,\"file\":null,\"price\":\"2\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"Hbe0UUA66dMnei6xL4IZhpDNG204uykawhdwF1TG\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 23:32:15', '2020-07-18 23:32:15');
INSERT INTO `admin_operation_log` VALUES ('2550', '1', 'admin/product', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:32:15', '2020-07-18 23:32:15');
INSERT INTO `admin_operation_log` VALUES ('2551', '1', 'admin/product/create', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:32:30', '2020-07-18 23:32:30');
INSERT INTO `admin_operation_log` VALUES ('2552', '1', 'admin/product', 'POST', '116.22.164.15', '{\"_id\":\"lgyUTsAF9UWJtl76\",\"_token\":\"Hbe0UUA66dMnei6xL4IZhpDNG204uykawhdwF1TG\",\"upload_column\":\"smallimage\",\"id\":\"WU_FILE_2\",\"name\":\"22.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Tue May 27 2014 16:58:19 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"131627\"}', '2020-07-18 23:32:43', '2020-07-18 23:32:43');
INSERT INTO `admin_operation_log` VALUES ('2553', '1', 'admin/product', 'POST', '116.22.164.15', '{\"_id\":\"NGV757ixqyNVuw27\",\"_token\":\"Hbe0UUA66dMnei6xL4IZhpDNG204uykawhdwF1TG\",\"upload_column\":\"image\",\"id\":\"WU_FILE_3\",\"name\":\"23.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 12:48:06 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"145967\"}', '2020-07-18 23:32:44', '2020-07-18 23:32:44');
INSERT INTO `admin_operation_log` VALUES ('2554', '1', 'admin/product', 'POST', '116.22.164.15', '{\"cid\":\"33\",\"title\":\"\\u6d4b\\u8bd5\\u4e8c\\u7ea7\\u5546\\u54c1\",\"smalldescription\":\"test\",\"description\":\"<p>test<\\/p>\",\"smallimage\":\"images\\/fdde76024ae8dc6670d3e7579ef52722.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/bd0aa42dbbabef490912a8d00e573d92.jpg\",\"file-image\":null,\"file\":null,\"price\":\"111\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"Hbe0UUA66dMnei6xL4IZhpDNG204uykawhdwF1TG\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 23:32:45', '2020-07-18 23:32:45');
INSERT INTO `admin_operation_log` VALUES ('2555', '1', 'admin/product', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:32:45', '2020-07-18 23:32:45');
INSERT INTO `admin_operation_log` VALUES ('2556', '1', 'admin/product/create', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:33:16', '2020-07-18 23:33:16');
INSERT INTO `admin_operation_log` VALUES ('2557', '1', 'admin/product', 'POST', '116.22.164.15', '{\"_id\":\"ItGHJwTajamXT4mY\",\"_token\":\"Hbe0UUA66dMnei6xL4IZhpDNG204uykawhdwF1TG\",\"upload_column\":\"smallimage\",\"id\":\"WU_FILE_4\",\"name\":\"13.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jun 14 2020 12:49:34 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"168725\"}', '2020-07-18 23:33:27', '2020-07-18 23:33:27');
INSERT INTO `admin_operation_log` VALUES ('2558', '1', 'admin/product', 'POST', '116.22.164.15', '{\"_id\":\"mvRMaQiOtEMYEK6R\",\"_token\":\"Hbe0UUA66dMnei6xL4IZhpDNG204uykawhdwF1TG\",\"upload_column\":\"image\",\"id\":\"WU_FILE_5\",\"name\":\"22.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Tue May 27 2014 16:58:19 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"131627\"}', '2020-07-18 23:33:28', '2020-07-18 23:33:28');
INSERT INTO `admin_operation_log` VALUES ('2559', '1', 'admin/product', 'POST', '116.22.164.15', '{\"cid\":\"56\",\"title\":\"\\u4e49\\u8584\\u4e91\\u5929\",\"smalldescription\":\"test\",\"description\":\"<p>test<\\/p>\",\"smallimage\":\"images\\/993a06dd7bff88a8a374e42a03a0f97b.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/e48ceec97ca7790c95d79d1dd1e0010e.jpg\",\"file-image\":null,\"file\":null,\"price\":\"11\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"Hbe0UUA66dMnei6xL4IZhpDNG204uykawhdwF1TG\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 23:33:34', '2020-07-18 23:33:34');
INSERT INTO `admin_operation_log` VALUES ('2560', '1', 'admin/product', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:33:34', '2020-07-18 23:33:34');
INSERT INTO `admin_operation_log` VALUES ('2561', '1', 'admin/product', 'GET', '120.230.122.168', '[]', '2020-07-18 23:33:58', '2020-07-18 23:33:58');
INSERT INTO `admin_operation_log` VALUES ('2562', '1', 'admin/product/15/edit', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:34:23', '2020-07-18 23:34:23');
INSERT INTO `admin_operation_log` VALUES ('2563', '1', 'admin/product/15/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:34:41', '2020-07-18 23:34:41');
INSERT INTO `admin_operation_log` VALUES ('2564', '1', 'admin/product/15/edit', 'GET', '120.230.122.168', '[]', '2020-07-18 23:34:43', '2020-07-18 23:34:43');
INSERT INTO `admin_operation_log` VALUES ('2565', '1', 'admin/product/15', 'PUT', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"\\u4e49\\u8584\\u4e91\\u5929\",\"smalldescription\":\"test\",\"description\":\"<p>test<\\/p>\",\"smallimage\":\"images\\/993a06dd7bff88a8a374e42a03a0f97b.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/e48ceec97ca7790c95d79d1dd1e0010e.jpg\",\"file-image\":null,\"file\":null,\"price\":\"11.00\",\"recommended\":\"1\",\"status\":\"2\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\"}', '2020-07-18 23:34:48', '2020-07-18 23:34:48');
INSERT INTO `admin_operation_log` VALUES ('2566', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:34:48', '2020-07-18 23:34:48');
INSERT INTO `admin_operation_log` VALUES ('2567', '1', 'admin/product/12/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:35:51', '2020-07-18 23:35:51');
INSERT INTO `admin_operation_log` VALUES ('2568', '1', 'admin/product/12/edit', 'GET', '120.230.122.168', '[]', '2020-07-18 23:35:54', '2020-07-18 23:35:54');
INSERT INTO `admin_operation_log` VALUES ('2569', '1', 'admin/product/12', 'PUT', '120.230.122.168', '{\"_file_del_\":null,\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"key\":\"images\\/a3d910434b34a6611eeb121607d12869.png\",\"_column\":\"smallimage\"}', '2020-07-18 23:36:02', '2020-07-18 23:36:02');
INSERT INTO `admin_operation_log` VALUES ('2570', '1', 'admin/product/12', 'PUT', '120.230.122.168', '{\"_file_del_\":null,\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"key\":\"images\\/81e4eee0e8ac326838e31b564efe3e87.png\",\"_column\":\"image\"}', '2020-07-18 23:36:04', '2020-07-18 23:36:04');
INSERT INTO `admin_operation_log` VALUES ('2571', '1', 'admin/product/12', 'PUT', '120.230.122.168', '{\"_id\":\"p2XidP9z1ULUVIi8\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"upload_column\":\"smallimage\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"\\u56fe\\u602a\\u517d_38ed696cd7f38eaa476825e27bc2c100_18533.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Sat Jul 18 2020 16:04:56 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"376575\"}', '2020-07-18 23:36:09', '2020-07-18 23:36:09');
INSERT INTO `admin_operation_log` VALUES ('2572', '1', 'admin/product/12', 'PUT', '120.230.122.168', '{\"_id\":\"p2XidP9z1ULUVIi8\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"smallimage\":\"images\\/7dae3ce4212fcc59c971f1238b9faad4.png\"}', '2020-07-18 23:36:09', '2020-07-18 23:36:09');
INSERT INTO `admin_operation_log` VALUES ('2573', '1', 'admin/product/12', 'PUT', '120.230.122.168', '{\"_id\":\"lj9PJ4o327tz20Vo\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"upload_column\":\"image\",\"_method\":\"PUT\",\"id\":\"WU_FILE_1\",\"name\":\"\\u56fe\\u602a\\u517d_38ed696cd7f38eaa476825e27bc2c100_18533.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Sat Jul 18 2020 16:04:56 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"376575\"}', '2020-07-18 23:36:13', '2020-07-18 23:36:13');
INSERT INTO `admin_operation_log` VALUES ('2574', '1', 'admin/product/12', 'PUT', '120.230.122.168', '{\"_id\":\"lj9PJ4o327tz20Vo\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"image\":\"images\\/3e50aa8fb7e1a0d4b6188237f74c7e9c.png\"}', '2020-07-18 23:36:14', '2020-07-18 23:36:14');
INSERT INTO `admin_operation_log` VALUES ('2575', '1', 'admin/product/12', 'PUT', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"122\",\"smalldescription\":\"334\",\"description\":\"<p>444<\\/p>\",\"smallimage\":\"images\\/7dae3ce4212fcc59c971f1238b9faad4.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/3e50aa8fb7e1a0d4b6188237f74c7e9c.png\",\"file-image\":null,\"file\":null,\"price\":\"444.00\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\"}', '2020-07-18 23:36:15', '2020-07-18 23:36:15');
INSERT INTO `admin_operation_log` VALUES ('2576', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:36:15', '2020-07-18 23:36:15');
INSERT INTO `admin_operation_log` VALUES ('2577', '1', 'admin/product/12/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:36:31', '2020-07-18 23:36:31');
INSERT INTO `admin_operation_log` VALUES ('2578', '1', 'admin/product/12', 'PUT', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"122\",\"smalldescription\":\"334\",\"description\":\"<p>444<\\/p>\",\"smallimage\":\"images\\/7dae3ce4212fcc59c971f1238b9faad4.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/3e50aa8fb7e1a0d4b6188237f74c7e9c.png\",\"file-image\":null,\"file\":null,\"price\":\"444.00\",\"recommended\":\"1\",\"status\":\"2\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 23:36:35', '2020-07-18 23:36:35');
INSERT INTO `admin_operation_log` VALUES ('2579', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:36:36', '2020-07-18 23:36:36');
INSERT INTO `admin_operation_log` VALUES ('2580', '1', 'admin/product/13/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:38:11', '2020-07-18 23:38:11');
INSERT INTO `admin_operation_log` VALUES ('2581', '1', 'admin/product/13', 'PUT', '120.230.122.168', '{\"cid\":\"33\",\"title\":\"\\u4e49\\u8584\\u4e91\\u592988\",\"smalldescription\":\"test\",\"description\":\"<p>test<\\/p>\",\"smallimage\":\"images\\/0e4b0c01ee4cf7eeb229a53b21862abf.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/97f7f50f138775560c3ef31c236a7970.jpg\",\"file-image\":null,\"file\":null,\"price\":\"2.00\",\"recommended\":\"1\",\"status\":\"2\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 23:38:15', '2020-07-18 23:38:15');
INSERT INTO `admin_operation_log` VALUES ('2582', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:38:15', '2020-07-18 23:38:15');
INSERT INTO `admin_operation_log` VALUES ('2583', '1', 'admin/product', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:38:18', '2020-07-18 23:38:18');
INSERT INTO `admin_operation_log` VALUES ('2584', '1', 'admin/product/14/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:38:18', '2020-07-18 23:38:18');
INSERT INTO `admin_operation_log` VALUES ('2585', '1', 'admin/product/14', 'PUT', '120.230.122.168', '{\"cid\":\"33\",\"title\":\"\\u6d4b\\u8bd5\\u4e8c\\u7ea7\\u5546\\u54c1\",\"smalldescription\":\"test\",\"description\":\"<p>test<\\/p>\",\"smallimage\":\"images\\/fdde76024ae8dc6670d3e7579ef52722.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/bd0aa42dbbabef490912a8d00e573d92.jpg\",\"file-image\":null,\"file\":null,\"price\":\"111.00\",\"recommended\":\"1\",\"status\":\"2\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-18 23:38:22', '2020-07-18 23:38:22');
INSERT INTO `admin_operation_log` VALUES ('2586', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:38:22', '2020-07-18 23:38:22');
INSERT INTO `admin_operation_log` VALUES ('2587', '1', 'admin/product', 'GET', '120.230.122.168', '[]', '2020-07-18 23:38:23', '2020-07-18 23:38:23');
INSERT INTO `admin_operation_log` VALUES ('2588', '1', 'admin/product/13/edit', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:38:24', '2020-07-18 23:38:24');
INSERT INTO `admin_operation_log` VALUES ('2589', '1', 'admin/product', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:38:31', '2020-07-18 23:38:31');
INSERT INTO `admin_operation_log` VALUES ('2590', '1', 'admin/product/13/edit', 'GET', '116.22.164.15', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:39:56', '2020-07-18 23:39:56');
INSERT INTO `admin_operation_log` VALUES ('2591', '1', 'admin/product/14/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:39:56', '2020-07-18 23:39:56');
INSERT INTO `admin_operation_log` VALUES ('2592', '1', 'admin/product/14', 'PUT', '120.230.122.168', '{\"_file_del_\":null,\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"key\":\"images\\/fdde76024ae8dc6670d3e7579ef52722.jpg\",\"_column\":\"smallimage\"}', '2020-07-18 23:40:39', '2020-07-18 23:40:39');
INSERT INTO `admin_operation_log` VALUES ('2593', '1', 'admin/product', 'GET', '117.136.12.184', '[]', '2020-07-18 23:40:47', '2020-07-18 23:40:47');
INSERT INTO `admin_operation_log` VALUES ('2594', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:40:55', '2020-07-18 23:40:55');
INSERT INTO `admin_operation_log` VALUES ('2595', '1', 'admin/product/12/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:40:58', '2020-07-18 23:40:58');
INSERT INTO `admin_operation_log` VALUES ('2596', '1', 'admin/product/12/edit', 'GET', '117.136.12.184', '[]', '2020-07-18 23:44:50', '2020-07-18 23:44:50');
INSERT INTO `admin_operation_log` VALUES ('2597', '1', 'admin/product/12/edit', 'GET', '117.136.12.184', '[]', '2020-07-18 23:45:06', '2020-07-18 23:45:06');
INSERT INTO `admin_operation_log` VALUES ('2598', '1', 'admin/product/12', 'PUT', '117.136.12.184', '{\"_file_del_\":null,\"_token\":\"5HXL25t0BzjhkkDKBPIqoEHdyrbWauDbnFUlem8G\",\"_method\":\"PUT\",\"key\":\"images\\/7dae3ce4212fcc59c971f1238b9faad4.png\",\"_column\":\"smallimage\"}', '2020-07-18 23:45:14', '2020-07-18 23:45:14');
INSERT INTO `admin_operation_log` VALUES ('2599', '1', 'admin/product/12', 'PUT', '117.136.12.184', '{\"_id\":\"I4DcgHIvc6vakCEo\",\"_token\":\"5HXL25t0BzjhkkDKBPIqoEHdyrbWauDbnFUlem8G\",\"upload_column\":\"smallimage\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"wen.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Fri Oct 19 2018 17:55:13 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"758\"}', '2020-07-18 23:45:21', '2020-07-18 23:45:21');
INSERT INTO `admin_operation_log` VALUES ('2600', '1', 'admin/product/12', 'PUT', '117.136.12.184', '{\"_id\":\"I4DcgHIvc6vakCEo\",\"_token\":\"5HXL25t0BzjhkkDKBPIqoEHdyrbWauDbnFUlem8G\",\"_method\":\"PUT\",\"smallimage\":\"images\\/ea240a2b89ef610a26009c836d644860.png\"}', '2020-07-18 23:45:21', '2020-07-18 23:45:21');
INSERT INTO `admin_operation_log` VALUES ('2601', '1', 'admin/video', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:45:42', '2020-07-18 23:45:42');
INSERT INTO `admin_operation_log` VALUES ('2602', '1', 'admin/tixian', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:45:45', '2020-07-18 23:45:45');
INSERT INTO `admin_operation_log` VALUES ('2603', '1', 'admin/tixian/1', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:45:50', '2020-07-18 23:45:50');
INSERT INTO `admin_operation_log` VALUES ('2604', '1', 'admin/tixian/1', 'GET', '117.136.12.184', '[]', '2020-07-18 23:45:55', '2020-07-18 23:45:55');
INSERT INTO `admin_operation_log` VALUES ('2605', '1', 'admin/tixian', 'GET', '117.136.12.184', '[]', '2020-07-18 23:45:57', '2020-07-18 23:45:57');
INSERT INTO `admin_operation_log` VALUES ('2606', '1', 'admin/tixian', 'GET', '117.136.12.184', '[]', '2020-07-18 23:46:37', '2020-07-18 23:46:37');
INSERT INTO `admin_operation_log` VALUES ('2607', '1', 'admin/about', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:46:41', '2020-07-18 23:46:41');
INSERT INTO `admin_operation_log` VALUES ('2608', '1', 'admin/help', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:46:42', '2020-07-18 23:46:42');
INSERT INTO `admin_operation_log` VALUES ('2609', '1', 'admin/order', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:46:43', '2020-07-18 23:46:43');
INSERT INTO `admin_operation_log` VALUES ('2610', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:46:44', '2020-07-18 23:46:44');
INSERT INTO `admin_operation_log` VALUES ('2611', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:46:48', '2020-07-18 23:46:48');
INSERT INTO `admin_operation_log` VALUES ('2612', '1', 'admin/push', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:46:51', '2020-07-18 23:46:51');
INSERT INTO `admin_operation_log` VALUES ('2613', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:46:52', '2020-07-18 23:46:52');
INSERT INTO `admin_operation_log` VALUES ('2614', '1', 'admin/product/15/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:46:54', '2020-07-18 23:46:54');
INSERT INTO `admin_operation_log` VALUES ('2615', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:47:01', '2020-07-18 23:47:01');
INSERT INTO `admin_operation_log` VALUES ('2616', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_filter_status\":[\"2\"],\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:47:13', '2020-07-18 23:47:13');
INSERT INTO `admin_operation_log` VALUES ('2617', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:47:19', '2020-07-18 23:47:19');
INSERT INTO `admin_operation_log` VALUES ('2618', '1', 'admin/product', 'GET', '120.230.122.168', '[]', '2020-07-18 23:51:22', '2020-07-18 23:51:22');
INSERT INTO `admin_operation_log` VALUES ('2619', '1', 'admin/product', 'GET', '120.230.122.168', '[]', '2020-07-18 23:51:25', '2020-07-18 23:51:25');
INSERT INTO `admin_operation_log` VALUES ('2620', '1', 'admin/order', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:51:26', '2020-07-18 23:51:26');
INSERT INTO `admin_operation_log` VALUES ('2621', '1', 'admin/product', 'GET', '117.136.12.184', '[]', '2020-07-18 23:52:13', '2020-07-18 23:52:13');
INSERT INTO `admin_operation_log` VALUES ('2622', '1', 'admin/product/15/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:52:18', '2020-07-18 23:52:18');
INSERT INTO `admin_operation_log` VALUES ('2623', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:52:22', '2020-07-18 23:52:22');
INSERT INTO `admin_operation_log` VALUES ('2624', '1', 'admin/order/74', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:52:34', '2020-07-18 23:52:34');
INSERT INTO `admin_operation_log` VALUES ('2625', '1', 'admin/product/12/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:52:34', '2020-07-18 23:52:34');
INSERT INTO `admin_operation_log` VALUES ('2626', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-18 23:52:39', '2020-07-18 23:52:39');
INSERT INTO `admin_operation_log` VALUES ('2627', '1', 'admin/order/74', 'GET', '120.230.122.168', '[]', '2020-07-18 23:52:46', '2020-07-18 23:52:46');
INSERT INTO `admin_operation_log` VALUES ('2628', '1', 'admin/order/74', 'GET', '120.230.122.168', '[]', '2020-07-19 00:09:15', '2020-07-19 00:09:15');
INSERT INTO `admin_operation_log` VALUES ('2629', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:09:16', '2020-07-19 00:09:16');
INSERT INTO `admin_operation_log` VALUES ('2630', '1', 'admin/product/14/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:09:22', '2020-07-19 00:09:22');
INSERT INTO `admin_operation_log` VALUES ('2631', '1', 'admin/product/14', 'PUT', '120.230.122.168', '{\"cid\":\"33\",\"title\":\"\\u6d4b\\u8bd5\\u4e8c\\u7ea7\\u5546\\u54c1\",\"smalldescription\":\"test\",\"description\":\"<p>test<\\/p>\",\"smallimage\":null,\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/bd0aa42dbbabef490912a8d00e573d92.jpg\",\"file-image\":null,\"file\":null,\"price\":\"111.00\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-19 00:09:25', '2020-07-19 00:09:25');
INSERT INTO `admin_operation_log` VALUES ('2632', '1', 'admin/product/14', 'PUT', '120.230.122.168', '{\"cid\":\"33\",\"title\":\"\\u6d4b\\u8bd5\\u4e8c\\u7ea7\\u5546\\u54c1\",\"smalldescription\":\"test\",\"description\":\"<p>test<\\/p>\",\"smallimage\":null,\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/bd0aa42dbbabef490912a8d00e573d92.jpg\",\"file-image\":null,\"file\":null,\"price\":\"111.00\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-19 00:09:28', '2020-07-19 00:09:28');
INSERT INTO `admin_operation_log` VALUES ('2633', '1', 'admin/product/14', 'PUT', '120.230.122.168', '{\"cid\":\"33\",\"title\":\"\\u6d4b\\u8bd5\\u4e8c\\u7ea7\\u5546\\u54c1\",\"smalldescription\":\"test\",\"description\":\"<p>test<\\/p>\",\"smallimage\":null,\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/bd0aa42dbbabef490912a8d00e573d92.jpg\",\"file-image\":null,\"file\":null,\"price\":\"111.00\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-19 00:09:30', '2020-07-19 00:09:30');
INSERT INTO `admin_operation_log` VALUES ('2634', '1', 'admin/product/14', 'PUT', '120.230.122.168', '{\"cid\":\"33\",\"title\":\"\\u6d4b\\u8bd5\\u4e8c\\u7ea7\\u5546\\u54c1\",\"smalldescription\":\"test\",\"description\":\"<p>test<\\/p>\",\"smallimage\":null,\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/bd0aa42dbbabef490912a8d00e573d92.jpg\",\"file-image\":null,\"file\":null,\"price\":\"111.00\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-19 00:09:31', '2020-07-19 00:09:31');
INSERT INTO `admin_operation_log` VALUES ('2635', '1', 'admin/product/14/edit', 'GET', '120.230.122.168', '[]', '2020-07-19 00:10:07', '2020-07-19 00:10:07');
INSERT INTO `admin_operation_log` VALUES ('2636', '1', 'admin/product/14/edit', 'GET', '120.230.122.168', '[]', '2020-07-19 00:10:11', '2020-07-19 00:10:11');
INSERT INTO `admin_operation_log` VALUES ('2637', '1', 'admin/product/14', 'PUT', '120.230.122.168', '{\"_file_del_\":null,\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"key\":\"images\\/bd0aa42dbbabef490912a8d00e573d92.jpg\",\"_column\":\"image\"}', '2020-07-19 00:10:20', '2020-07-19 00:10:20');
INSERT INTO `admin_operation_log` VALUES ('2638', '1', 'admin/push', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:10:22', '2020-07-19 00:10:22');
INSERT INTO `admin_operation_log` VALUES ('2639', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:10:23', '2020-07-19 00:10:23');
INSERT INTO `admin_operation_log` VALUES ('2640', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:10:24', '2020-07-19 00:10:24');
INSERT INTO `admin_operation_log` VALUES ('2641', '1', 'admin/product/12/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:10:49', '2020-07-19 00:10:49');
INSERT INTO `admin_operation_log` VALUES ('2642', '1', 'admin/product', 'GET', '120.230.122.168', '[]', '2020-07-19 00:11:00', '2020-07-19 00:11:00');
INSERT INTO `admin_operation_log` VALUES ('2643', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:11:08', '2020-07-19 00:11:08');
INSERT INTO `admin_operation_log` VALUES ('2644', '1', 'admin/product/12/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:11:21', '2020-07-19 00:11:21');
INSERT INTO `admin_operation_log` VALUES ('2645', '1', 'admin/product/15/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:11:25', '2020-07-19 00:11:25');
INSERT INTO `admin_operation_log` VALUES ('2646', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:11:28', '2020-07-19 00:11:28');
INSERT INTO `admin_operation_log` VALUES ('2647', '1', 'admin/product/15/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:11:31', '2020-07-19 00:11:31');
INSERT INTO `admin_operation_log` VALUES ('2648', '1', 'admin/product/15', 'PUT', '117.136.12.184', '{\"_file_del_\":null,\"_token\":\"5HXL25t0BzjhkkDKBPIqoEHdyrbWauDbnFUlem8G\",\"_method\":\"PUT\",\"key\":\"images\\/993a06dd7bff88a8a374e42a03a0f97b.jpg\",\"_column\":\"smallimage\"}', '2020-07-19 00:11:35', '2020-07-19 00:11:35');
INSERT INTO `admin_operation_log` VALUES ('2649', '1', 'admin/product/15', 'PUT', '117.136.12.184', '{\"_id\":\"0um1TdyR7GuNLG7f\",\"_token\":\"5HXL25t0BzjhkkDKBPIqoEHdyrbWauDbnFUlem8G\",\"upload_column\":\"smallimage\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"wen.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Fri Oct 19 2018 17:55:13 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"758\"}', '2020-07-19 00:11:41', '2020-07-19 00:11:41');
INSERT INTO `admin_operation_log` VALUES ('2650', '1', 'admin/product/15', 'PUT', '117.136.12.184', '{\"_id\":\"0um1TdyR7GuNLG7f\",\"_token\":\"5HXL25t0BzjhkkDKBPIqoEHdyrbWauDbnFUlem8G\",\"_method\":\"PUT\",\"smallimage\":\"images\\/598f071dff9605e1cb77372294d9aca3.png\"}', '2020-07-19 00:11:41', '2020-07-19 00:11:41');
INSERT INTO `admin_operation_log` VALUES ('2651', '1', 'admin/product/15', 'PUT', '117.136.12.184', '{\"_file_del_\":null,\"_token\":\"5HXL25t0BzjhkkDKBPIqoEHdyrbWauDbnFUlem8G\",\"_method\":\"PUT\",\"key\":\"images\\/e48ceec97ca7790c95d79d1dd1e0010e.jpg\",\"_column\":\"image\"}', '2020-07-19 00:11:44', '2020-07-19 00:11:44');
INSERT INTO `admin_operation_log` VALUES ('2652', '1', 'admin/product/15', 'PUT', '117.136.12.184', '{\"_id\":\"FywMh1LNAdTT21Ea\",\"_token\":\"5HXL25t0BzjhkkDKBPIqoEHdyrbWauDbnFUlem8G\",\"upload_column\":\"image\",\"_method\":\"PUT\",\"id\":\"WU_FILE_1\",\"name\":\"da.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Fri Oct 19 2018 17:55:35 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"1076\"}', '2020-07-19 00:11:50', '2020-07-19 00:11:50');
INSERT INTO `admin_operation_log` VALUES ('2653', '1', 'admin/product/15', 'PUT', '117.136.12.184', '{\"_id\":\"FywMh1LNAdTT21Ea\",\"_token\":\"5HXL25t0BzjhkkDKBPIqoEHdyrbWauDbnFUlem8G\",\"_method\":\"PUT\",\"image\":\"images\\/204c0ba0d21d1990a9d36f205fd6b39f.png\"}', '2020-07-19 00:11:50', '2020-07-19 00:11:50');
INSERT INTO `admin_operation_log` VALUES ('2654', '1', 'admin/product/15', 'PUT', '117.136.12.184', '{\"cid\":\"56\",\"title\":\"\\u4e49\\u8584\\u4e91\\u5929\",\"smalldescription\":\"test\",\"description\":\"<p>test<\\/p>\",\"smallimage\":\"images\\/598f071dff9605e1cb77372294d9aca3.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/204c0ba0d21d1990a9d36f205fd6b39f.png\",\"file-image\":null,\"file\":null,\"price\":\"11.00\",\"recommended\":\"1\",\"status\":\"2\",\"_token\":\"5HXL25t0BzjhkkDKBPIqoEHdyrbWauDbnFUlem8G\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-19 00:11:53', '2020-07-19 00:11:53');
INSERT INTO `admin_operation_log` VALUES ('2655', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:11:54', '2020-07-19 00:11:54');
INSERT INTO `admin_operation_log` VALUES ('2656', '1', 'admin/product/15/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:11:57', '2020-07-19 00:11:57');
INSERT INTO `admin_operation_log` VALUES ('2657', '1', 'admin/product/15', 'PUT', '117.136.12.184', '{\"cid\":\"56\",\"title\":\"\\u4e49\\u8584\\u4e91\\u5929\",\"smalldescription\":\"test\",\"description\":\"<p>test<\\/p>\",\"smallimage\":\"images\\/598f071dff9605e1cb77372294d9aca3.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/204c0ba0d21d1990a9d36f205fd6b39f.png\",\"file-image\":null,\"file\":null,\"price\":\"11.00\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"5HXL25t0BzjhkkDKBPIqoEHdyrbWauDbnFUlem8G\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-19 00:12:03', '2020-07-19 00:12:03');
INSERT INTO `admin_operation_log` VALUES ('2658', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:12:03', '2020-07-19 00:12:03');
INSERT INTO `admin_operation_log` VALUES ('2659', '1', 'admin/product/15/edit', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:12:22', '2020-07-19 00:12:22');
INSERT INTO `admin_operation_log` VALUES ('2660', '1', 'admin/product/15', 'PUT', '117.136.12.184', '{\"cid\":\"56\",\"title\":\"\\u4e49\\u8584\\u4e91\\u5929\",\"smalldescription\":\"test\",\"description\":\"<p>test<\\/p>\",\"smallimage\":\"images\\/598f071dff9605e1cb77372294d9aca3.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/204c0ba0d21d1990a9d36f205fd6b39f.png\",\"file-image\":null,\"file\":null,\"price\":\"11.00\",\"recommended\":\"1\",\"status\":\"2\",\"_token\":\"5HXL25t0BzjhkkDKBPIqoEHdyrbWauDbnFUlem8G\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-19 00:12:39', '2020-07-19 00:12:39');
INSERT INTO `admin_operation_log` VALUES ('2661', '1', 'admin/product', 'GET', '117.136.12.184', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:12:39', '2020-07-19 00:12:39');
INSERT INTO `admin_operation_log` VALUES ('2662', '1', 'admin/product', 'GET', '117.136.12.184', '[]', '2020-07-19 00:12:52', '2020-07-19 00:12:52');
INSERT INTO `admin_operation_log` VALUES ('2663', '1', 'admin/product/15/edit', 'GET', '120.230.122.168', '[]', '2020-07-19 00:13:09', '2020-07-19 00:13:09');
INSERT INTO `admin_operation_log` VALUES ('2664', '1', 'admin/product/15/edit', 'GET', '120.230.122.168', '[]', '2020-07-19 00:13:13', '2020-07-19 00:13:13');
INSERT INTO `admin_operation_log` VALUES ('2665', '1', 'admin', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:13:16', '2020-07-19 00:13:16');
INSERT INTO `admin_operation_log` VALUES ('2666', '1', 'admin', 'GET', '120.230.122.168', '[]', '2020-07-19 00:13:17', '2020-07-19 00:13:17');
INSERT INTO `admin_operation_log` VALUES ('2667', '1', 'admin', 'GET', '120.230.122.168', '[]', '2020-07-19 00:13:58', '2020-07-19 00:13:58');
INSERT INTO `admin_operation_log` VALUES ('2668', '1', 'admin/user', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:14:13', '2020-07-19 00:14:13');
INSERT INTO `admin_operation_log` VALUES ('2669', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:14:14', '2020-07-19 00:14:14');
INSERT INTO `admin_operation_log` VALUES ('2670', '1', 'admin/push', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:14:15', '2020-07-19 00:14:15');
INSERT INTO `admin_operation_log` VALUES ('2671', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:14:16', '2020-07-19 00:14:16');
INSERT INTO `admin_operation_log` VALUES ('2672', '1', 'admin/product/15/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:14:20', '2020-07-19 00:14:20');
INSERT INTO `admin_operation_log` VALUES ('2673', '1', 'admin/product/15', 'PUT', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"\\u4e49\\u8584\\u4e91\\u5929\",\"smalldescription\":\"test\",\"description\":\"<p>test<\\/p>\",\"smallimage\":\"images\\/598f071dff9605e1cb77372294d9aca3.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/204c0ba0d21d1990a9d36f205fd6b39f.png\",\"file-image\":null,\"file\":null,\"price\":\"11.00\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-19 00:14:24', '2020-07-19 00:14:24');
INSERT INTO `admin_operation_log` VALUES ('2674', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:14:25', '2020-07-19 00:14:25');
INSERT INTO `admin_operation_log` VALUES ('2675', '1', 'admin/product/15/edit', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:14:37', '2020-07-19 00:14:37');
INSERT INTO `admin_operation_log` VALUES ('2676', '1', 'admin/product/15', 'PUT', '120.230.122.168', '{\"cid\":\"56\",\"title\":\"\\u4e49\\u8584\\u4e91\\u5929\",\"smalldescription\":\"test\",\"description\":\"<p>test<\\/p>\",\"smallimage\":\"images\\/598f071dff9605e1cb77372294d9aca3.png\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/204c0ba0d21d1990a9d36f205fd6b39f.png\",\"file-image\":null,\"file\":null,\"price\":\"11.00\",\"recommended\":\"1\",\"status\":\"2\",\"_token\":\"CykzELXS0wwqe3QpMiSuI5ffcdjvJ4AXOo7R38SS\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-19 00:14:41', '2020-07-19 00:14:41');
INSERT INTO `admin_operation_log` VALUES ('2677', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:14:41', '2020-07-19 00:14:41');
INSERT INTO `admin_operation_log` VALUES ('2678', '1', 'admin', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:16:15', '2020-07-19 00:16:15');
INSERT INTO `admin_operation_log` VALUES ('2679', '1', 'admin/swipe', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:16:16', '2020-07-19 00:16:16');
INSERT INTO `admin_operation_log` VALUES ('2680', '1', 'admin/user', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:16:17', '2020-07-19 00:16:17');
INSERT INTO `admin_operation_log` VALUES ('2681', '1', 'admin/video', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:16:17', '2020-07-19 00:16:17');
INSERT INTO `admin_operation_log` VALUES ('2682', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:16:18', '2020-07-19 00:16:18');
INSERT INTO `admin_operation_log` VALUES ('2683', '1', 'admin/push', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:16:19', '2020-07-19 00:16:19');
INSERT INTO `admin_operation_log` VALUES ('2684', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:16:19', '2020-07-19 00:16:19');
INSERT INTO `admin_operation_log` VALUES ('2685', '1', 'admin', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:16:28', '2020-07-19 00:16:28');
INSERT INTO `admin_operation_log` VALUES ('2686', '1', 'admin/swipe', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:17:08', '2020-07-19 00:17:08');
INSERT INTO `admin_operation_log` VALUES ('2687', '1', 'admin/user', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:17:09', '2020-07-19 00:17:09');
INSERT INTO `admin_operation_log` VALUES ('2688', '1', 'admin/video', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:17:10', '2020-07-19 00:17:10');
INSERT INTO `admin_operation_log` VALUES ('2689', '1', 'admin/cate', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:17:10', '2020-07-19 00:17:10');
INSERT INTO `admin_operation_log` VALUES ('2690', '1', 'admin/push', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:17:11', '2020-07-19 00:17:11');
INSERT INTO `admin_operation_log` VALUES ('2691', '1', 'admin/product', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:17:11', '2020-07-19 00:17:11');
INSERT INTO `admin_operation_log` VALUES ('2692', '1', 'admin/order', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:17:12', '2020-07-19 00:17:12');
INSERT INTO `admin_operation_log` VALUES ('2693', '1', 'admin/about', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:17:14', '2020-07-19 00:17:14');
INSERT INTO `admin_operation_log` VALUES ('2694', '1', 'admin/help', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:17:14', '2020-07-19 00:17:14');
INSERT INTO `admin_operation_log` VALUES ('2695', '1', 'admin/about', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:17:16', '2020-07-19 00:17:16');
INSERT INTO `admin_operation_log` VALUES ('2696', '1', 'admin/tixian', 'GET', '120.230.122.168', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:17:16', '2020-07-19 00:17:16');
INSERT INTO `admin_operation_log` VALUES ('2697', '1', 'admin/tixian', 'GET', '120.230.122.168', '[]', '2020-07-19 00:19:52', '2020-07-19 00:19:52');
INSERT INTO `admin_operation_log` VALUES ('2698', '0', 'admin/auth/login', 'GET', '116.22.164.15', '[]', '2020-07-19 17:35:59', '2020-07-19 17:35:59');
INSERT INTO `admin_operation_log` VALUES ('2699', '0', 'admin/auth/login', 'GET', '120.230.122.44', '[]', '2020-07-19 20:29:14', '2020-07-19 20:29:14');
INSERT INTO `admin_operation_log` VALUES ('2700', '0', 'admin/auth/login', 'POST', '120.230.122.44', '{\"_token\":\"DdII7zTgquCbYGjx0GpELCbpM7fZMDAHZls4LVN5\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-19 20:29:16', '2020-07-19 20:29:16');
INSERT INTO `admin_operation_log` VALUES ('2701', '1', 'admin/product', 'GET', '120.230.122.44', '[]', '2020-07-19 20:29:16', '2020-07-19 20:29:16');
INSERT INTO `admin_operation_log` VALUES ('2702', '1', 'admin/product/7/edit', 'GET', '120.230.122.44', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 20:29:44', '2020-07-19 20:29:44');
INSERT INTO `admin_operation_log` VALUES ('2703', '1', 'admin/product/7', 'PUT', '120.230.122.44', '{\"cid\":\"45\",\"title\":\"\\u5927\\u9053\\u65e0\\u5f62\",\"smalldescription\":\"\\u5927\\u9053\\u65e0\\u5f62\",\"description\":\"<p>\\u3010\\u4ea7\\u54c1\\u540d\\u79f0\\u3011&nbsp; \\u6ee1\\u6c5f\\u7ea2<\\/p><p>\\u3010\\u4ea7&nbsp; &nbsp; &nbsp; &nbsp;\\u5730\\u3011&nbsp; \\u8d35\\u5dde<\\/p><p>\\u3010\\u4ea7\\u54c1\\u5206\\u7c7b\\u3011&nbsp; \\u6728\\u5316\\u77f3<\\/p><p>\\u3010\\u6545&nbsp; &nbsp; &nbsp; &nbsp;\\u4e8b\\u3011&nbsp; \\u7f18\\u77f3<\\/p><p>\\u3010\\u4ea7\\u54c1\\u63cf\\u8ff0\\u3011&nbsp; \\u8fd9\\u4e2a\\u4e1c\\u897f\\u975e\\u5e38\\u597d<\\/p>\",\"smallimage\":\"images\\/c7cad6fa93085a9fc5c551bb8067818a.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/9758e36d3b44b075b0fd2f833b87a4a2.jpg,images\\/c9f5a87dd87145f4dcc294dd59941490.jpg\",\"file-image\":null,\"file\":null,\"price\":\"100.00\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"HtpvIoLyDv7x9hMXzuhHNXhfUk86zLBTHzjgGlW2\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-19 20:32:21', '2020-07-19 20:32:21');
INSERT INTO `admin_operation_log` VALUES ('2704', '1', 'admin/product', 'GET', '120.230.122.44', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 20:32:21', '2020-07-19 20:32:21');
INSERT INTO `admin_operation_log` VALUES ('2705', '1', 'admin/product/7/edit', 'GET', '120.230.122.44', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 20:34:22', '2020-07-19 20:34:22');
INSERT INTO `admin_operation_log` VALUES ('2706', '1', 'admin/product/7', 'PUT', '120.230.122.44', '{\"cid\":\"45\",\"title\":\"\\u5927\\u9053\\u65e0\\u5f62\",\"smalldescription\":\"\\u5927\\u9053\\u65e0\\u5f62\",\"description\":\"<p>\\u3010\\u4ea7\\u54c1\\u540d\\u79f0\\u3011\\u6ee1\\u6c5f\\u7ea2<\\/p><p>\\u3010\\u4ea7&nbsp; &nbsp; &nbsp; &nbsp;\\u5730\\u3011\\u8d35\\u5dde<\\/p><p>\\u3010\\u4ea7\\u54c1\\u5206\\u7c7b\\u3011\\u6728\\u5316\\u77f3<\\/p><p>\\u3010\\u6545&nbsp; &nbsp; &nbsp; &nbsp;\\u4e8b\\u3011\\u7f18\\u77f3<\\/p><p>\\u3010\\u4ea7\\u54c1\\u63cf\\u8ff0\\u3011\\u8fd9\\u4e2a\\u4e1c\\u897f\\u975e\\u5e38\\u597d<\\/p>\",\"smallimage\":\"images\\/c7cad6fa93085a9fc5c551bb8067818a.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/9758e36d3b44b075b0fd2f833b87a4a2.jpg,images\\/c9f5a87dd87145f4dcc294dd59941490.jpg\",\"file-image\":null,\"file\":null,\"price\":\"100.00\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"HtpvIoLyDv7x9hMXzuhHNXhfUk86zLBTHzjgGlW2\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-19 20:34:44', '2020-07-19 20:34:44');
INSERT INTO `admin_operation_log` VALUES ('2707', '1', 'admin/product', 'GET', '120.230.122.44', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 20:34:44', '2020-07-19 20:34:44');
INSERT INTO `admin_operation_log` VALUES ('2708', '1', 'admin/product/7/edit', 'GET', '120.230.122.44', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 20:35:47', '2020-07-19 20:35:47');
INSERT INTO `admin_operation_log` VALUES ('2709', '1', 'admin/product/7', 'PUT', '120.230.122.44', '{\"cid\":\"45\",\"title\":\"\\u5927\\u9053\\u65e0\\u5f62\",\"smalldescription\":\"\\u5927\\u9053\\u65e0\\u5f62\",\"description\":\"<p>\\u3010\\u4ea7\\u54c1\\u540d\\u79f0\\u3011\\u6ee1\\u6c5f\\u7ea2<\\/p><p><br data-mce-bogus=\\\"1\\\"><\\/p>\",\"smallimage\":\"images\\/c7cad6fa93085a9fc5c551bb8067818a.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/9758e36d3b44b075b0fd2f833b87a4a2.jpg,images\\/c9f5a87dd87145f4dcc294dd59941490.jpg\",\"file-image\":null,\"file\":null,\"price\":\"100.00\",\"recommended\":\"1\",\"status\":\"1\",\"_token\":\"HtpvIoLyDv7x9hMXzuhHNXhfUk86zLBTHzjgGlW2\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/collect.xinxiaxue.cn\\/admin\\/product\"}', '2020-07-19 20:36:30', '2020-07-19 20:36:30');
INSERT INTO `admin_operation_log` VALUES ('2710', '1', 'admin/product', 'GET', '120.230.122.44', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 20:36:30', '2020-07-19 20:36:30');
INSERT INTO `admin_operation_log` VALUES ('2711', '0', 'admin/auth/login', 'GET', '120.230.122.44', '[]', '2020-07-19 22:52:40', '2020-07-19 22:52:40');
INSERT INTO `admin_operation_log` VALUES ('2712', '0', 'admin/auth/login', 'POST', '120.230.122.44', '{\"_token\":\"67nmVwxOsqwQVzoNW31nsIyMVU3sJydGBEaSZkNJ\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-19 22:52:43', '2020-07-19 22:52:43');
INSERT INTO `admin_operation_log` VALUES ('2713', '1', 'admin/product', 'GET', '120.230.122.44', '[]', '2020-07-19 22:52:44', '2020-07-19 22:52:44');
INSERT INTO `admin_operation_log` VALUES ('2714', '0', 'admin/auth/login', 'GET', '117.136.12.184', '[]', '2020-07-20 09:58:55', '2020-07-20 09:58:55');
INSERT INTO `admin_operation_log` VALUES ('2715', '0', 'admin/auth/login', 'POST', '117.136.12.184', '{\"_token\":\"lHp77RcQwtWjnLNMf6AcCXQ39VXiMmm4KvuwzcNd\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-20 09:59:00', '2020-07-20 09:59:00');
INSERT INTO `admin_operation_log` VALUES ('2716', '1', 'admin/product', 'GET', '117.136.12.184', '[]', '2020-07-20 09:59:00', '2020-07-20 09:59:00');
INSERT INTO `admin_operation_log` VALUES ('2717', '0', 'admin/auth/login', 'GET', '183.192.8.73', '[]', '2020-07-21 20:40:31', '2020-07-21 20:40:31');
INSERT INTO `admin_operation_log` VALUES ('2718', '0', 'admin/auth/login', 'GET', '14.25.34.246', '[]', '2020-07-24 14:55:25', '2020-07-24 14:55:25');
INSERT INTO `admin_operation_log` VALUES ('2719', '0', 'admin/auth/login', 'POST', '14.25.34.246', '{\"_token\":\"LO944cow8VOZ3QLHgv3gomFbI4fK2vJbRdeYgU7E\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-24 14:56:42', '2020-07-24 14:56:42');
INSERT INTO `admin_operation_log` VALUES ('2720', '1', 'admin', 'GET', '14.25.34.246', '[]', '2020-07-24 14:56:42', '2020-07-24 14:56:42');
INSERT INTO `admin_operation_log` VALUES ('2721', '1', 'admin/swipe', 'GET', '14.25.34.246', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 14:56:45', '2020-07-24 14:56:45');
INSERT INTO `admin_operation_log` VALUES ('2722', '1', 'admin/user', 'GET', '14.25.34.246', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 14:56:46', '2020-07-24 14:56:46');
INSERT INTO `admin_operation_log` VALUES ('2723', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-26 14:48:49', '2020-07-26 14:48:49');
INSERT INTO `admin_operation_log` VALUES ('2724', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"vGn7vwpvEbrWfvNbx899GgOioVbO0ffopBJHWLyF\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-26 14:48:56', '2020-07-26 14:48:56');
INSERT INTO `admin_operation_log` VALUES ('2725', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-26 14:48:57', '2020-07-26 14:48:57');
INSERT INTO `admin_operation_log` VALUES ('2726', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-26 14:49:05', '2020-07-26 14:49:05');
INSERT INTO `admin_operation_log` VALUES ('2727', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-07-26 14:49:29', '2020-07-26 14:49:29');
INSERT INTO `admin_operation_log` VALUES ('2728', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-07-26 14:49:32', '2020-07-26 14:49:32');
INSERT INTO `admin_operation_log` VALUES ('2729', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-07-26 14:49:34', '2020-07-26 14:49:34');
INSERT INTO `admin_operation_log` VALUES ('2730', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-07-26 14:49:36', '2020-07-26 14:49:36');
INSERT INTO `admin_operation_log` VALUES ('2731', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-07-26 14:50:04', '2020-07-26 14:50:04');
INSERT INTO `admin_operation_log` VALUES ('2732', '1', 'admin/swipe/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-26 14:50:06', '2020-07-26 14:50:06');
INSERT INTO `admin_operation_log` VALUES ('2733', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-26 14:50:09', '2020-07-26 14:50:09');
INSERT INTO `admin_operation_log` VALUES ('2734', '1', 'admin/swipe/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"BBFNxrUuWgu6anDIjJpDG7fx0Yz9iSTKs6ooevcW\"}', '2020-07-26 14:50:16', '2020-07-26 14:50:16');
INSERT INTO `admin_operation_log` VALUES ('2735', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-26 14:50:16', '2020-07-26 14:50:16');
INSERT INTO `admin_operation_log` VALUES ('2736', '1', 'admin/swipe/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-26 14:50:18', '2020-07-26 14:50:18');
INSERT INTO `admin_operation_log` VALUES ('2737', '1', 'admin/swipe/create', 'GET', '127.0.0.1', '[]', '2020-07-26 14:50:58', '2020-07-26 14:50:58');
INSERT INTO `admin_operation_log` VALUES ('2738', '1', 'admin/swipe', 'POST', '127.0.0.1', '{\"_id\":\"KcDX6i05wLAozGXd\",\"_token\":\"BBFNxrUuWgu6anDIjJpDG7fx0Yz9iSTKs6ooevcW\",\"upload_column\":\"img\",\"id\":\"WU_FILE_0\",\"name\":\"6f419b97bc80092d4e5df8df401ad148.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Thu Jul 16 2020 20:22:30 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"118007\"}', '2020-07-26 14:51:27', '2020-07-26 14:51:27');
INSERT INTO `admin_operation_log` VALUES ('2739', '1', 'admin/swipe', 'POST', '127.0.0.1', '{\"link\":\"http:\\/\\/collect.test\\/admin\\/swipe\\/create\",\"img\":\"images\\/33c6ea6adab02e9ca997e5db3b6c7487.jpg\",\"file-img\":null,\"_file_\":null,\"_token\":\"BBFNxrUuWgu6anDIjJpDG7fx0Yz9iSTKs6ooevcW\"}', '2020-07-26 14:51:29', '2020-07-26 14:51:29');
INSERT INTO `admin_operation_log` VALUES ('2740', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-26 14:51:30', '2020-07-26 14:51:30');
INSERT INTO `admin_operation_log` VALUES ('2741', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-07-26 14:52:11', '2020-07-26 14:52:11');
INSERT INTO `admin_operation_log` VALUES ('2742', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-07-26 14:52:44', '2020-07-26 14:52:44');
INSERT INTO `admin_operation_log` VALUES ('2743', '1', 'admin/swipe/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-26 14:52:51', '2020-07-26 14:52:51');
INSERT INTO `admin_operation_log` VALUES ('2744', '1', 'admin/swipe', 'POST', '127.0.0.1', '{\"_id\":\"ytb6RVMQZQIYPau9\",\"_token\":\"BBFNxrUuWgu6anDIjJpDG7fx0Yz9iSTKs6ooevcW\",\"upload_column\":\"img\",\"id\":\"WU_FILE_0\",\"name\":\"8d9302d38350196e8f92f5f98fcd44a6.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Jul 12 2020 22:47:22 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"109977\"}', '2020-07-26 14:53:00', '2020-07-26 14:53:00');
INSERT INTO `admin_operation_log` VALUES ('2745', '1', 'admin/swipe', 'POST', '127.0.0.1', '{\"link\":\"http:\\/\\/collect.test\\/admin\\/swipe\\/create\",\"img\":\"images\\/bb3c26b2a21ec18376108b2a8c08d47a.jpg\",\"file-img\":null,\"_file_\":null,\"_token\":\"BBFNxrUuWgu6anDIjJpDG7fx0Yz9iSTKs6ooevcW\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/swipe\"}', '2020-07-26 14:53:08', '2020-07-26 14:53:08');
INSERT INTO `admin_operation_log` VALUES ('2746', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-26 14:53:09', '2020-07-26 14:53:09');
INSERT INTO `admin_operation_log` VALUES ('2747', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-07-26 14:53:21', '2020-07-26 14:53:21');
INSERT INTO `admin_operation_log` VALUES ('2748', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-07-26 15:02:11', '2020-07-26 15:02:11');
INSERT INTO `admin_operation_log` VALUES ('2749', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-07-26 15:04:33', '2020-07-26 15:04:33');
INSERT INTO `admin_operation_log` VALUES ('2750', '1', 'admin/tixian', 'GET', '127.0.0.1', '[]', '2020-07-26 15:15:08', '2020-07-26 15:15:08');
INSERT INTO `admin_operation_log` VALUES ('2751', '1', 'admin/swipe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-26 15:15:15', '2020-07-26 15:15:15');
INSERT INTO `admin_operation_log` VALUES ('2752', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-07-26 15:18:27', '2020-07-26 15:18:27');
INSERT INTO `admin_operation_log` VALUES ('2753', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-07-26 15:19:10', '2020-07-26 15:19:10');
INSERT INTO `admin_operation_log` VALUES ('2754', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-27 00:39:45', '2020-07-27 00:39:45');
INSERT INTO `admin_operation_log` VALUES ('2755', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"es5REGZwb8PZUcWNHViGLOLDompma6xFGMhoOLaM\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-27 00:39:50', '2020-07-27 00:39:50');
INSERT INTO `admin_operation_log` VALUES ('2756', '1', 'admin/swipe', 'GET', '127.0.0.1', '[]', '2020-07-27 00:39:51', '2020-07-27 00:39:51');
INSERT INTO `admin_operation_log` VALUES ('2757', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 00:39:54', '2020-07-27 00:39:54');
INSERT INTO `admin_operation_log` VALUES ('2758', '1', 'admin/product/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 00:39:57', '2020-07-27 00:39:57');
INSERT INTO `admin_operation_log` VALUES ('2759', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 00:40:09', '2020-07-27 00:40:09');
INSERT INTO `admin_operation_log` VALUES ('2760', '1', 'admin/product/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 00:40:14', '2020-07-27 00:40:14');
INSERT INTO `admin_operation_log` VALUES ('2761', '1', 'admin/product/6', 'PUT', '127.0.0.1', '{\"cid\":\"29\",\"title\":\"\\u8377\\u5858\\u79cb\\u8da3\",\"smalldescription\":\"\\u8377\\u5858\\u79cb\\u8da3\",\"description\":\"<p>\\u8377\\u5858\\u79cb\\u8da3<br data-mce-bogus=\\\"1\\\"><\\/p>\",\"smallimage\":\"images\\/ebda0c7f0554566eba1b62bed8c5071a.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/ec61eed55f2e1e93c76f727f9caac393.jpg,images\\/a577cb30a4f05ac7e24923d6ed0a55af.jpg,images\\/62f24b116a559b110af537d2c28fe58e.jpg\",\"file-image\":null,\"file\":null,\"price\":\"1000.00\",\"promotionprice\":\"500\",\"recommended\":\"2\",\"status\":\"2\",\"_token\":\"vGDlXg8WcT8bSFPt8ZkdtGCa8Urj7rNpZJ5Pj89S\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/product\"}', '2020-07-27 00:40:21', '2020-07-27 00:40:21');
INSERT INTO `admin_operation_log` VALUES ('2762', '1', 'admin/product/6', 'PUT', '127.0.0.1', '{\"cid\":\"29\",\"title\":\"\\u8377\\u5858\\u79cb\\u8da3\",\"smalldescription\":\"\\u8377\\u5858\\u79cb\\u8da3\",\"description\":\"<p>\\u8377\\u5858\\u79cb\\u8da3<br data-mce-bogus=\\\"1\\\"><\\/p>\",\"smallimage\":\"images\\/ebda0c7f0554566eba1b62bed8c5071a.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/ec61eed55f2e1e93c76f727f9caac393.jpg,images\\/a577cb30a4f05ac7e24923d6ed0a55af.jpg,images\\/62f24b116a559b110af537d2c28fe58e.jpg\",\"file-image\":null,\"file\":null,\"price\":\"1000.00\",\"promotionprice\":\"500\",\"recommended\":\"2\",\"status\":\"2\",\"_token\":\"vGDlXg8WcT8bSFPt8ZkdtGCa8Urj7rNpZJ5Pj89S\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/product\"}', '2020-07-27 00:40:28', '2020-07-27 00:40:28');
INSERT INTO `admin_operation_log` VALUES ('2763', '1', 'admin/product/6', 'PUT', '127.0.0.1', '{\"cid\":\"29\",\"title\":\"\\u8377\\u5858\\u79cb\\u8da3\",\"smalldescription\":\"\\u8377\\u5858\\u79cb\\u8da3\",\"description\":\"<p>\\u8377\\u5858\\u79cb\\u8da3<br data-mce-bogus=\\\"1\\\"><\\/p>\",\"smallimage\":\"images\\/ebda0c7f0554566eba1b62bed8c5071a.jpg\",\"file-smallimage\":null,\"_file_\":null,\"image\":\"images\\/ec61eed55f2e1e93c76f727f9caac393.jpg,images\\/a577cb30a4f05ac7e24923d6ed0a55af.jpg,images\\/62f24b116a559b110af537d2c28fe58e.jpg\",\"file-image\":null,\"file\":null,\"price\":\"1000.00\",\"promotionprice\":\"500\",\"recommended\":\"2\",\"status\":\"2\",\"_token\":\"vGDlXg8WcT8bSFPt8ZkdtGCa8Urj7rNpZJ5Pj89S\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/collect.test\\/admin\\/product\"}', '2020-07-27 00:41:02', '2020-07-27 00:41:02');
INSERT INTO `admin_operation_log` VALUES ('2764', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 00:41:03', '2020-07-27 00:41:03');
INSERT INTO `admin_operation_log` VALUES ('2765', '1', 'admin/product/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 00:41:20', '2020-07-27 00:41:20');

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
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$JbkfAw5dQRD9zPweB7E8lejqQd7j/WE6cR9cbuUNpcXZBfZN2.TRe', 'Administrator', 'images/bg.jpg', 'F4MlTrbSfZeUOgHrlE6oQJ7Atjvhkx0cYeovBiybOtGCFBUA0N05NbV8MQ4k', '2020-06-21 12:44:18', '2020-07-11 16:27:27');

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
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cart_items
-- ----------------------------
INSERT INTO `cart_items` VALUES ('20', '11', '7', '2', '2020-07-18 17:45:42', '2020-07-20 22:41:59');
INSERT INTO `cart_items` VALUES ('21', '11', '8', '2', '2020-07-18 17:46:18', '2020-07-20 22:42:38');
INSERT INTO `cart_items` VALUES ('25', '6', '10', '1', '2020-07-18 20:45:22', '2020-07-18 20:45:22');
INSERT INTO `cart_items` VALUES ('27', '9', '7', '1', '2020-07-18 21:25:06', '2020-07-18 21:25:06');
INSERT INTO `cart_items` VALUES ('28', '6', '7', '20', '2020-07-18 21:38:22', '2020-07-19 00:07:57');
INSERT INTO `cart_items` VALUES ('30', '6', '9', '1', '2020-07-18 21:50:34', '2020-07-18 21:50:34');
INSERT INTO `cart_items` VALUES ('38', '6', '8', '3', '2020-07-19 00:08:17', '2020-07-19 00:15:01');
INSERT INTO `cart_items` VALUES ('40', '9', '10', '2', '2020-07-19 00:26:36', '2020-07-19 00:42:50');

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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('28', '精品典藏', '0', null, 'images/de2485bd1bdaf5c8a6436f468a3489cf.jpg', null, '2020-07-01 12:50:16', '2020-07-10 14:47:54');
INSERT INTO `categories` VALUES ('29', '原缘典藏', '28', null, 'images/7a2f33226edc54921cbd3cfcf163c196.jpg', null, '2020-07-01 12:51:28', '2020-07-16 20:22:08');
INSERT INTO `categories` VALUES ('30', '场馆训览', '0', null, 'images/0e50269ca4e4a318092c160682b802cb.jpg', null, '2020-07-01 12:54:14', '2020-07-10 14:52:39');
INSERT INTO `categories` VALUES ('33', '场馆训览', '30', null, 'images/81bee3bf383da801dc9384e588b2d411.jpg', null, '2020-07-01 13:03:55', '2020-07-16 20:37:03');
INSERT INTO `categories` VALUES ('45', '水木恒缘', '28', null, 'images/9899d339590727b118790b57e23e8d80.jpg', null, '2020-07-01 13:26:19', '2020-07-16 20:22:18');
INSERT INTO `categories` VALUES ('46', '原缘玉秀', '28', null, 'images/6f419b97bc80092d4e5df8df401ad148.jpg', null, '2020-07-01 13:26:42', '2020-07-16 20:22:30');
INSERT INTO `categories` VALUES ('55', '石头情缘', '30', null, 'images/79e54195af1d25836b1fbde10bc273e9.jpg', null, '2020-07-16 20:41:40', '2020-07-16 20:41:40');
INSERT INTO `categories` VALUES ('56', '哈哈哈哈', '30', null, 'images/17594269d7bf5a7f251153aa08716037.png', null, '2020-07-18 18:44:16', '2020-07-18 18:44:16');

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
INSERT INTO `help` VALUES ('0000000001', '帮助中心', '<p>测试哈哈哈哈哈帮助中心内容</p>', null, '2020-07-18 18:42:56');

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
INSERT INTO `moneylog` VALUES ('2', '11', '下级购买获得佣金', '50.00', '2020-07-11 11:57:05', '2020-07-11 11:57:05');
INSERT INTO `moneylog` VALUES ('3', '11', '下级购买获得佣金', '50.00', '2020-07-11 11:58:42', '2020-07-11 11:58:42');
INSERT INTO `moneylog` VALUES ('16', '11', '提现', '20.00', '2020-07-11 15:48:24', '2020-07-11 15:48:24');
INSERT INTO `moneylog` VALUES ('17', '11', '提现', '20.00', '2020-07-11 15:50:04', '2020-07-11 15:50:04');
INSERT INTO `moneylog` VALUES ('18', '11', '下级购买获得佣金', '0.01', '2020-07-11 16:24:53', '2020-07-11 16:24:53');

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
INSERT INTO `notifications` VALUES ('00217048-a6df-4fa9-b1d5-80c79a8f0e99', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '7', '{\"id\":7,\"title\":\"test notion\",\"content\":\"notionnotionnotion\"}', '2020-07-18 18:42:01', '2020-07-17 15:03:54', '2020-07-18 18:42:01');
INSERT INTO `notifications` VALUES ('1694b0b8-69a1-4e65-9181-52e91302ea55', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '11', '{\"id\":9,\"title\":\"\\u901a\\u77e5\\u6d4b\\u8bd5\",\"content\":\"111111111111\"}', '2020-07-18 17:55:42', '2020-07-18 17:55:37', '2020-07-18 17:55:42');
INSERT INTO `notifications` VALUES ('183a2c42-da22-4940-b402-dc223356ae77', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '2', '{\"id\":5,\"title\":\"\\u6d4b\\u8bd5\\u901a\\u77e5\",\"content\":\"\\u901a\\u77e5\\u5185\\u5bb9\"}', '2020-07-03 14:35:36', '2020-07-03 14:35:01', '2020-07-03 14:35:36');
INSERT INTO `notifications` VALUES ('1dd4955b-b4dc-41e7-bfeb-ac30ec913390', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '1', '{\"id\":4,\"title\":\"\\u6d4b\\u8bd5\\u5377\\u901a\\u77e5\",\"content\":\"222\"}', '2020-07-03 14:24:08', '2020-07-03 14:18:01', '2020-07-03 14:24:08');
INSERT INTO `notifications` VALUES ('2a991f4d-64eb-4c13-b07c-1c7845ba7465', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '8', '{\"id\":8,\"title\":\"test2222\",\"content\":\"test2222test2222test2222\"}', '2020-07-18 21:43:25', '2020-07-17 15:05:55', '2020-07-18 21:43:25');
INSERT INTO `notifications` VALUES ('2d08f324-2946-4187-a79e-27fe21ac1b2d', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '9', '{\"id\":10,\"title\":\"\\u54c8\\u54c8\",\"content\":\"\\u6d4b\\u8bd5\\u7684\\u54c8\\u54c8\\u54c8\\u54c8\"}', '2020-07-18 23:16:12', '2020-07-18 19:14:23', '2020-07-18 23:16:12');
INSERT INTO `notifications` VALUES ('2eec78f5-565c-4f9e-94a9-ed622c7ce4b1', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '2', '{\"id\":4,\"title\":\"\\u6d4b\\u8bd5\\u5377\\u901a\\u77e5\",\"content\":\"222\"}', '2020-07-03 14:35:36', '2020-07-03 14:18:01', '2020-07-03 14:35:36');
INSERT INTO `notifications` VALUES ('3b8d1295-e8a9-432c-b815-732becc3d297', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '3', '{\"id\":8,\"title\":\"test2222\",\"content\":\"test2222test2222test2222\"}', null, '2020-07-17 15:05:55', '2020-07-17 15:05:55');
INSERT INTO `notifications` VALUES ('3cd2b8f9-7503-4631-b08d-88b065fb8b02', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '4', '{\"id\":7,\"title\":\"test notion\",\"content\":\"notionnotionnotion\"}', null, '2020-07-17 15:03:54', '2020-07-17 15:03:54');
INSERT INTO `notifications` VALUES ('3d45007d-f9ea-4076-aa21-2a25ec7d1015', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '7', '{\"id\":9,\"title\":\"\\u901a\\u77e5\\u6d4b\\u8bd5\",\"content\":\"111111111111\"}', '2020-07-18 18:42:01', '2020-07-18 17:55:37', '2020-07-18 18:42:01');
INSERT INTO `notifications` VALUES ('4410625a-aaea-4512-a63a-13a1a7ab9fc3', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '7', '{\"id\":8,\"title\":\"test2222\",\"content\":\"test2222test2222test2222\"}', '2020-07-18 18:42:01', '2020-07-17 15:05:55', '2020-07-18 18:42:01');
INSERT INTO `notifications` VALUES ('4433d9d3-d7c4-4dad-b7e2-13c501b6d3f8', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '7', '{\"id\":10,\"title\":\"\\u54c8\\u54c8\",\"content\":\"\\u6d4b\\u8bd5\\u7684\\u54c8\\u54c8\\u54c8\\u54c8\"}', '2020-07-18 19:14:41', '2020-07-18 19:14:23', '2020-07-18 19:14:41');
INSERT INTO `notifications` VALUES ('4bf1f3d4-715a-440c-9053-d4f995af8e4a', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '8', '{\"id\":7,\"title\":\"test notion\",\"content\":\"notionnotionnotion\"}', '2020-07-18 21:43:25', '2020-07-17 15:03:54', '2020-07-18 21:43:25');
INSERT INTO `notifications` VALUES ('51dbd6cc-6461-4bf7-9e85-7076d86060b5', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '6', '{\"id\":7,\"title\":\"test notion\",\"content\":\"notionnotionnotion\"}', '2020-07-17 15:04:08', '2020-07-17 15:03:54', '2020-07-17 15:04:08');
INSERT INTO `notifications` VALUES ('64930658-6a29-4044-b1ca-95ff0d944b6c', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '1', '{\"id\":7,\"title\":\"test notion\",\"content\":\"notionnotionnotion\"}', null, '2020-07-17 15:03:54', '2020-07-17 15:03:54');
INSERT INTO `notifications` VALUES ('69e989bd-94c5-4fa5-9a8a-b99a92e355e0', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '4', '{\"id\":8,\"title\":\"test2222\",\"content\":\"test2222test2222test2222\"}', null, '2020-07-17 15:05:55', '2020-07-17 15:05:55');
INSERT INTO `notifications` VALUES ('6c0a6594-cc9b-4ef7-a635-526384e34af7', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '5', '{\"id\":7,\"title\":\"test notion\",\"content\":\"notionnotionnotion\"}', null, '2020-07-17 15:03:54', '2020-07-17 15:03:54');
INSERT INTO `notifications` VALUES ('751e235f-b410-4e4e-9d8d-65a43fb2602f', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '9', '{\"id\":9,\"title\":\"\\u901a\\u77e5\\u6d4b\\u8bd5\",\"content\":\"111111111111\"}', '2020-07-18 23:16:12', '2020-07-18 17:55:37', '2020-07-18 23:16:12');
INSERT INTO `notifications` VALUES ('781398d7-b0c1-4dec-adbd-e336da5bcf5b', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '6', '{\"id\":9,\"title\":\"\\u901a\\u77e5\\u6d4b\\u8bd5\",\"content\":\"111111111111\"}', '2020-07-18 22:09:32', '2020-07-18 17:55:37', '2020-07-18 22:09:32');
INSERT INTO `notifications` VALUES ('7f5c6c05-ff32-4425-bdd9-a53ba0d50063', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '6', '{\"id\":10,\"title\":\"\\u54c8\\u54c8\",\"content\":\"\\u6d4b\\u8bd5\\u7684\\u54c8\\u54c8\\u54c8\\u54c8\"}', '2020-07-18 22:09:32', '2020-07-18 19:14:23', '2020-07-18 22:09:32');
INSERT INTO `notifications` VALUES ('8eca285a-687b-432e-9ff6-4479f85aeab8', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '8', '{\"id\":9,\"title\":\"\\u901a\\u77e5\\u6d4b\\u8bd5\",\"content\":\"111111111111\"}', '2020-07-18 21:43:25', '2020-07-18 17:55:37', '2020-07-18 21:43:25');
INSERT INTO `notifications` VALUES ('93163445-5ee3-458a-a2fc-904d4e8f591f', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '6', '{\"id\":8,\"title\":\"test2222\",\"content\":\"test2222test2222test2222\"}', '2020-07-17 15:06:02', '2020-07-17 15:05:55', '2020-07-17 15:06:02');
INSERT INTO `notifications` VALUES ('964a6ae7-fe7e-4d4e-a601-b5c903f0fd3c', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '3', '{\"id\":7,\"title\":\"test notion\",\"content\":\"notionnotionnotion\"}', null, '2020-07-17 15:03:54', '2020-07-17 15:03:54');
INSERT INTO `notifications` VALUES ('9fca3434-ecde-40c9-a3c1-af00bf858f00', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '11', '{\"id\":10,\"title\":\"\\u54c8\\u54c8\",\"content\":\"\\u6d4b\\u8bd5\\u7684\\u54c8\\u54c8\\u54c8\\u54c8\"}', null, '2020-07-18 19:14:23', '2020-07-18 19:14:23');
INSERT INTO `notifications` VALUES ('be6b16c5-d165-4e16-a4e8-67c4e499fb17', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '8', '{\"id\":10,\"title\":\"\\u54c8\\u54c8\",\"content\":\"\\u6d4b\\u8bd5\\u7684\\u54c8\\u54c8\\u54c8\\u54c8\"}', '2020-07-18 21:43:25', '2020-07-18 19:14:23', '2020-07-18 21:43:25');
INSERT INTO `notifications` VALUES ('cc153cb2-104e-4f54-ac56-7cdc4d89b5d0', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '2', '{\"id\":6,\"title\":\"\\u901a\\u77e5\\u6d4b\\u8bd532\",\"content\":\"\\u6d4b\\u8bd5\\u901a\\u77e5\\u5185\\u5bb9123456\"}', '2020-07-03 14:45:38', '2020-07-03 14:44:25', '2020-07-03 14:45:38');
INSERT INTO `notifications` VALUES ('cdea53ab-b26a-4e7a-a87d-65d3adb482a1', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '3', '{\"id\":5,\"title\":\"\\u6d4b\\u8bd5\\u901a\\u77e5\",\"content\":\"\\u901a\\u77e5\\u5185\\u5bb9\"}', '2020-07-03 14:35:08', '2020-07-03 14:35:01', '2020-07-03 14:35:08');
INSERT INTO `notifications` VALUES ('e517bedd-7417-42a7-8c79-fc5c015cbaed', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '1', '{\"id\":3,\"title\":\"11\",\"content\":\"1111\"}', '2020-07-03 14:24:08', '2020-07-03 14:13:57', '2020-07-03 14:24:08');
INSERT INTO `notifications` VALUES ('e6578e18-7332-4754-aefd-ae2359f1dba1', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '1', '{\"id\":6,\"title\":\"\\u901a\\u77e5\\u6d4b\\u8bd532\",\"content\":\"\\u6d4b\\u8bd5\\u901a\\u77e5\\u5185\\u5bb9123456\"}', null, '2020-07-03 14:44:25', '2020-07-03 14:44:25');
INSERT INTO `notifications` VALUES ('e8157688-9c25-4110-ae1b-9870e9ec4711', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '1', '{\"id\":8,\"title\":\"test2222\",\"content\":\"test2222test2222test2222\"}', null, '2020-07-17 15:05:55', '2020-07-17 15:05:55');
INSERT INTO `notifications` VALUES ('fcb1d336-6c01-4576-87f1-6bd23a196ee9', 'App\\Notifications\\TopicReplied', 'App\\Models\\User', '5', '{\"id\":8,\"title\":\"test2222\",\"content\":\"test2222test2222test2222\"}', null, '2020-07-17 15:05:55', '2020-07-17 15:05:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('43', '20200718004323815112', '5', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, null, null, '4', null, '2020-07-18 00:43:23', '2020-07-18 01:43:25');
INSERT INTO `order` VALUES ('45', '20200718004428813076', '6', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533atest555555555555\",\"contact_name\":\"test1231\",\"contact_phone\":\"66666666666\"}', '26100.00', null, null, null, '4', null, '2020-07-18 00:44:28', '2020-07-18 01:44:28');
INSERT INTO `order` VALUES ('46', '20200718004514172554', '6', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533atest555555555555\",\"contact_name\":\"test1231\",\"contact_phone\":\"66666666666\"}', '26100.00', null, null, null, '4', null, '2020-07-18 00:45:14', '2020-07-18 01:45:16');
INSERT INTO `order` VALUES ('47', '20200718004623768461', '6', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533atest555555555555\",\"contact_name\":\"test1231\",\"contact_phone\":\"66666666666\"}', '0.01', null, null, null, '4', null, '2020-07-18 00:46:23', '2020-07-18 01:46:25');
INSERT INTO `order` VALUES ('48', '20200718004632163385', '6', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533atest555555555555\",\"contact_name\":\"test1231\",\"contact_phone\":\"66666666666\"}', '0.01', null, '2020-07-18 00:46:46', '4200000592202007187267203618', '3', '{\"express_company\":\"\\u987a\\u4e30\\u5feb\\u9012\",\"express_no\":\"111222233334554\"}', '2020-07-18 00:46:32', '2020-07-18 00:46:46');
INSERT INTO `order` VALUES ('51', '20200718013114425580', '3', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, null, null, '4', null, '2020-07-18 01:31:14', '2020-07-18 02:31:14');
INSERT INTO `order` VALUES ('52', '20200718013206931454', '5', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, null, null, '4', null, '2020-07-18 01:32:06', '2020-07-18 02:32:08');
INSERT INTO `order` VALUES ('53', '20200718111256575149', '5', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, null, null, '4', null, '2020-07-18 11:12:56', '2020-07-18 12:12:57');
INSERT INTO `order` VALUES ('54', '20200718171207033905', '7', '{\"address\":null}', '0.00', null, null, null, '4', null, '2020-07-18 17:12:07', '2020-07-18 18:12:08');
INSERT INTO `order` VALUES ('55', '20200718172245914529', '6', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533atestsssssssssssss\",\"contact_name\":\"test\",\"contact_phone\":\"55123123125\"}', '28600.00', null, null, null, '4', null, '2020-07-18 17:22:45', '2020-07-18 18:22:47');
INSERT INTO `order` VALUES ('56', '20200718172434190370', '6', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533atestsssssssssssss\",\"contact_name\":\"test\",\"contact_phone\":\"55123123125\"}', '100.00', null, null, null, '4', null, '2020-07-18 17:24:34', '2020-07-18 18:24:35');
INSERT INTO `order` VALUES ('57', '20200718185719780424', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:19', '2020-07-18 19:57:19');
INSERT INTO `order` VALUES ('58', '20200718185720577128', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:20', '2020-07-18 19:57:22');
INSERT INTO `order` VALUES ('59', '20200718185720681244', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:20', '2020-07-18 19:57:22');
INSERT INTO `order` VALUES ('60', '20200718185720172306', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:20', '2020-07-18 19:57:23');
INSERT INTO `order` VALUES ('61', '20200718185720277631', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:20', '2020-07-18 19:57:23');
INSERT INTO `order` VALUES ('62', '20200718185721477060', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:21', '2020-07-18 19:57:23');
INSERT INTO `order` VALUES ('63', '20200718185721661439', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:21', '2020-07-18 19:57:23');
INSERT INTO `order` VALUES ('64', '20200718185721277718', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:21', '2020-07-18 19:57:23');
INSERT INTO `order` VALUES ('65', '20200718185721335333', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:21', '2020-07-18 19:57:23');
INSERT INTO `order` VALUES ('66', '20200718185722399458', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:22', '2020-07-18 19:57:23');
INSERT INTO `order` VALUES ('67', '20200718185722753232', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:22', '2020-07-18 19:57:23');
INSERT INTO `order` VALUES ('68', '20200718185722531290', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:22', '2020-07-18 19:57:23');
INSERT INTO `order` VALUES ('69', '20200718185722649873', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:22', '2020-07-18 19:57:23');
INSERT INTO `order` VALUES ('70', '20200718185722691290', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:22', '2020-07-18 19:57:23');
INSERT INTO `order` VALUES ('71', '20200718185723052895', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:23', '2020-07-18 19:57:23');
INSERT INTO `order` VALUES ('72', '20200718185723214962', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:23', '2020-07-18 19:57:23');
INSERT INTO `order` VALUES ('73', '20200718185723624900', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.00', null, null, null, '4', null, '2020-07-18 18:57:23', '2020-07-18 19:57:23');
INSERT INTO `order` VALUES ('74', '20200718205317039889', '7', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u8bd5\",\"contact_name\":\"\\u6d4b\\u8bd5\",\"contact_phone\":\"15692425988\"}', '0.03', null, '2020-07-18 20:53:23', '4200000590202007187549514736', '3', '{\"express_company\":\"\\u7533\\u901a\",\"express_no\":\"123456\"}', '2020-07-18 20:53:17', '2020-07-18 20:53:23');
INSERT INTO `order` VALUES ('76', '20200718213658483250', '6', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533atestsssssssssssss\",\"contact_name\":\"test\",\"contact_phone\":\"55555555566\"}', '200.00', null, null, null, '4', null, '2020-07-18 21:36:58', '2020-07-18 22:36:59');
INSERT INTO `order` VALUES ('77', '20200718215110901112', '6', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533atestsssssssssssss\",\"contact_name\":\"test\",\"contact_phone\":\"55555555566\"}', '2000.00', null, null, null, '4', null, '2020-07-18 21:51:10', '2020-07-18 22:51:12');
INSERT INTO `order` VALUES ('78', '20200718221528562907', '7', '{\"address\":null}', '100.00', null, null, null, '4', null, '2020-07-18 22:15:28', '2020-07-18 23:15:30');
INSERT INTO `order` VALUES ('79', '20200718230612718185', '6', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533atestsssssssssssss\",\"contact_name\":\"test\",\"contact_phone\":\"55555555566\"}', '2000.00', null, null, null, '4', null, '2020-07-18 23:06:12', '2020-07-19 00:06:13');
INSERT INTO `order` VALUES ('80', '20200718235051511894', '8', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u662f\\u662f\\u662f\",\"contact_name\":\"test007\",\"contact_phone\":\"12345678912\"}', '0.01', null, '2020-07-18 23:50:56', '4200000582202007189900327380', '2', null, '2020-07-18 23:50:51', '2020-07-18 23:50:56');
INSERT INTO `order` VALUES ('81', '20200719100956621386', '8', '{\"address\":null}', '0.00', null, null, null, '4', null, '2020-07-19 10:09:56', '2020-07-19 11:09:59');
INSERT INTO `order` VALUES ('82', '20200719151851622376', '8', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u6d4b\\u662f\\u662f\\u662f\",\"contact_name\":\"test007\",\"contact_phone\":\"12345678912\"}', '0.00', null, null, null, '4', null, '2020-07-19 15:18:51', '2020-07-19 16:18:53');

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `order_items` VALUES ('60', '41', '6', '2', '1000.00');
INSERT INTO `order_items` VALUES ('61', '41', '7', '4', '100.00');
INSERT INTO `order_items` VALUES ('62', '43', '6', '2', '1000.00');
INSERT INTO `order_items` VALUES ('63', '43', '7', '4', '100.00');
INSERT INTO `order_items` VALUES ('64', '45', '6', '22', '1000.00');
INSERT INTO `order_items` VALUES ('65', '45', '7', '1', '100.00');
INSERT INTO `order_items` VALUES ('66', '45', '8', '2', '2000.00');
INSERT INTO `order_items` VALUES ('67', '46', '6', '22', '1000.00');
INSERT INTO `order_items` VALUES ('68', '46', '7', '1', '100.00');
INSERT INTO `order_items` VALUES ('69', '46', '8', '2', '2000.00');
INSERT INTO `order_items` VALUES ('70', '47', '6', '22', '1000.00');
INSERT INTO `order_items` VALUES ('71', '47', '7', '1', '100.00');
INSERT INTO `order_items` VALUES ('72', '47', '8', '2', '2000.00');
INSERT INTO `order_items` VALUES ('73', '48', '6', '22', '1000.00');
INSERT INTO `order_items` VALUES ('74', '48', '7', '1', '100.00');
INSERT INTO `order_items` VALUES ('75', '48', '8', '2', '2000.00');
INSERT INTO `order_items` VALUES ('76', '49', '6', '1', '1000.00');
INSERT INTO `order_items` VALUES ('77', '51', '6', '4', '1000.00');
INSERT INTO `order_items` VALUES ('78', '52', '6', '4', '1000.00');
INSERT INTO `order_items` VALUES ('79', '53', '6', '4', '1000.00');
INSERT INTO `order_items` VALUES ('80', '55', '6', '22', '1000.00');
INSERT INTO `order_items` VALUES ('81', '55', '7', '6', '100.00');
INSERT INTO `order_items` VALUES ('82', '55', '8', '3', '2000.00');
INSERT INTO `order_items` VALUES ('83', '56', '7', '1', '100.00');
INSERT INTO `order_items` VALUES ('84', '57', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('85', '58', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('86', '59', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('87', '60', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('88', '61', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('89', '62', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('90', '63', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('91', '64', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('92', '65', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('93', '66', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('94', '67', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('95', '68', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('96', '69', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('97', '70', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('98', '71', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('99', '72', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('100', '73', '10', '0', '0.01');
INSERT INTO `order_items` VALUES ('101', '74', '10', '3', '0.01');
INSERT INTO `order_items` VALUES ('102', '76', '7', '2', '100.00');
INSERT INTO `order_items` VALUES ('103', '77', '8', '1', '2000.00');
INSERT INTO `order_items` VALUES ('104', '78', '7', '1', '100.00');
INSERT INTO `order_items` VALUES ('105', '79', '8', '1', '2000.00');
INSERT INTO `order_items` VALUES ('106', '80', '10', '1', '0.01');

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
  `promotionprice` decimal(10,2) DEFAULT NULL,
  `stock` tinyint(10) DEFAULT NULL COMMENT '库存',
  `recommended` tinyint(10) DEFAULT '1' COMMENT '推荐位1否2是',
  `status` tinyint(5) DEFAULT NULL COMMENT '状态1上架2下架',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `smallimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smalldescription` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('6', '29', '荷塘秋趣', '<p>荷塘秋趣<br data-mce-bogus=\"1\"></p>', '[\"images\\/ec61eed55f2e1e93c76f727f9caac393.jpg\",\"images\\/a577cb30a4f05ac7e24923d6ed0a55af.jpg\",\"images\\/62f24b116a559b110af537d2c28fe58e.jpg\"]', null, '1000.00', '500.00', null, '2', '2', '2020-07-15 21:41:04', '2020-07-27 00:41:03', 'images/ebda0c7f0554566eba1b62bed8c5071a.jpg', '荷塘秋趣');
INSERT INTO `products` VALUES ('7', '45', '大道无形', '<p>【产品名称】满江红</p><p><br data-mce-bogus=\"1\"></p>', '[\"images\\/9758e36d3b44b075b0fd2f833b87a4a2.jpg\",\"images\\/c9f5a87dd87145f4dcc294dd59941490.jpg\"]', null, '100.00', null, null, '1', '1', '2020-07-15 21:50:07', '2020-07-19 20:36:30', 'images/c7cad6fa93085a9fc5c551bb8067818a.jpg', '大道无形');
INSERT INTO `products` VALUES ('8', '46', '双峰凝秀', '<p>双峰凝秀<br data-mce-bogus=\"1\"></p>', '[]', null, '2000.00', null, null, '1', '1', '2020-07-15 21:50:53', '2020-07-15 21:50:53', 'images/715b9296bdeeba2a7905a02a0acf39f1.jpg', '双峰凝秀');
INSERT INTO `products` VALUES ('9', '28', '义薄云天', '<p>义薄云天义薄云天<br data-mce-bogus=\"1\"></p>', '[\"images\\/c231462bda735fa29f9f5f39b1de9d9e.jpg\"]', null, '1887.00', null, null, '1', '1', '2020-07-16 19:11:08', '2020-07-16 19:11:08', 'images/0761333f3ea358444583c56a7e7d31d4.jpg', '义薄云天');
INSERT INTO `products` VALUES ('10', '56', '啊啊', '<p>啊啊啊啊</p>', '[\"images\\/5326dc2a06698068520dd2820b9cf805.png\"]', null, '0.01', null, null, '1', '1', '2020-07-18 18:47:00', '2020-07-18 22:49:23', 'images/34a6763fa7cd40cbe0692a672c0eeb52.png', '啊啊');
INSERT INTO `products` VALUES ('11', '56', '123', '<p>111</p>', '[\"images\\/26e2a7cec1864907f4e5a9079be77468.png\"]', null, '1.00', null, null, '1', '1', '2020-07-18 22:28:39', '2020-07-18 22:49:33', 'images/fd93d163bd692a0fe87eb205d42e431d.png', '12');
INSERT INTO `products` VALUES ('12', '56', '122', '<p>444</p>', '[\"images\\/3e50aa8fb7e1a0d4b6188237f74c7e9c.png\"]', null, '444.00', null, null, '1', '2', '2020-07-18 22:28:59', '2020-07-18 23:45:21', 'images/ea240a2b89ef610a26009c836d644860.png', '334');
INSERT INTO `products` VALUES ('13', '33', '义薄云天88', '<p>test</p>', '[\"images\\/97f7f50f138775560c3ef31c236a7970.jpg\"]', null, '2.00', null, null, '1', '2', '2020-07-18 23:32:15', '2020-07-18 23:38:15', 'images/0e4b0c01ee4cf7eeb229a53b21862abf.jpg', 'test');
INSERT INTO `products` VALUES ('14', '33', '测试二级商品', '<p>test</p>', '[]', null, '111.00', null, null, '1', '2', '2020-07-18 23:32:45', '2020-07-19 00:10:20', null, 'test');
INSERT INTO `products` VALUES ('15', '56', '义薄云天', '<p>test</p>', '[\"images\\/204c0ba0d21d1990a9d36f205fd6b39f.png\"]', null, '11.00', null, null, '1', '2', '2020-07-18 23:33:34', '2020-07-19 00:14:41', 'images/598f071dff9605e1cb77372294d9aca3.png', 'test');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of push
-- ----------------------------
INSERT INTO `push` VALUES ('9', '通知测试', '测试哈哈哈哈哈', '2020-07-18 17:55:37', '2020-07-18 18:41:56');
INSERT INTO `push` VALUES ('10', '哈哈', '测试的哈哈哈哈', '2020-07-18 19:14:23', '2020-07-18 19:14:23');

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `minmoney` decimal(10,2) NOT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES ('1', '6.00', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sign
-- ----------------------------
INSERT INTO `sign` VALUES ('2', '37', '{\"appId\":\"wx5da558002fdd6736\",\"timeStamp\":\"1594380989\",\"nonceStr\":\"LNuVlMKUiviOlmwU\",\"package\":\"prepay_id=wx10193630382509413399229f1480146700\",\"signType\":\"MD5\",\"paySign\":\"91A65AD00064B496F7E3823B9289AE8A\"}');
INSERT INTO `sign` VALUES ('3', '38', '{\"appId\":\"wx5da558002fdd6736\",\"timeStamp\":\"1594455774\",\"nonceStr\":\"QJtrmdgSqgg2hdnn\",\"package\":\"prepay_id=wx11162254323341dfe68654cf1624258400\",\"signType\":\"MD5\",\"paySign\":\"61095EE361C77B090BD9C711C787E7AC\"}');
INSERT INTO `sign` VALUES ('4', '41', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595000054\",\"nonceStr\":\"CaIfzU82YcWQRHrC\",\"package\":\"prepay_id=wx172334145808396cf15a3d141906904800\",\"signType\":\"MD5\",\"paySign\":\"A026F18DDE4E06E856A4A2BAB2830B40\"}');
INSERT INTO `sign` VALUES ('5', '43', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595004204\",\"nonceStr\":\"CACsaYDV9HhhOQGI\",\"package\":\"prepay_id=wx180043240952597dbe9917de1573091000\",\"signType\":\"MD5\",\"paySign\":\"FBE5EB41942303F6DCAED57393DE6070\"}');
INSERT INTO `sign` VALUES ('6', '45', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595004268\",\"nonceStr\":\"iX6ZRMsH1U5wewNF\",\"package\":\"prepay_id=wx180044287452694ad25be2ed1307197500\",\"signType\":\"MD5\",\"paySign\":\"42DF8BA07F2AA0B114D4DFD5DCBBD57D\"}');
INSERT INTO `sign` VALUES ('7', '46', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595004314\",\"nonceStr\":\"N7Vn36FG55uGu6HL\",\"package\":\"prepay_id=wx18004514509506a460e5e3051404547600\",\"signType\":\"MD5\",\"paySign\":\"DB23C0B36A37EDAA05A7B2E7C60393B2\"}');
INSERT INTO `sign` VALUES ('8', '47', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595004383\",\"nonceStr\":\"bVJXYWfWNLwbp9cM\",\"package\":\"prepay_id=wx180046236334057915d5ae791628673800\",\"signType\":\"MD5\",\"paySign\":\"83A110401223C09751565B568C869856\"}');
INSERT INTO `sign` VALUES ('9', '48', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595004392\",\"nonceStr\":\"WwCoI8jWjpZ26XYX\",\"package\":\"prepay_id=wx18004632283260a5ccdb59af1846851000\",\"signType\":\"MD5\",\"paySign\":\"045325B9F01CB1EE08B57137B8AC960D\"}');
INSERT INTO `sign` VALUES ('10', '49', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595005871\",\"nonceStr\":\"YjziyiXhGWxqJs9c\",\"package\":\"prepay_id=wx18011111859602a1dca412511470331200\",\"signType\":\"MD5\",\"paySign\":\"A8A01D4F07FD2D9E367C2EE28A76AC37\"}');
INSERT INTO `sign` VALUES ('11', '52', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595007126\",\"nonceStr\":\"mpP0a1xdsJ6pbKL6\",\"package\":\"prepay_id=wx180132069024032a55e681df1402815800\",\"signType\":\"MD5\",\"paySign\":\"0471A99152540013CC1E0D9E1354E4BC\"}');
INSERT INTO `sign` VALUES ('12', '53', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595041977\",\"nonceStr\":\"HtUwcymNqliQoIno\",\"package\":\"prepay_id=wx18111257138812c70ad85b381585648900\",\"signType\":\"MD5\",\"paySign\":\"7D0A084876F1ED6FD3AA69959FF59E4C\"}');
INSERT INTO `sign` VALUES ('13', '55', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595064165\",\"nonceStr\":\"xao8zxdZXCDt4fqQ\",\"package\":\"prepay_id=wx18172245162641c90a1c81521904066700\",\"signType\":\"MD5\",\"paySign\":\"341676DD8E2ECC5ED427A6D422D497AC\"}');
INSERT INTO `sign` VALUES ('14', '56', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595064275\",\"nonceStr\":\"ldwJRmOoCoEzsR9h\",\"package\":\"prepay_id=wx181724350240383173b6d5ad1632013300\",\"signType\":\"MD5\",\"paySign\":\"49AED9383839EC808BDF5E0C46C3F5EA\"}');
INSERT INTO `sign` VALUES ('15', '74', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595076797\",\"nonceStr\":\"AIZvhOc0CbciyMpf\",\"package\":\"prepay_id=wx18205317925343e14e2f971c1567695300\",\"signType\":\"MD5\",\"paySign\":\"E7F83556C8E559F2EDDCE2290C282CB4\"}');
INSERT INTO `sign` VALUES ('16', '76', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595079418\",\"nonceStr\":\"5IDIkcG5WqnC8Zbz\",\"package\":\"prepay_id=wx182136582748562293835e481616829700\",\"signType\":\"MD5\",\"paySign\":\"5A4402AF8245BB6AE78C996C88085445\"}');
INSERT INTO `sign` VALUES ('17', '77', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595080270\",\"nonceStr\":\"tTCEUDxSZtWYE1Ml\",\"package\":\"prepay_id=wx18215110609992a782896bba1856870100\",\"signType\":\"MD5\",\"paySign\":\"6950D32B8BDE70A9AE616BEF973E6B88\"}');
INSERT INTO `sign` VALUES ('18', '78', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595081728\",\"nonceStr\":\"9cd5Vv0tb4yqNl3R\",\"package\":\"prepay_id=wx1822152859630510fc170e7c1445186300\",\"signType\":\"MD5\",\"paySign\":\"38695A5650A93389668A89D0BAC9D73A\"}');
INSERT INTO `sign` VALUES ('19', '79', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595084773\",\"nonceStr\":\"uqLvZQYDEmPBkFph\",\"package\":\"prepay_id=wx182306129785828b5f3c53821387325800\",\"signType\":\"MD5\",\"paySign\":\"34080839ED816CE8F0C7F7F012AF8705\"}');
INSERT INTO `sign` VALUES ('20', '80', '{\"appId\":\"wx2f09f4c587931bac\",\"timeStamp\":\"1595087451\",\"nonceStr\":\"kd5Ounbg0tHYDcHz\",\"package\":\"prepay_id=wx18235051211681c1863591c11548411200\",\"signType\":\"MD5\",\"paySign\":\"D7730DA57B26E02247535BA9D72B6968\"}');

-- ----------------------------
-- Table structure for swipe
-- ----------------------------
DROP TABLE IF EXISTS `swipe`;
CREATE TABLE `swipe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '//图片',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of swipe
-- ----------------------------
INSERT INTO `swipe` VALUES ('2', 'images/33c6ea6adab02e9ca997e5db3b6c7487.jpg', 'http://collect.test/admin/swipe/create');
INSERT INTO `swipe` VALUES ('3', 'images/bb3c26b2a21ec18376108b2a8c08d47a.jpg', 'http://collect.test/admin/swipe/create');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `weapp_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sex` char(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('6', '沙茶酱', 'https://wx.qlogo.cn/mmopen/vi_32/W2XzgxgBicvDohDylT4tZp53W8SlGz6UB3VKyR826CibgmHVkBqJGyKcNb6ibh0PibqHDFfpmcSQrqGOvpc2q651ZQ/132', '11', '女', '2020-07-18', '11', 'obkkt5NTitx4lVbwj2j9zqvR6Vnc', 'eyJpdiI6ImdSYlBpOVwvZDJUZWd0TDJ4dENZTTRBPT0iLCJ2YWx1ZSI6InZzSWk4K3hWa1JBYXJZaFdnU2lGOXlqZnlWNVhPanJqZ25MNnV0VzRkQnZnK0pqZk5RUytCMm9NMmI1cEt6UDAiLCJtYWMiOiJhYmNlY2ZlZGMyZmM2ZmJkZWFiNjA2N2RiMzBmZjAxNjgzNWI5MjJlOTVhZWE4YzNiNmI5YjJiZjAzMDZiMzdjIn0=', '2020-07-12 21:28:21', '2020-07-19 00:15:06', '0', '0.00', '0');
INSERT INTO `users` VALUES ('7', 'Richard祝', 'https://wx.qlogo.cn/mmopen/vi_32/pB0xZyLN3iaMfF38NNGIk6JSGoLHMfVHxqcwsUc8cuXXxXeQgrnC1FiaZb6nRMq6cozvFzG1ibvEkbdrxbYtqRfpA/132', '', '', '', '17', 'obkkt5ElQGqi-j-nytjRgyKCjcMI', 'eyJpdiI6IisyOENRSzl5NGM5Z0xUXC9kK3hLUzFRPT0iLCJ2YWx1ZSI6Im5SaWM1S0xtbFhEbVwvZTJQeDZ0UXM5NVpMUDAxQkFyTU9LS09ScDJjUmJrXC9MSHVLd2xpNHVLczl1MjkrZVNNVCIsIm1hYyI6ImJkMmI5NWRjYjY0NGU0MTJmYjkyOTNmNWNlM2QyYjlhMmZkYWNiZjA5NTFkZTIxYzA2Mzc3MzJkZjlkZGYwMDYifQ==', '2020-07-13 23:47:34', '2020-07-19 20:35:30', '0', '0.00', '0');
INSERT INTO `users` VALUES ('8', 'Wqj', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKRwphBdIgWmL1hCiarc7xibwXn9ETFL9zLN6fgmwtHylI5JEKJLwF85st2ZNP8yvjZbgkVrUUsrqJg/132', '18616390269', '男', '2020-07-18', '18', 'obkkt5Md0VVewDF7pXjbys9pvz00', 'eyJpdiI6ImZsYWNMV1VZbFhVRUlSaTk4Y2tnZnc9PSIsInZhbHVlIjoiem05SmZnWXdhdEpROXFydDdyaCtaclF5KzlwK0c3VjVrSjJcL2NqNmVSd1RUSXBrTU5lTzVSZWhWd2gwT0Q0VloiLCJtYWMiOiI1YjQ4NGZlYzI4OTM2ZTYzY2M2MTQ5MWRkODk2ZDYzODdjNTVmMTA2MzJkMjY0NTQwYzMwYmQyNzRjNTdkYjA0In0=', '2020-07-15 21:41:38', '2020-07-23 21:39:41', '0', '0.00', '0');
INSERT INTO `users` VALUES ('9', 'calla', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ12FW9gSXJfxsicSPIK9gRzj6apLaefb6e4afr1xNkdWKDIjtVxo6j4D64q7ZbrCqbrX2sGy5tmZQ/132', '', '', '', null, 'obkkt5FXouyYLvqXO63Pby_40Ha8', 'eyJpdiI6InNOdkh6MFliaTVsVGxBYllMR1wvWlRRPT0iLCJ2YWx1ZSI6IlFtOE1Ea1NsYWVXbHpDUkNLRXVSZUhZZDhqZXprbUFRc2lOdFN1cEZNTjVMQ05CMlE0eVlBY3FncDZHcGFRNkEiLCJtYWMiOiIzMDk0OGY3OTJiNGVkYzIxN2U5OGQyMzE1OGU5YjM3YjQwODQ0YWE5YTg5Zjg2NDJlZGQ5MzA5YmRjMGE3NDQ0In0=', '2020-07-18 12:17:40', '2020-07-18 23:16:12', '0', '0.00', '0');
INSERT INTO `users` VALUES ('11', 'snow雪', 'https://wx.qlogo.cn/mmopen/vi_32/357r4VUYVBSRHwviaIo1xFicRKTxTzE6XGEds5LQJNFtVmgTLhZXiawXnUh1WJvfoPh6wyuI88aicrafvseOawRAiaw/132', '', '', '', '20', 'obkkt5M-nEszHFpzye-6S7Y_V-Qc', 'eyJpdiI6ImZuSnRSbW5ZMW9qV1BYNyt6c3ZwbkE9PSIsInZhbHVlIjoid2lYQnJNYlVLcDN5d05xTGlcL0dwZWZGenJYZTNES0F4TFRnVjJEeUZaM2w4ditQOVlSckNYbDQwRmMrdHdXSm4iLCJtYWMiOiJlNjhkYzNmODBlM2E4MDRiYjk4NTE4YmM1ZTRhYmU4YzRiY2MzZTlmMzM1YmFkMzAxMDcyYzUxYzg3N2E5MmJmIn0=', '2020-07-18 17:44:03', '2020-07-20 22:42:25', '1', '0.00', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_addresses
-- ----------------------------
INSERT INTO `user_addresses` VALUES ('1', '1', '江苏省', '南京市', '浦口区', '第22街道第238号', '朱晨晨2', '15766925847');
INSERT INTO `user_addresses` VALUES ('2', '1', '江苏省', '江苏省', '江苏省', 'dasd', '朱晨晨2', '12345645678');
INSERT INTO `user_addresses` VALUES ('4', '1', null, null, null, null, null, null);
INSERT INTO `user_addresses` VALUES ('5', '1', null, null, null, null, '朱晨晨2', null);
INSERT INTO `user_addresses` VALUES ('11', '6', '北京市', '北京市', '东城区', 'testsssssssssssss', 'test', '55123123125');
INSERT INTO `user_addresses` VALUES ('12', '6', '北京市', '北京市', '东城区', 'test555555555555', 'test1231', '66666666666');
INSERT INTO `user_addresses` VALUES ('13', '6', 'undefined', 'undefined', 'undefined', 'test3211', 'test', '65411111111');
INSERT INTO `user_addresses` VALUES ('14', '6', '北京市', '北京市', '东城区', 'testsssssssssssss', 'test', '55555555566');
INSERT INTO `user_addresses` VALUES ('15', '6', '北京市', '北京市', '东城区', 'test', 'test', '18888888888');
INSERT INTO `user_addresses` VALUES ('16', '6', '北京市', '北京市', '东城区', '1被咯故事中', '你好', '12457878888');
INSERT INTO `user_addresses` VALUES ('17', '7', '北京市', '北京市', '东城区', '测试', '测试', '15692425988');
INSERT INTO `user_addresses` VALUES ('19', '8', '北京市', '北京市', '东城区', '测是是是', 'test007', '12345678912');
INSERT INTO `user_addresses` VALUES ('20', '11', '河北省', '石家庄市', '长安区', '啾啾啾啾啾啾', '朱晨晨', '15766925847');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_product
-- ----------------------------
INSERT INTO `user_product` VALUES ('3', '1', '1', '2020-07-01 16:02:51', '2020-07-01 16:02:51');
INSERT INTO `user_product` VALUES ('4', '1', '2', '2020-07-01 17:12:44', '2020-07-01 17:12:44');
INSERT INTO `user_product` VALUES ('5', '6', '1', '2020-07-14 15:49:16', '2020-07-14 15:49:16');
INSERT INTO `user_product` VALUES ('6', '6', '1', null, null);
INSERT INTO `user_product` VALUES ('7', '6', '5', '2020-07-15 16:08:39', '2020-07-15 16:08:39');
INSERT INTO `user_product` VALUES ('8', '6', '3', '2020-07-15 16:08:53', '2020-07-15 16:08:53');
INSERT INTO `user_product` VALUES ('9', '8', '6', '2020-07-15 22:27:37', '2020-07-15 22:27:37');
INSERT INTO `user_product` VALUES ('11', '6', '6', '2020-07-17 15:09:30', '2020-07-17 15:09:30');
INSERT INTO `user_product` VALUES ('12', '6', '7', '2020-07-17 15:18:43', '2020-07-17 15:18:43');
INSERT INTO `user_product` VALUES ('16', '11', '9', '2020-07-18 17:45:08', '2020-07-18 17:45:08');
INSERT INTO `user_product` VALUES ('17', '7', '7', '2020-07-18 22:19:54', '2020-07-18 22:19:54');
INSERT INTO `user_product` VALUES ('20', '9', '10', '2020-07-19 00:42:53', '2020-07-19 00:42:53');

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
  `status` tinyint(10) NOT NULL DEFAULT '1' COMMENT '1推荐2不推荐',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '公司介绍', '<p>公司介绍</p>', 'files/70c4662e8faeacb3df2ef4c3517f49c0.mp4', '2020-07-03 17:13:25', '2020-07-15 21:20:13', '1');
INSERT INTO `video` VALUES ('2', '精品推荐', '<p>精品推荐</p>', 'files/d74e248f5dd09532107c16ad6b227bbb.mp4', '2020-07-12 19:00:56', '2020-07-15 21:21:30', '1');
INSERT INTO `video` VALUES ('3', '测试视频看看', '起飞起飞起飞起飞起飞起飞起飞起飞起飞', 'files/cd2bd04abec1d414a3a961da63694b12.mp4', '2020-07-12 19:01:22', '2020-07-12 19:01:22', '2');

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
INSERT INTO `withdrawal` VALUES ('1', '11', '张三', '123456789', '中国银行', '20.00', '123456789', '15766925847', '2', '2020-07-05 18:53:11', '2020-07-11 15:50:05');
