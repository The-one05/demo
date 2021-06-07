/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : db_demo

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-06-06 21:35:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app01_my_computer
-- ----------------------------
DROP TABLE IF EXISTS `app01_my_computer`;
CREATE TABLE `app01_my_computer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(80) NOT NULL,
  `file_type` varchar(10) NOT NULL,
  `file_state` int(11) NOT NULL COMMENT '1：存在  0：删除',
  `pre_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app01_my_computer
-- ----------------------------
INSERT INTO `app01_my_computer` VALUES ('1', 'JavaScript', '文件夹', '1', '0');
INSERT INTO `app01_my_computer` VALUES ('2', '作业', '文件夹', '1', '0');
INSERT INTO `app01_my_computer` VALUES ('3', 'QQ列表收缩展开.html', '文件', '1', '0');
INSERT INTO `app01_my_computer` VALUES ('4', '全选和反选 js.html', '文件', '1', '0');
INSERT INTO `app01_my_computer` VALUES ('5', '社会主义.html', '文件', '1', '0');
INSERT INTO `app01_my_computer` VALUES ('6', '随机点名.html', '文件', '1', '0');
INSERT INTO `app01_my_computer` VALUES ('7', '第八周', '文件夹', '1', '1');
INSERT INTO `app01_my_computer` VALUES ('8', '第九周', '文件夹', '1', '1');
INSERT INTO `app01_my_computer` VALUES ('9', '第六周', '文件夹', '1', '1');
INSERT INTO `app01_my_computer` VALUES ('10', '01.html', '文件', '1', '2');
INSERT INTO `app01_my_computer` VALUES ('11', '02.html', '文件', '1', '2');
INSERT INTO `app01_my_computer` VALUES ('12', '03.html', '文件', '1', '2');
INSERT INTO `app01_my_computer` VALUES ('13', '策划.docx', '文件', '1', '1');
INSERT INTO `app01_my_computer` VALUES ('14', '院队长部—张东哲.docx', '文件', '1', '1');
INSERT INTO `app01_my_computer` VALUES ('15', '概念.txt', '文件', '1', '7');
INSERT INTO `app01_my_computer` VALUES ('16', '增删改查.txt', '文件', '1', '7');
INSERT INTO `app01_my_computer` VALUES ('17', '知识点.docx', '文件', '1', '7');
INSERT INTO `app01_my_computer` VALUES ('18', '2-1.html', '文件', '1', '9');
INSERT INTO `app01_my_computer` VALUES ('19', '2-2.html', '文件', '1', '9');
INSERT INTO `app01_my_computer` VALUES ('20', '2-3.html', '文件', '1', '9');
INSERT INTO `app01_my_computer` VALUES ('21', '2-4.html', '文件', '1', '9');
INSERT INTO `app01_my_computer` VALUES ('22', '2-5.html', '文件', '1', '9');
INSERT INTO `app01_my_computer` VALUES ('23', '2-6.html', '文件', '1', '9');
INSERT INTO `app01_my_computer` VALUES ('24', '2-7.html', '文件', '1', '9');
INSERT INTO `app01_my_computer` VALUES ('25', '第2章作业.docx', '文件', '1', '9');
INSERT INTO `app01_my_computer` VALUES ('26', '文字素材.txt', '文件', '1', '9');
INSERT INTO `app01_my_computer` VALUES ('27', '2-1.html', '文件', '1', '8');
INSERT INTO `app01_my_computer` VALUES ('28', '2-2.html', '文件', '1', '8');
INSERT INTO `app01_my_computer` VALUES ('29', '2-3.html', '文件', '1', '8');
INSERT INTO `app01_my_computer` VALUES ('30', '文字素材.txt', '文件', '1', '0');
INSERT INTO `app01_my_computer` VALUES ('31', '2-1.html', '文件', '1', '2');
INSERT INTO `app01_my_computer` VALUES ('32', 'test', '文件夹', '0', '0');
INSERT INTO `app01_my_computer` VALUES ('33', 'test', '文件夹', '1', '2');
INSERT INTO `app01_my_computer` VALUES ('34', 'test2', '文件夹', '1', '33');
INSERT INTO `app01_my_computer` VALUES ('35', '2-1.html', '文件', '1', '33');
INSERT INTO `app01_my_computer` VALUES ('36', '2-2.html', '文件', '1', '33');
INSERT INTO `app01_my_computer` VALUES ('37', '2-3.html', '文件', '1', '33');
INSERT INTO `app01_my_computer` VALUES ('38', '2-4.html', '文件', '1', '33');
INSERT INTO `app01_my_computer` VALUES ('39', '2-5.html', '文件', '1', '33');
INSERT INTO `app01_my_computer` VALUES ('40', '2-6.html', '文件', '1', '33');
INSERT INTO `app01_my_computer` VALUES ('41', '2-7.html', '文件', '1', '33');
INSERT INTO `app01_my_computer` VALUES ('42', '2-1.html', '文件', '1', '34');
INSERT INTO `app01_my_computer` VALUES ('43', '2-2.html', '文件', '1', '34');
INSERT INTO `app01_my_computer` VALUES ('44', '2-3.html', '文件', '1', '34');
INSERT INTO `app01_my_computer` VALUES ('45', '2-4.html', '文件', '1', '34');
INSERT INTO `app01_my_computer` VALUES ('46', '2-5.html', '文件', '1', '34');
INSERT INTO `app01_my_computer` VALUES ('47', '2-6.html', '文件', '1', '34');
INSERT INTO `app01_my_computer` VALUES ('48', '2-7.html', '文件', '1', '34');
INSERT INTO `app01_my_computer` VALUES ('49', '第2章作业.docx', '文件', '1', '34');
INSERT INTO `app01_my_computer` VALUES ('50', '文字素材.txt', '文件', '1', '34');
INSERT INTO `app01_my_computer` VALUES ('51', '文件夹01', '文件夹', '1', '0');
INSERT INTO `app01_my_computer` VALUES ('52', '2-1.html', '文件', '1', '51');
INSERT INTO `app01_my_computer` VALUES ('53', '2-2.html', '文件', '1', '51');
INSERT INTO `app01_my_computer` VALUES ('54', '2-3.html', '文件', '1', '51');
INSERT INTO `app01_my_computer` VALUES ('55', '2-4.html', '文件', '1', '51');
INSERT INTO `app01_my_computer` VALUES ('56', '2-5.html', '文件', '1', '51');
INSERT INTO `app01_my_computer` VALUES ('57', '2-6.html', '文件', '1', '51');
INSERT INTO `app01_my_computer` VALUES ('58', '2-7.html', '文件', '1', '51');
INSERT INTO `app01_my_computer` VALUES ('59', '数据库', '文件夹', '1', '2');
INSERT INTO `app01_my_computer` VALUES ('60', '触发器-实验报告-张东哲.doc', '文件', '1', '59');
INSERT INTO `app01_my_computer` VALUES ('61', '存储过程-实验报告-张东哲.doc', '文件', '1', '59');
INSERT INTO `app01_my_computer` VALUES ('62', '概念.txt', '文件', '1', '59');
INSERT INTO `app01_my_computer` VALUES ('63', '数据库的完整性-实验报告-张东哲.doc', '文件', '1', '59');
INSERT INTO `app01_my_computer` VALUES ('64', '增删改查.txt', '文件', '1', '59');
INSERT INTO `app01_my_computer` VALUES ('65', '知识点.docx', '文件', '1', '59');

