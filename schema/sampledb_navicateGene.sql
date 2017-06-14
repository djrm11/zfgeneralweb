/*
Navicat MySQL Data Transfer

Source Server         : sampledb
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : sampledb

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-03-04 21:59:04
*/
DROP DATABASE IF EXISTS sampledb;
CREATE DATABASE sampledb DEFAULT CHARACTER SET utf8;
USE sampledb;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mb_user
-- ----------------------------
DROP TABLE IF EXISTS `mb_user`;
CREATE TABLE `mb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户Id',
  `user_name` varchar(30) NOT NULL DEFAULT ' ' COMMENT '用户名',
  `user_age` varchar(30) NOT NULL DEFAULT ' ' COMMENT '年龄',
  PRIMARY KEY (`user_id`),
  KEY `AK_AK_USER_USER_NAME` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_user
-- ----------------------------
INSERT INTO `mb_user` VALUES ('1', '2', '3');
INSERT INTO `mb_user` VALUES ('2', 'zf', '66');

-- ----------------------------
-- Table structure for t_comment_log
-- ----------------------------
DROP TABLE IF EXISTS `t_comment_log`;
CREATE TABLE `t_comment_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `space_id` int(11) NOT NULL COMMENT '风景区',
  `ip` varchar(20) NOT NULL COMMENT 'IP',
  `comment_type` int(11) NOT NULL COMMENT '评论类型',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment_log
