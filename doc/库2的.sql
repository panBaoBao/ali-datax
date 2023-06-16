/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : db2

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 16/06/2023 09:16:36
*/

drop database if exists db2;
create database if not exists db2;
use db2;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for stb2
-- ----------------------------
DROP TABLE IF EXISTS `stb2`;
CREATE TABLE `stb2`  (
  `ts` timestamp NULL DEFAULT NULL,
  `dt` timestamp NULL DEFAULT NULL,
  `f1` tinyint NULL DEFAULT NULL,
  `f2` smallint NULL DEFAULT NULL,
  `f3` int NULL DEFAULT NULL,
  `f4` bigint NULL DEFAULT NULL,
  `f5` float NULL DEFAULT NULL,
  `f6` double NULL DEFAULT NULL,
  `f7` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `f8` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