-- ----------------------------
-- Table structure for app01_recycle
-- ----------------------------
DROP TABLE IF EXISTS `app01_recycle`;
CREATE TABLE `app01_recycle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(80) NOT NULL,
  `file_type` varchar(10) NOT NULL,
  `pre_id` int(11) NOT NULL COMMENT '所在目录ID',
  `r_id` int(11) NOT NULL COMMENT '在表my_computer中的ID',
  `file_level` int(11) NOT NULL COMMENT '0：在回收站中显示   1：不显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app01_recycle
-- ----------------------------
INSERT INTO `app01_recycle` VALUES ('71', 'test', '文件夹', '0', '32', '0');

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add my_computer', '7', 'add_my_computer');
INSERT INTO `auth_permission` VALUES ('26', 'Can change my_computer', '7', 'change_my_computer');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete my_computer', '7', 'delete_my_computer');
INSERT INTO `auth_permission` VALUES ('28', 'Can view my_computer', '7', 'view_my_computer');
INSERT INTO `auth_permission` VALUES ('29', 'Can add recycle', '8', 'add_recycle');
INSERT INTO `auth_permission` VALUES ('30', 'Can change recycle', '8', 'change_recycle');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete recycle', '8', 'delete_recycle');
INSERT INTO `auth_permission` VALUES ('32', 'Can view recycle', '8', 'view_recycle');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'app01', 'my_computer');
INSERT INTO `django_content_type` VALUES ('8', 'app01', 'recycle');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2021-06-04 13:40:21.830189');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2021-06-04 13:40:22.089502');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2021-06-04 13:40:22.153332');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2021-06-04 13:40:22.160314');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2021-06-04 13:40:22.167315');
INSERT INTO `django_migrations` VALUES ('6', 'app01', '0001_initial', '2021-06-04 13:40:22.181259');
INSERT INTO `django_migrations` VALUES ('7', 'contenttypes', '0002_remove_content_type_name', '2021-06-04 13:40:22.217162');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0002_alter_permission_name_max_length', '2021-06-04 13:40:22.236466');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0003_alter_user_email_max_length', '2021-06-04 13:40:22.256412');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0004_alter_user_username_opts', '2021-06-04 13:40:22.265389');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0005_alter_user_last_login_null', '2021-06-04 13:40:22.284338');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0006_require_contenttypes_0002', '2021-06-04 13:40:22.288331');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0007_alter_validators_add_error_messages', '2021-06-04 13:40:22.296306');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0008_alter_user_username_max_length', '2021-06-04 13:40:22.317250');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0009_alter_user_last_name_max_length', '2021-06-04 13:40:22.338668');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0010_alter_group_name_max_length', '2021-06-04 13:40:22.358615');
INSERT INTO `django_migrations` VALUES ('17', 'auth', '0011_update_proxy_permissions', '2021-06-04 13:40:22.369585');
INSERT INTO `django_migrations` VALUES ('18', 'auth', '0012_alter_user_first_name_max_length', '2021-06-04 13:40:22.386539');
INSERT INTO `django_migrations` VALUES ('19', 'sessions', '0001_initial', '2021-06-04 13:40:22.412471');
INSERT INTO `django_migrations` VALUES ('20', 'app01', '0002_alter_my_computer_file_state', '2021-06-04 15:51:17.640326');
INSERT INTO `django_migrations` VALUES ('21', 'app01', '0003_recycle', '2021-06-05 08:13:22.689862');
INSERT INTO `django_migrations` VALUES ('22', 'app01', '0004_recycle_r_id', '2021-06-05 11:46:08.887174');
INSERT INTO `django_migrations` VALUES ('23', 'app01', '0005_recycle_file_level', '2021-06-05 11:55:25.815197');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
