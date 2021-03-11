/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50151
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50151
File Encoding         : 65001

Date: 2018-07-13 00:47:42
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `document_main`
-- ----------------------------
DROP TABLE IF EXISTS `document_main`;
CREATE TABLE `document_main` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `main_code` char(2) DEFAULT '',
  `KIND` varchar(255) DEFAULT '',
  `fieldType_tag` tinyint(1) unsigned DEFAULT '0',
  `REASON` varchar(255) DEFAULT '',
  `VALUE` varchar(255) DEFAULT '',
  `VALUE1` varchar(255) DEFAULT '',
  `topic` varchar(255) DEFAULT '',
  `picture` varchar(255) DEFAULT '',
  `role` varchar(255) DEFAULT NULL,
  `object` mediumtext,
  `range` mediumtext,
  `reader` mediumtext,
  `reference` mediumtext,
  `comment` mediumtext,
  `attachment1` varchar(255) DEFAULT '',
  `attachment2` varchar(255) DEFAULT '',
  `standard` mediumtext,
  `attachment3` varchar(255) DEFAULT '',
  `attachment4` varchar(255) DEFAULT '',
  `mains` mediumtext,
  `attachment5` varchar(255) DEFAULT '',
  `attachment6` varchar(255) DEFAULT '',
  `relation` mediumtext,
  `attachment7` varchar(255) DEFAULT '',
  `attachment8` varchar(255) DEFAULT '',
  `function` mediumtext,
  `attachment9` varchar(255) DEFAULT '',
  `attachment10` varchar(255) DEFAULT '',
  `filesystem` mediumtext,
  `attachment11` varchar(255) DEFAULT '',
  `attachment12` varchar(255) DEFAULT '',
  `dbsystem` mediumtext,
  `attachment13` varchar(255) DEFAULT '',
  `attachment14` varchar(255) DEFAULT '',
  `remark` mediumtext,
  `lately_change_time` datetime DEFAULT '1800-01-01 00:00:00',
  `register_time` datetime DEFAULT '1800-01-01 00:00:00',
  `change_time` datetime DEFAULT '1800-01-01 00:00:00',
  `register` varchar(255) DEFAULT '',
  `changer` varchar(255) DEFAULT '',
  `change_amount` int(11) unsigned DEFAULT '0',
  `doc_id` varchar(255) DEFAULT '',
  `doc_ver` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of document_main
