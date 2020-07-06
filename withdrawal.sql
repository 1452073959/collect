/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50724
Source Host           : 127.0.0.1:3306
Source Database       : collect

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-07-05 20:17:42
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1已申请2,已拨款',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of withdrawal
-- ----------------------------
INSERT INTO `withdrawal` VALUES ('1', '3', '张三', '123456789', '中国银行', '50.00', '123456789', '15766925847', '1', '2020-07-05 18:53:11', '2020-07-05 18:53:11');
