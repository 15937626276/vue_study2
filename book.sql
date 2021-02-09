/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 09/02/2021 19:18:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `publish` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pages` int(0) NULL DEFAULT NULL,
  `price` decimal(10, 1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '解忧杂货店', '东野圭吾', '电子工业出版社', 102, 27.3);
INSERT INTO `book` VALUES (2, '追风筝的人', '卡勒德·胡赛尼', '上海人民出版社', 230, 33.5);
INSERT INTO `book` VALUES (3, '人间失格', '太宰治', '作家出版社', 150, 17.3);
INSERT INTO `book` VALUES (4, '这就是二十四节气', '高春香', '电子工业出版社', 220, 59.0);
INSERT INTO `book` VALUES (5, '白夜行', '东野圭吾', '南海出版公司', 300, 27.3);
INSERT INTO `book` VALUES (6, '摆渡人', '克莱儿·麦克福尔', '百花洲文艺出版社', 225, 22.8);
INSERT INTO `book` VALUES (7, '暖暖心绘本', '米拦弗特毕', '湖南少儿出版社', 168, 131.6);
INSERT INTO `book` VALUES (8, '天才在左疯子在右', '高铭', '北京联合出版公司', 330, 27.5);
INSERT INTO `book` VALUES (9, '我们仨', '杨绛', '生活。读书', 89, 17.2);
INSERT INTO `book` VALUES (10, '活着', '余华', '作家出版社', 100, 100.0);
INSERT INTO `book` VALUES (11, '水浒传', '施耐庵', '三联出版社', 300, 50.0);
INSERT INTO `book` VALUES (12, '三国演义', '罗贯中', '三联出版社', 300, 50.0);
INSERT INTO `book` VALUES (13, '红楼梦', '曹雪芹', '三联出版社', 300, 50.0);
INSERT INTO `book` VALUES (14, '西游记', '吴承恩', '三联出版社', 300, 60.0);
INSERT INTO `book` VALUES (15, 'ceshi', '张三', NULL, NULL, NULL);
INSERT INTO `book` VALUES (16, 'ceshi', '张三', NULL, NULL, NULL);
INSERT INTO `book` VALUES (17, 'springboot', 'zahngsan', NULL, NULL, NULL);
INSERT INTO `book` VALUES (18, 'aa', 'aaa', NULL, NULL, NULL);
INSERT INTO `book` VALUES (19, 'aaaa', 'aaa', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
