/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : medical_insurance

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-05-17 17:04:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `a_id` int(11) NOT NULL DEFAULT '0',
  `c_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `remain` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  KEY `account_u_id` (`u_id`),
  KEY `account_c_id` (`c_id`),
  CONSTRAINT `account_c_id` FOREIGN KEY (`c_id`) REFERENCES `company` (`c_id`),
  CONSTRAINT `account_u_id` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('0', '1119', '1111', '500');
INSERT INTO `account` VALUES ('1', '1110', '1111', '1000');

-- ----------------------------
-- Table structure for `application`
-- ----------------------------
DROP TABLE IF EXISTS `application`;
CREATE TABLE `application` (
  `ap_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `con_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`ap_id`),
  KEY `application_c_id` (`c_id`),
  KEY `application_con_id` (`con_id`),
  KEY `application_u_id` (`u_id`),
  CONSTRAINT `application_c_id` FOREIGN KEY (`c_id`) REFERENCES `company` (`c_id`),
  CONSTRAINT `application_con_id` FOREIGN KEY (`con_id`) REFERENCES `consumption` (`con_id`),
  CONSTRAINT `application_u_id` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of application
-- ----------------------------
INSERT INTO `application` VALUES ('1', '1111', '1110', '1', '1');
INSERT INTO `application` VALUES ('4', '1111', '1110', '5', '2');
INSERT INTO `application` VALUES ('5', '1111', '1119', '1', '0');
INSERT INTO `application` VALUES ('6', '1111', '1110', '1', '0');

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) DEFAULT NULL,
  `c_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1120 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1110', '鞍山术立电子有限公司', '1110');
INSERT INTO `company` VALUES ('1119', '鞍山型工场科技有限公司', '1119');

-- ----------------------------
-- Table structure for `consumption`
-- ----------------------------
DROP TABLE IF EXISTS `consumption`;
CREATE TABLE `consumption` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `h_id` int(11) DEFAULT NULL,
  `begin` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `disease` varchar(255) DEFAULT NULL,
  `expense` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`con_id`),
  KEY `consumption_h_id` (`h_id`),
  CONSTRAINT `consumption_h_id` FOREIGN KEY (`h_id`) REFERENCES `hospital` (`h_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consumption
-- ----------------------------
INSERT INTO `consumption` VALUES ('1', '111', '2009-07-06', '2009-08-08', '1111', '感冒严重', '200');
INSERT INTO `consumption` VALUES ('2', '111', '2010-01-06', '2010-03-08', '2222', '发烧', '300');
INSERT INTO `consumption` VALUES ('3', '111', '2011-07-06', '2011-08-08', '6666', '肺炎', '3000');
INSERT INTO `consumption` VALUES ('4', '111', '2012-04-06', '2012-05-08', '2222', '肝炎', '2000');
INSERT INTO `consumption` VALUES ('5', '111', '2012-02-06', '2012-02-08', '1111', '咳嗽', '2000');
INSERT INTO `consumption` VALUES ('6', '111', '2014-09-06', '2014-09-08', '1111', '中风', '6669');
INSERT INTO `consumption` VALUES ('7', '111', '2015-07-06', '2015-08-08', '1111', '糖尿病', '3001');
INSERT INTO `consumption` VALUES ('8', '111', '2015-05-06', '2015-06-08', '6666', '胃炎', '2669');
INSERT INTO `consumption` VALUES ('9', '111', '2015-11-06', '2015-11-08', '6666', '口轻溃疡', '3999');
INSERT INTO `consumption` VALUES ('10', '111', '2015-12-06', '2015-12-08', '1111', '鼻炎', '2654');
INSERT INTO `consumption` VALUES ('11', '111', '1999-10-26', '1999-02-26', '6666', '??', '??');

-- ----------------------------
-- Table structure for `hospital`
-- ----------------------------
DROP TABLE IF EXISTS `hospital`;
CREATE TABLE `hospital` (
  `h_id` int(11) NOT NULL AUTO_INCREMENT,
  `h_password` int(11) DEFAULT NULL,
  `h_name` varchar(255) DEFAULT NULL,
  `h_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hospital
-- ----------------------------
INSERT INTO `hospital` VALUES ('111', '111', '北京协和医院', '三级甲等');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(255) DEFAULT NULL,
  `u_password` varchar(255) DEFAULT NULL,
  `u_age` int(11) DEFAULT NULL,
  `flag` int(11) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6667 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1111', 'liu', 'liu', '30', '00000000001');
INSERT INTO `user` VALUES ('2222', 'wei', 'wei', '38', '00000000001');
INSERT INTO `user` VALUES ('3333', 'lin', 'lin', '41', '00000000001');
INSERT INTO `user` VALUES ('6666', 'l', 'l', '29', '00000000002');
