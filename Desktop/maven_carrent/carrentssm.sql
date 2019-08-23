/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : carrentssm

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 23/08/2019 19:24:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bus_car
-- ----------------------------
DROP TABLE IF EXISTS `bus_car`;
CREATE TABLE `bus_car`  (
  `carnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cartype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `rentprice` double(10, 2) NULL DEFAULT NULL,
  `deposit` double NULL DEFAULT NULL,
  `isrenting` int(11) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`carnumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_car
-- ----------------------------
INSERT INTO `bus_car` VALUES ('2', '22', '2', 22.00, 2222.00, 500, 0, '222', '2019-07-27/201907271125079401648.jpg', '2019-07-27 11:25:08');
INSERT INTO `bus_car` VALUES ('鄂111111', 'SUV', '黑色', 450000.00, 5000.00, 10000, 0, '高端大气上档次', 'images/defaultcarimage.jpg', '2019-07-27 12:21:04');
INSERT INTO `bus_car` VALUES ('鄂A66666', 'SUV', '白色', 280000.00, 500.00, 5000, 0, '宝马X1', 'images/001.png', '2019-05-07 14:52:15');
INSERT INTO `bus_car` VALUES ('鄂A77777', 'SUV', '白色', 350000.00, 1500.00, 12000, 1, '宝马X3', 'images/002.png', '2019-05-07 14:52:15');
INSERT INTO `bus_car` VALUES ('鄂A88888', '轿车', '黑色', 880000.00, 1000.00, 10000, 0, '保时捷 卡宴', 'images/003.png', '2019-05-07 14:52:15');
INSERT INTO `bus_car` VALUES ('鄂A99999', '渣土车', '黄', 500000.00, 3000.00, 20000, 1, '动力强劲', 'images/defaultcarimage.jpg', '2019-06-10 14:50:12');

-- ----------------------------
-- Table structure for bus_check
-- ----------------------------
DROP TABLE IF EXISTS `bus_check`;
CREATE TABLE `bus_check`  (
  `checkid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `checkdate` datetime(0) NULL DEFAULT NULL,
  `checkdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `problem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paymoney` double(255, 0) NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`checkid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_check
-- ----------------------------
INSERT INTO `bus_check` VALUES ('JC_20180612_170407_0385_63960', '2018-06-12 00:00:00', '在G50高速超速', '超速', 500, '习大大', 'CZ_20180611_171304_0732_57330', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20180612_172559_0323_71959', '2018-06-13 00:00:00', '真的', '无', 0, '习大大', 'CZ_20180612_164747_0573_26177', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20180718_091454_0191_93480', '2018-07-18 00:00:00', '无', '无', 0, '习大大', 'CZ_20180718_091206_0365_62161', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181024_170206_355_7589', '2018-10-24 17:02:06', '无', '无', 0, '超级管理员', 'CZ_20181024_102327_735_9111', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181201_105333_218_89516', '2018-12-02 00:00:00', '1231321', '111122', 200, '超级管理员', 'CZ_20180612_164808_0385_37625', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181201_111951_947_77152', '2018-12-03 00:00:00', '无', '无', 0, '超级管理员', 'CZ_20181201_111936_383_31565', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_2018_0901_175053_57325085', '2018-09-01 00:00:00', '在G50  1127-1130段超速20%未达50%', '有违章未处理', 500, '超级管理员', 'CZ_2018_0901_175000_97637709', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20190322_142814_147_8624', '2019-03-22 14:28:14', '222', '11', 100, '超级管理员', 'CZ_20190320_141553_303_8141', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20190611_111021_41215259', '2019-06-11 11:10:21', '没有1', '无1', 0, '超级管理员', 'CZ_20190611_094617_32192683', '2019-06-11 11:10:32');
INSERT INTO `bus_check` VALUES ('JC_20190727182945460_1147', '2019-07-27 18:29:45', '无', '无', 0, '超级管理员', 'CZ_20190727113305445_1432', '2019-07-27 18:29:52');
INSERT INTO `bus_check` VALUES ('JC_20190728085207301_3873', '2019-07-28 08:52:07', '无', '无', 0, '超级管理员', 'CZ_20190727183023584_1729', '2019-07-28 08:55:03');

-- ----------------------------
-- Table structure for bus_customer
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer`;
CREATE TABLE `bus_customer`  (
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `custname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` int(255) NULL DEFAULT NULL COMMENT '性别',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `career` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `createtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`identity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_customer
-- ----------------------------
INSERT INTO `bus_customer` VALUES ('421087133414144412', '张小明', 1, '武昌', '13456788987', '程序员', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('43131334113331131', '习大大', 1, '武昌', '13888888888', '国家最高领导人', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('431321199291331131', '张三', 1, '武昌', '13431334113', '程序员', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('431321199291331132', '孙中山', 1, '汉口', '134131314131', '总统', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('431341134191311311', '李四', 0, '汉阳', '13451313113', 'CEO', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('431341134191311314', '王小明', 1, '汉口', '13413131113', 'CEO', '2019-05-07 14:52:24');

-- ----------------------------
-- Table structure for bus_rent
-- ----------------------------
DROP TABLE IF EXISTS `bus_rent`;
CREATE TABLE `bus_rent`  (
  `rentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `begindate` datetime(0) NULL DEFAULT NULL,
  `returndate` datetime(0) NULL DEFAULT NULL,
  `rentflag` int(11) NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`rentid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_rent
-- ----------------------------
INSERT INTO `bus_rent` VALUES ('CZ_20180611_171304_0732_57330', 1600.00, '2017-01-01 00:00:00', '2017-06-18 00:00:00', 1, '421087133414144412', '鄂A77777', '李四', '2017-01-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20180612_164747_0573_26177', 500.00, '2018-01-13 00:00:00', '2018-06-23 00:00:00', 1, '431321199291331131', '鄂A66666', '李四', '2018-01-13 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20180612_164808_0385_37625', 1000.00, '2018-03-13 00:00:00', '2018-06-15 00:00:00', 1, '421087133414144412', '鄂A88888', '王五', '2018-03-13 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20180718_091206_0365_62161', 500.00, '2018-05-18 00:00:00', '2018-07-21 00:00:00', 1, '421087133414144412', '鄂A66666', '张三', '2018-05-18 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20181024_102327_735_9111', 500.00, '2018-07-23 10:23:27', '2018-10-31 10:23:29', 1, '421087133414144412', '鄂A66666', '李四', '2018-07-23 10:23:27');
INSERT INTO `bus_rent` VALUES ('CZ_20181201_111936_383_31565', 1500.00, '2018-09-01 00:00:00', '2018-12-29 00:00:00', 1, '43131334113331131', '鄂A77777', '王五', '2018-09-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_2018_0901_175000_97637709', 500.00, '2018-12-01 00:00:00', '2018-09-10 00:00:00', 1, '431321199291331131', '鄂A66666', '李四', '2018-12-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20190611_094617_32192683', 500.00, '2019-06-11 09:46:17', '2019-06-15 09:46:19', 1, '43131334113331131', '鄂A66666', '超级管理员', '2019-06-11 09:46:25');
INSERT INTO `bus_rent` VALUES ('CZ_20190727113305445_1432', 500.00, '2019-07-27 11:33:05', '2019-07-31 00:00:00', 1, '431321199291331132', '鄂A66666', '超级管理员', '2019-07-27 11:33:09');
INSERT INTO `bus_rent` VALUES ('CZ_20190727183023584_1729', 5000.00, '2019-07-27 18:30:23', '2019-07-30 00:00:00', 1, '421087133414144412', '鄂111111', '超级管理员', '2019-07-27 18:30:24');
INSERT INTO `bus_rent` VALUES ('CZ_20190727183210998_3830', 1500.00, '2019-07-27 18:32:10', '2019-07-31 00:00:00', 0, '431321199291331131', '鄂A77777', '超级管理员', '2019-07-27 18:32:11');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `perid` int(11) NOT NULL AUTO_INCREMENT,
  `pername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `percode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`perid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '用户查询', 'person:query');
INSERT INTO `permission` VALUES (2, '用户添加', 'person:add');
INSERT INTO `permission` VALUES (3, '用户修改', 'person:update');
INSERT INTO `permission` VALUES (4, '用户删除', 'person:delete');
INSERT INTO `permission` VALUES (5, '导出用户', 'person:export');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员');
INSERT INTO `role` VALUES (2, 'CEO');
INSERT INTO `role` VALUES (3, '保安');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `perid` int(255) NULL DEFAULT NULL,
  `roleid` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (1, 1);
INSERT INTO `role_permission` VALUES (2, 1);
INSERT INTO `role_permission` VALUES (3, 1);
INSERT INTO `role_permission` VALUES (4, 1);
INSERT INTO `role_permission` VALUES (1, 2);
INSERT INTO `role_permission` VALUES (2, 2);
INSERT INTO `role_permission` VALUES (3, 2);
INSERT INTO `role_permission` VALUES (1, 3);
INSERT INTO `role_permission` VALUES (5, 3);

-- ----------------------------
-- Table structure for sys_log_login
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_login`;
CREATE TABLE `sys_log_login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logintime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 374 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log_login
-- ----------------------------
INSERT INTO `sys_log_login` VALUES (1, '超级管理员-admin11', '127.0.0.1', '2019-06-10 09:25:41');
INSERT INTO `sys_log_login` VALUES (2, '超级管理员-admin', '127.0.0.1', '2019-06-10 10:04:45');
INSERT INTO `sys_log_login` VALUES (3, '超级管理员-admin', '127.0.0.1', '2019-06-10 10:07:31');
INSERT INTO `sys_log_login` VALUES (4, '超级管理员-admin', '127.0.0.1', '2019-06-10 10:09:25');
INSERT INTO `sys_log_login` VALUES (5, '超级管理员-admin', '127.0.0.1', '2019-06-10 10:18:31');
INSERT INTO `sys_log_login` VALUES (6, '超级管理员-admin', '127.0.0.1', '2019-06-10 10:21:26');
INSERT INTO `sys_log_login` VALUES (7, '超级管理员-admin', '127.0.0.1', '2019-06-10 10:22:20');
INSERT INTO `sys_log_login` VALUES (8, '超级管理员-admin', '127.0.0.1', '2019-06-10 11:01:47');
INSERT INTO `sys_log_login` VALUES (9, '超级管理员-admin', '127.0.0.1', '2019-06-10 11:12:34');
INSERT INTO `sys_log_login` VALUES (10, '超级管理员-admin', '127.0.0.1', '2019-06-10 14:42:41');
INSERT INTO `sys_log_login` VALUES (11, '超级管理员-admin', '127.0.0.1', '2019-06-10 14:53:57');
INSERT INTO `sys_log_login` VALUES (12, '超级管理员-admin', '127.0.0.1', '2019-06-10 15:35:46');
INSERT INTO `sys_log_login` VALUES (13, '超级管理员-admin', '127.0.0.1', '2019-06-10 15:35:51');
INSERT INTO `sys_log_login` VALUES (14, '超级管理员-admin', '127.0.0.1', '2019-06-10 15:41:25');
INSERT INTO `sys_log_login` VALUES (15, '超级管理员-admin', '127.0.0.1', '2019-06-10 16:15:34');
INSERT INTO `sys_log_login` VALUES (16, '超级管理员-admin', '127.0.0.1', '2019-06-10 16:38:44');
INSERT INTO `sys_log_login` VALUES (17, '超级管理员-admin', '127.0.0.1', '2019-06-10 16:53:20');
INSERT INTO `sys_log_login` VALUES (18, '超级管理员-admin', '127.0.0.1', '2019-06-11 09:19:33');
INSERT INTO `sys_log_login` VALUES (19, '超级管理员-admin', '127.0.0.1', '2019-06-11 09:41:54');
INSERT INTO `sys_log_login` VALUES (20, '超级管理员-admin', '127.0.0.1', '2019-06-11 10:57:54');
INSERT INTO `sys_log_login` VALUES (21, '超级管理员-admin', '127.0.0.1', '2019-06-11 11:07:57');
INSERT INTO `sys_log_login` VALUES (22, '超级管理员-admin', '127.0.0.1', '2019-06-11 11:10:04');
INSERT INTO `sys_log_login` VALUES (23, '超级管理员-admin', '127.0.0.1', '2019-06-11 11:30:00');
INSERT INTO `sys_log_login` VALUES (24, '超级管理员-admin', '127.0.0.1', '2019-06-11 11:38:28');
INSERT INTO `sys_log_login` VALUES (25, '超级管理员-admin', '127.0.0.1', '2019-06-11 14:22:43');
INSERT INTO `sys_log_login` VALUES (26, '超级管理员-admin', '127.0.0.1', '2019-06-11 14:37:13');
INSERT INTO `sys_log_login` VALUES (27, '超级管理员-admin', '127.0.0.1', '2019-06-11 14:45:35');
INSERT INTO `sys_log_login` VALUES (28, '超级管理员-admin', '127.0.0.1', '2019-06-11 15:57:16');
INSERT INTO `sys_log_login` VALUES (29, '超级管理员-admin', '127.0.0.1', '2019-06-11 16:42:55');
INSERT INTO `sys_log_login` VALUES (30, '超级管理员-admin', '127.0.0.1', '2019-06-11 17:01:10');
INSERT INTO `sys_log_login` VALUES (31, '超级管理员-admin', '127.0.0.1', '2019-06-12 09:35:50');
INSERT INTO `sys_log_login` VALUES (32, '超级管理员-admin', '127.0.0.1', '2019-06-12 09:54:09');
INSERT INTO `sys_log_login` VALUES (33, '超级管理员-admin', '127.0.0.1', '2019-06-12 09:59:20');
INSERT INTO `sys_log_login` VALUES (34, '超级管理员-admin', '127.0.0.1', '2019-06-12 09:59:43');
INSERT INTO `sys_log_login` VALUES (35, '超级管理员-admin', '127.0.0.1', '2019-06-12 10:00:13');
INSERT INTO `sys_log_login` VALUES (36, '超级管理员-admin', '127.0.0.1', '2019-06-12 10:00:44');
INSERT INTO `sys_log_login` VALUES (37, '超级管理员-admin', '127.0.0.1', '2019-06-12 10:02:29');
INSERT INTO `sys_log_login` VALUES (38, '超级管理员-admin', '127.0.0.1', '2019-06-12 10:05:57');
INSERT INTO `sys_log_login` VALUES (39, '超级管理员-admin', '127.0.0.1', '2019-06-12 10:16:26');
INSERT INTO `sys_log_login` VALUES (40, '超级管理员-admin', '127.0.0.1', '2019-06-12 10:20:36');
INSERT INTO `sys_log_login` VALUES (41, '超级管理员-admin', '127.0.0.1', '2019-06-12 10:24:14');
INSERT INTO `sys_log_login` VALUES (42, '超级管理员-admin', '127.0.0.1', '2019-06-12 11:17:46');
INSERT INTO `sys_log_login` VALUES (43, '超级管理员-admin', '127.0.0.1', '2019-06-12 11:32:29');
INSERT INTO `sys_log_login` VALUES (44, '超级管理员-admin', '127.0.0.1', '2019-06-12 11:35:05');
INSERT INTO `sys_log_login` VALUES (45, '超级管理员-admin', '127.0.0.1', '2019-06-12 11:51:48');
INSERT INTO `sys_log_login` VALUES (46, '超级管理员-admin', '127.0.0.1', '2019-06-12 14:31:34');
INSERT INTO `sys_log_login` VALUES (47, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:01:15');
INSERT INTO `sys_log_login` VALUES (48, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:26:55');
INSERT INTO `sys_log_login` VALUES (49, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:31:17');
INSERT INTO `sys_log_login` VALUES (50, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:40:38');
INSERT INTO `sys_log_login` VALUES (51, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:40:52');
INSERT INTO `sys_log_login` VALUES (52, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:44:41');
INSERT INTO `sys_log_login` VALUES (53, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:44:50');
INSERT INTO `sys_log_login` VALUES (54, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:44:53');
INSERT INTO `sys_log_login` VALUES (55, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:45:59');
INSERT INTO `sys_log_login` VALUES (56, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:45:59');
INSERT INTO `sys_log_login` VALUES (57, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:47:29');
INSERT INTO `sys_log_login` VALUES (58, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:48:56');
INSERT INTO `sys_log_login` VALUES (59, '超级管理员-admin', '127.0.0.1', '2019-06-14 09:10:49');
INSERT INTO `sys_log_login` VALUES (60, '超级管理员-admin', '127.0.0.1', '2019-06-14 09:37:03');
INSERT INTO `sys_log_login` VALUES (61, '超级管理员-admin', '127.0.0.1', '2019-06-14 09:38:45');
INSERT INTO `sys_log_login` VALUES (62, '超级管理员-admin', '127.0.0.1', '2019-06-14 09:39:08');
INSERT INTO `sys_log_login` VALUES (63, '超级管理员-admin', '127.0.0.1', '2019-06-14 09:41:16');
INSERT INTO `sys_log_login` VALUES (64, '超级管理员-admin', '127.0.0.1', '2019-06-14 10:49:01');
INSERT INTO `sys_log_login` VALUES (65, '超级管理员-admin', '127.0.0.1', '2019-06-14 10:56:58');
INSERT INTO `sys_log_login` VALUES (66, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:03:40');
INSERT INTO `sys_log_login` VALUES (67, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:06:35');
INSERT INTO `sys_log_login` VALUES (68, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:19:40');
INSERT INTO `sys_log_login` VALUES (69, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:21:08');
INSERT INTO `sys_log_login` VALUES (70, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:22:51');
INSERT INTO `sys_log_login` VALUES (71, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:23:07');
INSERT INTO `sys_log_login` VALUES (72, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:27:18');
INSERT INTO `sys_log_login` VALUES (73, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:29:10');
INSERT INTO `sys_log_login` VALUES (74, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:35:04');
INSERT INTO `sys_log_login` VALUES (75, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:41:32');
INSERT INTO `sys_log_login` VALUES (76, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:42:21');
INSERT INTO `sys_log_login` VALUES (77, '超级管理员-admin', '127.0.0.1', '2019-06-14 14:31:29');
INSERT INTO `sys_log_login` VALUES (78, '超级管理员-admin', '127.0.0.1', '2019-06-14 14:41:53');
INSERT INTO `sys_log_login` VALUES (79, '超级管理员-admin', '127.0.0.1', '2019-06-14 14:50:54');
INSERT INTO `sys_log_login` VALUES (80, '超级管理员-admin', '127.0.0.1', '2019-06-14 14:57:43');
INSERT INTO `sys_log_login` VALUES (81, '超级管理员-admin', '127.0.0.1', '2019-06-14 15:03:58');
INSERT INTO `sys_log_login` VALUES (82, '超级管理员-admin', '127.0.0.1', '2019-06-14 15:06:15');
INSERT INTO `sys_log_login` VALUES (83, '张三-zhangsan', '127.0.0.1', '2019-06-14 15:06:27');
INSERT INTO `sys_log_login` VALUES (84, '张三-zhangsan', '127.0.0.1', '2019-06-14 15:07:10');
INSERT INTO `sys_log_login` VALUES (85, '李四-ls', '127.0.0.1', '2019-06-14 15:07:33');
INSERT INTO `sys_log_login` VALUES (86, '王五-ww', '127.0.0.1', '2019-06-14 15:07:48');
INSERT INTO `sys_log_login` VALUES (87, '小明-xm', '127.0.0.1', '2019-06-14 15:07:58');
INSERT INTO `sys_log_login` VALUES (88, '小明-xm', '127.0.0.1', '2019-06-14 15:40:20');
INSERT INTO `sys_log_login` VALUES (89, '超级管理员-admin', '127.0.0.1', '2019-06-14 15:59:44');
INSERT INTO `sys_log_login` VALUES (90, '超级管理员-admin', '127.0.0.1', '2019-06-14 16:41:29');
INSERT INTO `sys_log_login` VALUES (91, '超级管理员-admin', '127.0.0.1', '2019-06-14 16:59:26');
INSERT INTO `sys_log_login` VALUES (92, '超级管理员-admin', '127.0.0.1', '2019-06-14 17:00:29');
INSERT INTO `sys_log_login` VALUES (93, '超级管理员-admin', '127.0.0.1', '2019-06-14 17:00:42');
INSERT INTO `sys_log_login` VALUES (94, '超级管理员-admin', '127.0.0.1', '2019-06-14 17:37:38');
INSERT INTO `sys_log_login` VALUES (95, '超级管理员-admin', '127.0.0.1', '2019-06-14 17:47:26');
INSERT INTO `sys_log_login` VALUES (96, '超级管理员-admin', '127.0.0.1', '2019-06-15 14:13:48');
INSERT INTO `sys_log_login` VALUES (97, '超级管理员-admin', '127.0.0.1', '2019-06-15 14:38:31');
INSERT INTO `sys_log_login` VALUES (98, '超级管理员-admin', '127.0.0.1', '2019-06-15 14:38:47');
INSERT INTO `sys_log_login` VALUES (99, '超级管理员-admin', '127.0.0.1', '2019-06-15 14:41:33');
INSERT INTO `sys_log_login` VALUES (100, '超级管理员-admin', '127.0.0.1', '2019-06-15 14:45:27');
INSERT INTO `sys_log_login` VALUES (101, '超级管理员-admin', '127.0.0.1', '2019-06-15 14:48:21');
INSERT INTO `sys_log_login` VALUES (102, '超级管理员-admin', '127.0.0.1', '2019-06-15 17:30:57');
INSERT INTO `sys_log_login` VALUES (103, '超级管理员-admin', '127.0.0.1', '2019-06-15 17:43:39');
INSERT INTO `sys_log_login` VALUES (104, '超级管理员-admin', '127.0.0.1', '2019-06-15 17:45:56');
INSERT INTO `sys_log_login` VALUES (105, '超级管理员-admin', '127.0.0.1', '2019-06-15 17:46:12');
INSERT INTO `sys_log_login` VALUES (106, '超级管理员-admin', '127.0.0.1', '2019-06-15 17:47:56');
INSERT INTO `sys_log_login` VALUES (107, '超级管理员-admin', '127.0.0.1', '2019-06-15 17:49:45');
INSERT INTO `sys_log_login` VALUES (108, '超级管理员-admin', '127.0.0.1', '2019-06-15 17:58:53');
INSERT INTO `sys_log_login` VALUES (109, '超级管理员-admin', '127.0.0.1', '2019-06-15 18:00:18');
INSERT INTO `sys_log_login` VALUES (110, '超级管理员-admin', '127.0.0.1', '2019-06-17 09:22:58');
INSERT INTO `sys_log_login` VALUES (111, '超级管理员-admin', '127.0.0.1', '2019-06-17 09:35:55');
INSERT INTO `sys_log_login` VALUES (112, '超级管理员-admin', '127.0.0.1', '2019-06-17 18:01:25');
INSERT INTO `sys_log_login` VALUES (113, '超级管理员-admin', '127.0.0.1', '2019-06-18 09:21:46');
INSERT INTO `sys_log_login` VALUES (114, '超级管理员-admin', '127.0.0.1', '2019-06-18 09:37:01');
INSERT INTO `sys_log_login` VALUES (115, '超级管理员-admin', '127.0.0.1', '2019-06-18 09:40:28');
INSERT INTO `sys_log_login` VALUES (116, '超级管理员-admin', '127.0.0.1', '2019-06-18 10:59:37');
INSERT INTO `sys_log_login` VALUES (118, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 15:02:43');
INSERT INTO `sys_log_login` VALUES (119, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 15:03:29');
INSERT INTO `sys_log_login` VALUES (121, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 15:05:24');
INSERT INTO `sys_log_login` VALUES (125, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 15:13:34');
INSERT INTO `sys_log_login` VALUES (126, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 15:14:10');
INSERT INTO `sys_log_login` VALUES (127, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 15:15:40');
INSERT INTO `sys_log_login` VALUES (128, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 15:16:04');
INSERT INTO `sys_log_login` VALUES (132, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 15:23:33');
INSERT INTO `sys_log_login` VALUES (133, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 15:25:02');
INSERT INTO `sys_log_login` VALUES (134, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 15:32:52');
INSERT INTO `sys_log_login` VALUES (135, '超级管理员-admin', '127.0.0.1', '2019-07-23 15:33:34');
INSERT INTO `sys_log_login` VALUES (136, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 15:34:03');
INSERT INTO `sys_log_login` VALUES (137, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 15:41:14');
INSERT INTO `sys_log_login` VALUES (138, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 15:41:27');
INSERT INTO `sys_log_login` VALUES (139, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 15:41:45');
INSERT INTO `sys_log_login` VALUES (140, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:21:05');
INSERT INTO `sys_log_login` VALUES (141, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:21:34');
INSERT INTO `sys_log_login` VALUES (142, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:23:28');
INSERT INTO `sys_log_login` VALUES (143, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:25:39');
INSERT INTO `sys_log_login` VALUES (144, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:26:20');
INSERT INTO `sys_log_login` VALUES (145, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:26:24');
INSERT INTO `sys_log_login` VALUES (146, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:26:29');
INSERT INTO `sys_log_login` VALUES (147, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:26:48');
INSERT INTO `sys_log_login` VALUES (148, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:29:11');
INSERT INTO `sys_log_login` VALUES (149, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:29:14');
INSERT INTO `sys_log_login` VALUES (150, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:29:15');
INSERT INTO `sys_log_login` VALUES (151, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:29:16');
INSERT INTO `sys_log_login` VALUES (152, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:29:16');
INSERT INTO `sys_log_login` VALUES (153, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:30:06');
INSERT INTO `sys_log_login` VALUES (154, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:32:32');
INSERT INTO `sys_log_login` VALUES (155, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:37:43');
INSERT INTO `sys_log_login` VALUES (156, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:39:01');
INSERT INTO `sys_log_login` VALUES (157, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:39:03');
INSERT INTO `sys_log_login` VALUES (158, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:39:04');
INSERT INTO `sys_log_login` VALUES (159, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:39:04');
INSERT INTO `sys_log_login` VALUES (160, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:39:05');
INSERT INTO `sys_log_login` VALUES (161, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:39:05');
INSERT INTO `sys_log_login` VALUES (162, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:39:06');
INSERT INTO `sys_log_login` VALUES (163, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:39:06');
INSERT INTO `sys_log_login` VALUES (164, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:40:02');
INSERT INTO `sys_log_login` VALUES (165, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:40:17');
INSERT INTO `sys_log_login` VALUES (166, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:41:03');
INSERT INTO `sys_log_login` VALUES (167, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:41:10');
INSERT INTO `sys_log_login` VALUES (168, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:41:43');
INSERT INTO `sys_log_login` VALUES (169, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:46:15');
INSERT INTO `sys_log_login` VALUES (170, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:46:15');
INSERT INTO `sys_log_login` VALUES (171, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:46:16');
INSERT INTO `sys_log_login` VALUES (172, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:46:16');
INSERT INTO `sys_log_login` VALUES (173, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:46:17');
INSERT INTO `sys_log_login` VALUES (174, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:50:46');
INSERT INTO `sys_log_login` VALUES (175, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:51:05');
INSERT INTO `sys_log_login` VALUES (176, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:52:03');
INSERT INTO `sys_log_login` VALUES (177, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:53:59');
INSERT INTO `sys_log_login` VALUES (178, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:54:05');
INSERT INTO `sys_log_login` VALUES (179, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:54:27');
INSERT INTO `sys_log_login` VALUES (180, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:56:21');
INSERT INTO `sys_log_login` VALUES (181, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:56:47');
INSERT INTO `sys_log_login` VALUES (182, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:57:45');
INSERT INTO `sys_log_login` VALUES (183, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:57:57');
INSERT INTO `sys_log_login` VALUES (184, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:58:12');
INSERT INTO `sys_log_login` VALUES (185, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:58:41');
INSERT INTO `sys_log_login` VALUES (186, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:58:59');
INSERT INTO `sys_log_login` VALUES (187, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 17:59:43');
INSERT INTO `sys_log_login` VALUES (188, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 18:00:18');
INSERT INTO `sys_log_login` VALUES (189, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 18:01:13');
INSERT INTO `sys_log_login` VALUES (190, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 18:03:02');
INSERT INTO `sys_log_login` VALUES (191, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-23 18:03:19');
INSERT INTO `sys_log_login` VALUES (192, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 08:56:49');
INSERT INTO `sys_log_login` VALUES (193, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 10:37:51');
INSERT INTO `sys_log_login` VALUES (195, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 10:39:37');
INSERT INTO `sys_log_login` VALUES (196, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 10:44:16');
INSERT INTO `sys_log_login` VALUES (197, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 10:45:52');
INSERT INTO `sys_log_login` VALUES (198, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 10:52:24');
INSERT INTO `sys_log_login` VALUES (199, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 14:36:22');
INSERT INTO `sys_log_login` VALUES (200, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 14:36:44');
INSERT INTO `sys_log_login` VALUES (201, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 14:37:12');
INSERT INTO `sys_log_login` VALUES (202, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 14:37:18');
INSERT INTO `sys_log_login` VALUES (203, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 14:38:06');
INSERT INTO `sys_log_login` VALUES (204, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 14:41:11');
INSERT INTO `sys_log_login` VALUES (205, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 14:42:38');
INSERT INTO `sys_log_login` VALUES (206, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 14:48:43');
INSERT INTO `sys_log_login` VALUES (207, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 14:53:01');
INSERT INTO `sys_log_login` VALUES (208, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 14:54:27');
INSERT INTO `sys_log_login` VALUES (209, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 14:56:46');
INSERT INTO `sys_log_login` VALUES (210, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 14:57:09');
INSERT INTO `sys_log_login` VALUES (211, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 14:57:23');
INSERT INTO `sys_log_login` VALUES (212, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 14:57:40');
INSERT INTO `sys_log_login` VALUES (213, '张三-zhangsan', '0:0:0:0:0:0:0:1', '2019-07-24 14:59:21');
INSERT INTO `sys_log_login` VALUES (214, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 15:00:32');
INSERT INTO `sys_log_login` VALUES (215, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 15:08:38');
INSERT INTO `sys_log_login` VALUES (216, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 15:23:19');
INSERT INTO `sys_log_login` VALUES (217, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 15:24:05');
INSERT INTO `sys_log_login` VALUES (218, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 15:28:34');
INSERT INTO `sys_log_login` VALUES (219, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 15:28:45');
INSERT INTO `sys_log_login` VALUES (220, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 15:29:19');
INSERT INTO `sys_log_login` VALUES (221, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 15:31:31');
INSERT INTO `sys_log_login` VALUES (222, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 15:31:59');
INSERT INTO `sys_log_login` VALUES (223, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-24 15:36:59');
INSERT INTO `sys_log_login` VALUES (224, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 09:04:48');
INSERT INTO `sys_log_login` VALUES (225, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 09:17:33');
INSERT INTO `sys_log_login` VALUES (226, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 14:04:19');
INSERT INTO `sys_log_login` VALUES (227, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 14:05:32');
INSERT INTO `sys_log_login` VALUES (228, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 14:45:00');
INSERT INTO `sys_log_login` VALUES (229, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 14:47:48');
INSERT INTO `sys_log_login` VALUES (230, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 14:48:28');
INSERT INTO `sys_log_login` VALUES (231, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 14:55:25');
INSERT INTO `sys_log_login` VALUES (232, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 14:59:57');
INSERT INTO `sys_log_login` VALUES (233, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:05:13');
INSERT INTO `sys_log_login` VALUES (234, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:05:56');
INSERT INTO `sys_log_login` VALUES (235, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:07:23');
INSERT INTO `sys_log_login` VALUES (236, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:10:44');
INSERT INTO `sys_log_login` VALUES (237, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:11:51');
INSERT INTO `sys_log_login` VALUES (238, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:14:17');
INSERT INTO `sys_log_login` VALUES (239, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:16:47');
INSERT INTO `sys_log_login` VALUES (240, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:17:46');
INSERT INTO `sys_log_login` VALUES (241, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:18:23');
INSERT INTO `sys_log_login` VALUES (242, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:30:17');
INSERT INTO `sys_log_login` VALUES (243, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:33:43');
INSERT INTO `sys_log_login` VALUES (244, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:35:08');
INSERT INTO `sys_log_login` VALUES (245, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:36:02');
INSERT INTO `sys_log_login` VALUES (246, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:45:16');
INSERT INTO `sys_log_login` VALUES (247, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:45:26');
INSERT INTO `sys_log_login` VALUES (248, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:48:06');
INSERT INTO `sys_log_login` VALUES (249, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:48:18');
INSERT INTO `sys_log_login` VALUES (250, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:50:58');
INSERT INTO `sys_log_login` VALUES (251, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:52:21');
INSERT INTO `sys_log_login` VALUES (252, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-25 15:55:35');
INSERT INTO `sys_log_login` VALUES (253, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 08:58:39');
INSERT INTO `sys_log_login` VALUES (254, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 09:06:55');
INSERT INTO `sys_log_login` VALUES (255, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 09:08:59');
INSERT INTO `sys_log_login` VALUES (256, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 11:21:35');
INSERT INTO `sys_log_login` VALUES (257, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 11:22:09');
INSERT INTO `sys_log_login` VALUES (258, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 11:22:34');
INSERT INTO `sys_log_login` VALUES (259, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 11:24:36');
INSERT INTO `sys_log_login` VALUES (260, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 11:33:35');
INSERT INTO `sys_log_login` VALUES (261, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 12:23:22');
INSERT INTO `sys_log_login` VALUES (262, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 16:35:31');
INSERT INTO `sys_log_login` VALUES (263, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 16:36:44');
INSERT INTO `sys_log_login` VALUES (264, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 16:37:29');
INSERT INTO `sys_log_login` VALUES (265, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 16:37:44');
INSERT INTO `sys_log_login` VALUES (266, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 16:39:56');
INSERT INTO `sys_log_login` VALUES (267, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 16:40:03');
INSERT INTO `sys_log_login` VALUES (268, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 16:41:34');
INSERT INTO `sys_log_login` VALUES (269, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 16:42:01');
INSERT INTO `sys_log_login` VALUES (270, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 16:42:08');
INSERT INTO `sys_log_login` VALUES (271, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 16:43:31');
INSERT INTO `sys_log_login` VALUES (272, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 16:44:57');
INSERT INTO `sys_log_login` VALUES (273, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 16:46:15');
INSERT INTO `sys_log_login` VALUES (274, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 16:54:48');
INSERT INTO `sys_log_login` VALUES (275, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 16:59:24');
INSERT INTO `sys_log_login` VALUES (276, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 16:59:56');
INSERT INTO `sys_log_login` VALUES (277, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 17:00:02');
INSERT INTO `sys_log_login` VALUES (278, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 17:01:05');
INSERT INTO `sys_log_login` VALUES (279, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 17:01:17');
INSERT INTO `sys_log_login` VALUES (280, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 17:10:41');
INSERT INTO `sys_log_login` VALUES (281, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 17:11:39');
INSERT INTO `sys_log_login` VALUES (282, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 17:14:01');
INSERT INTO `sys_log_login` VALUES (283, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 17:14:55');
INSERT INTO `sys_log_login` VALUES (284, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 17:15:06');
INSERT INTO `sys_log_login` VALUES (285, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 18:16:09');
INSERT INTO `sys_log_login` VALUES (286, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 18:17:12');
INSERT INTO `sys_log_login` VALUES (287, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 18:18:00');
INSERT INTO `sys_log_login` VALUES (288, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 18:28:13');
INSERT INTO `sys_log_login` VALUES (289, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 18:29:36');
INSERT INTO `sys_log_login` VALUES (290, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 18:29:58');
INSERT INTO `sys_log_login` VALUES (291, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 18:30:28');
INSERT INTO `sys_log_login` VALUES (292, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 18:31:52');
INSERT INTO `sys_log_login` VALUES (293, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 18:32:15');
INSERT INTO `sys_log_login` VALUES (294, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 18:45:32');
INSERT INTO `sys_log_login` VALUES (295, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-27 18:46:00');
INSERT INTO `sys_log_login` VALUES (296, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 08:49:23');
INSERT INTO `sys_log_login` VALUES (297, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 11:10:14');
INSERT INTO `sys_log_login` VALUES (298, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 15:34:12');
INSERT INTO `sys_log_login` VALUES (299, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 15:34:52');
INSERT INTO `sys_log_login` VALUES (300, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 16:16:02');
INSERT INTO `sys_log_login` VALUES (301, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 16:36:06');
INSERT INTO `sys_log_login` VALUES (302, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 16:36:39');
INSERT INTO `sys_log_login` VALUES (303, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 16:37:17');
INSERT INTO `sys_log_login` VALUES (304, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 16:37:29');
INSERT INTO `sys_log_login` VALUES (305, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 16:37:46');
INSERT INTO `sys_log_login` VALUES (306, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 16:45:56');
INSERT INTO `sys_log_login` VALUES (307, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 16:54:27');
INSERT INTO `sys_log_login` VALUES (308, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 16:56:05');
INSERT INTO `sys_log_login` VALUES (309, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 17:55:54');
INSERT INTO `sys_log_login` VALUES (310, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 17:56:36');
INSERT INTO `sys_log_login` VALUES (311, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 17:58:12');
INSERT INTO `sys_log_login` VALUES (312, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 18:00:38');
INSERT INTO `sys_log_login` VALUES (313, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 18:03:42');
INSERT INTO `sys_log_login` VALUES (314, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 18:07:34');
INSERT INTO `sys_log_login` VALUES (315, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 18:11:52');
INSERT INTO `sys_log_login` VALUES (316, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 18:12:59');
INSERT INTO `sys_log_login` VALUES (317, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 18:14:15');
INSERT INTO `sys_log_login` VALUES (318, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 18:16:04');
INSERT INTO `sys_log_login` VALUES (319, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 18:16:20');
INSERT INTO `sys_log_login` VALUES (320, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 18:18:40');
INSERT INTO `sys_log_login` VALUES (321, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-28 18:20:24');
INSERT INTO `sys_log_login` VALUES (322, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 08:52:06');
INSERT INTO `sys_log_login` VALUES (323, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 19:58:53');
INSERT INTO `sys_log_login` VALUES (324, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 19:59:03');
INSERT INTO `sys_log_login` VALUES (325, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:01:16');
INSERT INTO `sys_log_login` VALUES (326, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:01:22');
INSERT INTO `sys_log_login` VALUES (327, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:01:57');
INSERT INTO `sys_log_login` VALUES (328, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:03:05');
INSERT INTO `sys_log_login` VALUES (329, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:04:57');
INSERT INTO `sys_log_login` VALUES (330, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:06:38');
INSERT INTO `sys_log_login` VALUES (331, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:07:58');
INSERT INTO `sys_log_login` VALUES (332, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:08:04');
INSERT INTO `sys_log_login` VALUES (333, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:12:00');
INSERT INTO `sys_log_login` VALUES (334, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:12:10');
INSERT INTO `sys_log_login` VALUES (335, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:15:17');
INSERT INTO `sys_log_login` VALUES (336, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:15:35');
INSERT INTO `sys_log_login` VALUES (337, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:16:16');
INSERT INTO `sys_log_login` VALUES (338, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:16:21');
INSERT INTO `sys_log_login` VALUES (339, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:16:44');
INSERT INTO `sys_log_login` VALUES (340, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:17:14');
INSERT INTO `sys_log_login` VALUES (341, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:18:08');
INSERT INTO `sys_log_login` VALUES (342, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:19:59');
INSERT INTO `sys_log_login` VALUES (343, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:22:39');
INSERT INTO `sys_log_login` VALUES (344, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:22:47');
INSERT INTO `sys_log_login` VALUES (345, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:27:35');
INSERT INTO `sys_log_login` VALUES (346, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:32:01');
INSERT INTO `sys_log_login` VALUES (347, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:33:23');
INSERT INTO `sys_log_login` VALUES (348, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:36:56');
INSERT INTO `sys_log_login` VALUES (349, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:39:00');
INSERT INTO `sys_log_login` VALUES (350, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:40:19');
INSERT INTO `sys_log_login` VALUES (351, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:41:11');
INSERT INTO `sys_log_login` VALUES (352, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:43:19');
INSERT INTO `sys_log_login` VALUES (353, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:46:20');
INSERT INTO `sys_log_login` VALUES (354, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-29 20:46:32');
INSERT INTO `sys_log_login` VALUES (355, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-30 09:04:47');
INSERT INTO `sys_log_login` VALUES (356, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-30 09:06:07');
INSERT INTO `sys_log_login` VALUES (357, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-30 09:08:18');
INSERT INTO `sys_log_login` VALUES (358, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-30 13:12:04');
INSERT INTO `sys_log_login` VALUES (359, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-07-30 16:54:26');
INSERT INTO `sys_log_login` VALUES (360, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-08-01 10:42:12');
INSERT INTO `sys_log_login` VALUES (361, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-08-01 10:52:02');
INSERT INTO `sys_log_login` VALUES (362, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-08-01 10:53:11');
INSERT INTO `sys_log_login` VALUES (363, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-08-01 10:56:26');
INSERT INTO `sys_log_login` VALUES (364, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-08-01 12:49:34');
INSERT INTO `sys_log_login` VALUES (365, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-08-01 12:51:29');
INSERT INTO `sys_log_login` VALUES (366, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-08-01 12:51:37');
INSERT INTO `sys_log_login` VALUES (367, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-08-01 12:51:57');
INSERT INTO `sys_log_login` VALUES (368, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-08-01 12:52:50');
INSERT INTO `sys_log_login` VALUES (369, '超级管理员-admin', '127.0.0.1', '2019-08-01 14:00:25');
INSERT INTO `sys_log_login` VALUES (370, '超级管理员-admin', '127.0.0.1', '2019-08-01 14:01:28');
INSERT INTO `sys_log_login` VALUES (371, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-08-01 15:49:26');
INSERT INTO `sys_log_login` VALUES (372, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-08-19 19:23:49');
INSERT INTO `sys_log_login` VALUES (373, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-08-19 19:39:56');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `spread` int(255) NULL DEFAULT NULL COMMENT '0不展开1展开',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `available` int(255) NULL DEFAULT NULL COMMENT '0不可用1可用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '汽车出租系统', '', 1, '', '&#xe68e;', 1);
INSERT INTO `sys_menu` VALUES (2, 1, '基础管理', '', 1, '', '&#xe653;', 1);
INSERT INTO `sys_menu` VALUES (3, 1, '业务管理', '', 1, '', '&#xe663;', 1);
INSERT INTO `sys_menu` VALUES (4, 1, '系统管理', '', 0, '', '&#xe716;', 1);
INSERT INTO `sys_menu` VALUES (5, 1, '统计分析', NULL, 0, NULL, '&#xe629;', 1);
INSERT INTO `sys_menu` VALUES (6, 2, '客户管理', '../bus/toCustomerManager.action', 0, '', '&#xe770;', 1);
INSERT INTO `sys_menu` VALUES (7, 2, '车辆管理', '../bus/toCarManager.action', 0, '', '&#xe657;', 1);
INSERT INTO `sys_menu` VALUES (8, 3, '汽车出租', '../bus/toRentCarManager.action', 0, '', '&#xe65b;', 1);
INSERT INTO `sys_menu` VALUES (9, 3, '出租单管理', '../bus/toRentManager.action', 0, '', '&#xe6b2;', 1);
INSERT INTO `sys_menu` VALUES (10, 3, '汽车入库', '../bus/toCheckCarManager.action', 0, '', '&#xe65a;', 1);
INSERT INTO `sys_menu` VALUES (11, 3, '检查单管理', '../bus/toCheckManager.action', 0, '', '&#xe705;', 1);
INSERT INTO `sys_menu` VALUES (12, 4, '菜单管理', '../sys/toMenuManager.action', 0, NULL, '&#xe60f;', 1);
INSERT INTO `sys_menu` VALUES (13, 4, '角色管理', '../sys/toRoleManager.action', 0, '', '&#xe66f;', 1);
INSERT INTO `sys_menu` VALUES (14, 4, '用户管理', '../sys/toUserManager.action', 0, '', '&#xe770;', 1);
INSERT INTO `sys_menu` VALUES (15, 4, '日志管理', '../sys/toLogInfoManager.action', 0, '', '&#xe655;', 1);
INSERT INTO `sys_menu` VALUES (16, 4, '公告管理', '../sys/toNewsManager.action', 0, '', '&#xe645;', 1);
INSERT INTO `sys_menu` VALUES (17, 4, '数据源监控', '../druid/*', 0, '', '&#xe857;', 1);
INSERT INTO `sys_menu` VALUES (18, 5, '客户地区统计', '../stat/toCustomerAreaStat.action', 0, '', '&#xe63c;', 1);
INSERT INTO `sys_menu` VALUES (19, 5, '公司年度月份销售额', '../stat/toCompanyYearGradeStat.action', 0, '', '&#xe62c;', 1);
INSERT INTO `sys_menu` VALUES (20, 5, '业务员年度销售额', '../stat/toOpernameYearGradeStat.action', 0, '', '&#xe62d;', 1);

-- ----------------------------
-- Table structure for sys_news
-- ----------------------------
DROP TABLE IF EXISTS `sys_news`;
CREATE TABLE `sys_news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_news
-- ----------------------------
INSERT INTO `sys_news` VALUES (5, '关系系统升级公告', 'nice', '2018-06-14 18:05:22', '习大大');
INSERT INTO `sys_news` VALUES (6, '新闻联播', 'this&nbsp; is my showtime', '2019-03-19 14:10:11', '超级管理员');
INSERT INTO `sys_news` VALUES (7, '叙利亚', '新闻联播', '2019-06-11 11:30:15', '超级管理员');
INSERT INTO `sys_news` VALUES (8, '美方有所行动', 'dawwqd', '2019-07-23 17:21:47', '超级管理员');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roledesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `available` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', '拥有所有菜单权限', 1);
INSERT INTO `sys_role` VALUES (2, '业务管理员', '拥有所以业务菜单', 1);
INSERT INTO `sys_role` VALUES (3, '系统管理员', '管理系统', 1);
INSERT INTO `sys_role` VALUES (4, '数据统计管理员', '数据统计管理员', 1);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `rid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`rid`, `mid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 8);
INSERT INTO `sys_role_menu` VALUES (1, 9);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (1, 11);
INSERT INTO `sys_role_menu` VALUES (1, 12);
INSERT INTO `sys_role_menu` VALUES (1, 13);
INSERT INTO `sys_role_menu` VALUES (1, 14);
INSERT INTO `sys_role_menu` VALUES (1, 15);
INSERT INTO `sys_role_menu` VALUES (1, 16);
INSERT INTO `sys_role_menu` VALUES (1, 17);
INSERT INTO `sys_role_menu` VALUES (1, 18);
INSERT INTO `sys_role_menu` VALUES (1, 19);
INSERT INTO `sys_role_menu` VALUES (1, 20);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 6);
INSERT INTO `sys_role_menu` VALUES (2, 7);
INSERT INTO `sys_role_menu` VALUES (2, 8);
INSERT INTO `sys_role_menu` VALUES (2, 9);
INSERT INTO `sys_role_menu` VALUES (2, 10);
INSERT INTO `sys_role_menu` VALUES (2, 11);
INSERT INTO `sys_role_menu` VALUES (3, 1);
INSERT INTO `sys_role_menu` VALUES (3, 4);
INSERT INTO `sys_role_menu` VALUES (3, 12);
INSERT INTO `sys_role_menu` VALUES (3, 13);
INSERT INTO `sys_role_menu` VALUES (3, 14);
INSERT INTO `sys_role_menu` VALUES (3, 15);
INSERT INTO `sys_role_menu` VALUES (3, 16);
INSERT INTO `sys_role_menu` VALUES (3, 17);
INSERT INTO `sys_role_menu` VALUES (4, 1);
INSERT INTO `sys_role_menu` VALUES (4, 5);
INSERT INTO `sys_role_menu` VALUES (4, 18);
INSERT INTO `sys_role_menu` VALUES (4, 19);
INSERT INTO `sys_role_menu` VALUES (4, 20);

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`uid`, `rid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (3, 2);
INSERT INTO `sys_role_user` VALUES (4, 3);
INSERT INTO `sys_role_user` VALUES (5, 4);
INSERT INTO `sys_role_user` VALUES (6, 2);
INSERT INTO `sys_role_user` VALUES (6, 3);
INSERT INTO `sys_role_user` VALUES (6, 4);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(255) NULL DEFAULT NULL COMMENT '0女1男',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(255) NULL DEFAULT 2 COMMENT '1，超级管理员,2，系统用户',
  `available` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '4313341334413', '超级管理员', 1, '武汉', '134441331311', 'e10adc3949ba59abbe56e057f20f883e', 'CEO', 1, 1);
INSERT INTO `sys_user` VALUES (3, 'zhangsan', '3413334134131131', '张三', 1, '武汉', '134131313111', 'e10adc3949ba59abbe56e057f20f883e', 'BA', 2, 1);
INSERT INTO `sys_user` VALUES (4, 'ls', '43311341311314341', '李四', 1, '武汉', '1341314113131', 'e10adc3949ba59abbe56e057f20f883e', '扫地的', 2, 1);
INSERT INTO `sys_user` VALUES (5, 'ww', '4313133131331312', '王五', 1, '武汉', '13413131131', 'e10adc3949ba59abbe56e057f20f883e', '领导', 2, 1);
INSERT INTO `sys_user` VALUES (6, 'xm', '45113141331131131', '小明', 1, 'sda', '13451333131', 'e10adc3949ba59abbe56e057f20f883e', '啊啊', 0, 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userpwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zhangsan', '639ffb0cbcca39d4fff8348844b1974e', '男', '武汉');
INSERT INTO `user` VALUES (2, 'lisi', '0d303fa8e2e2ca98555f23a731a58dd9', '女', '北京');
INSERT INTO `user` VALUES (3, 'wangwu', '473c41db9af5cc0d90e7adfd2b6d9180', '女', '成都');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `userid` int(11) NULL DEFAULT NULL,
  `roleid` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1);
INSERT INTO `user_role` VALUES (2, 2);
INSERT INTO `user_role` VALUES (3, 3);

SET FOREIGN_KEY_CHECKS = 1;