-- ----------------------------
INSERT INTO `t_comment_log` VALUES ('1', '1', '10.176.108.50', '1');
INSERT INTO `t_comment_log` VALUES ('2', '1', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `t_comment_log` VALUES ('3', '2', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `t_comment_log` VALUES ('4', '3', '0:0:0:0:0:0:0:1', '1');

-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log` (
  `login_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(23) DEFAULT NULL,
  `login_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`login_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_login_log
-- ----------------------------
INSERT INTO `t_login_log` VALUES ('1', '666', '0.0.0.0', '2017-01-17 16:41:29');
INSERT INTO `t_login_log` VALUES ('2', '666', '10.176.108.50', '2017-01-17 16:41:29');
INSERT INTO `t_login_log` VALUES ('3', '666', '10.176.108.50', '2017-01-17 17:22:51');
INSERT INTO `t_login_log` VALUES ('4', '666', '10.176.108.50', '2017-01-17 17:37:57');
INSERT INTO `t_login_log` VALUES ('5', '666', '10.176.108.50', '2017-01-17 18:45:18');
INSERT INTO `t_login_log` VALUES ('6', '666', '10.176.108.50', '2017-01-17 19:13:21');
INSERT INTO `t_login_log` VALUES ('7', '666', '10.176.108.50', '2017-01-18 10:01:52');
INSERT INTO `t_login_log` VALUES ('8', '666', '10.176.108.50', '2017-01-18 14:45:39');
INSERT INTO `t_login_log` VALUES ('9', '666', '10.176.108.50', '2017-01-18 15:04:29');
INSERT INTO `t_login_log` VALUES ('10', '666', '10.176.108.50', '2017-01-18 15:28:52');
INSERT INTO `t_login_log` VALUES ('11', '666', '10.176.108.50', '2017-01-18 15:33:10');
INSERT INTO `t_login_log` VALUES ('12', '666', '0:0:0:0:0:0:0:1', '2017-01-19 11:23:24');
INSERT INTO `t_login_log` VALUES ('13', '666', '0:0:0:0:0:0:0:1', '2017-01-19 19:43:33');
INSERT INTO `t_login_log` VALUES ('14', '666', '0:0:0:0:0:0:0:1', '2017-01-21 15:48:48');
INSERT INTO `t_login_log` VALUES ('15', '666', '0:0:0:0:0:0:0:1', '2017-01-21 18:11:05');
INSERT INTO `t_login_log` VALUES ('16', '666', '0:0:0:0:0:0:0:1', '2017-01-21 19:04:34');
INSERT INTO `t_login_log` VALUES ('17', '666', '0:0:0:0:0:0:0:1', '2017-01-22 16:07:36');
INSERT INTO `t_login_log` VALUES ('18', '666', '0:0:0:0:0:0:0:1', '2017-01-22 18:27:04');
INSERT INTO `t_login_log` VALUES ('19', '666', '0:0:0:0:0:0:0:1', '2017-01-22 18:32:03');
INSERT INTO `t_login_log` VALUES ('20', '666', '0:0:0:0:0:0:0:1', '2017-01-22 18:33:11');
INSERT INTO `t_login_log` VALUES ('21', '666', '0:0:0:0:0:0:0:1', '2017-01-24 16:24:37');
INSERT INTO `t_login_log` VALUES ('22', '666', '0:0:0:0:0:0:0:1', '2017-01-24 17:52:02');
INSERT INTO `t_login_log` VALUES ('23', '666', '0:0:0:0:0:0:0:1', '2017-01-24 19:31:20');
INSERT INTO `t_login_log` VALUES ('24', '666', '0:0:0:0:0:0:0:1', '2017-01-25 15:28:34');
INSERT INTO `t_login_log` VALUES ('25', '666', '0:0:0:0:0:0:0:1', '2017-01-25 15:32:35');
INSERT INTO `t_login_log` VALUES ('26', '666', '10.176.108.50', '2017-01-25 16:15:27');
INSERT INTO `t_login_log` VALUES ('27', '666', '0:0:0:0:0:0:0:1', '2017-01-25 18:25:49');
INSERT INTO `t_login_log` VALUES ('28', '666', '0:0:0:0:0:0:0:1', '2017-01-26 13:34:55');
INSERT INTO `t_login_log` VALUES ('29', '666', '0:0:0:0:0:0:0:1', '2017-01-26 14:36:39');
INSERT INTO `t_login_log` VALUES ('30', '666', '0:0:0:0:0:0:0:1', '2017-01-26 16:11:15');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户Id',
  `user_name` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(30) NOT NULL DEFAULT '' COMMENT '密码',
  `last_visit` datetime DEFAULT NULL,
  `last_ip` varchar(20) NOT NULL DEFAULT '0' COMMENT '最后登录IP',
  PRIMARY KEY (`user_id`),
  KEY `AK_AK_USER_USER_NAME` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=667 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('666', 'yzf', '666', '2017-01-26 16:11:15', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for t_view_point
-- ----------------------------
DROP TABLE IF EXISTS `t_view_point`;
CREATE TABLE `t_view_point` (
  `point_id` int(11) NOT NULL AUTO_INCREMENT,
  `space_id` int(11) NOT NULL COMMENT '景区ID',
  `point_name` varchar(100) DEFAULT NULL COMMENT '景点名',
  `ticket_price` float(7,2) DEFAULT NULL COMMENT '票价',
  `img_file` varchar(100) DEFAULT NULL COMMENT '图片文件',
  `description` text COMMENT '景点描述',
  PRIMARY KEY (`point_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_view_point
-- ----------------------------
INSERT INTO `t_view_point` VALUES ('1', '1', 'firstViewPoint', '111.00', '09786A43-0742-4FC6-87C9-F05B71A75156.JPG', 'firstviewpointzfzfzfzfzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz');
INSERT INTO `t_view_point` VALUES ('2', '1', 'firstViewPoint', '111.00', 'CF7086E7-4B3D-40FF-B87F-7E869A9A75A8.jpg', 'firstviewpointzfzfzfzfzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz');
INSERT INTO `t_view_point` VALUES ('3', '1', 'thirdViewPoint', '111.00', null, '吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱在');
INSERT INTO `t_view_point` VALUES ('4', '2', 'firstviewpoint', '222.00', 'E2497F7D-EFDD-40A7-8377-D9CD4181EA88.JPG', '自作主张自作主张吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱22222222222');

-- ----------------------------
-- Table structure for t_view_space
-- ----------------------------
DROP TABLE IF EXISTS `t_view_space`;
CREATE TABLE `t_view_space` (
  `space_id` int(11) NOT NULL AUTO_INCREMENT,
  `space_name` varchar(50) NOT NULL COMMENT '景区名称',
  `description` text COMMENT '描述',
  `website` varchar(100) DEFAULT NULL COMMENT '对应的网站',
  `address` varchar(150) DEFAULT NULL COMMENT '所在地址',
  `user_id` int(11) NOT NULL COMMENT '创建者',
  `want_num` int(11) DEFAULT NULL COMMENT '想去的人数',
  `been_num` int(11) DEFAULT NULL COMMENT '去过的人数',
  `notwant_num` int(11) DEFAULT NULL COMMENT '不想去的人数',
  PRIMARY KEY (`space_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_view_space
-- ----------------------------
INSERT INTO `t_view_space` VALUES ('1', 'firstViewSpace', 'zfzfzfzfzfzfzfzfzfzfzzzzzzzzzzzzzfffffffffffffffffzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzfffff', 'http://www.zf.com', 'zfCityZfProvince', '666', '2', '0', '0');
INSERT INTO `t_view_space` VALUES ('2', 'secondviewspace', 'zfzfzfzfzfzfzfzfzfzfzzzzzzzzzzzzzfffffffffffffffffzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzf', 'http://www.baidu.com', 'zfCityZfProvince', '666', '0', '1', '0');
INSERT INTO `t_view_space` VALUES ('3', 'thirdViewSpace', 'zfzfzfzfzfzfzfzfzfzfzzzzzzzzzzzzzfffffffffffffffffzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzff', 'http://www.weibo.com', 'zfCityZfProvince', '666', '1', '0', '0');
INSERT INTO `t_view_space` VALUES ('4', 'fourthViewSpace', 'zfzfzfzfzfzfzfzfzfzfzzzzzzzzzzzzzfffffffffffffffffzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzffffff', 'http://www.taobao.com', 'zfCityZfProvince', '666', '0', '0', '0');
INSERT INTO `t_view_space` VALUES ('5', 'fifthviewspace', 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz隐隐约约隐隐约约隐隐约约隐隐约约隐隐约约隐隐约约隐隐约约隐隐约约隐隐约约隐隐约约噩噩噩噩噩噩噩噩噩噩噩噩噩噩噩噩噩噩噩噩噩噩噩噩噩噩f', 'http://www.google.com', 'zfCityzfProvince', '666', '0', '0', '0');
