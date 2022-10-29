/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : adonis_api

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 29/10/2022 14:29:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adonis_schema
-- ----------------------------
DROP TABLE IF EXISTS `adonis_schema`;
CREATE TABLE `adonis_schema`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `batch` int(11) NOT NULL,
  `migration_time` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adonis_schema
-- ----------------------------
INSERT INTO `adonis_schema` VALUES (1, 'database/migrations/1666883611657_m_posts', 1, '2022-10-28 08:34:21');

-- ----------------------------
-- Table structure for adonis_schema_versions
-- ----------------------------
DROP TABLE IF EXISTS `adonis_schema_versions`;
CREATE TABLE `adonis_schema_versions`  (
  `version` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adonis_schema_versions
-- ----------------------------
INSERT INTO `adonis_schema_versions` VALUES (2);

-- ----------------------------
-- Table structure for m_posts
-- ----------------------------
DROP TABLE IF EXISTS `m_posts`;
CREATE TABLE `m_posts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_posts
-- ----------------------------
INSERT INTO `m_posts` VALUES (1, 'Javascript Si Raja Terakhir', 'Javascript bahasa pemrograman yang bisa berbagai multi platform', 'Teknologi', 'Draft', '2022-10-28 08:56:07', '2022-10-29 12:18:46');
INSERT INTO `m_posts` VALUES (2, 'Python High Level Programming Language', 'Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Python is dynamically-typed and garbage-collected. It supports multiple programming paradigms, including structured, object-oriented and functional programming', 'Teknologi', 'Draft', '2022-10-28 09:02:10', '2022-10-29 12:20:00');
INSERT INTO `m_posts` VALUES (3, 'PHP Programming Language', 'PHP is a general-purpose scripting language geared toward web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1993. The PHP reference implementation is now produced by The PHP Group', 'Teknologi', 'Draft', '2022-10-28 09:02:43', '2022-10-29 12:38:06');
INSERT INTO `m_posts` VALUES (4, 'MySQL System Software Database', 'MySQL is the de-facto standard database system for web sites with HUGE volumes of both data and end-users (like Facebook, Twitter, and Wikipedia). Tidak sama dengan proyek-proyek seperti Apache, di mana perangkat lunak dikembangkan oleh komunitas umum, dan hak cipta untuk kode sumber dimiliki oleh penulisnya masing-masing, MySQL dimiliki dan disponsori oleh sebuah perusahaan komersial Swedia MySQL AB, di mana memegang hak cipta hampir atas semua kode sumbernya', 'Teknologi', 'Trashed', '2022-10-28 09:03:59', '2022-10-29 12:37:23');
INSERT INTO `m_posts` VALUES (5, 'Adonis JS', 'A fully featured web framework for Node.js. AdonisJS includes everything you need to create a fully functional web app or an API server. So stop wasting hours downloading and assembling hundreds of packages — Use AdonisJS and be productive from day one', 'Teknologi', 'Publish', '2022-10-28 09:23:13', '2022-10-28 09:36:15');
INSERT INTO `m_posts` VALUES (7, 'Ruby on Rails (simplify as Rails) is a server-side web application framework written in Ruby under the MIT License', 'Rails is a model–view–controller (MVC) framework, providing default structures for a database, a web service, and web pages. It encourages and facilitates the use of web standards such as JSON or XML for data transfer and HTML, CSS and JavaScript for user interfacing. In addition to MVC, Rails emphasizes the use of other well-known software engineering patterns and paradigms, including convention over configuration (CoC), don\'t repeat yourself (DRY), and the active record pattern', 'Teknologi', 'Publish', '2022-10-28 09:48:20', '2022-10-29 12:38:58');
INSERT INTO `m_posts` VALUES (9, 'Perl Programming That\'s why we love Perl', 'Perl is a family of two high-level, general-purpose, interpreted, dynamic programming languages. \"Perl\" refers to Perl 5, but from 2000 to 2019 it also referred to its redesigned \"sister language\", Perl 6, before the latter\'s name was officially changed to Raku in October 2019. Though Perl is not officially an acronym,[11] there are various backronyms in use, including \"Practical Extraction and Reporting Language\".[12] Perl was developed by Larry Wall in 1987 as a general-purpose Unix scripting language to make report processing easier.[13] Since then, it has undergone many changes and revisions. Raku, which began as a redesign of Perl 5 in 2000, eventually evolved into a separate language. Both languages continue to be developed independently by different development teams and liberally borrow ideas from each other', 'Teknologi', 'Trashed', '2022-10-29 13:47:56', '2022-10-29 14:24:47');

SET FOREIGN_KEY_CHECKS = 1;
