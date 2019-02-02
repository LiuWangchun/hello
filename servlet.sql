/*
 Navicat Premium Data Transfer

 Source Server         : mytest
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : servlet

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 02/02/2019 17:12:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(3) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '李娜', '女', 45, '上海', '435987580', 'lina@qq.com', '李娜', '242535');
INSERT INTO `user` VALUES (2, '吴京', '男', 47, '北京', '9065322', 'wujing@163.com', '吴京', '7990hgbn');
INSERT INTO `user` VALUES (4, '王源', '男', 19, '陕西', '9095673', 'wangyuan@126.com', '王源', '879679ghfd');
INSERT INTO `user` VALUES (5, '孙飞飞', '女', 34, '北京', '3242566', 'sunfei@163.com', '孙飞飞', 'hgf6h556');
INSERT INTO `user` VALUES (6, '徐良杰', '女', 36, '上海', '732543265', 'liangjie@qq.com', '徐良杰', 'vsg34f222');
INSERT INTO `user` VALUES (7, '侯建国', '男', 56, '陕西', '58824399', 'jianguo@126.com', NULL, '6787692gg');
INSERT INTO `user` VALUES (8, '李小文', '男', 78, '北京', '8976943221', 'xiaowen@qq.com', NULL, '465gq2tr53');
INSERT INTO `user` VALUES (9, '傅瑾', '女', 60, '北京', '634155465', 'fujin@126.com', NULL, 'thret547');
INSERT INTO `user` VALUES (10, '韩雅玲', '女', 74, '上海', '4353255', 'yaling@sina.com', NULL, '5365770jh');
INSERT INTO `user` VALUES (11, '李德毅', '男', 89, '北京', '68706433', 'deyi@163.com', NULL, '47589frt4');
INSERT INTO `user` VALUES (12, '王德民', '男', 65, '上海', '6587568', 'deming@qq.com', NULL, 'hj768jrt65');
INSERT INTO `user` VALUES (13, '谢和平', '男', 23, '陕西', '94211135', 'heping@sina.com', NULL, 'jkh879897');
INSERT INTO `user` VALUES (14, '孙家栋', '男', 25, '北京', '3435436', 'jiadong@qq.com', NULL, 'fdh5447');
INSERT INTO `user` VALUES (15, '何凤生', '女', 30, '北京', '76786212', 'fengsheng@126.com', NULL, '89kerht43');

SET FOREIGN_KEY_CHECKS = 1;
