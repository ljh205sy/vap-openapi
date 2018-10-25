/*
Navicat MySQL Data Transfer

Source Server         : 192.168.119.235
Source Server Version : 50721
Source Host           : 192.168.119.235:3306
Source Database       : vap_openapi

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-08-10 14:11:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(128) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `auto_approve` varchar(256) DEFAULT NULL,
  `user_name` varchar(256) DEFAULT NULL COMMENT '用户名称',
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('clientapp', 'openApi', '123456', 'select', 'client_credentials,refresh_token,password', '', 'USER', '600', null, null, null, 'user_1');
INSERT INTO `oauth_client_details` VALUES ('client_2', 'openApi', '123456', '', 'client_credentials,refresh_token,password', null, 'USER', null, null, null, null, '');

-- ----------------------------
-- Table structure for sys_privilege
-- ----------------------------
DROP TABLE IF EXISTS `sys_privilege`;
CREATE TABLE `sys_privilege` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL COMMENT '编号',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `enabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可用 ,1-可用,0-不可用',
  `icon` varchar(255) DEFAULT NULL COMMENT '样式',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `type` int(1) NOT NULL COMMENT '权限类型 ,0-菜单权限 ,1-API权限',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级权限id',
  `create_user` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC5474E20BB6473F8` (`parent_id`) USING BTREE,
  CONSTRAINT `sys_privilege_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `sys_privilege` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_privilege
-- ----------------------------
INSERT INTO `sys_privilege` VALUES ('1', '00000100', '用户管理', '1', '', '', '1', null, '1', '2018-08-03 13:06:13', '1', '2018-08-03 13:06:13');
INSERT INTO `sys_privilege` VALUES ('2', '00000101', '获取用户', '1', '', '/api/user/**', '1', '1', '1', '2018-08-03 13:06:13', '1', '2018-08-03 13:06:13');
INSERT INTO `sys_privilege` VALUES ('3', '00000102', '查询用户', '1', null, '/api/user/query', '1', '1', '1', '2018-08-03 13:06:13', '1', null);
INSERT INTO `sys_privilege` VALUES ('5', '00000103', '获取用户对应角色', '1', '', '/api/user/getRoles/*', '1', '1', '1', '2018-08-03 13:06:13', '1', '2018-08-03 13:06:13');
INSERT INTO `sys_privilege` VALUES ('6', '00000104', '获取当前登录用户', '1', '', '/api/user/get_curr_user', '1', '1', '1', '2018-08-03 13:06:13', '1', '2018-08-03 13:06:13');
INSERT INTO `sys_privilege` VALUES ('7', '00000200', '角色管理', '1', '', '', '1', null, '1', '2018-08-03 13:06:13', null, null);
INSERT INTO `sys_privilege` VALUES ('8', '00000201', '获取角色', '1', '', '/api/role/*', '1', '7', '1', '2018-08-03 13:06:13', '1', '2018-08-03 13:06:13');
INSERT INTO `sys_privilege` VALUES ('9', '00000300', '权限管理', '1', '', '', '1', null, '1', '2018-08-03 13:06:13', '1', '2018-08-03 13:06:13');
INSERT INTO `sys_privilege` VALUES ('10', '00000301', '获取权限', '1', '', '/api/privilege/*', '1', '9', '1', '2018-08-03 13:06:13', null, null);
INSERT INTO `sys_privilege` VALUES ('11', '00000400', '部门管理', '1', '', '', '1', null, '1', '2018-08-03 13:06:13', null, null);
INSERT INTO `sys_privilege` VALUES ('12', '00000401', '获取部门', '1', '', '/api/department/*', '1', '11', '1', '2018-08-03 13:06:13', null, null);
INSERT INTO `sys_privilege` VALUES ('13', '00000500', '数据字典', '1', '', '', '1', null, '1', '2018-08-03 13:06:13', '1', '2018-08-03 13:06:13');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '角色名称',
  `chinese_name` varchar(255) DEFAULT NULL COMMENT '角色中文名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_user` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'ADMIN', '超级管理员', '', '1', '2014-12-29 14:30:28', '1', '2018-08-22 13:47:55');

-- ----------------------------
-- Table structure for sys_role_privilege
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_privilege`;
CREATE TABLE `sys_role_privilege` (
  `privilege_id` int(20) NOT NULL,
  `role_id` int(20) NOT NULL,
  PRIMARY KEY (`privilege_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_privilege
-- ----------------------------
INSERT INTO `sys_role_privilege` VALUES ('1', '1');
INSERT INTO `sys_role_privilege` VALUES ('2', '1');
INSERT INTO `sys_role_privilege` VALUES ('3', '1');
INSERT INTO `sys_role_privilege` VALUES ('4', '1');
INSERT INTO `sys_role_privilege` VALUES ('5', '1');
INSERT INTO `sys_role_privilege` VALUES ('6', '1');
INSERT INTO `sys_role_privilege` VALUES ('7', '1');
INSERT INTO `sys_role_privilege` VALUES ('8', '1');
INSERT INTO `sys_role_privilege` VALUES ('9', '1');
INSERT INTO `sys_role_privilege` VALUES ('10', '1');
INSERT INTO `sys_role_privilege` VALUES ('11', '1');
INSERT INTO `sys_role_privilege` VALUES ('12', '1');
INSERT INTO `sys_role_privilege` VALUES ('17', '1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `full_name` varchar(32) DEFAULT NULL COMMENT '全名',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `enabled` tinyint(1) DEFAULT '0' COMMENT '是否可用,1-可用 ,0-不可用',
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `create_user` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '22f9bddc742126e4103aeec2599b4973', '系统管理员', null, '1', '', '', null, '2018-08-01 15:49:15', '1', '2018-08-02 15:01:11');
INSERT INTO `sys_user` VALUES ('2', 'xiaowang', '22f9bddc742126e4103aeec2599b4973', '小王', null, '1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` int(20) NOT NULL DEFAULT '0',
  `role_id` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
