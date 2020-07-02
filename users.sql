/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50724
Source Host           : 127.0.0.1:3306
Source Database       : used

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-07-01 15:42:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `weapp_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生日',
  `sex` char(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `school` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '学校',
  `weapp_openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '微信id',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`weapp_avatar`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'snow雪', 'https://wx.qlogo.cn/mmopen/vi_32/fvSzic2fdNUMgDEXQMSMy4qUHQCCCcyPhyZCaKibRcGFckNYyqicx2mfJiagqjKV0USu8icX9fnibDE9wqb4aMazNseA/132', null, '男', '123456777', 'oUf9a5AT4xPDZy8lJ5Fpskh5gTqE', 'eyJpdiI6IkNIbEJKekVQUzljZzZ5TW03Z1dSNWc9PSIsInZhbHVlIjoiMWhlcTlCUlBqcUVjbnJyWmQ3SCtWR3BjRGMxYmVnNXd0RnF1djEyZytJZ0dlVmVsSWZxemFNXC9pazBLU25CRzciLCJtYWMiOiIzNDY0OTZmMmM0N2Q1N2FkY2YxOWNjOTVkM2U2N2ZiODcxMjlkYjRmYTlkMGJkZTkxOGNhOGY0YzFkMWNhYjA5In0=', '2020-06-18 17:27:23', '2020-06-20 15:03:31');
