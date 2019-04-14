/*
 Navicat MySQL Data Transfer

 Source Server         : Data
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : bookstore1

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 14/04/2019 11:40:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书名',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `publishDate` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '出版日期',
  `stock` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title`(`title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, 'Java编程思想', 98.50, '2005-01-02 00:00:00', 1);
INSERT INTO `books` VALUES (2, 'HeadFirst设计模式', 55.70, '2010-11-09 00:00:00', 1);
INSERT INTO `books` VALUES (3, '第一行Android代码', 69.90, '2015-06-23 00:00:00', 1);
INSERT INTO `books` VALUES (4, 'C++编程思想', 88.50, '2004-01-09 00:00:00', 1);
INSERT INTO `books` VALUES (5, 'HeadFirst Java', 55.70, '2013-12-17 00:00:00', 1);
INSERT INTO `books` VALUES (6, '疯狂Android', 19.50, '2014-07-31 00:00:00', 1);
INSERT INTO `books` VALUES (22, 'test', 138.00, '2019-04-14 00:00:00', 10);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_super` tinyint(1) NULL DEFAULT NULL,
  `last_visit` datetime(0) NULL DEFAULT NULL,
  `balance` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', 1, '2019-04-14 11:20:45', NULL);
INSERT INTO `user` VALUES (2, 'nomal', '123456', 0, '2019-04-14 11:14:56', NULL);

SET FOREIGN_KEY_CHECKS = 1;
