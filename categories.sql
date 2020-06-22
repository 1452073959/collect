/*
Navicat MySQL Data Transfer

Source Server         : 腾讯
Source Server Version : 50726
Source Host           : 49.234.34.184:3306
Source Database       : shopv6

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-06-21 15:04:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `is_directory` tinyint(1) NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '手机配件', null, '1', '0', '-', '2020-05-10 11:19:57', '2020-05-10 11:19:57');
INSERT INTO `categories` VALUES ('2', '手机壳', '1', '0', '1', '-1-', '2020-05-10 11:19:57', '2020-05-10 11:19:57');
INSERT INTO `categories` VALUES ('3', '贴膜', '1', '0', '1', '-1-', '2020-05-10 11:19:57', '2020-05-10 11:19:57');
INSERT INTO `categories` VALUES ('4', '存储卡', '1', '0', '1', '-1-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('5', '数据线', '1', '0', '1', '-1-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('6', '充电器', '1', '0', '1', '-1-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('7', '耳机', '1', '1', '1', '-1-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('8', '有线耳机', '7', '0', '2', '-1-7-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('9', '蓝牙耳机', '7', '0', '2', '-1-7-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('10', '电脑配件', null, '1', '0', '-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('11', '显示器', '10', '0', '1', '-10-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('12', '显卡', '10', '0', '1', '-10-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('13', '内存', '10', '0', '1', '-10-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('14', 'CPU', '10', '0', '1', '-10-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('15', '主板', '10', '0', '1', '-10-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('16', '硬盘', '10', '0', '1', '-10-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('17', '电脑整机', null, '1', '0', '-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('18', '笔记本', '17', '0', '1', '-17-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('19', '台式机', '17', '0', '1', '-17-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('20', '平板电脑', '17', '0', '1', '-17-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('21', '一体机', '17', '0', '1', '-17-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('22', '服务器', '17', '0', '1', '-17-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('23', '工作站', '17', '0', '1', '-17-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('24', '手机通讯', null, '1', '0', '-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('25', '智能机', '24', '0', '1', '-24-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('26', '老人机', '24', '0', '1', '-24-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
INSERT INTO `categories` VALUES ('27', '对讲机', '24', '0', '1', '-24-', '2020-05-10 11:19:58', '2020-05-10 11:19:58');
