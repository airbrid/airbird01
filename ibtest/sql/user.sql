/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : zxdemo

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2014-11-18 18:48:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(16) DEFAULT '111111',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99290 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user
-- ----------------------------
