/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : movies

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 28/03/2025 01:08:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add actor', 6, 'add_actor');
INSERT INTO `auth_permission` VALUES (22, 'Can change actor', 6, 'change_actor');
INSERT INTO `auth_permission` VALUES (23, 'Can delete actor', 6, 'delete_actor');
INSERT INTO `auth_permission` VALUES (24, 'Can view actor', 6, 'view_actor');
INSERT INTO `auth_permission` VALUES (25, 'Can add user', 7, 'add_normaluser');
INSERT INTO `auth_permission` VALUES (26, 'Can change user', 7, 'change_normaluser');
INSERT INTO `auth_permission` VALUES (27, 'Can delete user', 7, 'delete_normaluser');
INSERT INTO `auth_permission` VALUES (28, 'Can view user', 7, 'view_normaluser');
INSERT INTO `auth_permission` VALUES (29, 'Can add movies', 8, 'add_movies');
INSERT INTO `auth_permission` VALUES (30, 'Can change movies', 8, 'change_movies');
INSERT INTO `auth_permission` VALUES (31, 'Can delete movies', 8, 'delete_movies');
INSERT INTO `auth_permission` VALUES (32, 'Can view movies', 8, 'view_movies');
INSERT INTO `auth_permission` VALUES (33, 'Can add content', 9, 'add_content');
INSERT INTO `auth_permission` VALUES (34, 'Can change content', 9, 'change_content');
INSERT INTO `auth_permission` VALUES (35, 'Can delete content', 9, 'delete_content');
INSERT INTO `auth_permission` VALUES (36, 'Can view content', 9, 'view_content');
INSERT INTO `auth_permission` VALUES (37, 'Can add category', 10, 'add_category');
INSERT INTO `auth_permission` VALUES (38, 'Can change category', 10, 'change_category');
INSERT INTO `auth_permission` VALUES (39, 'Can delete category', 10, 'delete_category');
INSERT INTO `auth_permission` VALUES (40, 'Can view category', 10, 'view_category');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_index_normaluser_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_index_normaluser_id` FOREIGN KEY (`user_id`) REFERENCES `index_normaluser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2025-03-24 12:01:02.261184', '1', '张三', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (2, '2025-03-24 12:01:06.579648', '2', '李四', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (3, '2025-03-24 12:01:09.502396', '3', '王五', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (4, '2025-03-24 12:01:12.593566', '4', '赵六', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (5, '2025-03-24 12:01:19.797576', '5', '孙七', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (6, '2025-03-24 12:01:31.363384', '6', '林建国', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (7, '2025-03-24 12:01:36.317846', '7', '王琳', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (8, '2025-03-24 12:01:42.751383', '8', '坤坤', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (9, '2025-03-24 12:13:12.637276', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (10, '2025-03-24 12:14:04.204496', '2', '动作', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (11, '2025-03-24 12:14:08.625748', '3', '剧情', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (12, '2025-03-24 12:14:12.246520', '4', '家庭', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (13, '2025-03-24 12:14:20.228900', '5', '犯罪', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (14, '2025-03-24 12:14:29.400241', '6', '喜剧', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (15, '2025-03-24 12:14:43.549860', '7', '传记', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (16, '2025-03-24 12:14:47.131728', '8', '动画', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (17, '2025-03-24 12:14:50.250831', '9', '音乐', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (18, '2025-03-24 12:14:56.109812', '10', '运动', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (19, '2025-03-24 12:15:00.545223', '11', '奇幻', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (20, '2025-03-24 12:15:03.745885', '12', '冒险', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (21, '2025-03-24 12:15:09.800873', '13', '悬疑', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (22, '2025-03-24 12:15:52.103340', '14', '同性', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (23, '2025-03-24 12:18:20.370461', '15', '历史', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (24, '2025-03-24 12:18:27.753460', '16', '惊悚', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (25, '2025-03-24 12:18:31.949311', '17', '恐怖', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (26, '2025-03-24 12:18:48.986201', '18', '纪录片', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (27, '2025-03-24 12:18:54.562669', '19', '电视剧', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (28, '2025-03-24 12:42:56.327767', '8', '坤坤', 2, '[{\"changed\": {\"fields\": [\"\\u5934\\u50cf\"]}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (29, '2025-03-24 12:45:02.828418', '9', '弗莱迪·海默', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (30, '2025-03-24 12:47:37.336093', '1', '良医 第七季', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (31, '2025-03-24 12:51:22.308457', '1', '良医 第七季', 3, '', 8, 1);
INSERT INTO `django_admin_log` VALUES (32, '2025-03-24 12:52:04.606859', '2', '良医 第七季', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (33, '2025-03-24 12:54:09.181570', '20', '综艺', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (34, '2025-03-24 12:54:18.620018', '21', '真人秀', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (35, '2025-03-24 12:54:38.062442', '10', '周星驰', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (36, '2025-03-24 12:55:08.018351', '11', '徐峥', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (37, '2025-03-24 12:55:13.291189', '12', '郭麒麟', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (38, '2025-03-24 12:55:29.701962', '3', '喜剧之王单口季', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (39, '2025-03-24 22:32:36.788490', '4', 'user2', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (40, '2025-03-24 22:32:36.788490', '3', 'user', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (41, '2025-03-25 11:11:24.368608', '3', '喜剧之王单口季', 2, '[{\"changed\": {\"fields\": [\"Category\", \"\\u7535\\u5f71\\u7b80\\u4ecb\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (42, '2025-03-25 11:12:03.742478', '2', '良医 第七季', 2, '[{\"changed\": {\"fields\": [\"Category\", \"\\u7535\\u5f71\\u7b80\\u4ecb\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (43, '2025-03-25 11:19:06.035242', '4', '功夫', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (44, '2025-03-25 11:19:54.618654', '13', '拜伦·霍华德', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (45, '2025-03-25 11:20:01.350158', '14', '瑞奇·摩尔', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (46, '2025-03-25 11:20:18.070688', '15', '金妮弗·古德温', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (47, '2025-03-25 11:20:23.264914', '16', '杰森·贝特曼', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (48, '2025-03-25 11:20:43.451021', '5', '疯狂动物城', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (49, '2025-03-25 11:21:25.355742', '22', '西部', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (50, '2025-03-25 11:21:50.556255', '17', '姜文', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (51, '2025-03-25 11:22:06.058877', '18', '葛优', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (52, '2025-03-25 11:22:25.216857', '6', '让子弹飞', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (53, '2025-03-25 11:23:10.111083', '23', '科幻', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (54, '2025-03-25 11:23:24.505318', '19', '彼得·威尔', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (55, '2025-03-25 11:23:41.221495', '20', '金·凯瑞', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (56, '2025-03-25 11:23:48.276735', '21', '劳拉·琳妮', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (57, '2025-03-25 11:24:07.050573', '7', '楚门的世界', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (58, '2025-03-25 11:24:38.419820', '22', '克里斯托弗·诺兰', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (59, '2025-03-25 11:24:55.471884', '23', '莱昂纳多·迪卡普里奥', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (60, '2025-03-25 11:25:00.992663', '24', '约瑟夫·高登-莱维', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (61, '2025-03-25 11:25:16.973210', '8', '盗梦空间', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (62, '2025-03-25 11:25:56.037534', '24', '灾难', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (63, '2025-03-25 11:26:05.419257', '25', '郭帆', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (64, '2025-03-25 11:26:21.564719', '26', '吴京', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (65, '2025-03-25 11:26:27.055412', '27', '刘德华', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (66, '2025-03-25 11:26:47.119990', '9', '流浪地球2', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (67, '2025-03-25 11:27:38.199973', '25', '古装', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (68, '2025-03-25 11:27:49.719725', '28', '刘镇伟', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (69, '2025-03-25 11:28:26.121856', '10', '大话西游之月光宝盒', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (70, '2025-03-25 11:29:36.552227', '29', '李·昂克里奇', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (71, '2025-03-25 11:29:50.220153', '30', '安东尼·冈萨雷斯', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (72, '2025-03-25 11:29:58.919627', '31', '盖尔·加西亚·贝纳尔', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (73, '2025-03-25 11:30:14.557895', '11', '寻梦环游记 Coco', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (74, '2025-03-26 04:53:10.784089', '32', '班尼·博姆', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (75, '2025-03-26 04:53:29.559937', '33', '杰里米·哈夫特', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (76, '2025-03-26 04:53:34.944198', '34', '埃迪·冈萨雷斯', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (77, '2025-03-26 04:53:55.157575', '12', '万视瞩目', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (78, '2025-03-26 04:56:23.398346', '35', '萨姆·泰勒·约翰逊', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (79, '2025-03-26 04:56:38.950775', '36', '玛瑞萨·阿贝拉', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (80, '2025-03-26 04:56:46.046715', '37', '杰克·奥康奈尔', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (81, '2025-03-26 04:57:07.551930', '13', '回到黑暗', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (82, '2025-03-26 21:14:30.700487', '12', '万视瞩目', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (83, '2025-03-26 21:28:37.840865', '38', '弗兰克·德拉邦特', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (84, '2025-03-26 21:29:00.169348', '39', '蒂姆·罗宾斯', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (85, '2025-03-26 21:29:30.817079', '14', '肖申克的救赎', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (86, '2025-03-27 06:56:42.351388', '40', '韩延', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (87, '2025-03-27 06:56:56.500355', '41', '李易峰', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (88, '2025-03-27 06:57:01.562640', '42', '迈克尔·道格拉斯', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (89, '2025-03-27 06:57:19.385448', '15', '动物世界', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (90, '2025-03-27 06:57:46.203321', '43', '弗雷德·R·克鲁格', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (91, '2025-03-27 06:57:59.564570', '44', '比尔·伯鲁德', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (92, '2025-03-27 06:58:30.097370', '16', '动物世界 Animal World', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (93, '2025-03-27 07:03:57.251283', '45', '奥利佛·斯通', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (94, '2025-03-27 07:04:11.935325', '46', '乔什·布洛林', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (95, '2025-03-27 07:04:19.967617', '17', '小布什传 W.', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (96, '2025-03-27 07:04:51.099326', '47', '保罗·B·普雷西亚多', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (97, '2025-03-27 07:05:07.450773', '48', 'Emma Avena', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (98, '2025-03-27 07:05:25.637034', '18', '奥兰多：我的政治传记', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (99, '2025-03-27 07:05:55.412196', '17', '小布什传 W.', 2, '[{\"changed\": {\"fields\": [\"\\u5c01\\u9762\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (100, '2025-03-27 07:12:04.053052', '49', '吕克·贝松', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (101, '2025-03-27 07:12:18.234079', '50', '让·雷诺', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (102, '2025-03-27 07:12:25.492811', '51', '娜塔莉·波特曼', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (103, '2025-03-27 07:12:34.595717', '19', '这个杀手不太冷', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (104, '2025-03-27 07:13:52.000481', '19', '这个杀手不太冷', 2, '[{\"changed\": {\"fields\": [\"\\u5c01\\u9762\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (105, '2025-03-27 07:14:16.999227', '52', '宫崎骏', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (106, '2025-03-27 07:14:31.715550', '53', '柊瑠美', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (107, '2025-03-27 07:14:49.698440', '20', '千与千寻', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (108, '2025-03-27 07:15:27.837950', '54', '彼特·道格特', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (109, '2025-03-27 07:15:45.786383', '55', '爱德华·阿斯纳', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (110, '2025-03-27 07:16:04.885455', '21', '飞屋环游记', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (111, '2025-03-27 07:17:09.429493', '56', '涅提·蒂瓦里', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (112, '2025-03-27 07:17:21.915758', '57', '比于什·古普塔', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (113, '2025-03-27 07:17:36.755475', '22', '摔跤吧！爸爸', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (114, '2025-03-27 07:18:07.529027', '6', '林建国', 3, '', 6, 1);
INSERT INTO `django_admin_log` VALUES (115, '2025-03-27 07:18:07.529027', '5', '孙七', 3, '', 6, 1);
INSERT INTO `django_admin_log` VALUES (116, '2025-03-27 07:18:07.529027', '4', '赵六', 3, '', 6, 1);
INSERT INTO `django_admin_log` VALUES (117, '2025-03-27 07:18:07.529027', '3', '王五', 3, '', 6, 1);
INSERT INTO `django_admin_log` VALUES (118, '2025-03-27 07:18:07.529027', '2', '李四', 3, '', 6, 1);
INSERT INTO `django_admin_log` VALUES (119, '2025-03-27 07:18:07.529027', '1', '张三', 3, '', 6, 1);
INSERT INTO `django_admin_log` VALUES (120, '2025-03-27 07:18:25.776704', '8', '坤坤', 3, '', 6, 1);
INSERT INTO `django_admin_log` VALUES (121, '2025-03-27 07:18:29.974420', '7', '王琳', 3, '', 6, 1);
INSERT INTO `django_admin_log` VALUES (122, '2025-03-27 07:18:59.187803', '5', 'user', 2, '[{\"changed\": {\"fields\": [\"Last login\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (123, '2025-03-27 07:19:57.908642', '58', '张艺谋', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (124, '2025-03-27 07:20:09.672792', '59', '葛优', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (125, '2025-03-27 07:20:42.059738', '23', '活着', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (126, '2025-03-27 07:21:54.009842', '60', '斯坦利·库布里克', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (127, '2025-03-27 07:22:12.222229', '61', '杰克·尼科尔森', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (128, '2025-03-27 07:22:25.608078', '24', '闪灵', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (129, '2025-03-27 07:22:45.333789', '62', '保罗·安德森', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (130, '2025-03-27 07:22:59.198764', '63', '米拉·乔沃维奇', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (131, '2025-03-27 07:23:11.320950', '25', '生化危机', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (132, '2025-03-27 07:23:47.240471', '64', '阿尔弗雷德·希区柯', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (133, '2025-03-27 07:24:10.642830', '65', '安东尼·博金斯', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (134, '2025-03-27 07:24:25.503417', '26', '惊魂记', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (135, '2025-03-27 07:24:45.631606', '66', '温子仁', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (136, '2025-03-27 07:24:57.760015', '67', '雷·沃纳尔', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (137, '2025-03-27 07:25:12.135689', '27', '电锯惊魂', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (138, '2025-03-27 07:25:55.751494', '68', '雷德利·斯科特', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (139, '2025-03-27 07:26:15.906890', '69', '西格妮·韦弗', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (140, '2025-03-27 07:26:30.414662', '28', '异形', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (141, '2025-03-27 12:11:25.826456', '5', 'user', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 7, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'index', 'actor');
INSERT INTO `django_content_type` VALUES (10, 'index', 'category');
INSERT INTO `django_content_type` VALUES (9, 'index', 'content');
INSERT INTO `django_content_type` VALUES (8, 'index', 'movies');
INSERT INTO `django_content_type` VALUES (7, 'index', 'normaluser');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2025-03-24 11:43:29.004835');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2025-03-24 11:43:30.687418');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2025-03-24 11:43:35.169399');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2025-03-24 11:43:36.405535');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2025-03-24 11:43:36.463380');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2025-03-24 11:43:36.504272');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2025-03-24 11:43:36.554140');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2025-03-24 11:43:36.599953');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2025-03-24 11:43:36.635858');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2025-03-24 11:43:36.688606');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2025-03-24 11:43:36.735483');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2025-03-24 11:43:36.899049');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2025-03-24 11:43:36.936852');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0012_alter_user_first_name_max_length', '2025-03-24 11:43:36.986720');
INSERT INTO `django_migrations` VALUES (15, 'index', '0001_initial', '2025-03-24 11:43:51.292652');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0001_initial', '2025-03-24 11:43:53.781971');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0002_logentry_remove_auto_add', '2025-03-24 11:43:53.820893');
INSERT INTO `django_migrations` VALUES (18, 'admin', '0003_logentry_add_action_flag_choices', '2025-03-24 11:43:53.966479');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2025-03-24 11:43:54.455968');
INSERT INTO `django_migrations` VALUES (20, 'index', '0002_category_movies_category', '2025-03-24 12:11:12.204410');
INSERT INTO `django_migrations` VALUES (21, 'index', '0003_alter_category_name', '2025-03-24 12:15:34.160567');
INSERT INTO `django_migrations` VALUES (22, 'index', '0004_movies_logo_alter_content_content_and_more', '2025-03-24 12:32:41.350206');
INSERT INTO `django_migrations` VALUES (23, 'index', '0005_alter_actor_avatar_remove_movies_category_and_more', '2025-03-24 20:23:46.469908');
INSERT INTO `django_migrations` VALUES (24, 'index', '0006_movies_info', '2025-03-25 11:08:24.763758');
INSERT INTO `django_migrations` VALUES (25, 'index', '0007_content_timestamp', '2025-03-27 09:05:47.799856');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('lojqehqq44x35nanwyt9hyjbmq2t84c3', '.eJxVj0sSgjAQRO-StRUIkAAu3XsGajIz4WuwIOjC8u4Gi4Vu-3W_qXmJBrbQNdvKS9OTOAslTr-ZBRzZ74AG8O0scfZh6a3cK_Kgq7zOxNPl6P4JOli7uNZV7jSzs0phUWCellWVaUQwmGJdYu5QoWNyqTZ1aUkjWWsz0JlxdVxFKTwgwBJdyY2ph4TYwTYFOdzbSPdjHm4c-Tg8j-D7knl_AHAWTKU:1txqcT:kIlfQlINvR-60xXniPHL9ckBWaODZgI2CncJXgEY8PM', '2025-04-10 17:02:17.202510');

-- ----------------------------
-- Table structure for index_actor
-- ----------------------------
DROP TABLE IF EXISTS `index_actor`;
CREATE TABLE `index_actor`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_actor
-- ----------------------------
INSERT INTO `index_actor` VALUES (9, '弗莱迪·海默', 'p19324_gDpnoIk.webp');
INSERT INTO `index_actor` VALUES (10, '周星驰', 'default.jpg');
INSERT INTO `index_actor` VALUES (11, '徐峥', 'default.jpg');
INSERT INTO `index_actor` VALUES (12, '郭麒麟', 'default.jpg');
INSERT INTO `index_actor` VALUES (13, '拜伦·霍华德', 'default.jpg');
INSERT INTO `index_actor` VALUES (14, '瑞奇·摩尔', 'default.jpg');
INSERT INTO `index_actor` VALUES (15, '金妮弗·古德温', 'default.jpg');
INSERT INTO `index_actor` VALUES (16, '杰森·贝特曼', 'default.jpg');
INSERT INTO `index_actor` VALUES (17, '姜文', 'default.jpg');
INSERT INTO `index_actor` VALUES (18, '葛优', 'default.jpg');
INSERT INTO `index_actor` VALUES (19, '彼得·威尔', 'default.jpg');
INSERT INTO `index_actor` VALUES (20, '金·凯瑞', 'default.jpg');
INSERT INTO `index_actor` VALUES (21, '劳拉·琳妮', 'default.jpg');
INSERT INTO `index_actor` VALUES (22, '克里斯托弗·诺兰', 'default.jpg');
INSERT INTO `index_actor` VALUES (23, '莱昂纳多·迪卡普里奥', 'default.jpg');
INSERT INTO `index_actor` VALUES (24, '约瑟夫·高登-莱维', 'default.jpg');
INSERT INTO `index_actor` VALUES (25, '郭帆', 'default.jpg');
INSERT INTO `index_actor` VALUES (26, '吴京', 'default.jpg');
INSERT INTO `index_actor` VALUES (27, '刘德华', 'default.jpg');
INSERT INTO `index_actor` VALUES (28, '刘镇伟', 'default.jpg');
INSERT INTO `index_actor` VALUES (29, '李·昂克里奇', 'default.jpg');
INSERT INTO `index_actor` VALUES (30, '安东尼·冈萨雷斯', 'default.jpg');
INSERT INTO `index_actor` VALUES (31, '盖尔·加西亚·贝纳尔', 'default.jpg');
INSERT INTO `index_actor` VALUES (32, '班尼·博姆', 'default.jpg');
INSERT INTO `index_actor` VALUES (33, '杰里米·哈夫特', 'default.jpg');
INSERT INTO `index_actor` VALUES (34, '埃迪·冈萨雷斯', 'default.jpg');
INSERT INTO `index_actor` VALUES (35, '萨姆·泰勒·约翰逊', 'default.jpg');
INSERT INTO `index_actor` VALUES (36, '玛瑞萨·阿贝拉', 'default.jpg');
INSERT INTO `index_actor` VALUES (37, '杰克·奥康奈尔', 'default.jpg');
INSERT INTO `index_actor` VALUES (38, '弗兰克·德拉邦特', 'default.jpg');
INSERT INTO `index_actor` VALUES (39, '蒂姆·罗宾斯', 'default.jpg');
INSERT INTO `index_actor` VALUES (40, '韩延', 'default.jpg');
INSERT INTO `index_actor` VALUES (41, '李易峰', 'default.jpg');
INSERT INTO `index_actor` VALUES (42, '迈克尔·道格拉斯', 'default.jpg');
INSERT INTO `index_actor` VALUES (43, '弗雷德·R·克鲁格', 'default.jpg');
INSERT INTO `index_actor` VALUES (44, '比尔·伯鲁德', 'default.jpg');
INSERT INTO `index_actor` VALUES (45, '奥利佛·斯通', 'default.jpg');
INSERT INTO `index_actor` VALUES (46, '乔什·布洛林', 'default.jpg');
INSERT INTO `index_actor` VALUES (47, '保罗·B·普雷西亚多', 'default.jpg');
INSERT INTO `index_actor` VALUES (48, 'Emma Avena', 'default.jpg');
INSERT INTO `index_actor` VALUES (49, '吕克·贝松', 'default.jpg');
INSERT INTO `index_actor` VALUES (50, '让·雷诺', 'default.jpg');
INSERT INTO `index_actor` VALUES (51, '娜塔莉·波特曼', 'default.jpg');
INSERT INTO `index_actor` VALUES (52, '宫崎骏', 'default.jpg');
INSERT INTO `index_actor` VALUES (53, '柊瑠美', 'default.jpg');
INSERT INTO `index_actor` VALUES (54, '彼特·道格特', 'default.jpg');
INSERT INTO `index_actor` VALUES (55, '爱德华·阿斯纳', 'default.jpg');
INSERT INTO `index_actor` VALUES (56, '涅提·蒂瓦里', 'default.jpg');
INSERT INTO `index_actor` VALUES (57, '比于什·古普塔', 'default.jpg');
INSERT INTO `index_actor` VALUES (58, '张艺谋', 'default.jpg');
INSERT INTO `index_actor` VALUES (59, '葛优', 'default.jpg');
INSERT INTO `index_actor` VALUES (60, '斯坦利·库布里克', 'default.jpg');
INSERT INTO `index_actor` VALUES (61, '杰克·尼科尔森', 'default.jpg');
INSERT INTO `index_actor` VALUES (62, '保罗·安德森', 'default.jpg');
INSERT INTO `index_actor` VALUES (63, '米拉·乔沃维奇', 'default.jpg');
INSERT INTO `index_actor` VALUES (64, '阿尔弗雷德·希区柯', 'default.jpg');
INSERT INTO `index_actor` VALUES (65, '安东尼·博金斯', 'default.jpg');
INSERT INTO `index_actor` VALUES (66, '温子仁', 'default.jpg');
INSERT INTO `index_actor` VALUES (67, '雷·沃纳尔', 'default.jpg');
INSERT INTO `index_actor` VALUES (68, '雷德利·斯科特', 'default.jpg');
INSERT INTO `index_actor` VALUES (69, '西格妮·韦弗', 'default.jpg');

-- ----------------------------
-- Table structure for index_category
-- ----------------------------
DROP TABLE IF EXISTS `index_category`;
CREATE TABLE `index_category`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_category_name_b93ca5d9_uniq`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_category
-- ----------------------------
INSERT INTO `index_category` VALUES (7, '传记');
INSERT INTO `index_category` VALUES (12, '冒险');
INSERT INTO `index_category` VALUES (3, '剧情');
INSERT INTO `index_category` VALUES (2, '动作');
INSERT INTO `index_category` VALUES (8, '动画');
INSERT INTO `index_category` VALUES (15, '历史');
INSERT INTO `index_category` VALUES (25, '古装');
INSERT INTO `index_category` VALUES (14, '同性');
INSERT INTO `index_category` VALUES (6, '喜剧');
INSERT INTO `index_category` VALUES (11, '奇幻');
INSERT INTO `index_category` VALUES (4, '家庭');
INSERT INTO `index_category` VALUES (17, '恐怖');
INSERT INTO `index_category` VALUES (13, '悬疑');
INSERT INTO `index_category` VALUES (16, '惊悚');
INSERT INTO `index_category` VALUES (24, '灾难');
INSERT INTO `index_category` VALUES (1, '爱情');
INSERT INTO `index_category` VALUES (5, '犯罪');
INSERT INTO `index_category` VALUES (19, '电视剧');
INSERT INTO `index_category` VALUES (21, '真人秀');
INSERT INTO `index_category` VALUES (23, '科幻');
INSERT INTO `index_category` VALUES (18, '纪录片');
INSERT INTO `index_category` VALUES (20, '综艺');
INSERT INTO `index_category` VALUES (22, '西部');
INSERT INTO `index_category` VALUES (10, '运动');
INSERT INTO `index_category` VALUES (9, '音乐');

-- ----------------------------
-- Table structure for index_content
-- ----------------------------
DROP TABLE IF EXISTS `index_content`;
CREATE TABLE `index_content`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_name_id` bigint NULL DEFAULT NULL,
  `movies_id` bigint NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_content_user_name_id_72fc8cca_fk_index_normaluser_id`(`user_name_id` ASC) USING BTREE,
  INDEX `index_content_movies_id_40ab0e03_fk_index_movies_id`(`movies_id` ASC) USING BTREE,
  CONSTRAINT `index_content_movies_id_40ab0e03_fk_index_movies_id` FOREIGN KEY (`movies_id`) REFERENCES `index_movies` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `index_content_user_name_id_72fc8cca_fk_index_normaluser_id` FOREIGN KEY (`user_name_id`) REFERENCES `index_normaluser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_content
-- ----------------------------
INSERT INTO `index_content` VALUES (1, '我觉得不好看', 5, 27, '2025-03-27 09:05:45.784769');
INSERT INTO `index_content` VALUES (2, '我觉得不行', 5, 27, '2025-03-27 09:05:45.784769');
INSERT INTO `index_content` VALUES (3, '推荐强力！！！！！！！！！', 5, 13, '2025-03-27 09:08:20.559047');
INSERT INTO `index_content` VALUES (4, '我很喜欢这个电影', 6, 11, '2025-03-27 17:02:56.394745');
INSERT INTO `index_content` VALUES (5, '我现在又不喜欢了', 6, 11, '2025-03-27 17:03:11.527986');

-- ----------------------------
-- Table structure for index_movies
-- ----------------------------
DROP TABLE IF EXISTS `index_movies`;
CREATE TABLE `index_movies`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `release_date` date NOT NULL,
  `rating` double NOT NULL,
  `logo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title`(`title` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_movies
-- ----------------------------
INSERT INTO `index_movies` VALUES (2, '良医 第七季', '2024-02-20', 9, 'p2903141594.webp', '年轻外科医生肖恩·墨菲（弗莱迪·海默 Freddie Highmore 饰）患有自闭症和学者综合症，他在著名的圣文德医院持续发挥卓越的医疗天赋，与此同时也在生活中不断成长。');
INSERT INTO `index_movies` VALUES (3, '喜剧之王单口季', '2024-08-16', 8.3, 'p2911851430.webp', '今年夏天举平台之力打造的S+级全新喜剧IP。周星驰将作为节目发起人，激励喜剧演员勇敢逐梦。常驻嘉宾携手行业OG带队，推荐来自全国各地俱乐部的宝藏喜剧演员，演员们将在这个全新顶级单口喜剧竞演舞台上互相比拼，从喜剧小人物一路成长为喜剧之王!\r\n　　幽默--爆梗频出，快乐拉满\r\n　　反卷--全新模式，热血团魂\r\n　　多元一-五湖四海俱乐部，各具特色新演员\r\n　　新生一-超多隐藏黑马，更新行业面貌\r\n　　全新爆款喜剧节目，让你体验全新快乐');
INSERT INTO `index_movies` VALUES (4, '功夫', '2004-12-23', 8.9, 'p2219011938.webp', '1940年代的上海，自小受尽欺辱的街头混混阿星（周星驰）为了能出人头地，可谓窥见机会的缝隙就往里钻，今次他盯上行动日益猖獗的黑道势力“斧头帮”，想借之大名成就大业。\r\n　　阿星假冒“斧头帮”成员试图在一个叫“猪笼城寨”的地方对居民敲诈，不想引来真的“斧头帮”与“猪笼城寨”居民的恩怨。“猪笼城寨”原是藏龙卧虎之处，居民中有许多身怀绝技者（元华、梁小龙等），他们隐藏于此本是为远离江湖恩怨，不想麻烦自动上身，躲都躲不及。而在观战正邪两派的斗争中，阿星逐渐领悟功夫的真谛。');
INSERT INTO `index_movies` VALUES (5, '疯狂动物城', '2016-03-04', 9.2, 'p2323981221.webp', '故事发生在一个所有哺乳类动物和谐共存的美好世界中，兔子朱迪（金妮弗·古德温 Ginnifer Goodwin 配音）从小就梦想着能够成为一名惩恶扬善的刑警，凭借着智慧和努力，朱迪成功的从警校中毕业进入了疯狂动物城警察局，殊不知这里是大型肉食类动物的领地，作为第一只，也是唯一的小型食草类动物，朱迪会遇到怎样的故事呢？\r\n　　近日里，城中接连发生动物失踪案件，就在全部警员都致力于调查案件真相之时，朱迪却被局长（伊德瑞斯·艾尔巴 Idris Elba 配音）发配成为了一名无足轻重的交警。某日，正在执勤的兔子遇见了名为尼克（杰森·贝特曼 Jason Bateman 配音）的狐狸，两人不打不相识，之后又误打误撞的接受了寻找失踪的水獭先生的任务，如果不能在两天之内找到水獭先生，朱迪就必须自愿离开警局。朱迪找到了尼克，两人联手揭露了一个隐藏在疯狂动物城之中的惊天秘密。');
INSERT INTO `index_movies` VALUES (6, '让子弹飞', '2010-12-16', 9, 'p1512562287.webp', '民国年间，花钱捐得县长的马邦德（葛优 饰）携妻（刘嘉玲 饰）及随从走马上任。途经南国某地，遭劫匪张麻子（姜文 饰）一伙伏击，随从尽死，只夫妻二人侥幸活命。马为保命，谎称自己是县长的汤 师爷。为汤师爷许下的财富所动，张麻子摇身一变化身县长，带着手下赶赴鹅城上任。有道是天高皇帝远，鹅城地处偏僻，一方霸主黄四郎（周润发 饰）只手遮天，全然不将这个新来的县长放在眼里。张麻子痛打了黄的武教头（姜武 饰），黄则设计害死张的义子小六（张默 饰）。原本只想赚钱的马邦德，怎么也想不到竟会被卷入这场土匪和恶霸的角力之中。鹅城上空愁云密布，血雨腥风在所难免……\r\n　　本片根据马识途的小说《夜谭十记》中的《盗官记》一章改编');
INSERT INTO `index_movies` VALUES (7, '楚门的世界', '1998-06-05', 9.4, 'p479682972.webp', '楚门（金•凯瑞 Jim Carrey 饰）是一个平凡得不能再平凡的人，除了一些有些稀奇的经历之外——初恋女友突然失踪、溺水身亡的父亲忽然似乎又出现在眼前，他和绝大多数30多岁的美国男人绝无异样。这令他倍感失落。他也曾试过离开自己生活了多年的地方，但总因种种理由而不能成行。\r\n　　直到有一天，他忽然发觉自己似乎一直在被人跟踪，无论他走到哪里，干什么事情。这种感觉愈来愈强烈。楚门决定不惜一切代价逃离这个他生活了30多年的地方，去寻找他的初恋女友。\r\n　　但他却发现自己怎样也逃不出去。真相其实很残忍。');
INSERT INTO `index_movies` VALUES (8, '盗梦空间', '2010-09-01', 9.4, 'p513344864.webp', '道姆·柯布（莱昂纳多·迪卡普里奥 Leonardo DiCaprio 饰）与同事阿瑟（约瑟夫·戈登-莱维特 Joseph Gordon-Levitt 饰）和纳什（卢卡斯·哈斯 Lukas Haas 饰）在一次针对日本能源大亨齐藤（渡边谦 饰）的盗梦行动中失败，反被齐藤利用。齐藤威逼利诱因遭通缉而流亡海外的柯布帮他拆分他竞争对手的公司，采取极端措施在其唯一继承人罗伯特·费希尔（希里安·墨菲 Cillian Murphy 饰）的深层潜意识中种下放弃家族公司、自立门户的想法。为了重返美国，柯布偷偷求助于岳父迈尔斯（迈克尔·凯恩 Michael Caine 饰），吸收了年轻的梦境设计师艾里阿德妮（艾伦·佩吉 Ellen Page 饰）、梦境演员艾姆斯（汤姆·哈迪 Tom Hardy 饰）和药剂师约瑟夫（迪利普·劳 Dileep Rao 饰）加入行动。在一层层递进的梦境中，柯布不仅要对付费希尔潜意识的本能反抗，还必须直面已逝妻子梅尔（玛丽昂·歌迪亚 Marion Cotillard 饰）的处处破坏，实际情况远比预想危险得多……');
INSERT INTO `index_movies` VALUES (9, '流浪地球2', '2023-01-22', 8.3, 'p2916835424.webp', '在并不遥远的未来，太阳急速衰老与膨胀，再过几百年整个太阳系将被它吞噬毁灭。为了应对这场史无前例的危机，地球各国放下芥蒂，成立联合政府，试图寻找人类存续的出路。通过摸索与考量，最终推着地球逃出太阳系的“移山计划”获得压倒性胜利。人们着手建造上万台巨大的行星发动机，带着地球踏上漫漫征程。满腔赤诚的刘培强（吴京 饰）和韩朵朵（王智 饰）历经层层考验成为航天员大队的一员，并由此相知相恋。但是漫漫征途的前方，仿佛有一股神秘的力量不断破坏者人类的自救计划。看似渺小的刘培强、量子科学家图恒宇（刘德华 饰）、联合政府中国代表周喆直（李雪健 饰）以及无数平凡的地球人，构成了这项伟大计划的重要一环……\r\n　　本片根据刘慈欣同名科幻小说改编。');
INSERT INTO `index_movies` VALUES (10, '大话西游之月光宝盒', '2014-10-24', 9, 'p2561721372.webp', '孙悟空（周星驰）护送唐三藏（罗家英）去西天取经路上，与牛魔王合谋欲杀害唐三藏，并偷走了月光宝盒，此举使观音萌生将其铲除心思，经唐三藏请求，孙悟空被判五百年后重新投胎做人赎其罪孽。\r\n　　五百年后孙悟空化身强盗头头至尊宝。当遇见预谋吃唐僧肉的妖怪姐妹蜘蛛精春三十娘（蓝洁瑛）和白骨精白晶晶（莫文蔚）时，因为五百年前孙悟空曾与白晶晶有过一段恋情，至尊宝与她一见钟情，但因菩提老祖将二人妖怪身份相告，至尊宝仍带领众强盗开始与二妖展开周旋，过程中，白晶晶为救至尊宝打伤春三十娘，自己也中毒受伤，为了救白晶晶，至尊宝去找春三十娘，遭白晶晶误会，绝望自杀，至尊宝开始用月光宝盒以期使时光倒流。');
INSERT INTO `index_movies` VALUES (11, '寻梦环游记 Coco', '2017-11-24', 9.1, 'p2505426431.webp', '热爱音乐的米格尔（安东尼·冈萨雷兹 Anthony Gonzalez 配音）不幸地出生在一个视音乐为洪水猛兽的大家庭之中，一家人只盼着米格尔快快长大，好继承家里传承了数代的制鞋产业。一年一度的亡灵节即将来临，每逢这一天，去世的亲人们的魂魄便可凭借着摆在祭坛上的照片返回现世和生者团圆。\r\n　　在一场意外中，米格尔竟然穿越到了亡灵国度之中，在太阳升起之前，他必须得到一位亲人的祝福，否则就将会永远地留在这个世界里。米格尔决定去寻找已故的歌神德拉库斯（本杰明·布拉特 Benjamin Bratt 配音），因为他很有可能就是自己的祖父。途中，米格尔邂逅了落魄乐手埃克托（盖尔·加西亚·贝纳尔 Gael García Bernal 配音），也渐渐发现了德拉库斯隐藏已久的秘密。');
INSERT INTO `index_movies` VALUES (12, '万视瞩目', '2017-06-16', 7.2, 'p2456162121.webp', '已故说唱传奇2Pac的传记片\"All Eyez On Me\"发新预告，Demetrius Shipp Jr.演的2Pac除了脸颊略丰满外，跟原型相当相似，Jamal Woolard再饰Notorious B.I.G.，另有多名同时代知名人士登场。聚焦2Pac的说唱生涯和成长历程，他作为黑人的抗争。《行尸走肉》“刀女”Danai Gurira饰其母，也有“Maggie”Lauren Cohan，凯特·格兰厄姆(《吸血鬼日记》)、希尔·哈珀(《犯罪现场调查：纽约》)也参演，6月16日北美上映。');
INSERT INTO `index_movies` VALUES (13, '回到黑暗', '2024-04-11', 6.3, 'p2904562961.webp', '艾米·怀恩豪斯的生活和音乐，通过青春期到成年的旅程，以及我们这个时代最畅销的专辑之一的创作。\r\n　　《黯然》讲述了艾米·怀恩豪斯（Amy Winehouse）的非凡故事，是对 21 世纪最具代表性、最令人怀念的本土明星的赞颂。《黯然》生动、活泼地描绘了她的家乡卡姆登（Camden）街道，捕捉了她在全球声名鹊起时的挣扎，在赞扬艾米的艺术才华、机智和诚实的同时，也试图了解她的心魔。这是对现代名人机器的不留情面的审视，也是对一代才女的有力致敬。');
INSERT INTO `index_movies` VALUES (14, '肖申克的救赎', '1994-09-10', 9.7, 'p480747492.webp', '一场谋杀案使银行家安迪（蒂姆•罗宾斯 Tim Robbins 饰）蒙冤入狱，谋杀妻子及其情人的指控将囚禁他终生。在肖申克监狱的首次现身就让监狱“大哥”瑞德（摩根•弗里曼 Morgan Freeman 饰）对他另眼相看。瑞德帮助他搞到一把石锤和一幅女明星海报，两人渐成患难 之交。很快，安迪在监狱里大显其才，担当监狱图书管理员，并利用自己的金融知识帮助监狱官避税，引起了典狱长的注意，被招致麾下帮助典狱长洗黑钱。偶然一次，他得知一名新入狱的小偷能够作证帮他洗脱谋杀罪。燃起一丝希望的安迪找到了典狱长，希望他能帮自己翻案。阴险伪善的狱长假装答应安迪，背后却派人杀死小偷，让他唯一能合法出狱的希望泯灭。沮丧的安迪并没有绝望，在一个电闪雷鸣的风雨夜，一场暗藏几十年的越狱计划让他自我救赎，重获自由！老朋友瑞德在他的鼓舞和帮助下，也勇敢地奔向自由。\r\n　　本片获得1995年奥斯卡10项提名，以及金球奖、土星奖等多项提名。');
INSERT INTO `index_movies` VALUES (15, '动物世界', '2018-06-29', 7.2, 'p2525528688.webp', '在游戏机厅做着兼职“小丑”的郑开司（李易峰 饰），幼时父亲突然失踪，母亲重病住院，使得郑开司的生活非常拮据。发小“大虾米”（曹炳琨 饰）借口买房骗下了郑开司父亲留下的房产，还给他带来了巨额的欠债。神秘人物（迈克尔·道格拉斯 Michael Douglas 饰）出现，告诉郑开司，只要参加“命运号”游轮上的神秘游戏，就有机会偿还完所有欠款，一无所有的郑开司为了给青梅竹马的护士刘青（周冬雨 饰）和母亲更好的生活，只得登上游轮，开始了生存游戏，一场以“剪刀、石头、布”展开的生死较量即将登场……');
INSERT INTO `index_movies` VALUES (16, '动物世界 Animal World', '1981-12-31', 9.3, 'p2571256578.webp', 'Hosted by veteran wildlife film-maker Bill Burrud, this series provided viewers with an up-close look at the lives of wild animals from all over the world in their natural habitats. Originally released as \"Animal Kingdom\", this series bounced between all three of the major networks during its three years in prime-time.');
INSERT INTO `index_movies` VALUES (17, '小布什传 W.', '2008-10-17', 6.6, 'p1903655763.webp', '无论你爱他还是恨他，你都不可否认乔治·W·布什是当今世界上独领风骚的风云人物。作为世界上仅存一超首脑，布什的一生可谓跌宕起伏、波澜壮阔，美国人喜欢他，因为他在911的风暴中顶住压力率领美国人民化悲痛为力量为美国拿下了垂涎已久的中东油田，以强硬的鹰派作风让美国世界霸主的作风深入人心。然而，他在位期间也彻底终结了克林顿创造的经济反弹，甚至将美国乃至全世界拖入了2008金融危机的泥潭；阿富汗和伊拉克两场以恐制恐的战争也让美国人民和中东人民的生活陷入了悲哀。\r\n　　对于布什的功过是非早有人评论的太多，在好莱坞也不乏关于这位政治人物的影片。然而，真正以传记片的形式全面的去表现布什的一生，本片还是第一次。在本片中，不仅仅包含了布什从老爸的高级顾问到佛罗里达州州长再到美国总统的政治生涯写照，在他年轻时放荡不羁的花边小料也在本片中有所反应。当然，对于伊拉克战争这个布什政治生涯中最受争议的焦点影片也给予了大量的纪录。如导演奥利弗·斯通所说，他在本片中要做的是尽可能客观真实的再现一个我们熟悉而又陌生的乔治·W·布什。');
INSERT INTO `index_movies` VALUES (18, '奥兰多：我的政治传记', '2023-02-18', 7.4, 'p2888230308.webp', '弗吉尼亚·伍尔夫在1928年创作的《奥兰多》，是世界上第一部主角在故事中途转换性别的小说。在一个世纪之后，跨性别作家同时也是哲学家、活动家的保罗·B·普雷西亚多（Paul B. Preciado），决定寄给伍尔夫一封影像信，告诉她她笔下的角色已经走进现实，奥兰多已经遍布世界各地。\r\n　　普雷西亚多发起了一个试镜活动，召集到了26名8至70岁的当代跨性别与非二元性别人士来扮演奥兰多这个角色。他通过这些真实的声音、著作、理论和影像，重构了自己变性经历的各个阶段。他说，每个奥兰多，都是一个要每天冒着生命危险去生存的跨性别者，因为他们发现自己被迫要去对抗法律、历史和精神病学，还有传统的家庭观念和跨国制药公司的力量。但如果“男性”和“女性”归根结底都是政治和社会的虚构产物，那么这种转变就不再仅关乎性别，也关乎诗歌、爱与肤色。');
INSERT INTO `index_movies` VALUES (19, '这个杀手不太冷', '2024-11-01', 9.4, 'p2913554676.webp', '里昂（让·雷诺饰）是名孤独的职业杀手，受人雇佣。一天，邻居家小姑娘马蒂尔达（纳塔丽·波特曼饰)敲开他的房门，要求在他那里暂避杀身之祸。原来邻居家的主人是警方缉毒组的眼线，只因贪污了一小包毒品而遭恶警（加里·奥德曼饰）杀害全家的惩罚。马蒂尔达得到里昂的留救，幸免于难，并留在里昂那里。里昂教小女孩使枪，她教里昂法文，两人关系日趋亲密，相处融洽。\r\n　　女孩想着去报仇，反倒被抓，里昂及时赶到，将女孩救回。混杂着哀怨情仇的正邪之战渐次升级，更大的冲突在所难免……');
INSERT INTO `index_movies` VALUES (20, '千与千寻', '2019-06-21', 9.4, 'p2557573348.webp', '千寻和爸爸妈妈一同驱车前往新家，在郊外的小路上不慎进入了神秘的隧道——他们去到了另外一个诡异世界—一个中世纪的小镇。远处飘来食物的香味，爸爸妈妈大快朵颐，孰料之后变成了猪！这时小镇上渐渐来了许多样子古怪、半透明的人。\r\n　　千寻仓皇逃出，一个叫小白的人救了他，喂了她阻止身体消 失的药，并且告诉她怎样去找锅炉爷爷以及汤婆婆，而且必须获得一份工作才能不被魔法变成别的东西。\r\n　　千寻在小白的帮助下幸运地获得了一份在浴池打杂的工作。渐渐她不再被那些怪模怪样的人吓倒，并从小玲那儿知道了小白是凶恶的汤婆婆的弟子。\r\n　　一次，千寻发现小白被一群白色飞舞的纸人打伤，为了救受伤的小白，她用河神送给她的药丸驱出了小白身体内的封印以及守封印的小妖精，但小白还是没有醒过来。\r\n　　为了救小白，千寻又踏上了她的冒险之旅。');
INSERT INTO `index_movies` VALUES (21, '飞屋环游记', '2009-08-04', 9.1, 'p2553594918.webp', '小男孩卡尔（Carl Fredricksen）怀揣着对于冒险的热爱偶遇假小子艾丽（Ellie），而艾丽把整个屋子当成一艘大飞船游戏居然使他对这个女孩子有些着迷，相同的爱好最终使两个人成为了一生的爱侣。\r\n　　他们有一个梦想，那就是有朝一日要去南美洲的“仙境瀑布”探险，但直到艾丽去世，这个梦想也未能实现。终于有一天，曾经专卖气球的老人卡尔居然用五颜六色的气球拽着他的房子飞上了天空，他决定要去实现他们未曾实现的梦想。令卡尔始料不及的是，门廊居然搭上了一个自称是“荒野开拓者”的小男孩小罗（Russell），小罗的喋喋不休让卡尔对这个小胖墩格外讨厌。\r\n　　一老一少在飞行中经过了千难万险终于看到了传说中的“仙境瀑布”，在相处过程中卡尔发现小罗其实是个惹人怜爱的孩子。在步行穿越一座森林时，他们遇到了不会飞的大鸟凯文（Kevin）和一只会说话的狗狗逗逗（Dug），让老人惊讶的是他们还遇到了他少年的崇拜偶像——探险家查尔斯·蒙兹（Charles Muntz），而且他发现蒙兹居然是一个为达目的不择手段的坏人。这时，老人离自己的梦想之地只有一步之遥……\r\n　　本片荣获第82届奥斯卡最佳动画长片、最佳配乐2项大奖。');
INSERT INTO `index_movies` VALUES (22, '摔跤吧！爸爸', '2017-05-05', 9, 'p2401676338.webp', '马哈维亚（阿米尔·汗 Aamir Khan 饰）曾经是一名前途无量的摔跤运动员，在放弃了职业生涯后，他最大的遗憾就是没有能够替国家赢得金牌。马哈维亚将这份希望寄托在了尚未出生的儿子身上，哪知道妻子接连给他生了两个女儿，取名吉塔（法缇玛·萨那·纱卡 Fatima Sana Shaikh 饰）和巴比塔（桑亚·玛荷塔 Sanya Malhotra 饰）。让马哈维亚没有想到的是，两个姑娘展现出了杰出的摔跤天赋，让他幡然醒悟，就算是女孩，也能够昂首挺胸的站在比赛场上，为了国家和她们自己赢得荣誉。\r\n　　就这样，在马哈维亚的指导下，吉塔和巴比塔开始了艰苦的训练，两人进步神速，很快就因为在比赛中连连获胜而成为了当地的名人。为了获得更多的机会，吉塔进入了国家体育学院学习，在那里，她将面对更大的诱惑和更多的选择。');
INSERT INTO `index_movies` VALUES (23, '活着', '1994-06-30', 9.3, 'p2597919477.webp', '根据余华同名小说改编。\r\n　　富少福贵（葛优）嗜赌成性，妻子家珍（巩俐）屡劝无果后带着女儿凤霞离开了他，当夜，福贵输光所有家产气死父亲，被迫靠变卖母亲首饰租间破屋过活。一年后，家珍手拉凤霞怀抱刚出世的儿子有庆回到家中，福贵痛改前非，开始靠演皮影戏过起安份守己的日子。\r\n　　但好景不常，内战时期，福贵被国民党抓去当劳工，一番辗转终回到家乡与一家人团圆后，凤霞因病变成哑巴，而在后来的大跃进运动和文化大革命中，他虽获某些小福，逆境却也一直与他如影相随。');
INSERT INTO `index_movies` VALUES (24, '闪灵', '1980-05-23', 8.3, 'p2461253191.webp', '杰克（杰克•尼科尔森 Jack Nicholson 饰）是一个作家。一个冬天，他得到了一个看管山顶酒店的差事。这正合杰克的意思，他正好可以有一个幽静的地方写作。于是杰克带着妻儿搬进了酒店。\r\n　　冬天大雪封路，山顶酒店只有杰克一家三口。从他们一搬进来，杰克的妻子温蒂（谢莉·杜瓦尔 Shelley Duvall 饰）就发现这里气氛诡异，杰克的儿子丹尼（丹尼·劳埃德 Danny Lloyd 饰）经常看到一些他不认识的人，但这里除了他们一家别无他人。而杰克除了一整天闷头写作外，脾气亦变得越来越古怪。\r\n　　直到有一天，温蒂发现丈夫这些天来一直写就只有一句话：杰克发疯了！');
INSERT INTO `index_movies` VALUES (25, '生化危机', '2002-03-15', 8.3, 'p2174120073.webp', '为军方研究生化武器的安布雷拉公司在浣熊市地下设有巨大的研究中心——蜂巢，由于一次意外事故导致可通过空气传播的生化武器泄露，负责蜂巢安保的电脑系统“红色女王”启动应急措施，却导致数百名工作人员罹难……四小时后，蜂巢安保人员爱丽丝（米拉·乔沃维奇 Milla Jovovich 饰）在蜂巢出口醒来，并且因为催眠气体而失忆。一支受命关闭红色女王的特种小队来到此处，与爱丽丝、自称警察的安德森，以及蜂巢工作人员帕克斯组队深入地下。一行人因任务目标与红色女王冲突而先后遭遇保卫系统和丧尸的连番袭击，而爱丽丝渐渐恢复的记忆揭示了她与同行者非同一般的联系。这场生化丧尸危机该如何解除？又或者根本是一曲绝望的前奏？\r\n　　本片是根据知名电子游戏《生化危机》改编而成系列电影的首部。');
INSERT INTO `index_movies` VALUES (26, '惊魂记', '1960-06-16', 9, 'p1021883305.webp', '年轻的马里恩·克兰（珍妮特·利 饰）在Phoenix工作，深受老板洛厄里（沃恩·泰勒 饰）信任。男友萨姆·卢米斯（约翰·加文 饰）在Fairvale经营一家五金店，因要替亡父还债又要支付前妻赡养费而无力再婚，只能借出差的机会偶尔来与马里恩幽会。马里恩对此感到不满，于是在周五下午趁机携四万美元公款驾车潜逃。可是马里恩的潜逃之路并不顺利：先是在出城的时候被洛厄里目击，周六一大早又被警察怀疑。花了七百美元以旧车换新车之后，马里恩继续忐忑地行驶。入夜后，天降大雨，视线模糊，无法行驶，马里恩只得将车泊入路边的贝茨汽车旅馆投宿。老板诺尔曼（安东尼·珀金斯 饰）十分友善，试图邀请马里恩到家里共进晚餐，可惜被凶恶的母亲粗暴阻止，只得将晚餐端至旅馆客厅。马里恩在客厅一边进餐一边与诺尔曼交谈，终于决定周日返回Phoenix。用餐完毕，马里恩回房沐浴。这时，一个老妇的身影突然出现在卫生间……');
INSERT INTO `index_movies` VALUES (27, '电锯惊魂', '2004-01-19', 8.7, 'p726839485.webp', '一觉醒来的亚当（雷•沃纳尔 Leigh Whannell饰）发现自己被困在一个废弃的厕所里。他的对面是同样命运的劳伦斯（加利•艾尔维斯 Cary Elwes 饰）——他们被人用铁链绑住了腿，并吃惊发现二人中间横亘着一个恐怖的死人。死人鲜血淋漓，左手拿录放机右手拿枪。\r\n　　亚 当兜里被人放进来一盘磁带，他赶紧放到录放机里。磁带里说，劳伦斯必须在今晚6点前杀死亚当，否则二人将同归于尽，劳伦斯的家人也不能幸免。而面前死人流出来的血，剧毒无比。\r\n　　一个血腥的死亡游戏开始了。在剩下不多的时间里，他们必须找到线索，逃出地狱。在最后关头，当他们以为重见天日的时候，新一轮的噩梦才刚刚开始。');
INSERT INTO `index_movies` VALUES (28, '异形', '1979-05-25', 8.3, 'p1756402567.webp', '未来的世界，人类已能轻松穿梭于星际之间，在太空中展开商业活动。“诺史莫”是在太空活动的众多星际商业运输船之一。一次，它完成任务满载太空矿石返航地球时，突然收到了一组奇怪的信号，由于这可能是求救信号，飞船接到指令前往信号源地进行搜救。\r\n　　经过一段飞行后，飞船终于抵达信号源发出的地方。船员们发现此处果然有一艘坠毁的飞船，只是，经过一番搜索，他们发现该船的船员们都早已死亡，化为化石。此时，留在“诺史莫”号的第三指挥官里普利已经破译出该信号并不是求救信号，而是警告信号！队员的生死搏斗开始了！');

-- ----------------------------
-- Table structure for index_movies_actor
-- ----------------------------
DROP TABLE IF EXISTS `index_movies_actor`;
CREATE TABLE `index_movies_actor`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `movies_id` bigint NOT NULL,
  `actor_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_movies_actor_movies_id_actor_id_b30751e5_uniq`(`movies_id` ASC, `actor_id` ASC) USING BTREE,
  INDEX `index_movies_actor_actor_id_41f93287_fk_index_actor_id`(`actor_id` ASC) USING BTREE,
  CONSTRAINT `index_movies_actor_actor_id_41f93287_fk_index_actor_id` FOREIGN KEY (`actor_id`) REFERENCES `index_actor` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `index_movies_actor_movies_id_078c58ce_fk_index_movies_id` FOREIGN KEY (`movies_id`) REFERENCES `index_movies` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_movies_actor
-- ----------------------------
INSERT INTO `index_movies_actor` VALUES (5, 2, 9);
INSERT INTO `index_movies_actor` VALUES (6, 3, 11);
INSERT INTO `index_movies_actor` VALUES (7, 3, 12);
INSERT INTO `index_movies_actor` VALUES (8, 4, 10);
INSERT INTO `index_movies_actor` VALUES (10, 5, 15);
INSERT INTO `index_movies_actor` VALUES (9, 5, 16);
INSERT INTO `index_movies_actor` VALUES (11, 6, 17);
INSERT INTO `index_movies_actor` VALUES (12, 6, 18);
INSERT INTO `index_movies_actor` VALUES (13, 7, 20);
INSERT INTO `index_movies_actor` VALUES (14, 7, 21);
INSERT INTO `index_movies_actor` VALUES (16, 8, 23);
INSERT INTO `index_movies_actor` VALUES (15, 8, 24);
INSERT INTO `index_movies_actor` VALUES (17, 9, 26);
INSERT INTO `index_movies_actor` VALUES (18, 9, 27);
INSERT INTO `index_movies_actor` VALUES (19, 10, 10);
INSERT INTO `index_movies_actor` VALUES (20, 11, 30);
INSERT INTO `index_movies_actor` VALUES (21, 11, 31);
INSERT INTO `index_movies_actor` VALUES (22, 12, 33);
INSERT INTO `index_movies_actor` VALUES (23, 12, 34);
INSERT INTO `index_movies_actor` VALUES (24, 13, 36);
INSERT INTO `index_movies_actor` VALUES (25, 13, 37);
INSERT INTO `index_movies_actor` VALUES (26, 14, 39);
INSERT INTO `index_movies_actor` VALUES (27, 15, 41);
INSERT INTO `index_movies_actor` VALUES (28, 15, 42);
INSERT INTO `index_movies_actor` VALUES (29, 16, 44);
INSERT INTO `index_movies_actor` VALUES (30, 17, 46);
INSERT INTO `index_movies_actor` VALUES (31, 18, 48);
INSERT INTO `index_movies_actor` VALUES (32, 19, 50);
INSERT INTO `index_movies_actor` VALUES (33, 19, 51);
INSERT INTO `index_movies_actor` VALUES (34, 20, 53);
INSERT INTO `index_movies_actor` VALUES (35, 21, 55);
INSERT INTO `index_movies_actor` VALUES (36, 22, 57);
INSERT INTO `index_movies_actor` VALUES (37, 23, 59);
INSERT INTO `index_movies_actor` VALUES (38, 24, 61);
INSERT INTO `index_movies_actor` VALUES (39, 25, 63);
INSERT INTO `index_movies_actor` VALUES (40, 26, 65);
INSERT INTO `index_movies_actor` VALUES (41, 27, 67);
INSERT INTO `index_movies_actor` VALUES (42, 28, 69);

-- ----------------------------
-- Table structure for index_movies_author
-- ----------------------------
DROP TABLE IF EXISTS `index_movies_author`;
CREATE TABLE `index_movies_author`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `movies_id` bigint NOT NULL,
  `actor_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_movies_author_movies_id_actor_id_0460fea4_uniq`(`movies_id` ASC, `actor_id` ASC) USING BTREE,
  INDEX `index_movies_author_actor_id_5da7c4cd_fk_index_actor_id`(`actor_id` ASC) USING BTREE,
  CONSTRAINT `index_movies_author_actor_id_5da7c4cd_fk_index_actor_id` FOREIGN KEY (`actor_id`) REFERENCES `index_actor` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `index_movies_author_movies_id_92bb6d47_fk_index_movies_id` FOREIGN KEY (`movies_id`) REFERENCES `index_movies` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_movies_author
-- ----------------------------
INSERT INTO `index_movies_author` VALUES (7, 3, 10);
INSERT INTO `index_movies_author` VALUES (8, 4, 10);
INSERT INTO `index_movies_author` VALUES (9, 5, 13);
INSERT INTO `index_movies_author` VALUES (10, 5, 14);
INSERT INTO `index_movies_author` VALUES (11, 6, 17);
INSERT INTO `index_movies_author` VALUES (12, 7, 19);
INSERT INTO `index_movies_author` VALUES (13, 8, 22);
INSERT INTO `index_movies_author` VALUES (14, 9, 25);
INSERT INTO `index_movies_author` VALUES (15, 10, 28);
INSERT INTO `index_movies_author` VALUES (16, 11, 29);
INSERT INTO `index_movies_author` VALUES (17, 12, 32);
INSERT INTO `index_movies_author` VALUES (18, 13, 35);
INSERT INTO `index_movies_author` VALUES (19, 14, 38);
INSERT INTO `index_movies_author` VALUES (20, 15, 40);
INSERT INTO `index_movies_author` VALUES (21, 16, 43);
INSERT INTO `index_movies_author` VALUES (22, 17, 45);
INSERT INTO `index_movies_author` VALUES (23, 18, 47);
INSERT INTO `index_movies_author` VALUES (24, 19, 49);
INSERT INTO `index_movies_author` VALUES (25, 20, 52);
INSERT INTO `index_movies_author` VALUES (26, 21, 54);
INSERT INTO `index_movies_author` VALUES (27, 22, 56);
INSERT INTO `index_movies_author` VALUES (28, 23, 58);
INSERT INTO `index_movies_author` VALUES (29, 24, 60);
INSERT INTO `index_movies_author` VALUES (30, 25, 62);
INSERT INTO `index_movies_author` VALUES (31, 26, 64);
INSERT INTO `index_movies_author` VALUES (32, 27, 66);
INSERT INTO `index_movies_author` VALUES (33, 28, 68);

-- ----------------------------
-- Table structure for index_movies_category
-- ----------------------------
DROP TABLE IF EXISTS `index_movies_category`;
CREATE TABLE `index_movies_category`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `movies_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_movies_category_movies_id_category_id_d0d9d466_uniq`(`movies_id` ASC, `category_id` ASC) USING BTREE,
  INDEX `index_movies_category_category_id_282c666e_fk_index_category_id`(`category_id` ASC) USING BTREE,
  CONSTRAINT `index_movies_category_category_id_282c666e_fk_index_category_id` FOREIGN KEY (`category_id`) REFERENCES `index_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `index_movies_category_movies_id_7205ef17_fk_index_movies_id` FOREIGN KEY (`movies_id`) REFERENCES `index_movies` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_movies_category
-- ----------------------------
INSERT INTO `index_movies_category` VALUES (4, 2, 3);
INSERT INTO `index_movies_category` VALUES (3, 3, 6);
INSERT INTO `index_movies_category` VALUES (1, 3, 20);
INSERT INTO `index_movies_category` VALUES (2, 3, 21);
INSERT INTO `index_movies_category` VALUES (5, 4, 2);
INSERT INTO `index_movies_category` VALUES (7, 4, 5);
INSERT INTO `index_movies_category` VALUES (8, 4, 6);
INSERT INTO `index_movies_category` VALUES (6, 4, 11);
INSERT INTO `index_movies_category` VALUES (11, 5, 6);
INSERT INTO `index_movies_category` VALUES (9, 5, 8);
INSERT INTO `index_movies_category` VALUES (10, 5, 12);
INSERT INTO `index_movies_category` VALUES (12, 6, 2);
INSERT INTO `index_movies_category` VALUES (13, 6, 3);
INSERT INTO `index_movies_category` VALUES (14, 6, 6);
INSERT INTO `index_movies_category` VALUES (15, 6, 22);
INSERT INTO `index_movies_category` VALUES (16, 7, 3);
INSERT INTO `index_movies_category` VALUES (17, 7, 23);
INSERT INTO `index_movies_category` VALUES (18, 8, 3);
INSERT INTO `index_movies_category` VALUES (19, 8, 12);
INSERT INTO `index_movies_category` VALUES (20, 8, 13);
INSERT INTO `index_movies_category` VALUES (21, 8, 23);
INSERT INTO `index_movies_category` VALUES (23, 9, 12);
INSERT INTO `index_movies_category` VALUES (24, 9, 23);
INSERT INTO `index_movies_category` VALUES (22, 9, 24);
INSERT INTO `index_movies_category` VALUES (25, 10, 1);
INSERT INTO `index_movies_category` VALUES (27, 10, 6);
INSERT INTO `index_movies_category` VALUES (26, 10, 11);
INSERT INTO `index_movies_category` VALUES (28, 10, 25);
INSERT INTO `index_movies_category` VALUES (32, 11, 6);
INSERT INTO `index_movies_category` VALUES (29, 11, 8);
INSERT INTO `index_movies_category` VALUES (30, 11, 9);
INSERT INTO `index_movies_category` VALUES (31, 11, 11);
INSERT INTO `index_movies_category` VALUES (34, 12, 3);
INSERT INTO `index_movies_category` VALUES (35, 12, 7);
INSERT INTO `index_movies_category` VALUES (37, 13, 7);
INSERT INTO `index_movies_category` VALUES (36, 13, 9);
INSERT INTO `index_movies_category` VALUES (38, 14, 3);
INSERT INTO `index_movies_category` VALUES (39, 14, 5);
INSERT INTO `index_movies_category` VALUES (40, 15, 2);
INSERT INTO `index_movies_category` VALUES (41, 15, 3);
INSERT INTO `index_movies_category` VALUES (42, 15, 12);
INSERT INTO `index_movies_category` VALUES (43, 16, 18);
INSERT INTO `index_movies_category` VALUES (44, 17, 3);
INSERT INTO `index_movies_category` VALUES (46, 17, 7);
INSERT INTO `index_movies_category` VALUES (45, 17, 15);
INSERT INTO `index_movies_category` VALUES (49, 18, 7);
INSERT INTO `index_movies_category` VALUES (48, 18, 14);
INSERT INTO `index_movies_category` VALUES (47, 18, 18);
INSERT INTO `index_movies_category` VALUES (50, 19, 2);
INSERT INTO `index_movies_category` VALUES (51, 19, 3);
INSERT INTO `index_movies_category` VALUES (52, 19, 5);
INSERT INTO `index_movies_category` VALUES (54, 20, 2);
INSERT INTO `index_movies_category` VALUES (55, 20, 3);
INSERT INTO `index_movies_category` VALUES (53, 20, 11);
INSERT INTO `index_movies_category` VALUES (57, 21, 3);
INSERT INTO `index_movies_category` VALUES (59, 21, 6);
INSERT INTO `index_movies_category` VALUES (56, 21, 8);
INSERT INTO `index_movies_category` VALUES (58, 21, 12);
INSERT INTO `index_movies_category` VALUES (61, 22, 3);
INSERT INTO `index_movies_category` VALUES (62, 22, 4);
INSERT INTO `index_movies_category` VALUES (63, 22, 7);
INSERT INTO `index_movies_category` VALUES (60, 22, 10);
INSERT INTO `index_movies_category` VALUES (64, 23, 3);
INSERT INTO `index_movies_category` VALUES (65, 23, 4);
INSERT INTO `index_movies_category` VALUES (66, 23, 15);
INSERT INTO `index_movies_category` VALUES (67, 24, 17);
INSERT INTO `index_movies_category` VALUES (69, 25, 2);
INSERT INTO `index_movies_category` VALUES (68, 25, 17);
INSERT INTO `index_movies_category` VALUES (70, 25, 23);
INSERT INTO `index_movies_category` VALUES (73, 26, 13);
INSERT INTO `index_movies_category` VALUES (71, 26, 16);
INSERT INTO `index_movies_category` VALUES (72, 26, 17);
INSERT INTO `index_movies_category` VALUES (76, 27, 13);
INSERT INTO `index_movies_category` VALUES (74, 27, 16);
INSERT INTO `index_movies_category` VALUES (75, 27, 17);
INSERT INTO `index_movies_category` VALUES (77, 28, 16);
INSERT INTO `index_movies_category` VALUES (78, 28, 17);
INSERT INTO `index_movies_category` VALUES (79, 28, 23);

-- ----------------------------
-- Table structure for index_normaluser
-- ----------------------------
DROP TABLE IF EXISTS `index_normaluser`;
CREATE TABLE `index_normaluser`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_normaluser
-- ----------------------------
INSERT INTO `index_normaluser` VALUES (1, 'pbkdf2_sha256$870000$gEORwnsbAOmiuxi68PCoSD$fACPLeXGUaAvILEBD8T0q5uzv811LW2ZOO5L9rPPOIQ=', '2025-03-26 21:13:27.148006', 1, 'admin', '', '', '', 1, 1, '2025-03-24 11:49:31.694467', 'default.png');
INSERT INTO `index_normaluser` VALUES (2, 'pbkdf2_sha256$870000$ZGNY7uTAb34pszIN1L3L3P$aMOLp8jZ/aw5CFvUkcnIBT2Zl2bqvH37W6kimlplKqE=', NULL, 0, 'root', '', '', '', 0, 1, '2025-03-24 20:59:26.354619', 'default.jpg');
INSERT INTO `index_normaluser` VALUES (5, 'pbkdf2_sha256$870000$BIrUkxcc9igGKFHjtie0Ru$Q0cRX/eHILwd0403tFeJYqkHQ5ruTHxWLsXPOpNZG1c=', '2025-03-27 07:18:00.000000', 0, 'user', '', '', '', 0, 1, '2025-03-24 22:32:00.000000', 'default.jpg');
INSERT INTO `index_normaluser` VALUES (6, 'pbkdf2_sha256$870000$xAMhat09M23ULPEX5Ucmev$Zxi8qbphPYPShIfF1bPobNSU8bvVcx9l+jJVEO9Bx10=', NULL, 0, 'kjw', '', '', '', 0, 1, '2025-03-27 17:02:09.890322', 'default.jpg');

-- ----------------------------
-- Table structure for index_normaluser_groups
-- ----------------------------
DROP TABLE IF EXISTS `index_normaluser_groups`;
CREATE TABLE `index_normaluser_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `normaluser_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_normaluser_groups_normaluser_id_group_id_6e3a10c1_uniq`(`normaluser_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `index_normaluser_groups_group_id_480d14ff_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `index_normaluser_gro_normaluser_id_e70de260_fk_index_nor` FOREIGN KEY (`normaluser_id`) REFERENCES `index_normaluser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `index_normaluser_groups_group_id_480d14ff_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_normaluser_groups
-- ----------------------------

-- ----------------------------
-- Table structure for index_normaluser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `index_normaluser_user_permissions`;
CREATE TABLE `index_normaluser_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `normaluser_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_normaluser_user_pe_normaluser_id_permission_ec5b12c7_uniq`(`normaluser_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `index_normaluser_use_permission_id_34215b67_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `index_normaluser_use_normaluser_id_dd779772_fk_index_nor` FOREIGN KEY (`normaluser_id`) REFERENCES `index_normaluser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `index_normaluser_use_permission_id_34215b67_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_normaluser_user_permissions
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
