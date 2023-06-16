/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : db1

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 16/06/2023 09:17:00
*/

drop database if exists db1;
create database if not exists db1;
use db1;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for json_config
-- ----------------------------
DROP TABLE IF EXISTS `json_config`;
CREATE TABLE `json_config`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `json_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `json_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of json_config
-- ----------------------------
INSERT INTO `json_config` VALUES (1, 't2dm.json', '{\r\n  \"job\": {\r\n    \"content\": [\r\n      {\r\n        \"reader\": {\r\n          \"name\": \"mysqlreader\",\r\n          \"parameter\": {\r\n            \"username\": \"root\",\r\n            \"password\": \"a12345\",\r\n            \"column\": [\r\n              \"dt\",\r\n              \"f1\",\r\n              \"f2\",\r\n              \"f3\",\r\n              \"f4\",\r\n              \"f5\",\r\n              \"f6\",\r\n              \"f7\",\r\n              \"f8\",\r\n              \"ts\"\r\n            ],\r\n            \"connection\": [\r\n              {\r\n                \"table\": [\r\n                  \"stb1\"\r\n                ],\r\n                \"jdbcUrl\": [\r\n                  \"jdbc:mysql://127.0.0.1:3306/db1?useSSL=false&useUnicode=true&charset=UTF-8&generateSimpleParameterMetadata=true\"\r\n                ]\r\n              }\r\n            ]\r\n          }\r\n        },\r\n        \"writer\": {\r\n          \"name\": \"mysqlwriter\",\r\n          \"parameter\": {\r\n            \"connection\": [\r\n              {\r\n                \"table\": [\r\n                  \"stb2\"\r\n                ],\r\n                \"jdbcUrl\":  \"jdbc:mysql://127.0.0.1:3306/db2?useSSL=false&useUnicode=true&charset=UTF-8&generateSimpleParameterMetadata=true\"\r\n              }\r\n            ],\r\n            \"writeMode\": \"insert\",\r\n            \"username\": \"root\",\r\n            \"password\": \"a12345\",\r\n            \"table\": \"stb2\",\r\n            \"column\": [\r\n              \"dt\",\r\n              \"f1\",\r\n              \"f2\",\r\n              \"f3\",\r\n              \"f4\",\r\n              \"f5\",\r\n              \"f6\",\r\n              \"f7\",\r\n              \"f8\",\r\n              \"ts\"\r\n            ]\r\n          }\r\n        }\r\n      }\r\n    ],\r\n    \"setting\": {\r\n      \"speed\": {\r\n        \"channel\": 1\r\n      }\r\n    }\r\n  }\r\n}');

-- ----------------------------
-- Table structure for stb1
-- ----------------------------
DROP TABLE IF EXISTS `stb1`;
CREATE TABLE `stb1`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `f1` tinyint NULL DEFAULT NULL,
  `f2` smallint NULL DEFAULT NULL,
  `f3` int NULL DEFAULT NULL,
  `f4` bigint NULL DEFAULT NULL,
  `f5` float NULL DEFAULT NULL,
  `f6` double NULL DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL,
  `dt` datetime NULL DEFAULT NULL,
  `f7` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `f8` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stb1
-- ----------------------------
INSERT INTO `stb1` VALUES (1, 1, 51, 39, 51, 0.698349, 0.08638758178334982, '2023-06-15 15:37:56', '2023-06-15 15:37:56', '中国北京朝阳望京abc', '中国北京朝阳望京adc');
INSERT INTO `stb1` VALUES (2, 2, 71, 75, 76, 0.703967, 0.08783530026653819, '2023-06-15 15:37:56', '2023-06-15 15:37:56', '中国北京朝阳望京abc', '中国北京朝阳望京adc');
INSERT INTO `stb1` VALUES (3, 3, 65, 84, 20, 0.411361, 0.846591804616255, '2023-06-15 15:37:56', '2023-06-15 15:37:56', '中国北京朝阳望京abc', '中国北京朝阳望京adc');
INSERT INTO `stb1` VALUES (4, 4, 27, 23, 68, 0.797813, 0.7069176694442649, '2023-06-15 15:37:56', '2023-06-15 15:37:56', '中国北京朝阳望京abc', '中国北京朝阳望京adc');
INSERT INTO `stb1` VALUES (5, 5, 16, 15, 33, 0.891733, 0.8196181504348808, '2023-06-15 15:37:56', '2023-06-15 15:37:56', '中国北京朝阳望京abc', '中国北京朝阳望京adc');
INSERT INTO `stb1` VALUES (6, 6, 51, 75, 48, 0.487458, 0.6133026916220674, '2023-06-15 15:37:56', '2023-06-15 15:37:56', '中国北京朝阳望京abc', '中国北京朝阳望京adc');
INSERT INTO `stb1` VALUES (7, 7, 10, 85, 7, 0.406203, 0.4897647923596118, '2023-06-15 15:37:56', '2023-06-15 15:37:56', '中国北京朝阳望京abc', '中国北京朝阳望京adc');
INSERT INTO `stb1` VALUES (8, 8, 7, 7, 44, 0.683529, 0.7131376379296372, '2023-06-15 15:37:56', '2023-06-15 15:37:56', '中国北京朝阳望京abc', '中国北京朝阳望京adc');
INSERT INTO `stb1` VALUES (9, 9, 2, 61, 64, 0.845638, 0.6247918169333272, '2023-06-15 15:37:56', '2023-06-15 15:37:56', '中国北京朝阳望京abc', '中国北京朝阳望京adc');
INSERT INTO `stb1` VALUES (10, 10, 4, 4, 34, 0.793577, 0.6592838981142249, '2023-06-15 15:37:56', '2023-06-15 15:37:56', '中国北京朝阳望京abc', '中国北京朝阳望京adc');

SET FOREIGN_KEY_CHECKS = 1;
