/*
Navicat MySQL Data Transfer

Source Server         : 腾讯
Source Server Version : 50726
Source Host           : 49.234.34.184:3306
Source Database       : collect

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-07-05 17:27:44
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('11', '20200705134512163126', '3', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, null, null, null, null, '2020-07-05 13:45:12', '2020-07-05 13:45:12');
INSERT INTO `order` VALUES ('12', '20200705134702939700', '3', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, null, null, null, null, '2020-07-05 13:47:02', '2020-07-05 13:47:02');
INSERT INTO `order` VALUES ('13', '20200705134944066375', '3', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, null, null, null, null, '2020-07-05 13:49:44', '2020-07-05 13:49:44');
INSERT INTO `order` VALUES ('14', '20200705142045660092', '1', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, null, null, '1', null, '2020-07-05 14:20:45', '2020-07-05 14:20:45');
INSERT INTO `order` VALUES ('15', '20200705161037490596', '1', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, null, null, '1', null, '2020-07-05 16:10:37', '2020-07-05 16:10:37');
INSERT INTO `order` VALUES ('16', '20200705161811046178', '1', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c238\\u53f7\",\"contact_name\":\"\\u5170\\u5fd7\\u8bda\",\"contact_phone\":\"15184382924\",\"type\":\"normal\"}', '0.01', null, '2020-07-05 16:18:33', '4200000586202007058370743547', '2', null, '2020-07-05 16:18:11', '2020-07-05 16:18:33');
