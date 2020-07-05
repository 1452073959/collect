/*
Navicat MySQL Data Transfer

Source Server         : 腾讯
Source Server Version : 50726
Source Host           : 49.234.34.184:3306
Source Database       : collect

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-07-05 17:28:04
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `order_items` VALUES ('14', '15', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('15', '15', '2', '4', '0.01');
INSERT INTO `order_items` VALUES ('16', '16', '1', '2', '50.00');
INSERT INTO `order_items` VALUES ('17', '16', '2', '4', '0.01');