-- ----------------------------
INSERT INTO `document_main` VALUES ('71', '29', '模块', '1', 'teacher', '教师管理', 'teacher/教师管理', '', 'student.jpg', 'teacher', null, null, null, null, null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('76', '30', '模块', '1', 'student', '学生查询', 'student/学生查询', '', 'student.jpg', 'student', null, null, null, null, null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('77', '30', '模块', '1', 'xm07', '作业管理', 'xm07/作业管理', '', 'homework.jpg', 'teacher', null, null, null, null, null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('78', '30', '模块', '1', 'xm07', '作业管理', 'xm07/作业管理', '', 'homework.jpg', 'student', null, null, null, null, null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('79', '30', '模块', '1', 'forum', '学生管理', 'forum/学生管理', '', 'student.jpg', 'admin', null, null, null, null, null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('80', '30', '模块', '1', 'project', '课堂管理', 'project/课堂管理', '', 'class.jpg', 'admin', null, null, null, null, null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('82', '19', '模块', '1', 'subject', '课程管理', 'subject/课程管理', '', 'class.jpg', 'normal', null, null, null, null, null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('83', '19', '模块', '1', 'subject', '课程管理', 'subject/课程管理', '', 'class.jpg', 'admin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');

-- ----------------------------
-- Table structure for `forum_file`
-- ----------------------------
DROP TABLE IF EXISTS `forum_file`;
CREATE TABLE `forum_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT '',
  `type` int(10) DEFAULT NULL,
  `limit_time` datetime DEFAULT NULL,
  `end_tag` int(10) DEFAULT '0',
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `executor` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT '',
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_size` int(10) DEFAULT '0',
  `priority` int(10) DEFAULT NULL,
  `check_tag` int(10) DEFAULT '0',
  `checker` varchar(255) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `excel_tag` int(10) DEFAULT '0',
  `gar_tag` int(10) DEFAULT '0',
  `used_tag` int(10) DEFAULT '1',
  `creator` varchar(255) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forum_file
-- ----------------------------
INSERT INTO `forum_file` VALUES ('5', 'kfjwwxpt', 'xinwei', '邱海伦', '算法设计', null, '2017-04-21 14:50:37', '0', '2016-05-24 00:00:00', '2016-05-25 00:00:00', '张三', '7班', null, '0', null, '0', null, null, '0', '0', '1', '', '2017-04-21 14:50:37', '', '4');
INSERT INTO `forum_file` VALUES ('7', 'null', 'xinwei', '王佳宁', '开发实践', null, '2018-07-09 23:59:59', '0', null, null, '', '7班', null, '0', null, '0', null, null, '0', '0', '1', '辛卫', '2018-07-09 21:55:41', '真心', '5');
INSERT INTO `forum_file` VALUES ('8', 'null', 'xinwei', '刘亦菲', '开发实践', null, '2018-07-09 23:59:59', '0', null, null, '', '7班', null, '0', null, '0', null, null, '0', '0', '1', '辛卫', '2018-07-09 21:58:37', null, '4');
INSERT INTO `forum_file` VALUES ('16', 'null', 'xinwei', '王五', '开发实践', null, '2018-07-12 23:59:59', '0', null, null, '', '6班', null, '0', null, '0', null, null, '0', '0', '1', '辛卫', '2018-07-12 10:24:58', null, null);

-- ----------------------------
-- Table structure for `project_todo`
-- ----------------------------
DROP TABLE IF EXISTS `project_todo`;
CREATE TABLE `project_todo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT '',
  `type` int(10) DEFAULT NULL,
  `limit_time` datetime DEFAULT NULL,
  `end_tag` int(10) DEFAULT '0',
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `executor` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT '',
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_size` int(10) DEFAULT '0',
  `priority` int(10) DEFAULT NULL,
  `check_tag` int(10) DEFAULT '0',
  `checker` varchar(255) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `excel_tag` int(10) DEFAULT '0',
  `gar_tag` int(10) DEFAULT '0',
  `used_tag` int(10) DEFAULT '1',
  `creator` varchar(255) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project_todo
-- ----------------------------
INSERT INTO `project_todo` VALUES ('17', 'PRJ_20161022023027', 'zhangsan', '01', '辛卫', null, '2018-05-01 00:00:59', '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '张三', '2018-05-01 15:06:55');
INSERT INTO `project_todo` VALUES ('18', 'PRJ_20161022023027', 'zhangsan', '03', '辛卫', null, '2018-05-04 01:05:59', '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '张三', '2018-05-04 15:07:29');
INSERT INTO `project_todo` VALUES ('20', 'PRJ_20161022023027', 'zhangsan', '04', '亦偲', null, '2018-05-19 23:59:59', '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '张三', '2018-05-19 20:34:31');
INSERT INTO `project_todo` VALUES ('23', 'PRJ_20161022023027', 'zhangsan', '07', '亦偲', null, '2018-05-19 23:59:59', '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '张三', '2018-05-19 23:37:24');
INSERT INTO `project_todo` VALUES ('24', 'PRJ_20161022002245', 'null', '', '', null, '2018-06-08 23:59:59', '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '张三', '2018-06-08 22:55:21');
INSERT INTO `project_todo` VALUES ('25', 'PRJ_20161022002245', '2016141492029', '', '', null, '2018-07-11 08:45:53', '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '张三', '2018-07-08 08:46:54');
INSERT INTO `project_todo` VALUES ('26', '1', 'xinwei', '231', '辛卫', null, '2018-07-08 23:59:59', '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '辛卫', '2018-07-08 12:25:35');

-- ----------------------------
-- Table structure for `public_log`
-- ----------------------------
DROP TABLE IF EXISTS `public_log`;
CREATE TABLE `public_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `colTime` datetime DEFAULT NULL,
  `colType` int(10) DEFAULT NULL,
  `colContent` varchar(255) DEFAULT NULL,
  `colOperation` varchar(255) DEFAULT NULL,
  `colUserId` varchar(255) DEFAULT NULL,
  `colModule` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of public_log
-- ----------------------------
INSERT INTO `public_log` VALUES ('1', '2017-05-11 14:34:27', '0', '用户 张三 于 2017-05-11 14:34:27 添加了 [project][todo] 记录', '添加记录', 'zhangsan', 'project');
INSERT INTO `public_log` VALUES ('2', '2017-05-11 14:48:57', '0', '用户 张三 于 2017-05-11 14:48:56 添加了 [project][todo] 记录', '添加记录', 'zhangsan', 'project');
INSERT INTO `public_log` VALUES ('3', '2017-05-11 14:52:07', '0', '用户 张三 于 2017-05-11 14:52:06 添加了 [project][todo] 记录', '添加记录', 'zhangsan', 'project');
INSERT INTO `public_log` VALUES ('4', '2017-05-11 14:52:17', '0', '用户 张三 于 2017-05-11 14:52:17 删除了 [project][todo] 记录', '删除记录', 'zhangsan', 'project');
INSERT INTO `public_log` VALUES ('5', '2018-05-16 23:15:36', '0', '用户 张三 于 2018-05-16 23:15:36 添加了 [project][todo] 记录', '添加记录', 'zhangsan', 'project');
INSERT INTO `public_log` VALUES ('6', '2018-05-16 23:21:03', '0', '用户 张三 于 2018-05-16 23:21:03 删除了 [project][todo] 记录', '删除记录', 'zhangsan', 'project');
INSERT INTO `public_log` VALUES ('7', '2018-05-16 23:21:11', '0', '用户 张三 于 2018-05-16 23:21:11 修改了 [project][todo] 记录', '修改记录', 'zhangsan', 'project');
INSERT INTO `public_log` VALUES ('8', '2018-05-16 23:23:45', '0', '用户 张三 于 2018-05-16 23:23:45 修改了 [project][todo] 记录', '修改记录', 'zhangsan', 'project');
INSERT INTO `public_log` VALUES ('9', '2018-05-16 23:29:16', '0', '用户 张三 于 2018-05-16 23:29:16 删除了 [subject][file] 记录', '删除记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('10', '2018-05-16 23:29:20', '0', '用户 张三 于 2018-05-16 23:29:20 删除了 [subject][file] 记录', '删除记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('11', '2018-05-17 09:11:49', '0', '用户 张三 于 2018-05-17 09:11:48 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('12', '2018-05-17 10:34:35', '0', '用户 张三 于 2018-05-17 10:34:35 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('13', '2018-05-17 10:40:49', '0', '用户 张三 于 2018-05-17 10:40:49 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('14', '2018-05-17 10:48:04', '0', '用户 张三 于 2018-05-17 10:48:04 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('15', '2018-05-17 11:22:06', '0', '用户 张三 于 2018-05-17 11:22:06 删除了 [subject][file] 记录', '删除记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('16', '2018-05-17 11:22:09', '0', '用户 张三 于 2018-05-17 11:22:09 删除了 [subject][file] 记录', '删除记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('17', '2018-05-17 11:22:11', '0', '用户 张三 于 2018-05-17 11:22:11 删除了 [subject][file] 记录', '删除记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('18', '2018-05-17 11:22:23', '0', '用户 张三 于 2018-05-17 11:22:23 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('19', '2018-05-17 11:22:47', '0', '用户 张三 于 2018-05-17 11:22:47 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('20', '2018-05-17 11:32:40', '0', '用户 张三 于 2018-05-17 11:32:40 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('21', '2018-05-17 11:34:24', '0', '用户 张三 于 2018-05-17 11:34:24 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('22', '2018-05-17 11:50:03', '0', '用户 张三 于 2018-05-17 11:50:03 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('23', '2018-05-17 12:02:40', '0', '用户 张三 于 2018-05-17 12:02:40 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('24', '2018-05-17 22:38:05', '0', '用户 张三 于 2018-05-17 22:38:05 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('25', '2018-05-17 22:39:24', '0', '用户 张三 于 2018-05-17 22:39:24 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('26', '2018-05-17 22:51:33', '0', '用户 张三 于 2018-05-17 22:51:32 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('27', '2018-05-17 22:51:50', '0', '用户 张三 于 2018-05-17 22:51:50 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('28', '2018-05-18 08:48:33', '0', '用户 张三 于 2018-05-18 08:48:33 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('29', '2018-05-18 09:21:28', '0', '用户 张三 于 2018-05-18 09:21:28 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('30', '2018-05-18 09:43:00', '0', '用户 张三 于 2018-05-18 09:43:00 修改了 [subject][file] 记录', '修改记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('31', '2018-05-18 10:25:31', '0', '用户 张三 于 2018-05-18 10:25:30 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('32', '2018-05-18 11:09:52', '0', '用户 张三 于 2018-05-18 11:09:52 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('33', '2018-05-18 11:10:13', '0', '用户 张三 于 2018-05-18 11:10:13 删除了 [subject][file] 记录', '删除记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('34', '2018-05-18 11:10:26', '0', '用户 张三 于 2018-05-18 11:10:26 修改了 [subject][file] 记录', '修改记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('35', '2018-05-18 23:23:16', '0', '用户 张三 于 2018-05-18 23:23:16 修改了 [subject][file] 记录', '修改记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('36', '2018-05-19 08:48:02', '0', '用户 张三 于 2018-05-19 08:48:02 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('37', '2018-05-19 08:55:02', '0', '用户 张三 于 2018-05-19 08:55:02 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('38', '2018-05-19 08:56:45', '0', '用户 张三 于 2018-05-19 08:56:45 删除了 [subject][file] 记录', '删除记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('39', '2018-05-19 08:57:06', '0', '用户 张三 于 2018-05-19 08:57:06 修改了 [subject][file] 记录', '修改记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('40', '2018-05-19 08:59:56', '0', '用户 张三 于 2018-05-19 08:59:56 修改了 [subject][file] 记录', '修改记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('41', '2018-05-19 09:01:17', '0', '用户 张三 于 2018-05-19 09:01:17 修改了 [subject][file] 记录', '修改记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('42', '2018-05-19 09:08:02', '0', '用户 张三 于 2018-05-19 09:08:02 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('43', '2018-05-19 09:09:45', '0', '用户 张三 于 2018-05-19 09:09:45 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('44', '2018-05-19 09:11:30', '0', '用户 张三 于 2018-05-19 09:11:30 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('45', '2018-05-19 10:09:01', '0', '用户 张三 于 2018-05-19 10:09:01 修改了 [subject][file] 记录', '修改记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('46', '2018-05-19 10:09:17', '0', '用户 张三 于 2018-05-19 10:09:17 修改了 [subject][file] 记录', '修改记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('47', '2018-05-19 10:09:29', '0', '用户 张三 于 2018-05-19 10:09:29 修改了 [subject][file] 记录', '修改记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('48', '2018-05-19 10:09:50', '0', '用户 张三 于 2018-05-19 10:09:50 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('49', '2018-05-19 10:10:05', '0', '用户 张三 于 2018-05-19 10:10:05 删除了 [subject][file] 记录', '删除记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('50', '2018-05-19 12:44:22', '0', '用户 张三 于 2018-05-19 12:44:22 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('51', '2018-05-19 12:45:42', '0', '用户 张三 于 2018-05-19 12:45:42 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('52', '2018-05-19 12:45:56', '0', '用户 张三 于 2018-05-19 12:45:56 删除了 [subject][file] 记录', '删除记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('53', '2018-05-19 12:46:33', '0', '用户 张三 于 2018-05-19 12:46:33 修改了 [subject][file] 记录', '修改记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('54', '2018-05-19 12:47:48', '0', '用户 张三 于 2018-05-19 12:47:48 修改了 [subject][file] 记录', '修改记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('55', '2018-05-19 13:04:56', '0', '用户 张三 于 2018-05-19 13:04:56 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('56', '2018-05-19 13:05:03', '0', '用户 张三 于 2018-05-19 13:05:03 删除了 [subject][file] 记录', '删除记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('57', '2018-05-19 13:05:17', '0', '用户 张三 于 2018-05-19 13:05:17 修改了 [subject][file] 记录', '修改记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('58', '2018-05-19 17:35:44', '0', '用户 张三 于 2018-05-19 17:35:44 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('59', '2018-05-19 17:35:55', '0', '用户 张三 于 2018-05-19 17:35:55 修改了 [subject][file] 记录', '修改记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('60', '2018-05-19 17:36:05', '0', '用户 张三 于 2018-05-19 17:36:05 删除了 [subject][file] 记录', '删除记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('61', '2018-05-19 21:01:24', '0', '用户 张三 于 2018-05-19 21:01:24 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('62', '2018-05-19 21:01:39', '0', '用户 张三 于 2018-05-19 21:01:39 删除了 [subject][file] 记录', '删除记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('63', '2018-05-19 21:01:52', '0', '用户 张三 于 2018-05-19 21:01:51 修改了 [subject][file] 记录', '修改记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('64', '2018-05-19 21:08:45', '0', '用户 张三 于 2018-05-19 21:08:45 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('65', '2018-05-19 21:09:04', '0', '用户 张三 于 2018-05-19 21:09:04 修改了 [subject][file] 记录', '修改记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('66', '2018-05-19 21:09:21', '0', '用户 张三 于 2018-05-19 21:09:21 删除了 [subject][file] 记录', '删除记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('67', '2018-05-19 21:17:30', '0', '用户 张三 于 2018-05-19 21:17:30 添加了 [subject][file] 记录', '添加记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('68', '2018-05-19 21:17:41', '0', '用户 张三 于 2018-05-19 21:17:41 删除了 [subject][file] 记录', '删除记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('69', '2018-05-19 21:17:51', '0', '用户 张三 于 2018-05-19 21:17:51 修改了 [subject][file] 记录', '修改记录', 'zhangsan', 'subject');
INSERT INTO `public_log` VALUES ('70', '2018-05-30 10:03:47', '0', '用户 张三 于 2018-05-30 10:03:47 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('71', '2018-05-30 10:17:58', '0', '用户 张三 于 2018-05-30 10:17:58 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('72', '2018-05-30 10:24:02', '0', '用户 张三 于 2018-05-30 10:24:02 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('73', '2018-05-30 10:32:04', '0', '用户 张三 于 2018-05-30 10:32:04 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('74', '2018-05-31 16:02:24', '0', '用户 张三 于 2018-05-31 16:02:24 添加了 [xm07][teawork] 记录', '添加记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('75', '2018-05-31 16:03:48', '0', '用户 张三 于 2018-05-31 16:03:48 添加了 [xm07][teawork] 记录', '添加记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('76', '2018-05-31 16:06:42', '0', '用户 张三 于 2018-05-31 16:06:42 添加了 [xm07][teawork] 记录', '添加记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('77', '2018-05-31 16:07:34', '0', '用户 张三 于 2018-05-31 16:07:34 添加了 [xm07][teawork] 记录', '添加记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('78', '2018-05-31 16:09:41', '0', '用户 张三 于 2018-05-31 16:09:41 添加了 [xm07][teawork] 记录', '添加记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('79', '2018-06-02 10:09:47', '0', '用户 张三 于 2018-06-02 10:09:47 添加了 [xm07][teawork] 记录', '添加记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('80', '2018-06-02 10:15:56', '0', '用户 张三 于 2018-06-02 10:15:55 添加了 [xm07][teawork] 记录', '添加记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('81', '2018-06-03 10:34:48', '0', '用户 张三 于 2018-06-03 10:34:48 修改了 [xm07][teawork] 记录', '修改记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('82', '2018-06-03 12:26:53', '0', '用户 张三 于 2018-06-03 12:26:53 删除了 [xm07][teawork] 记录', '删除记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('83', '2018-06-03 12:32:16', '0', '用户 张三 于 2018-06-03 12:32:16 修改了 [xm07][teawork] 记录', '修改记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('84', '2018-06-03 13:43:07', '0', '用户 张三 于 2018-06-03 13:43:07 添加了 [xm07][teawork] 记录', '添加记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('85', '2018-06-14 11:35:31', '0', '用户 张三 于 2018-06-14 11:35:31 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('86', '2018-06-14 11:45:46', '0', '用户 张三 于 2018-06-14 11:45:46 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('87', '2018-06-14 11:47:34', '0', '用户 张三 于 2018-06-14 11:47:34 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('88', '2018-06-14 12:41:32', '0', '用户 张三 于 2018-06-14 12:41:32 删除了 [xm07][stuwork] 记录', '删除记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('89', '2018-06-14 12:44:17', '0', '用户 张三 于 2018-06-14 12:44:17 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('90', '2018-06-16 10:05:31', '0', '用户 李四 于 2018-06-16 10:05:30 添加了 [xm07][teawork] 记录', '添加记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('91', '2018-06-16 10:10:14', '0', '用户 lisi 于 2018-06-16 10:10:13 添加了 [xm07][teawork] 记录', '添加记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('92', '2018-06-16 10:39:29', '0', '用户 zhangsan 于 2018-06-16 10:39:29 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('93', '2018-06-16 10:41:08', '0', '用户 zhangsan 于 2018-06-16 10:41:08 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('94', '2018-06-16 10:45:59', '0', '用户 lisi 于 2018-06-16 10:45:59 添加了 [xm07][teawork] 记录', '添加记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('95', '2018-06-16 10:51:53', '0', '用户 zhangsan 于 2018-06-16 10:51:53 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('96', '2018-06-16 10:52:22', '0', '用户 zhangsan 于 2018-06-16 10:52:22 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('97', '2018-06-16 10:54:46', '0', '用户 zhangsan 于 2018-06-16 10:54:46 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('98', '2018-06-16 11:09:25', '0', '用户 zhangsan 于 2018-06-16 11:09:25 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('99', '2018-06-18 21:07:08', '0', '用户 zhangsan 于 2018-06-18 21:07:08 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('100', '2018-06-18 21:20:14', '0', '用户 lisi 于 2018-06-18 21:20:14 添加了 [xm07][teawork] 记录', '添加记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('101', '2018-06-21 15:32:42', '0', '用户 李四 于 2018-06-21 15:32:42 删除了 [xm07][teawork] 记录', '删除记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('102', '2018-06-21 15:33:03', '0', '用户 李四 于 2018-06-21 15:33:03 修改了 [xm07][teawork] 记录', '修改记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('103', '2018-06-21 15:51:45', '0', '用户 李四 于 2018-06-21 15:51:45 修改了 [xm07][teawork] 记录', '修改记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('104', '2018-06-21 15:52:07', '0', '用户 李四 于 2018-06-21 15:52:07 修改了 [xm07][teawork] 记录', '修改记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('105', '2018-06-21 15:52:47', '0', '用户 李四 于 2018-06-21 15:52:47 修改了 [xm07][teawork] 记录', '修改记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('106', '2018-06-21 15:57:22', '0', '用户 李四 于 2018-06-21 15:57:22 删除了 [xm07][teawork] 记录', '删除记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('107', '2018-06-21 15:57:35', '0', '用户 李四 于 2018-06-21 15:57:35 修改了 [xm07][teawork] 记录', '修改记录', 'lisi', 'xm07');
INSERT INTO `public_log` VALUES ('108', '2018-06-21 16:01:22', '0', '用户 张三 于 2018-06-21 16:01:22 删除了 [xm07][stuwork] 记录', '删除记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('109', '2018-06-22 14:48:40', '0', '用户 zhangsan 于 2018-06-22 14:48:40 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('110', '2018-07-08 12:25:35', '0', '用户 辛卫 于 2018-07-08 12:25:35 添加了 [project][todo] 记录', '添加记录', 'xinwei', 'project');
INSERT INTO `public_log` VALUES ('111', '2018-07-08 13:51:43', '0', '用户 辛卫 于 2018-07-08 13:51:43 添加了 [forum][file] 记录', '添加记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('112', '2018-07-08 14:14:11', '0', '用户 zhangsan 于 2018-07-08 14:14:11 添加了 [xm07][stuwork] 记录', '添加记录', 'zhangsan', 'xm07');
INSERT INTO `public_log` VALUES ('113', '2018-07-09 21:55:41', '0', '用户 辛卫 于 2018-07-09 21:55:41 添加了 [forum][file] 记录', '添加记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('114', '2018-07-09 21:55:50', '0', '用户 辛卫 于 2018-07-09 21:55:50 删除了 [forum][file] 记录', '删除记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('115', '2018-07-09 21:57:15', '0', '用户 辛卫 于 2018-07-09 21:57:15 添加了 [subject][file] 记录', '添加记录', 'xinwei', 'subject');
INSERT INTO `public_log` VALUES ('116', '2018-07-09 21:57:58', '0', '用户 辛卫 于 2018-07-09 21:57:58 添加了 [subject][file] 记录', '添加记录', 'xinwei', 'subject');
INSERT INTO `public_log` VALUES ('117', '2018-07-09 21:58:37', '0', '用户 辛卫 于 2018-07-09 21:58:37 添加了 [forum][file] 记录', '添加记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('118', '2018-07-12 09:48:20', '0', '用户 辛卫 于 2018-07-12 09:48:20 添加了 [forum][file] 记录', '添加记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('119', '2018-07-12 10:01:02', '0', '用户 辛卫 于 2018-07-12 10:01:02 删除了 [forum][file] 记录', '删除记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('120', '2018-07-12 10:01:21', '0', '用户 辛卫 于 2018-07-12 10:01:21 添加了 [forum][file] 记录', '添加记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('121', '2018-07-12 10:04:02', '0', '用户 辛卫 于 2018-07-12 10:04:02 删除了 [forum][file] 记录', '删除记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('122', '2018-07-12 10:04:15', '0', '用户 辛卫 于 2018-07-12 10:04:15 添加了 [forum][file] 记录', '添加记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('123', '2018-07-12 10:04:31', '0', '用户 辛卫 于 2018-07-12 10:04:31 修改了 [forum][file] 记录', '修改记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('124', '2018-07-12 10:05:55', '0', '用户 辛卫 于 2018-07-12 10:05:54 添加了 [subject][file] 记录', '添加记录', 'xinwei', 'subject');
INSERT INTO `public_log` VALUES ('125', '2018-07-12 10:09:08', '0', '用户 辛卫 于 2018-07-12 10:09:08 删除了 [forum][file] 记录', '删除记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('126', '2018-07-12 10:09:28', '0', '用户 辛卫 于 2018-07-12 10:09:28 添加了 [forum][file] 记录', '添加记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('127', '2018-07-12 10:09:53', '0', '用户 辛卫 于 2018-07-12 10:09:53 修改了 [forum][file] 记录', '修改记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('128', '2018-07-12 10:12:18', '0', '用户 辛卫 于 2018-07-12 10:12:18 删除了 [forum][file] 记录', '删除记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('129', '2018-07-12 10:12:31', '0', '用户 辛卫 于 2018-07-12 10:12:31 添加了 [forum][file] 记录', '添加记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('130', '2018-07-12 10:12:48', '0', '用户 辛卫 于 2018-07-12 10:12:48 修改了 [forum][file] 记录', '修改记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('131', '2018-07-12 10:14:10', '0', '用户 辛卫 于 2018-07-12 10:14:10 删除了 [subject][file] 记录', '删除记录', 'xinwei', 'subject');
INSERT INTO `public_log` VALUES ('132', '2018-07-12 10:14:26', '0', '用户 辛卫 于 2018-07-12 10:14:26 添加了 [subject][file] 记录', '添加记录', 'xinwei', 'subject');
INSERT INTO `public_log` VALUES ('133', '2018-07-12 10:14:47', '0', '用户 辛卫 于 2018-07-12 10:14:47 添加了 [subject][file] 记录', '添加记录', 'xinwei', 'subject');
INSERT INTO `public_log` VALUES ('134', '2018-07-12 10:17:37', '0', '用户 辛卫 于 2018-07-12 10:17:37 删除了 [forum][file] 记录', '删除记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('135', '2018-07-12 10:17:55', '0', '用户 辛卫 于 2018-07-12 10:17:55 添加了 [forum][file] 记录', '添加记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('136', '2018-07-12 10:18:12', '0', '用户 辛卫 于 2018-07-12 10:18:12 修改了 [forum][file] 记录', '修改记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('137', '2018-07-12 10:20:17', '0', '用户 辛卫 于 2018-07-12 10:20:17 删除了 [forum][file] 记录', '删除记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('138', '2018-07-12 10:20:30', '0', '用户 辛卫 于 2018-07-12 10:20:30 添加了 [forum][file] 记录', '添加记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('139', '2018-07-12 10:20:55', '0', '用户 辛卫 于 2018-07-12 10:20:55 修改了 [forum][file] 记录', '修改记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('140', '2018-07-12 10:22:00', '0', '用户 辛卫 于 2018-07-12 10:22:00 删除了 [subject][file] 记录', '删除记录', 'xinwei', 'subject');
INSERT INTO `public_log` VALUES ('141', '2018-07-12 10:22:15', '0', '用户 辛卫 于 2018-07-12 10:22:15 添加了 [subject][file] 记录', '添加记录', 'xinwei', 'subject');
INSERT INTO `public_log` VALUES ('142', '2018-07-12 10:24:39', '0', '用户 辛卫 于 2018-07-12 10:24:39 删除了 [forum][file] 记录', '删除记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('143', '2018-07-12 10:24:58', '0', '用户 辛卫 于 2018-07-12 10:24:58 添加了 [forum][file] 记录', '添加记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('144', '2018-07-12 10:25:16', '0', '用户 辛卫 于 2018-07-12 10:25:16 修改了 [forum][file] 记录', '修改记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('145', '2018-07-12 10:26:31', '0', '用户 辛卫 于 2018-07-12 10:26:31 删除了 [subject][file] 记录', '删除记录', 'xinwei', 'subject');
INSERT INTO `public_log` VALUES ('146', '2018-07-12 10:26:45', '0', '用户 辛卫 于 2018-07-12 10:26:45 添加了 [subject][file] 记录', '添加记录', 'xinwei', 'subject');
INSERT INTO `public_log` VALUES ('147', '2018-07-12 17:55:21', '0', '用户 辛卫 于 2018-07-12 17:55:21 添加了 [forum][file] 记录', '添加记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('148', '2018-07-12 17:55:21', '0', '用户 辛卫 于 2018-07-12 17:55:21 添加了 [forum][file] 记录', '添加记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('149', '2018-07-12 17:55:31', '0', '用户 辛卫 于 2018-07-12 17:55:31 删除了 [forum][file] 记录', '删除记录', 'xinwei', 'forum');
INSERT INTO `public_log` VALUES ('150', '2018-07-12 17:55:43', '0', '用户 辛卫 于 2018-07-12 17:55:43 删除了 [forum][file] 记录', '删除记录', 'xinwei', 'forum');

-- ----------------------------
-- Table structure for `security_users`
-- ----------------------------
DROP TABLE IF EXISTS `security_users`;
CREATE TABLE `security_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `HUMAN_MAJOR_FIRST_KIND_ID` varchar(255) DEFAULT '0',
  `HUMAN_MAJOR_FIRST_KIND_NAME` varchar(255) DEFAULT '',
  `HUMAN_MAJOR_SECOND_KIND_ID` varchar(255) DEFAULT '0',
  `HUMAN_MAJOR_SECOND_KIND_NAME` varchar(255) DEFAULT '',
  `HUMAN_ID` varchar(255) DEFAULT '',
  `HUMAN_NAME` varchar(255) DEFAULT '',
  `nick_name` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT '',
  `PASSWD` varchar(255) DEFAULT '',
  `TAGC` int(11) DEFAULT '0',
  `TAG` int(1) DEFAULT '0',
  `FORBID_TIME` datetime DEFAULT NULL,
  `FORBID_TAG` int(1) DEFAULT '0',
  `ORDER_DISCOUNT` double(15,2) DEFAULT '0.00',
  `RETAIL_DISCOUNT` double(15,2) DEFAULT '0.00',
  `CREDIT_DISCOUNT` double(15,2) DEFAULT '0.00',
  `type` int(11) DEFAULT '0',
  `language` varchar(255) DEFAULT '',
  `question` varchar(255) DEFAULT '',
  `answer` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `CHAIN_ID` text,
  `CHAIN_NAME` text,
  `group_id` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `wechat_id` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `register` varchar(255) DEFAULT NULL,
  `register_time` datetime DEFAULT NULL,
  `fans_count` int(10) DEFAULT NULL,
  `follow_count` int(10) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_users
-- ----------------------------
INSERT INTO `security_users` VALUES ('85', '0', '', '0', '', '302983098409', '张三', 'zhangsan', '', '', '0', '0', null, '0', '0.00', '0.00', '0.00', '0', '', '', '', null, null, null, null, null, null, null, 'normal', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `student_file`
-- ----------------------------
DROP TABLE IF EXISTS `student_file`;
CREATE TABLE `student_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT '',
  `type` int(10) DEFAULT NULL,
  `limit_time` datetime DEFAULT NULL,
  `end_tag` int(10) DEFAULT '0',
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `executor` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT '',
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_size` int(10) DEFAULT '0',
  `priority` int(10) DEFAULT NULL,
  `check_tag` int(10) DEFAULT '0',
  `checker` varchar(255) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `excel_tag` int(10) DEFAULT '0',
  `gar_tag` int(10) DEFAULT '0',
  `used_tag` int(10) DEFAULT '1',
  `creator` varchar(255) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_file
-- ----------------------------
INSERT INTO `student_file` VALUES ('7', 'null', 'zhangsan', '王佳宁', '开发实践', null, '2018-07-09 23:59:59', '0', null, null, '', '7班', null, '0', null, '0', null, null, '0', '0', '1', '辛卫', '2018-07-09 21:55:41', '真心', '5');

-- ----------------------------
-- Table structure for `subject_file`
-- ----------------------------
DROP TABLE IF EXISTS `subject_file`;
CREATE TABLE `subject_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `institute` varchar(255) DEFAULT '',
  `credit` int(10) DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `limit_time` datetime DEFAULT NULL,
  `end_tag` int(10) DEFAULT '0',
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `executor` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT '',
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_size` int(10) DEFAULT '0',
  `priority` int(10) DEFAULT NULL,
  `check_tag` int(10) DEFAULT '0',
  `checker` varchar(255) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `excel_tag` int(10) DEFAULT '0',
  `gar_tag` int(10) DEFAULT '0',
  `used_tag` int(10) DEFAULT '1',
  `creator` varchar(255) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject_file
-- ----------------------------
INSERT INTO `subject_file` VALUES ('3', 'kfjwwxpt', 'zhangsan', '计算机网络', '计算机学院', '3', null, '2017-04-21 14:50:37', '0', '2016-05-24 00:00:00', '2016-05-25 00:00:00', '张三', '准备执行', null, '0', null, '0', null, null, '0', '0', '1', '', '2017-04-21 14:50:37');
INSERT INTO `subject_file` VALUES ('4', 'kfjwwxpt', 'zhangsan', '计算机组成原理', '计算机学院', '3', null, '2017-04-23 14:50:37', '0', '2015-11-29 00:00:00', '2015-11-29 00:00:00', '张三', '准备执行', null, '0', null, '0', null, null, '0', '0', '1', '', '2017-04-23 14:50:37');
INSERT INTO `subject_file` VALUES ('10', 'PRJ_20161210020741', 'zhangsan', '体育-4', '体育学院', '2', null, '2017-04-29 14:50:37', '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '辛卫', '2017-04-29 14:50:37');
INSERT INTO `subject_file` VALUES ('11', 'PRJ_20161207052455', 'zhangsan', '大学英语', '外语学院', '2', null, '2017-05-01 14:50:37', '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '辛卫', '2017-05-01 14:50:37');
INSERT INTO `subject_file` VALUES ('13', 'PRJ_20161022023027', 'zhangsan', '大学物理', '物理学院', '3', null, '2017-05-18 14:50:59', '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '张三', '2017-05-11 14:34:27');
INSERT INTO `subject_file` VALUES ('15', 'PRJ_20161022023027', 'zhangsan', '研究与开发实践', '计算机学院', '2', null, '2017-05-31 00:00:59', '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '张三', '2017-05-11 14:52:06');
INSERT INTO `subject_file` VALUES ('17', '1', 'zhangsan', 'C语言', '计算机学院', '3', null, null, '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '张三', '2018-05-19 09:08:02');
INSERT INTO `subject_file` VALUES ('18', '1', 'zhangsan', '软件工程', '软件学院', '2', null, null, '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '张三', '2018-05-19 09:09:45');
INSERT INTO `subject_file` VALUES ('19', '1', 'zhangsan', '通信原理', '计算机学院', '3', null, null, '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '张三', '2018-05-19 10:09:29');
INSERT INTO `subject_file` VALUES ('20', '1', 'zhangsan', '操作系统', '计算机', '3', null, null, '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '张三', '2018-05-19 21:17:51');
INSERT INTO `subject_file` VALUES ('21', '1', 'xinwei', '开发实践', '计算机学院', '2', null, null, '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '辛卫', '2018-07-09 21:57:15');
INSERT INTO `subject_file` VALUES ('22', '1', 'xinwei', '算法设计', '计算机学院', '2', null, null, '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '辛卫', '2018-07-09 21:57:58');
INSERT INTO `subject_file` VALUES ('26', '1', 'xinwei', '计算机组成原理', '计算机学院', '3', null, null, '0', null, null, '', '', null, '0', null, '0', null, null, '0', '0', '1', '辛卫', '2018-07-12 10:26:45');

-- ----------------------------
-- Table structure for `subject_member`
-- ----------------------------
DROP TABLE IF EXISTS `subject_member`;
CREATE TABLE `subject_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` varchar(255) DEFAULT NULL,
  `member_id` varchar(255) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `member_role` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject_member
-- ----------------------------
INSERT INTO `subject_member` VALUES ('54', 'PRJ_20161022023027', 'zhangsan', '张三', 'member', '../../assets/module/img/security/user/avatar/avatar.jpg', null, null, null, null, null, null);
INSERT INTO `subject_member` VALUES ('55', 'PRJ_20161022002245', 'zhangsan', '张三', 'member', '../../assets/module/img/security/user/avatar/avatar.jpg', null, null, null, null, null, null);
INSERT INTO `subject_member` VALUES ('56', 'PRJ_20161022020045', 'zhangsan', '张三', 'member', '../../assets/module/img/security/user/avatar/avatar.jpg', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `subject_statistic`
-- ----------------------------
DROP TABLE IF EXISTS `subject_statistic`;
CREATE TABLE `subject_statistic` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `colTime` varchar(255) DEFAULT NULL,
  `colCount` int(10) DEFAULT NULL,
  `colType` varchar(255) DEFAULT NULL,
  `colTitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject_statistic
-- ----------------------------

-- ----------------------------
-- Table structure for `subject_tree`
-- ----------------------------
DROP TABLE IF EXISTS `subject_tree`;
CREATE TABLE `subject_tree` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MODULE_NAME` varchar(255) DEFAULT '',
  `reason` varchar(255) DEFAULT '',
  `CATEGORY_ID` int(20) DEFAULT '0',
  `PARENT_CATEGORY_ID` int(20) DEFAULT '0',
  `ACTIVE_STATUS` varchar(255) DEFAULT 'Y',
  `HREFLINK` varchar(255) DEFAULT '',
  `FILE_ID` varchar(255) DEFAULT '',
  `FILE_NAME` varchar(255) DEFAULT NULL,
  `DETAILS_TAG` int(2) DEFAULT '0',
  `FILE_PATH` varchar(255) DEFAULT '',
  `CHAIN_NAME` text,
  `PICTURE` varchar(255) DEFAULT '',
  `WORKFLOW_TAG` int(1) unsigned DEFAULT '0',
  `module_id` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index` (`FILE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject_tree
-- ----------------------------
INSERT INTO `subject_tree` VALUES ('2', '0201 客户化设置', 'config', '1201', '0', 'Y', '', '1201', '客户化设置', '1', 'project/config', '项目管理--客户化设置', 'ylx1.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('3', '0202 项目基本信息管理', 'file', '1202', '0', 'Y', '', '1202', '项目基本信息管理', '1', 'project/file', '项目管理--项目基本信息管理', 'ylx2.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('5', '0203 资金调整管理', 'price_change', '1203', '0', 'Y', '', '1203', '资金调整管理', '1', 'project/price_change', '项目管理--项目资金调整管理', 'ylx3.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('6', '0204 项目通知', 'notice', '1204', '0', 'Y', '', '1204', '项目通知', '1', 'project/notice', '项目管理--产品物料组成设计', 'ylx4.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('7', '0205 数据报表', 'export', '1205', '0', 'Y', '', '1205', '数据报表', '1', 'project/export', '项目管理--标准数据报表', 'ylx5.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('9', '020101 项目基本管理设置', 'file', '120101', '1201', 'Y', '', '120101', '项目基本管理设置', '1', 'project/config/file', '项目管理--客户化设置--项目基本管理设置', 'ylx6.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('10', '020102 项目资金调整管理', 'price_change', '120102', '1201', 'Y', '', '120102', '项目资金调整管理', '1', 'project/config/price_change', '项目管理--客户化设置--项目资金调整管理', 'ylx7.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('11', '020103 关键字设置', 'key', '120103', '1201', 'Y', '', '120103', '关键字设置', '1', 'project/config/key', '项目管理--客户化设置--关键字设置', 'ylx8.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('12', '02010101 项目分类设置', '', '12010101', '120101', 'Y', 'fileKind.jsp', '12010101', '项目分类设置', '0', 'project/config/file/', '项目管理--客户化设置--项目基本管理设置--项目分类设置', 'ylx9.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('16', '02010105 项目级别设置', '', '12010105', '120101', 'Y', 'strategyClass.jsp', '12010105', '项目级别设置', '0', 'project/config/file/', '项目管理--客户化设置--项目基本管理设置--项目级别设置', 'ylx11.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('18', '02010201 项目预警设置', '', '12010201', '120102', 'Y', 'priceAlarm.jsp', '12010201', '项目预警设置', '0', 'project/config/price_change/', '项目管理--客户化设置--项目资金调整管理--项目预警设置', 'ylx13.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('19', '02010301 查询设置', '', '12010301', '120103', 'Y', 'key.jsp', '12010301', '查询设置', '0', 'project/config/key/', '项目管理--客户化设置--关键字设置--查询设置', 'ylx14.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('22', '020201 项目登记', '', '120201', '1202', 'Y', 'project_list.jsp', '120201', '项目档案', '0', 'project/file/', '项目管理--基本管理--项目登记', 'ylx16.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('23', '020202 项目审核', '', '120202', '1202', 'Y', 'check_list.jsp', '120202', '项目审核', '0', 'project/file/', '项目管理--基本管理--项目审核', 'ylx17.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('24', '020203 项目查询', '', '120203', '1202', 'Y', 'query_list.jsp', '120203', '项目查询', '0', 'project/file/', '项目管理--基本管理--项目查询', 'ylx18.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('25', '020204 项目变更', '', '120204', '1202', 'Y', 'change_list.jsp', '120204', '项目变更', '0', 'project/file/', '项目管理--基本管理--项目变更', 'ylx19.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('30', '020301 资金调整登记', '', '120301', '1203', 'Y', 'register_list.jsp', '120301', '资金调整登记', '0', 'project/price_change/', '项目管理--资金调整管理--资金调整登记', 'ylx20.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('31', '020302 资金调整登记审核', '', '120302', '1203', 'Y', 'check_list.jsp', '120302', '资金调整登记审核', '0', 'project/price_change/', '项目管理--资金调整管理--资金调整登记审核', 'ylx21.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('32', '020303 资金调整查询', '', '120303', '1203', 'Y', 'query_list.jsp', '120303', '资金调整查询', '0', 'project/price_change/', '项目管理--资金调整管理--资金调整查询', 'ylx22.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('33', '020401 起草通知', '', '120401', '1204', 'Y', 'register.jsp', '120401', '起草通知', '0', 'project/notice/', '产品设计--产品物料组成设计--制定物料组成设计单', 'ylx23.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('34', '020402 通知审核', '', '120402', '1204', 'Y', 'check_list.jsp', '120402', '通知审核', '0', 'project/notice/', '产品设计--产品物料组成设计--物料组成设计单审核', 'ylx24.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('35', '020403 通知查询', '', '120403', '1204', 'Y', 'query_list.jsp', '120403', '通知查询', '0', 'project/notice/', '产品设计--产品物料组成设计--物料组成设计单查询', 'ylx25.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('36', '020404 通知变更', '', '120404', '1204', 'Y', 'change_list.jsp', '120404', '通知变更', '0', 'project/notice/', '产品设计--产品物料组成设计--物料组成设计单变更', 'ylx26.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('37', '020501 EXCEL标准数据报表', '', '120501', '1205', 'Y', 'excel.jsp', '120501', 'EXCEL标准数据报表', '0', 'project/export/', '产品设计--标准数据报表--EXCEL标准数据报表', 'ylx27.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('38', '020502 pdf标准数据报表', '', '120502', '1205', 'Y', 'pdf.jsp', '120502', 'pdf标准数据报表', '0', 'project/export/', '产品设计--标准数据报表--pdf标准数据报表', 'ylx28.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('39', '020503 xml标准数据报表', '', '120503', '1205', 'Y', 'xml.jsp', '120503', 'xml标准数据报表', '0', 'project/export/', '产品设计--标准数据报表--xml标准数据报表', 'ylx29.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('40', '020104 审核工作流设置', 'workflow', '120104', '1201', 'Y', '', '120104', '审核工作流设置', '1', 'project/config/workflow', '项目管理--客户化设置--审核工作流设置', 'ylx30.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('41', '02010401 项目审核工作流设置', '', '12010401', '120104', 'Y', 'file.jsp', '12010401', '项目信息审核工作流设置', '0', 'project/config/workflow/', '项目管理--客户化设置--审核工作流设置--项目审核工作流设置', 'ylx31.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('43', '02010402 项目资金调整审核工作流设置', '', '12010402', '120104', 'Y', 'price.jsp', '12010402', '项目资金调整审核设置', '0', 'project/config/workflow/', '项目管理--客户化设置--审核工作流设置--项目资金调整审核工作流设置', 'ylx32.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('44', '02010403 项目文档审核工作流设置', '', '12010403', '120104', 'Y', 'document.jsp', '12010403', '项目文档审核工作流设置', '0', 'project/config/workflow/', '项目管理--客户化设置--项目文档审核工作流设置', 'ylx33.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('45', '020205 进度统计', '', '120205', '1202', 'Y', 'tongji.jsp', '120205', '进度统计', '0', 'project/file/', '项目管理--项目管理--进度统计', 'ylx34.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('46', '020206 项目登记', '', '120206', '1202', 'Y', 'project_add.jsp', '120206', '项目登记', '0', 'project/file/', '项目--项目管理--项目进度', 'ylx35.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('47', '0206 项目文档管理', 'file1', '1206', '0', 'Y', '', '1206', '项目文档管理', '1', 'project/document', '项目文档管理', 'ylx36.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('48', '020601  项目文档登记', '', '120601', '1206', 'Y', 'document_add.jsp', '120601', '项目文档登记', '0', 'project/document/', '项目文档管理-项目文档登记', 'ylx37.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('49', '020602 项目文档登记审核', '', '120602', '1206', 'Y', 'check_list.jsp', '120602', '项目文档登记审核', '0', 'project/document/', '项目文档管理-项目文档登记审核', 'ylx38.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('50', '020603 项目文档查询', '', '120603', '1206', 'Y', 'document_query.jsp', '120603', '项目文档查询', '0', 'project/document/', '项目文档管理-项目文档查询', 'ylx39.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('51', '020605 项目文档变更', '', '120605', '1206', 'Y', 'change_list.jsp', '120605', '项目文档变更', '0', 'project/document/', '项目文档管理-项目文档变更', 'ylx40.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('52', '0207 会议管理', 'meeting', '1207', '0', 'Y', '', '1207', '会议管理', '1', 'project/meeting', '会议管理', 'ylx41.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('53', '020701 议题准备', '', '120701', '1207', 'Y', 'subject_register.jsp', '120701', '议题准备', '0', 'project/meeting/', '会议管理-议题准备', 'ylx42.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('54', '020702 开会通知', '', '120702', '1207', 'Y', 'inform_list.jsp', '120702', '开会通知', '0', 'project/meeting/', '会议管理-开会通知', 'ylx43.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('55', '020703 会议纪要', '', '120703', '1207', 'Y', 'recorder_list.jsp', '120703', '会议纪要', '0', 'project/meeting/', '会议管理-会议纪要', 'ylx44.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('56', '020704 会议纪要处理', '', '120704', '1207', 'Y', 'dealwith_list.jsp', '120704', '会议纪要处理', '0', 'project/meeting/', '会议管理-会议纪要处理', 'ylx45.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('57', '020705 会议查询', '', '120705', '1207', 'Y', 'query_list.jsp', '120705', '会议查询', '0', 'project/meeting/', '会议管理-会议查询', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('58', '0208 课程管理', '', '1208', '0', 'Y', '', '1208', '课程管理', '1', 'subject/file', '课程管理', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('59', '020801 课程添加', '', '120801', '1208', 'Y', 'file_add.jsp', '120801', '课程添加', '0', 'subject/file/', '课程管理--课程添加', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('60', '020803 课程查询', '', '120803', '1208', 'Y', 'file_query.jsp', '120803', '课程查询', '0', 'subject/file/', '课程管理--课程查询', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('61', '020804 课程更改', '', '120804', '1208', 'Y', 'file_list.jsp', '120804', '课程管理', '0', 'subject/file/', '课程管理--课程更改', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('62', '020806 统计打印', '', '120806', '1208', 'Y', 'file_statistic.jsp', '120806', '课程统计', '0', 'subject/file/', '课程管理--课程统计打印', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('64', '0209 统计打印', '', '1209', '0', 'Y', '', '1209', '统计打印', '1', 'subject/statistic', '统计打印', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('65', '020901 课程统计', '', '120901', '1209', 'Y', 'file_statistic.jsp', '120901', '统计打印', '0', 'subject/statistic/', '统计打印--课程统计', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('66', '0210 通知事项管理', '', '1210', '0', 'Y', '', '1210', '通知事项管理', '1', 'project/notice', '通知事项管理', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('67', '021001 通知事项添加', '', '121001', '1210', 'Y', 'register.jsp', '121001', '通知事项添加', '0', 'project/notice/', '通知事项管理--通知事项添加', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('68', '021002 通知事项查询', '', '121002', '1210', 'Y', 'query_list.jsp', '121002', '通知事项查询', '0', 'project/notice/', '通知事项管理--通知事项查询', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('69', '021003 通知事项更改', '', '121003', '1210', 'Y', 'change_list.jsp', '121003', '通知事项更改', '0', 'project/notice/', '通知事项管理--通知事项更改', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('70', '021004 通知事项统计', '', '121004', '1210', 'Y', 'statistic.jsp', '121004', '通知事项统计', '0', 'project/notice/', '通知事项管理--统计打印', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('72', '02010404 项目待办事项审核工作流设置', '', '12010404', '120104', 'Y', 'todo.jsp', '12010404', '项目待办事项审核工作流设置', '0', 'project/config/workflow/', '项目管理--客户化设置--项目待办事项审核工作流设置', 'ylx33.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('74', '021101 复杂事项添加', '', '121101', '1211', 'Y', 'register_more.jsp', '121101', '复杂事项添加', '0', 'project/todo_more/', '待办事项管理--复杂事项添加', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('75', '021102 复杂事项审核', '', '121102', '1211', 'Y', 'check_list_more.jsp', '121102', '复杂事项审核', '0', 'project/todo_more/', '待办事项管理--复杂事项查询', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('76', '021103 复杂事项查询', '', '121103', '1211', 'Y', 'query_list_more.jsp', '121103', '复杂事项查询', '0', 'project/todo_more/', '待办事项管理--复杂事项查询', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('77', '021104 复杂事项更改', '', '121104', '1211', 'Y', 'change_list_more.jsp', '121104', '复杂事项更改', '0', 'project/todo_more/', '待办事项管理--复杂事项更改', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('79', '0211 复杂事项管理', '', '1211', '0', 'Y', '', '1211', '复杂事项管理', '1', 'project/todo_more', '待办事项管理', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('80', '020802 待办事项审核', '', '120802', '1208', 'Y', 'record_list.jsp', '120802', '课程列表', '0', 'subject/file/', '课程管理--课程审核', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('84', '1212', '', '1212', '0', 'Y', '', '1212', '项目日志', '1', 'project/diary', '项目日志', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('85', '121201', '', '121201', '1212', 'Y', 'diary_add.jsp', '121201', '添加日志', '0', 'project/diary/', '添加日志', 'ylx46.png', '0', null, null, null, null, null, null, null, null);
INSERT INTO `subject_tree` VALUES ('86', '121202', '', '121202', '1212', 'Y', 'diary_list.jsp', '121202', '日志列表', '0', 'project/diary/', '日志列表', 'ylx46.png', '0', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `subject_view`
-- ----------------------------
DROP TABLE IF EXISTS `subject_view`;
CREATE TABLE `subject_view` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject_view
-- ----------------------------
INSERT INTO `subject_view` VALUES ('203', '210101', 'student');
INSERT INTO `subject_view` VALUES ('204', '210201', 'student');
INSERT INTO `subject_view` VALUES ('205', '210202', 'student');
INSERT INTO `subject_view` VALUES ('206', '12010101', 'manager');
INSERT INTO `subject_view` VALUES ('207', '12010105', 'manager');
INSERT INTO `subject_view` VALUES ('208', '12010201', 'manager');
INSERT INTO `subject_view` VALUES ('209', '12010301', 'manager');
INSERT INTO `subject_view` VALUES ('210', '12010401', 'manager');
INSERT INTO `subject_view` VALUES ('211', '12010402', 'manager');
INSERT INTO `subject_view` VALUES ('212', '12010403', 'manager');
INSERT INTO `subject_view` VALUES ('213', '12010404', 'manager');
INSERT INTO `subject_view` VALUES ('214', '120101', 'manager');
INSERT INTO `subject_view` VALUES ('215', '120102', 'manager');
INSERT INTO `subject_view` VALUES ('216', '120103', 'manager');
INSERT INTO `subject_view` VALUES ('217', '120104', 'manager');
INSERT INTO `subject_view` VALUES ('218', '120201', 'manager');
INSERT INTO `subject_view` VALUES ('219', '120202', 'manager');
INSERT INTO `subject_view` VALUES ('220', '120203', 'manager');
INSERT INTO `subject_view` VALUES ('221', '120204', 'manager');
INSERT INTO `subject_view` VALUES ('222', '120205', 'manager');
INSERT INTO `subject_view` VALUES ('223', '120206', 'manager');
INSERT INTO `subject_view` VALUES ('224', '120301', 'manager');
INSERT INTO `subject_view` VALUES ('225', '120302', 'manager');
INSERT INTO `subject_view` VALUES ('226', '120303', 'manager');
INSERT INTO `subject_view` VALUES ('227', '120401', 'manager');
INSERT INTO `subject_view` VALUES ('228', '120402', 'manager');
INSERT INTO `subject_view` VALUES ('229', '120403', 'manager');
INSERT INTO `subject_view` VALUES ('230', '120404', 'manager');
INSERT INTO `subject_view` VALUES ('231', '120501', 'manager');
INSERT INTO `subject_view` VALUES ('232', '120502', 'manager');
INSERT INTO `subject_view` VALUES ('233', '120503', 'manager');
INSERT INTO `subject_view` VALUES ('234', '120601', 'manager');
INSERT INTO `subject_view` VALUES ('235', '120602', 'manager');
INSERT INTO `subject_view` VALUES ('236', '120603', 'manager');
INSERT INTO `subject_view` VALUES ('237', '120605', 'manager');
INSERT INTO `subject_view` VALUES ('238', '120701', 'manager');
INSERT INTO `subject_view` VALUES ('239', '120702', 'manager');
INSERT INTO `subject_view` VALUES ('240', '120703', 'manager');
INSERT INTO `subject_view` VALUES ('241', '120704', 'manager');
INSERT INTO `subject_view` VALUES ('242', '120705', 'manager');
INSERT INTO `subject_view` VALUES ('243', '120801', 'manager');
INSERT INTO `subject_view` VALUES ('244', '120802', 'manager');
INSERT INTO `subject_view` VALUES ('245', '120803', 'manager');
INSERT INTO `subject_view` VALUES ('246', '120804', 'manager');
INSERT INTO `subject_view` VALUES ('247', '120806', 'manager');
INSERT INTO `subject_view` VALUES ('248', '120807', 'manager');
INSERT INTO `subject_view` VALUES ('249', '120808', 'manager');
INSERT INTO `subject_view` VALUES ('250', '120809', 'manager');
INSERT INTO `subject_view` VALUES ('251', '120901', 'manager');
INSERT INTO `subject_view` VALUES ('252', '121001', 'manager');
INSERT INTO `subject_view` VALUES ('253', '121002', 'manager');
INSERT INTO `subject_view` VALUES ('254', '121003', 'manager');
INSERT INTO `subject_view` VALUES ('255', '121004', 'manager');
INSERT INTO `subject_view` VALUES ('256', '121101', 'manager');
INSERT INTO `subject_view` VALUES ('257', '121102', 'manager');
INSERT INTO `subject_view` VALUES ('258', '121103', 'manager');
INSERT INTO `subject_view` VALUES ('259', '121104', 'manager');
INSERT INTO `subject_view` VALUES ('260', '1201', 'manager');
INSERT INTO `subject_view` VALUES ('261', '1202', 'manager');
INSERT INTO `subject_view` VALUES ('262', '1203', 'manager');
INSERT INTO `subject_view` VALUES ('263', '1204', 'manager');
INSERT INTO `subject_view` VALUES ('264', '1205', 'manager');
INSERT INTO `subject_view` VALUES ('265', '1206', 'manager');
INSERT INTO `subject_view` VALUES ('266', '1207', 'manager');
INSERT INTO `subject_view` VALUES ('267', '1208', 'manager');
INSERT INTO `subject_view` VALUES ('268', '1209', 'manager');
INSERT INTO `subject_view` VALUES ('269', '1210', 'manager');
INSERT INTO `subject_view` VALUES ('270', '1211', 'manager');
INSERT INTO `subject_view` VALUES ('292', '1202', 'normal');
INSERT INTO `subject_view` VALUES ('293', '120201', 'normal');
INSERT INTO `subject_view` VALUES ('294', '120202', 'normal');
INSERT INTO `subject_view` VALUES ('295', '120203', 'normal');
INSERT INTO `subject_view` VALUES ('296', '120204', 'normal');
INSERT INTO `subject_view` VALUES ('297', '120205', 'normal');
INSERT INTO `subject_view` VALUES ('298', '120206', 'normal');
INSERT INTO `subject_view` VALUES ('299', '1206', 'normal');
INSERT INTO `subject_view` VALUES ('300', '120601', 'normal');
INSERT INTO `subject_view` VALUES ('301', '120602', 'normal');
INSERT INTO `subject_view` VALUES ('302', '120603', 'normal');
INSERT INTO `subject_view` VALUES ('303', '120605', 'normal');
INSERT INTO `subject_view` VALUES ('304', '1208', 'normal');
INSERT INTO `subject_view` VALUES ('305', '120801', 'normal');
INSERT INTO `subject_view` VALUES ('306', '120802', 'normal');
INSERT INTO `subject_view` VALUES ('307', '120803', 'normal');
INSERT INTO `subject_view` VALUES ('308', '120804', 'normal');
INSERT INTO `subject_view` VALUES ('309', '120806', 'normal');
INSERT INTO `subject_view` VALUES ('310', '120807', 'normal');
INSERT INTO `subject_view` VALUES ('311', '120808', 'normal');
INSERT INTO `subject_view` VALUES ('312', '120809', 'normal');

-- ----------------------------
-- Table structure for `teacher_file`
-- ----------------------------
DROP TABLE IF EXISTS `teacher_file`;
CREATE TABLE `teacher_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT '',
  `type` int(10) DEFAULT NULL,
  `limit_time` datetime DEFAULT NULL,
  `end_tag` int(10) DEFAULT '0',
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `executor` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT '',
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_size` int(10) DEFAULT '0',
  `priority` int(10) DEFAULT NULL,
  `check_tag` int(10) DEFAULT '0',
  `checker` varchar(255) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `excel_tag` int(10) DEFAULT '0',
  `gar_tag` int(10) DEFAULT '0',
  `used_tag` int(10) DEFAULT '1',
  `creator` varchar(255) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_file
-- ----------------------------
INSERT INTO `teacher_file` VALUES ('5', 'kfjwwxpt', 'lisi', '邱海伦', '算法设计', null, '2017-04-21 14:50:37', '0', '2016-05-24 00:00:00', '2016-05-25 00:00:00', '张三', '7班', null, '0', null, '0', null, null, '0', '0', '1', '', '2017-04-21 14:50:37', null, '4');
INSERT INTO `teacher_file` VALUES ('7', 'null', 'lisi', '王佳宁', '开发实践', null, '2018-07-09 23:59:59', '0', null, null, '', '7班', null, '0', null, '0', null, null, '0', '0', '1', '辛卫', '2018-07-09 21:55:41', null, '5');
INSERT INTO `teacher_file` VALUES ('8', 'null', 'lisi', '刘亦菲', '开发实践', null, '2018-07-09 23:59:59', '0', null, null, '', '5班', null, '0', null, '0', null, null, '0', '0', '1', '辛卫', '2018-07-09 21:58:37', null, '4');

-- ----------------------------
-- Table structure for `wechat_message`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_message`;
CREATE TABLE `wechat_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wechat_id` varchar(255) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `msg_source` varchar(255) DEFAULT NULL,
  `msg_type` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  `pic_url` varchar(255) DEFAULT '',
  `media_id` varchar(255) DEFAULT NULL,
  `thumb_media_id` varchar(255) DEFAULT NULL,
  `media_format` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `scale` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `from_user` varchar(255) DEFAULT NULL,
  `to_user` varchar(255) DEFAULT NULL,
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_size` int(10) DEFAULT '0',
  `check_tag` int(10) DEFAULT '0',
  `checker` varchar(255) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `excel_tag` int(10) DEFAULT '0',
  `gar_tag` int(10) DEFAULT '0',
  `used_tag` int(10) DEFAULT '1',
  `register` varchar(255) DEFAULT '',
  `register_time` datetime DEFAULT '1800-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_message
-- ----------------------------

-- ----------------------------
-- Table structure for `xm07_menber`
-- ----------------------------
DROP TABLE IF EXISTS `xm07_menber`;
CREATE TABLE `xm07_menber` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xm07_menber
-- ----------------------------
INSERT INTO `xm07_menber` VALUES ('2', 'zhangsan', '123456', 'student', '张三');
INSERT INTO `xm07_menber` VALUES ('3', 'lisi', '123456', 'teacher', '李四');
INSERT INTO `xm07_menber` VALUES ('4', 'xinwei', '123456', 'admin', '辛卫');

-- ----------------------------
-- Table structure for `xm07_student`
-- ----------------------------
DROP TABLE IF EXISTS `xm07_student`;
CREATE TABLE `xm07_student` (
  `id` int(10) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `student` varchar(255) DEFAULT NULL,
  `teaname` varchar(255) DEFAULT NULL,
  `stuname` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xm07_student
-- ----------------------------
INSERT INTO `xm07_student` VALUES ('1', 'yuanwei', null, null, 'lisi', 'zhangsan', '李四', '张三', 'yuanwei', '2018-06-07 14:59:42');
INSERT INTO `xm07_student` VALUES ('2', 'yuanwei', null, null, 'wangwu', 'zhangsan', '王五', '张三', 'yuanwei', '2018-05-24 15:00:06');

-- ----------------------------
-- Table structure for `xm07_stuwork`
-- ----------------------------
DROP TABLE IF EXISTS `xm07_stuwork`;
CREATE TABLE `xm07_stuwork` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `work` int(10) DEFAULT NULL,
  `work_id` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `teacher_name` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xm07_stuwork
-- ----------------------------
INSERT INTO `xm07_stuwork` VALUES ('1', 'null', 'zhangsan', null, 'lisi', '19', '第九次作业', '2016141461011_袁威_计网第7次实验报告.doc', '张三', '李四', 'zhangsan', '2018-06-14 12:44:17');
INSERT INTO `xm07_stuwork` VALUES ('3', 'null', 'zhangsan', null, 'lisi', '19', '第九次作业', '2016141461011_袁威_计网第8次实验报告.doc', '张三', '李四', 'zhangsan', '2018-06-16 10:41:08');
INSERT INTO `xm07_stuwork` VALUES ('13', null, 'zhangsan', null, 'wangwu', '13', '第一次作业', '张三-第一次作业.rar', '张三', '王五', 'zhangsan', '2018-05-31 20:58:44');
INSERT INTO `xm07_stuwork` VALUES ('14', 'null', 'zhangsan', null, 'lisi', '12', '第二次作业', '2016141461011_袁威_计网第5次实验报告.rar', '张三', '李四', 'zhangsan', '2018-06-16 10:54:46');
INSERT INTO `xm07_stuwork` VALUES ('15', 'null', 'zhangsan', null, 'lisi', '12', '第二次作业', '2016141461011_袁威_计网第7次实验报告.doc', '张三', '李四', 'zhangsan', '2018-06-16 11:09:25');
INSERT INTO `xm07_stuwork` VALUES ('16', 'null', 'zhangsan', null, 'lisi', '12', '第二次作业', '学号_名字_计网第几次实验报告 - 副本 - 副本.doc', '张三', '李四', 'zhangsan', '2018-06-18 21:07:08');
INSERT INTO `xm07_stuwork` VALUES ('17', 'null', 'zhangsan', null, 'lisi', '19', '第九次作业', 'my.jpg', '张三', '李四', 'zhangsan', '2018-06-22 14:48:40');
INSERT INTO `xm07_stuwork` VALUES ('18', 'null', 'zhangsan', null, 'lisi', '19', '第九次作业', '计网实验报告.rar', '张三', '李四', 'zhangsan', '2018-07-08 14:14:11');

-- ----------------------------
-- Table structure for `xm07_teawork`
-- ----------------------------
DROP TABLE IF EXISTS `xm07_teawork`;
CREATE TABLE `xm07_teawork` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `work_id` varchar(255) DEFAULT NULL,
  `work_content` varchar(255) DEFAULT NULL,
  `work_count` varchar(255) DEFAULT NULL,
  `limit_time` datetime DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xm07_teawork
-- ----------------------------
INSERT INTO `xm07_teawork` VALUES ('12', null, 'lisi', null, '第二次作业', '高数下第二章3，4，5', '45', '2018-06-13 20:57:29', '李四', 'lisi', '2018-06-03 12:32:16');
INSERT INTO `xm07_teawork` VALUES ('13', null, 'lisi', null, '第一次作业', '高数下第一章14，15，16', '45', '2018-06-20 12:59:44', '李四', 'lisi', '2018-05-31 16:00:00');
INSERT INTO `xm07_teawork` VALUES ('18', '1', 'lisi', null, '第二次作业', '高数下第二章3，4，5', '45', '2018-06-16 23:59:59', '李四', 'lisi', '2018-06-16 10:45:59');
INSERT INTO `xm07_teawork` VALUES ('19', '1', 'lisi', null, '第九次作业', '高数下第二章3，4，5', '45', '2018-06-13 14:30:59', '李四', 'lisi', '2018-06-21 15:57:35');
