/*
Navicat MySQL Data Transfer

Source Server         : dcwm-front
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : dcwm-front

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-08-17 17:45:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_class
-- ----------------------------
DROP TABLE IF EXISTS `tb_class`;
CREATE TABLE `tb_class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `class_img` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `store_id` int(10) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_class
-- ----------------------------
INSERT INTO `tb_class` VALUES ('1', '热销', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2097613397,2305730620&fm=27&gp=0.jpg', '0000000001');
INSERT INTO `tb_class` VALUES ('2', '美', null, '0000000001');
INSERT INTO `tb_class` VALUES ('3', '爱', null, '0000000001');
INSERT INTO `tb_class` VALUES ('4', '味', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2471433220,2373237686&fm=26&gp=0.jpg', '0000000001');
INSERT INTO `tb_class` VALUES ('5', '鲜', null, '0000000001');
INSERT INTO `tb_class` VALUES ('6', '大', null, '0000000002');

-- ----------------------------
-- Table structure for tb_product
-- ----------------------------
DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `product_img` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `dec` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `count` int(10) unsigned zerofill DEFAULT NULL,
  `totalCount` int(10) unsigned zerofill DEFAULT NULL,
  `class_id` int(10) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_product
-- ----------------------------
INSERT INTO `tb_product` VALUES ('1', '鱼香肉丝', 'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=763752638,336997567&fm=179&app=42&f=JPEG?w=121&h=140', '肥瘦分层五花肉，青红椒爆炒，美味停不了。配炒饭吃得香。', '12', '0000000100', '0000009999', '0000000001');
INSERT INTO `tb_product` VALUES ('2', '番茄炒蛋', 'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1156016284,61617350&fm=179&app=42&f=JPEG?w=121&h=140', '酸甜浓郁的汤汁，一口下去，嗯，就是它了。配炒饭吃得香。', '8', '0000000044', '0000009999', '0000000001');
INSERT INTO `tb_product` VALUES ('3', '麻婆豆腐', 'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3310484668,2985889182&fm=58&bpow=1080&bpoh=974', '上等白豆腐，麻、辣、鲜、香。配炒饭吃得香', '10', '0000000022', '0000009999', '0000000001');
INSERT INTO `tb_product` VALUES ('4', '农家小炒肉', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2063710215,3009776172&fm=58&bpow=1024&bpoh=683', '肥瘦分层五花肉，青红椒爆炒，美味停不了。配炒饭吃得香。', '8', '0000000123', '0000009999', '0000000002');
INSERT INTO `tb_product` VALUES ('5', '宫保鸡丁', 'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=417185989,868160062&fm=58&bpow=1024&bpoh=683', '辣而不猛，肉质滑脆，一口不过瘾。配炒饭吃得香。', '5', '0000000023', '0000009999', '0000000003');
INSERT INTO `tb_product` VALUES ('6', '家常干烹鱼块', 'https://ss0.baidu.com/73x1bjeh1BF3odCf/it/u=167521645,3488581090&fm=85&s=8D9008D4561137D410BAFA3C0300B065', '姜葱油爆，咸鲜适口，微辣带劲。配炒饭吃得香。', '9', '0000000045', '0000009999', '0000000004');
INSERT INTO `tb_product` VALUES ('7', '芽菜碎米鸡', 'https://ss0.baidu.com/73F1bjeh1BF3odCf/it/u=580142106,961422506&fm=85&s=DF50048B46D33DE566BAC9240300B003', '鲜辣芽菜融入细碎肉丁，佐饭上品。配炒饭吃得香。', '4', '0000000023', '0000000999', '0000000005');
INSERT INTO `tb_product` VALUES ('8', '酸辣鸡胗', 'https://ss0.baidu.com/73x1bjeh1BF3odCf/it/u=619493428,587503414&fm=85&s=D1105F9010C57AE4062AA1260300B063', '热辣酸爽，鸡胗香脆，回味无穷。吃一口让你想起前女友。配炒饭吃得香。', '7', '0000000432', '0000009999', '0000000006');

-- ----------------------------
-- Table structure for tb_store
-- ----------------------------
DROP TABLE IF EXISTS `tb_store`;
CREATE TABLE `tb_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `store_img` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_store
-- ----------------------------
INSERT INTO `tb_store` VALUES ('1', '虾劲道', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=109222315,1239005138&fm=27&gp=0.jpg', '00:00:00', '22:00:00');

-- ----------------------------
-- Table structure for tb_users
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `user_img` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `attention` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `buy_num` int(10) unsigned zerofill DEFAULT NULL,
  `lastLogin` datetime NOT NULL,
  `openid` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `session_id` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
