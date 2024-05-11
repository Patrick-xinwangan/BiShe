/*
 Navicat Premium Data Transfer

 Source Server         : localtset
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:3306
 Source Schema         : learing_math

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 11/05/2024 22:44:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456', '管理员', 'http://localhost:9090/files/1697438073596-avatar.png', 'ADMIN', '13677889922', 'admin@xm.com');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int NULL DEFAULT NULL COMMENT '学生ID',
  `course_id` int NULL DEFAULT NULL COMMENT '课程ID',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论时间',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论内容',
  `parent_id` int NULL DEFAULT NULL COMMENT '父ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '评论信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 1, 5, '2024-04-01 00:18:48', '666', 0);
INSERT INTO `comment` VALUES (2, 1, 5, '2024-04-01 00:18:52', '8888', 1);
INSERT INTO `comment` VALUES (3, 1, 5, '2024-04-01 00:18:55', '9999', 0);
INSERT INTO `comment` VALUES (4, 1, 5, '2024-04-01 00:19:02', '牛逼牛逼', 3);
INSERT INTO `comment` VALUES (5, 1, 5, '2024-04-01 00:19:40', '7777', 0);
INSERT INTO `comment` VALUES (6, 1, 5, '2024-04-20 16:43:08', 'hh', 5);
INSERT INTO `comment` VALUES (7, 8, 11, '2024-04-22 22:26:40', '111111\n', 0);
INSERT INTO `comment` VALUES (8, 8, 11, '2024-04-22 22:26:46', '2222', 7);
INSERT INTO `comment` VALUES (9, 8, 11, '2024-04-22 22:26:50', '333', 7);
INSERT INTO `comment` VALUES (10, 1, 12, '2024-05-11 18:21:27', '讲的很好', 0);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程封面',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程名称',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '课程介绍',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程类型',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '课程价格',
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程视频',
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '资料链接',
  `discount` double(10, 2) NULL DEFAULT 1.00 COMMENT '课程折扣',
  `recommend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '否' COMMENT '是否推荐',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '课程信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 'http://localhost:9090/files/1715424422782-高等数学2.jpg', '高等数学的网络视频链接', '<p>以下是网络相关视频的链接，欢迎大家学习高等数学！<br/></p><blockquote><p><a href=\"https://www.bilibili.com/video/BV1Eb411u7Fw/?spm_id_from=333.337.search-card.all.click\" target=\"_blank\">https://www.bilibili.com/video/BV1Eb411u7Fw/?spm_id_from=333.337.search-card.all.click</a><br/></p></blockquote><p>祝大家学习愉快，考试取得满意的成绩！<br/></p>', 'TEXT', 0.00, '', 'https://www.bilibili.com/video/BV1Eb411u7Fw/?spm_id_from=333.337.search-card.all.click', 1.00, '是', '2024-03-02');
INSERT INTO `course` VALUES (3, 'http://localhost:9090/files/1715423860120-量子计算大数据算法.jpg', '概率论与数理统计的网络视频链接', '<p>以下是网络相关视频的链接，欢迎大家学习概率论与数理统计！</p><blockquote><p><a href=\"https://www.bilibili.com/video/BV1ot411y7mU/?spm_id_from=333.337.search-card.all.click&amp;vd_source=8424c565825d2b52605509af323e7dcc\" target=\"_blank\">https://www.bilibili.com/video/BV1ot411y7mU/?spm_id_from=333.337.search-card.all.click&amp;vd_source=8424c565825d2b52605509af323e7dcc</a><br/></p></blockquote><p>祝大家学习愉快，考试取得满意的成绩！</p><p><br/></p><p><br/></p><p><br/></p>', 'TEXT', 0.00, NULL, 'https://www.bilibili.com/video/BV1ot411y7mU/?spm_id_from=333.337.search-card.all.click&vd_source=8424c565825d2b52605509af323e7dcc', 0.10, '否', '2024-03-02');
INSERT INTO `course` VALUES (4, 'http://localhost:9090/files/1714998595685-高等数学.jpg', '高等数学A1', '<p>本课程是电子信息类专业的一门基础理论课，内容包括<a>一元函数微分学、一元函数积分学及常微分方程等。</a>通过本课程的学习，使学生掌握一元函数微积分及常微分方程的基本概念、基本理论、基本方法和基本运算技能，学会处理连续时间动态系统的建模方法，培养学生的抽象思维和逻辑推理能力、综合运用所学知识分析问题和解决问题的能力以及自主学习的能力，引导学生树立正确的世界观、人生观和价值观，为后继课程的学习及进一步深造奠定必要基础。</p><p>This course is a basic theoretical\ncourse for electronic information majors. The contents of this course include\ndifferential calculus of one variable functions, integral calculus of one\nvariable functions and ordinary differential equations, etc. Through this\ncourse, students should master the basic concepts, basic theories, basic\nmethods and basic operations of one-variable calculus and ordinary differential\nequations, and the modeling methods for continuous time dynamical systems. The\ncourse could cultivate students’ abilities in abstract thinking, logical\nreasoning, comprehensively applying the knowledge they have learned to analyze\nand solve problems, and self-regulated learning, and guide the students to set\nup the correct world outlook,&nbsp; the life\noutlook and the value outlook. This course would lay a necessary foundation for\nsubsequent courses and further study.</p><p>本课程支撑的毕业要求指标点为：</p><p>指标点1.1: 掌握数学、物理及自然科学领域的理论基础知识、工程基础知识及专业知识，具备对电子信息领域的复杂工程问题进行恰当表述的能力。</p><p>指标点1.2: 能够针对电子电路、通信系统、信号与信息处理过程建立合适的模型，并利用恰当的边界条件求解。</p><p>\n\n\n\n\n\n\n\n\n\n</p><p>指标点12.1: 能认识不断探索和学习的必要性，具有自主学习和终身学习的意识;具有终身学习的知识基础，掌握自主学习的方法，了解拓展知识和能力的途径。</p>', 'math', 0.00, 'http://localhost:9090/files/1715002525455-高数.mp4', 'https://www.bilibili.com/video/BV1Eb411u7Fw/?spm_id_from=333.337.search-card.all.click&vd_source=8424c565825d2b52605509af323e7dcc', 0.00, '是', '2024-03-02');
INSERT INTO `course` VALUES (5, 'http://localhost:9090/files/1714998689249-高等数学2.jpg', '高等数学A2', '<p>本课程是电子信息类专业的一门重要的基础理论课，包括<a>空间解析几何与向量代数、多元函数微分法及其应用、重积分、曲线积分、曲面积分及无穷级数等内容</a>。通过本课程的学习使学生掌握高等数学的基本概念、基本理论、基本方法，逐步提高学生的抽象思维能力、逻辑推理能力、空间想象能力、运算能力和自学能力，培养学生具有综合运用所学知识分析问题和解决问题的能力。以数学之美和思想之真，帮助学生树立正确的世界观、人生观及价值观。</p><p>This course is an important\nbasic theoretical course for electronic information majors, including spatial\nanalytic geometry and vector algebra, multivariate function differentiation\nmethod and its application, multiple integral, curve integral, surface integral\nand infinite series, etc.&nbsp; Through the learning of this course, students\ncan master the basic concepts, basic theories and basic methods of advanced\nmathematics, and gradually improve their abstract thinking ability, logical\nreasoning ability, spatial imagination ability, computing ability and\nself-learning ability, so as to cultivate students\' ability to comprehensively\nanalyze and solve problems by using the knowledge they have learned.&nbsp; With\nthe beauty of mathematics and the truth of thought, it helps students establish\nthe correct world outlook, outlook on life and values.&nbsp;</p><p>本课程支撑的<a>毕业要求指标点</a>为：</p><p>指标点1.1: 能够运用数学、自然科学、工程基础知识对电子信息领域的复杂工程问题进行恰当的表述。</p><p>指标点1.2: 能够针对电子电路、通信系统、信号与信息处理过程建立合适的模型，并利用恰当的边界条件求解。</p><p>\n\n\n\n\n\n\n\n\n\n</p><p>指标点 12.1:能认识不断探索和学习的必要性，具有自主学习和终身学习的意识;具有终身学习的知识基础，掌握自主学习的方法，了解拓展知识和能力的途径。</p>', 'math', 0.00, 'http://localhost:9090/files/1715002537247-高数.mp4', 'https://www.bilibili.com/video/BV1Eb411u7Fw/?spm_id_from=333.337.search-card.all.click&vd_source=8424c565825d2b52605509af323e7dcc', 0.00, '否', '2024-03-02');
INSERT INTO `course` VALUES (7, 'http://localhost:9090/files/1715000072398-线性代数2.jpg', '线性代数A', '<p>线性代数以研究有限维空间线性理论为主，具有较强的抽象性与逻辑性，是我校电子信息类专业的一门重要基础理论课。本课程所介绍的方法是学生学习后继课程以及毕业后从事研究、工作不可或缺的科学知识。通过本课程的学习，使学生掌握线性代数的基本理论与方法<a>。培养学生的抽象思维能力</a>、逻辑思维能力、运算能力、分析问题解决问题的能力<a>。培养学生良好的数学素养和勇于探索、创新的精神。帮助学生树立辩证唯物主义世界观</a>。</p><p>Linear algebra mainly studies the\nlinear theory of finite dimensional space, which has strong abstractness and\nlogicality. It is an important fundamental course for electronic\ninformation majors in our university. The methods introduced in this course are\nessential for students to learn subsequent courses and pursue research and work\nafter graduation. This course aims at instructing students in the basic theories\nand methods of linear algebra, developing students\' abilities of abstract\nthinking, logical thinking, operation, analysis and problem solving,\ncultivating students’ good mathematical accomplishment and the spirit of\nexploration and innovation, helping students to establish dialectical\nmaterialist world outlook.</p><p>本课程支撑的毕业要求指标点为：</p><p>指标点1.1：能够将数学、自然科学、工程基础和专业知识运用于电子信息领域工程问题的表述。</p><p>\n\n\n\n\n\n\n\n指标点1.2：能针对电子信息领域的工程问题建立合适的数学模型并求解。<br/></p>', 'linear', 1.00, 'http://localhost:9090/files/1715000844987-211矩阵的概念及特殊矩阵_compressed.mp4', 'https://www.bilibili.com/video/BV1aW411Q7x1/?spm_id_from=333.337.search-card.all.click', 0.10, '否', '2024-03-02');
INSERT INTO `course` VALUES (8, 'http://localhost:9090/files/1715424848512-math1.jpg', '数学的故事', '<p>想知道最古老的及算法源自那里吗？ 方程式XY是谁提出来的？用全球视角讲故事的方法告诉孩子， 数学独特可爱的一面，还能顺便旅游看世界拓展知识。<br/></p>', 'VIDEO', 1.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.bilibili.com/video/BV1pZ4y1M7AF/?spm_id_from=333.337.search-card.all.click', 0.10, '是', '2024-03-02');
INSERT INTO `course` VALUES (9, 'http://localhost:9090/files/1715424842113-math.jpg', '被数学选中的人', '<p>非常有趣，将数学和人类生活结合在一个个的例子中，体会数学给我们生活带来的变化，&nbsp;学好数学，真能走遍天下都不怕。<br/></p>', 'VIDEO', 1.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://tv.cctv.cn/2021/10/26/VIDEe5L9JZ1udFMUVQe3uM2I211026.shtml', 0.10, '否', '2024-03-02');
INSERT INTO `course` VALUES (10, 'http://localhost:9090/files/1714996026543-量子计算大数据算法.jpg', '概率论与数理统计B', '<p>概率论与数理统计是研究随机现象统计规律性的一门数学学科，是高等学校理工类、经济类、管理类本科专业的一门重要的基础理论课。课程内容包括随机事件与概率、一维随机变量及其分布、多维随机变量及其分布、随机变量的数字特征、大数定律与中心极限定理、数理统计的基本知识、参数估计、假设检验等。首先，通过本课程的学习，使学生掌握概率论与数理统计的基本概念，了解它的基本理论和计算方法，为学习后继课程以及进一步获得数学知识奠定必要的数学基础。其次，通过课程内容学习，使学生掌握处理随机现象的基本思想和方法，培养学生抽象概括、严密的逻辑思维、推理论证以及运用概率统计方法分析和解决实际问题的能力。通过课程学习，培养学生辩证唯物主义世界观，质疑、批判、探究与创新的科学探究精神，树立文化自信，增强民族自豪感，厚植家国情怀。</p><p>Probability\nand Statistics is a branch of math study focus on statistical regularity of\nrandom phenomena. It is an important basic theoretical course for the\nundergraduate majors of science and technology, economics and management in\nuniversities. Its main contents include event and probability, one dimensional\nvariable and its distribution, multi-dimensional random variable and its\ndistribution, the numerical characteristic of random variable, law of large\nnumbers and central limit theorem, basic concept of Mathematical Statistics,\nparameter estimation, hypothesis test. First of all, through the learning of\nthis course, students can master the basic concepts of probability theory and\nmathematical statistics, understand its basic theories and calculation methods,\nand lay a necessary mathematical foundation for learning subsequent courses and\nfurther acquiring mathematical knowledge. Secondly, through the learning of\ncourse content, students can master the basic ideas and methods of dealing with\nrandom phenomena, and cultivate students\' ability of abstract generalization,\nrigorous logical thinking, reasoning demonstration, and the use of probability\nand statistics to analyze and solve practical problems. Through course\nlearning, students can cultivate dialectical materialist world outlook,\nscientific inquiry spirit of questioning, criticism, inquiry and innovation,\nestablish cultural confidence, enhance national pride, and cultivate feelings\nof family and country.</p><p>本课程支撑的毕业要求指标点为：</p><p>工程知识：能够运用数理知识、工程基础和专业知识，解决电子信息领域的复杂工程问题。</p><p>问题分析：能够应用数学、自然科学和工程科学的基本原理，识别、表达、并通过文献研究分析电子信息领域的复杂工程问题，以获得有效结论。</p><p>\n\n\n\n\n\n\n\n\n\n</p><p>研究：能够基于科学原理并采用科学方法对电子信息技术领域复杂工程问题进行研究，包括设计实验、数据处理与分析、并通过信息综合得到合理有效的结论。</p>', 'statistics', 1.00, 'http://localhost:9090/files/1714995997992-二维码7.mp4', 'https://www.bilibili.com/video/BV1ot411y7mU/?spm_id_from=333.337.search-card.all.click', 0.10, '否', '2024-03-02');
INSERT INTO `course` VALUES (11, 'http://localhost:9090/files/1714997050289-数据在机器人头脑中流动，数据转换概念，美国，美国.jpg', '概率论与数理统计B', '<p>概率论与数理统计是研究随机现象统计规律性的一门数学学科，是高等学校理工类、经济类、管理类本科专业的一门重要的基础理论课。课程内容包括随机事件与概率、一维随机变量及其分布、多维随机变量及其分布、随机变量的数字特征、大数定律与中心极限定理、数理统计的基本知识、参数估计、假设检验等。首先，通过本课程的学习，使学生掌握概率论与数理统计的基本概念，了解它的基本理论和计算方法，为学习后继课程以及进一步获得数学知识奠定必要的数学基础。其次，通过课程内容学习，使学生掌握处理随机现象的基本思想和方法，培养学生抽象概括、严密的逻辑思维、推理论证以及运用概率统计方法分析和解决实际问题的能力。通过课程学习，培养学生辩证唯物主义世界观，质疑、批判、探究与创新的科学探究精神，树立文化自信，增强民族自豪感，厚植家国情怀。</p><p>Probability\nand Statistics is a branch of math study focus on statistical regularity of\nrandom phenomena. It is an important basic theoretical course for the\nundergraduate majors of science and technology, economics and management in\nuniversities. Its main contents include event and probability, one dimensional\nvariable and its distribution, multi-dimensional random variable and its\ndistribution, the numerical characteristic of random variable, law of large\nnumbers and central limit theorem, basic concept of Mathematical Statistics,\nparameter estimation, hypothesis test. First of all, through the learning of\nthis course, students can master the basic concepts of probability theory and\nmathematical statistics, understand its basic theories and calculation methods,\nand lay a necessary mathematical foundation for learning subsequent courses and\nfurther acquiring mathematical knowledge. Secondly, through the learning of\ncourse content, students can master the basic ideas and methods of dealing with\nrandom phenomena, and cultivate students\' ability of abstract generalization,\nrigorous logical thinking, reasoning demonstration, and the use of probability\nand statistics to analyze and solve practical problems. Through course\nlearning, students can cultivate dialectical materialist world outlook,\nscientific inquiry spirit of questioning, criticism, inquiry and innovation,\nestablish cultural confidence, enhance national pride, and cultivate feelings\nof family and country.</p><p>本课程支撑的毕业要求指标点为：</p><p>工程知识：能够运用数理知识、工程基础和专业知识，解决电子信息领域的复杂工程问题。</p><p>问题分析：能够应用数学、自然科学和工程科学的基本原理，识别、表达、并通过文献研究分析电子信息领域的复杂工程问题，以获得有效结论。</p><p>\n\n\n\n\n\n\n\n\n\n</p><p>研究：能够基于科学原理并采用科学方法对电子信息技术领域复杂工程问题进行研究，包括设计实验、数据处理与分析、并通过信息综合得到合理有效的结论。<b></b><span style=\"font-size: 14px;\"></span><span style=\"font-size: 14px;\"></span><span style=\"font-size: 14px;\"></span><span style=\"font-size: 14px;\"></span></p>', 'statistics', 0.00, 'http://localhost:9090/files/1714995576430-二维码2.mp4', 'https://www.bilibili.com/video/BV1ot411y7mU/?spm_id_from=333.337.search-card.all.click', 0.00, '是', '2024-03-02');
INSERT INTO `course` VALUES (12, 'http://localhost:9090/files/1715000077538-线性代数.png', '线性代数A', '<p>线性代数以研究有限维空间线性理论为主，具有较强的抽象性与逻辑性，是我校电子信息类专业的一门重要基础理论课。本课程所介绍的方法是学生学习后继课程以及毕业后从事研究、工作不可或缺的科学知识。通过本课程的学习，使学生掌握线性代数的基本理论与方法<a>。培养学生的抽象思维能力</a>、逻辑思维能力、运算能力、分析问题解决问题的能力<a>。培养学生良好的数学素养和勇于探索、创新的精神。帮助学生树立辩证唯物主义世界观</a>。</p><p>Linear algebra mainly studies the linear theory of finite dimensional space, which has strong abstractness and logicality. It is an important fundamental course for electronic information majors in our university. The methods introduced in this course are essential for students to learn subsequent courses and pursue research and work after graduation. This course aims at instructing students in the basic theories and methods of linear algebra, developing students\' abilities of abstract thinking, logical thinking, operation, analysis and problem solving, cultivating students’ good mathematical accomplishment and the spirit of exploration and innovation, helping students to establish dialectical materialist world outlook.</p><p>本课程支撑的毕业要求指标点为：</p><p>指标点1.1：能够将数学、自然科学、工程基础和专业知识运用于电子信息领域工程问题的表述。</p><p>指标点1.2：能针对电子信息领域的工程问题建立合适的数学模型并求解。</p>', 'linear', 0.00, 'http://localhost:9090/files/1715000607058-211矩阵的概念及特殊矩阵_compressed.mp4', 'https://www.bilibili.com/video/BV1aW411Q7x1/?spm_id_from=333.337.search-card.all.click', 0.00, '是', '2024-05-06');
INSERT INTO `course` VALUES (13, 'http://localhost:9090/files/1715424611370-math8.jpg', '线性代数的网络视频链接', '<p>以下是网络相关视频的链接，欢迎大家学习线性代数！<br/></p><blockquote><p><a href=\"https://www.bilibili.com/video/BV1aW411Q7x1/?spm_id_from=333.337.search-card.all.click\" target=\"_blank\">https://www.bilibili.com/video/BV1aW411Q7x1/?spm_id_from=333.337.search-card.all.click</a><br/></p></blockquote><p>祝大家学习愉快，考试取得满意的成绩<br/></p>', 'TEXT', 0.00, NULL, 'https://www.bilibili.com/video/BV1aW411Q7x1/?spm_id_from=333.337.search-card.all.click', 1.00, '否', '2024-05-11');
INSERT INTO `course` VALUES (14, 'http://localhost:9090/files/1715425002322-math3.jpg', '一根绳子有多长', '<p>&nbsp;一厘米将有一个新的含义，你是否会开始质疑现实生活中的构造，你测量的越精细，绳子也越长。<br/></p>', 'VIDEO', 0.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.bilibili.com/video/BV14s411o7z5/?spm_id_from=333.337.search-card.all.click', 1.00, '否', '2024-05-11');
INSERT INTO `course` VALUES (15, 'http://localhost:9090/files/1715425074969-math4.jpg', '数学大迷思', '<p>从有趣的花瓣数列、松果数列出发，在大自然的个个角落发现数学、探索数学运算是如何在大脑中运算的。<br/></p>', 'VIDEO', 0.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.bilibili.com/video/BV1Ef4y167Kk/?spm_id_from=333.337.search-card.all.click', 1.00, '否', '2024-05-11');
INSERT INTO `course` VALUES (16, 'http://localhost:9090/files/1715425162886-math5.jpg', '数学漫步', '<p>帮小科幻迷搞懂“四维空间”是不很棒的科普片，制作水准很高，但很多人表示看不懂， 适合高年级孩子看。<br/></p>', 'VIDEO', 0.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.bilibili.com/video/BV1tp411d7fG/?spm_id_from=333.337.search-card.all.click', 1.00, '否', '2024-05-11');
INSERT INTO `course` VALUES (17, 'http://localhost:9090/files/1715425182347-math9.jpg', '神秘的混沌理论', '<p>吉姆教授带着宇宙是如何从尘埃中诞生又是如何孕育出智慧生命的难题，开始了他的探秘旅程。<br/></p>', 'VIDEO', 0.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.bilibili.com/video/BV1CE411C7PZ/?spm_id_from=333.337.search-card.all.click', 1.00, '否', '2024-05-11');
INSERT INTO `course` VALUES (18, 'http://localhost:9090/files/1715425226658-math8.jpg', '伟大的疯狂', '<p>&nbsp;这部纪录片更值得一看，因为它更完整的记录了纳什的生平，并且对理论发现的全过程进行了更深入的探索。<br/></p>', 'VIDEO', 0.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.bilibili.com/video/BV1wT4y1R7uJ/?spm_id_from=333.337.search-card.all.click', 1.00, '否', '2024-05-11');
INSERT INTO `course` VALUES (19, 'http://localhost:9090/files/1715425336863-math7.jpg', '统计的乐趣', '<p>明星教授hans用一种新奇的方式和幽默的语言， 带孩子们走进妙趣横生的统计学世界。 不止孩子、任何人都会感兴趣的<br/></p>', 'VIDEO', 1.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.bilibili.com/video/BV1TJ411y7Mp/?spm_id_from=333.337.search-card.all.click', 0.20, '否', '2024-05-11');
INSERT INTO `course` VALUES (20, 'http://localhost:9090/files/1715425387983-math6.jpg', '终极密码', '<p>宇宙运行的“密码”是什么？ 从海边的鹦鹉螺，到音乐的旋律，处处都有数学的痕迹。</p>', 'VIDEO', 3.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.bilibili.com/video/BV1Vs411X7wx/?spm_id_from=333.337.search-card.all.click', 0.10, '否', '2024-05-11');

-- ----------------------------
-- Table structure for fileorder
-- ----------------------------
DROP TABLE IF EXISTS `fileorder`;
CREATE TABLE `fileorder`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `file_id` int NULL DEFAULT NULL COMMENT '资料ID',
  `score` int NULL DEFAULT NULL COMMENT '所需积分',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '兑换时间',
  `user_id` int NULL DEFAULT NULL COMMENT '兑换用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '资源订单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fileorder
-- ----------------------------
INSERT INTO `fileorder` VALUES (1, 10, 20, '20240111160758', '2024-03-02 16:07:57', 2);
INSERT INTO `fileorder` VALUES (2, 5, 20, '20240111161442', '2024-03-11 16:14:42', 6);
INSERT INTO `fileorder` VALUES (3, 2, 10, '20240420165422', '2024-04-20 16:54:22', 1);
INSERT INTO `fileorder` VALUES (4, 3, 10, '20240420165432', '2024-04-20 16:54:32', 1);
INSERT INTO `fileorder` VALUES (5, 5, 10, '20240422222706', '2024-04-22 22:27:06', 8);
INSERT INTO `fileorder` VALUES (6, 9, 10, '20240423150922', '2024-04-23 15:09:22', 8);
INSERT INTO `fileorder` VALUES (7, 10, 10, '20240511154936', '2024-05-11 15:49:36', 8);

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '资料名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '资料主图',
  `score` int NULL DEFAULT 0 COMMENT '所需积分',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上传时间',
  `recommend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '否' COMMENT '是否推荐',
  `user_id` int NULL DEFAULT NULL COMMENT '上传用户',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核状态',
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核说明',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '资料说明',
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '资料链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '资源信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES (2, '【数学分析】课后习题精讲 华东师范大学 第五版 考研复习', 'http://localhost:9090/files/1715426035949-109.jpg', 10, '2024-01-04', '否', 1, '审核通过', '符合标准', '<p>教材：数学分析 华东师范大学 第五版&nbsp;</p><p>看之前请务必自己思考！&nbsp;</p><p>讲的尽可能详细，会补充一些重要的知识点，并且复习课本的重要的定义定理。<br/></p>', 'https://www.bilibili.com/video/BV1jW4y1S7z5/?spm_id_from=333.337.search-card.all.click&vd_source=8424c565825d2b52605509af323e7dcc');
INSERT INTO `information` VALUES (3, '十万字Springboot资料', 'http://localhost:9090/files/1715426029403-106.jpg', 10, '2024-01-04', '否', 1, '审核通过', '', '<p>一、SpringBoot的starter简介<br/>1.1 什么是starter（场景启动器）<br/>在SpringBoot出现之前，如果我们想使用SpringMVC来构建我们的web项目，必须要做的几件事情如下：<br/><br/>首先项目中需要引入SpringMVC的依赖<br/>在web.xml中注册SpringMVC的DispatcherServlet，并配置url映射<br/>编写springmcv-servlet.xml，在其中配置SpringMVC中几个重要的组件，处理映射器（HandlerMapping）、处理适配器（HandlerAdapter）、视图解析器（ViewResolver）<br/>在applicationcontext.xml文件中引入springmvc-servlet.xml文件<br/>…<br/>以上这几步只是配置好了SpringMVC，如果我们还需要与数据库进行交互，就要在application.xml中配置数据库连接池DataSource，如果需要数据库事务，还需要配置TransactionManager…<br/><br/>这就是使用Spring框架开发项目带来的一些的问题：<br/><br/>依赖导入问题： 每个项目都需要来单独维护自己所依赖的jar包，在项目中使用到什么功能就需要引入什么样的依赖。手动导入依赖容易出错，且无法统一集中管理<br/>配置繁琐： 在引入依赖之后需要做繁杂的配置，并且这些配置是每个项目来说都是必要的，例如web.xml配置（Listener配置、Filter配置、Servlet配置）、log4j配置、数据库连接池配置等等。这些配置重复且繁杂，在不同的项目中需要进行多次重复开发，这在很大程度上降低了我们的开发效率<br/>而在SpringBoot出现之后，它为我们提供了一个强大的功能来解决上述的两个痛点，这就是SpringBoot的starters（场景启动器）。<br/><br/>Spring Boot通过将我们常用的功能场景抽取出来，做成的一系列场景启动器，这些启动器帮我们导入了实现各个功能所需要依赖的全部组件，我们只需要在项目中引入这些starters，相关场景的所有依赖就会全部被导入进来，并且我们可以抛弃繁杂的配置，仅需要通过配置文件来进行少量的配置就可以使用相应的功能。<br/><br/>二、SpringBoot场景启动器的原理<br/>在导入的starter之后，SpringBoot主要帮我们完成了两件事情：<br/><br/>相关组件的自动导入<br/>相关组件的自动配置<br/>这两件事情统一称为SpringBoot的自动配置<br/><br/>2.1 自动配置原理<br/>2.1.1 自动配置类的获取与注入<br/>我们从主程序入口来探索一下整个过程的原理：<br/><br/>@SpringBootApplication //标注这个类是一个springboot的应用<br/>public class CommunityApplication {<br/>    public static void main(String[] args) {<br/>        //将springboot应用启动<br/>        SpringApplication.run(CommunityApplication.class, args);<br/>    }<br/>}<br/></p>', 'https://www.baidu.com');
INSERT INTO `information` VALUES (4, 'SPSS软件的学习及应用', 'http://localhost:9090/files/1715426824583-102.jpg', 10, '2024-01-04', '否', 2, '审核通过', '', '<p>SPSS的学习之道在于实践。就像学习任何新技能一样，只有通过亲自动手、实践操作，才能真正掌握其精髓。SPSS作为一款专业的统计分析软件，其强大的功能和广泛的应用领域需要通过实践来逐步领悟和掌握。<br/><br/>首先，通过解决真实案例来学习SPSS是非常有效的。选择一些真实世界的数据集，比如调查问卷、实验数据或者市场调研数据，然后尝试运用SPSS来进行数据处理、分析和可视化。通过这种方式，你可以将理论知识与实际操作相结合，更深入地理解统计分析方法的应用和意义。<br/><br/>其次，积极参与项目或者研究也是学习SPSS的重要途径。在实际项目中，你可以应用SPSS来协助数据分析、撰写报告，并与团队成员合作解决实际问题。通过项目经验的积累，你不仅可以提高SPSS的技能水平，还能够培养解决问题的能力和团队合作精神。<br/><br/>此外，利用SPSS官方文档和在线资源也是学习的好方法。SPSS提供了详尽的帮助文档、视频教程和在线社区，可以帮助你解决各种技术问题和学习难点。通过阅读文档和参与讨论，你可以获取更多的学习资源和技术支持，加速学习进程。<br/><br/>综上所述，SPSS的学习之道在于实践。通过解决实际问题、参与项目和利用官方资源，你可以不断提升自己的SPSS技能，为将来的工作和研究打下坚实的基础。</p>', 'https://www.bilibili.com/video/BV1jX4y1P7V5/?spm_id_from=333.337.search-card.all.click&vd_source=8424c565825d2b52605509af323e7dcc');
INSERT INTO `information` VALUES (5, '复旦大学数学公开课资料汇总', 'http://localhost:9090/files/1715425873764-101.jpg', 10, '2024-01-04', '否', 1, '审核通过', '', '<p>官网精品课程&nbsp;</p><blockquote><p><a href=\"https://gdds.jpkc.fudan.edu.cn/25968/list.htm\" target=\"_blank\">https://gdds.jpkc.fudan.edu.cn/25968/list.htm</a><br/></p></blockquote>', 'https://open.163.com/newview/movie/courseintro?newurl=FEV9A2NSO');
INSERT INTO `information` VALUES (6, '大学数学基础学习笔记分享', 'http://localhost:9090/files/1715425864520-105.jpg', 10, '2024-01-04', '是', 1, '审核通过', '', '<p>（1）乘法与因式分解</p><p>a2-b2=(a+b)(a-b)；a3+b3=(a+b)(a2-ab+b2)；a3-b3=(a-b)(a2+ab+b2)。</p><p>（2）三角不等式</p><p>|a+b|≤|a|+|b|；|a-b|≤|a|+|b|；|a|≤b-b≤a≤b；|a-b|≥|a|-|b|-|a|≤a≤|a|。</p><p>（3）一元二次方程的解：-b+√(b2-4ac)/2a-b-b+√(b2-4ac)/2a。</p><p>（4）根与系数的关系：X1+X2=-b/aX1*X2=c/a，注:韦达定理。</p><p>（5）判别式</p><p>1）b2-4a=0，注:方程有相等的两实根。</p><p>2）b2-4ac&gt;0，注:方程有一个实根。</p>', 'https://www.baidu.com');
INSERT INTO `information` VALUES (7, '数学期末复习的方法', 'http://localhost:9090/files/1715426709023-math8.jpg', 10, '2024-01-04', '否', 2, '审核通过', '符合标准', '<p><strong>全面复习，把书读薄</strong></p><p>　　从历年试卷的内容分布上可以看出，凡是考试大纲中提及的内容，都可能考到，甚至某些不太重要的内容，在某一年可以在大题中出现，如98年数学一中，不但第三题是一道纯粹的解析几何题，而且还有两道题是与线性代数结合考了解析几何的内容，可见，猜题的复习方法是靠不住的，而应当参照考试大纲，全面息，不留遗漏。</p><p>　　全面复习不是生记硬背所有的知识，相反，是要抓住问题的实质和各内容，各方法的本质联系，把要记的东西缩小到最小程度，（要努力使自已理解所学知识，多抓住问题的联系，少记一些死知识），而且，不记则已，记住了就要牢靠，事实证明，有些记忆是终生不忘的，而其它的知识又可以在记住基本知识的基础上，运用它们的联系而得到。这就是全面复习的含义。</p><p>　　<strong>突出重点，精益求精</strong></p><p>　　在考试大纲的要求中，对内容有理解，了解，知道三个层次的要求；对方法有掌，会（能）两个层次的要求，一般地说，要求理解的内容，要求掌握的方法，是考试的重点。在历年考试中，这方面考题出现的概率较大；在同一份试卷中，这方面试题所占有的分数也较多。\"猜题\"的人，往往要在这方面下功夫。一般说来，也确能猜出几分来。但遇到综合题，这些题在主要内容中含有次要内容。这时，\"猜题\"便行不通了。我们讲的突出重点，不仅要在主要内容和方法上多下功夫，更重要的是要去寻找重点内容与次要内容间的联系，以主带资，用重点内容担挈整个内容。主要内容理解透了，其它的内容和方法迎刃而解。即抓出主要内容不是放弃次要内容而孤立主要内容，而是从分析各内容的联系，从比较中自然地突出主要内容。如微分中值定理，有罗尔定理，拉格朗日定理，柯西定理和泰勒公式。由于罗尔定理是拉格朗日定理的特殊情况，而柯西定理和泰勒公式又是拉格朗日定理的推广。比较这些关系，便自然得到拉格朗日定理是核心，这这个定理搞深搞透，并从联系中掌握好其它几个定理，而在考试大纲中，罗尔定理与拉格朗日定理都是要求理解的内容，都是考试重点，我们更突出拉氏定理，可谓是精益求精。</p><p>　　<strong>基本训练反复进行</strong></p><p>　　学习数学，要做一定数量的题，把基本功练熟练透，但我们不主张\"题海\"战术，而是提倡精练，即反复做一些典型的题，做致电一题多解，一题多变。要训练抽象思维能力，对些基本定理的证明，基本公式的推导，以及一些基本练习题，要作到不用书写，就象棋手下\"盲棋\"一样，只需用脑子默想，即能得到下确答案。这就是我们在前言中提到的，在20分钟内完成10道客观题。其中有些是不用动笔，一眼就能乍出答案的题，这样才叫训练有素，\"熟能生巧\"，基本功扎实的人，遇到难题办法也多，不易被难倒。相反，作练习时，眼高手低，总找难题作，结果，上了考场，遇到与自己曾经作过的类似的题目都有可能不会；不少考生把会作的题算错了，归为粗心大意，确实，人会有粗心的，但基本功扎实的人，出了错立即会发现，很少会\"粗心\"地出错。</p><p>　　高等数学是高等工科院校的重要基础课程。但对于如何学好这门课程。有些同学却是百展莫愁，头痛不已。而高数的学习、掌握和运用是后序课程的基础和保障，学不好高数，对于三大力学，还有结构设计原理来说，是不可能学好的。</p><p>　　数学是一门深奥而又有兴趣的课程。如果增加对这门课程的自信心，不要畏惧它。你会很容易接受这门课，你也会发觉其实这门课程并不难，这对于学好数学是一个非常必要的条件。</p><p>　　多想多做是学好数学的关键。多想是根本，多做是基础，多做是为了熟能生巧，是为了真正应用，是学好数学的前提条件。而多想充分发挥联想是学好数学的根本条件。学数学要知道举一反三，当老师讲到某一点或某一类型的问题时，你的思路就应拓展开来，不应仅仅局限于这一点或这一类型的问题，而应该把前面所学的知识点结合起来，想想如果你碰到这种题目你会怎么办？假如以后碰到这种类型的题目你又会怎么样？其实数学是个活学问也是个死学问。正所谓万变不离其宗。所有的题目都是所学过的公式和方法稍微转变一下过来的。对于像我这样自学的人来说，更需要多做、多想。这样才能加深理解，运用自如。</p><p>　　现在懂了，以后又不会做了。数学必须要做题，对于数学的题目要学会分析，不要忽视每一个已知条件，发现一个已知条件要联想到相关的公式，而如何能充分的灵活的运用公式。这就是多做能产生的效果。</p><p>　　学好数学，学懂数学，主要的是“通”，而如何能“通”，这就是日积月累的多想多做，只要您通过勤学苦练，坚持不懈的努力，您一定会体会到高等数学没什么可怕的。</p>', 'https://www.baidu.com');
INSERT INTO `information` VALUES (8, '数学期末考试的复习计划', 'http://localhost:9090/files/1715426653357-100.jpg', 10, '2024-01-04', '否', 2, '审核不通过', '已经上传过一个期末复习方法了！', '<p>　工欲善其事，必先利其器，首先要做的当然是收集考研的相关信息和复习资料。我那些天在北大研究生院的网页、北大未名BBS和一些考研相关的网站上得到了许多有价值的信息，让我在短时间内对考研有了许多了解，也大体上安排好了复习的时间表。事实上，在整个复习考研过程中我都很关注最新的资料和信息的收集整理，随时调整自己的复习计划，毕竟“闭门造车”的方法往往是事倍功半的，面对考研这种需要耗费大量心力的“工程”就更不可取了。</p><p>　　接下来就是一步一个脚印的复习了，但是复习考研的风格可不像期末考试前突击的那几天一样，它需要的时间少则几个月，多则一年，所以一个适合自己的复习计划是必不可少的。由于我本科时读的就是数学，在专业课上的复习压力相对小些，所以我选择在最后两个多月在家里全力复习备考，之前的几个月在业余时间以看书浏览各科知识点为主，偶尔做做题。</p><p>　　有了计划，更关键的是严格执行它。其实这个道理大家都明白，但俗话说：计划赶不上变化。今天可能你最要好的同学拉着你聚会，明天可能你身体不适一整天都看不进多少东西，大家有各自的情况，我反正这些事都赶上过不止一次，之后一般都选择每天把复习的量加大一点，争取能在几天之内把损失的时间补上。另外，我觉得复习计划也不宜定得太长、太详细，就像《每天爱你八小时》里梁朝伟说的：“我不能保证24小时之后的事。”每天早晨根据具体情况定好当天的计划就行了，第二天到了再说第二天的，如果你连今天的都没完成，那明天的计划提前定了也是白搭。但这并不表示一个长期的计划没有用，大家心里应该衡量好比如用大约多久看完这本书啦，用多久做完这本习题集啦，不然的话会在考试临近的时候发现好多最初计划要做的复习工作没时间做了。</p><p>　　具体到各科，对于公共课政治其实我是最头疼的（相信好多研友也是跟我同样的感觉），因为文科的东西重在积累，而这种需要记和背的活儿感觉总是很累人。我对付它的方法是“书读千遍，其意自现”，当然千遍是读不到，但那本“红宝书”我读了肯定有五遍，岳华亭的那本我也看了三遍。我一般选择做数学做的比较累了之后抱着政治参考书浏览，指望逐字逐句记住是不现实的，但把知识点理解了之后，能够用自己的话说出来还是不难的，前几遍可能看得比较慢，到后来大部分都熟了，只要在一些没掌握的地方留一下心就好了，今年的考题证明这种靠理解而不是靠背的方法还算是对路的。</p><p>　　公共课英语中我感觉阅读是最重要的（其实很显然，占分多嘛），而想要提高阅读水平的前提是单词量一定要过关，就是大纲里给的单词要无条件掌握，毕竟要读懂句子就要先认识单词才行。其实对于考研英语我没有太多的心得，只能给大家介绍一下我练模拟题用的书：一本是毕金献的\'模拟题，难度比较大，但认真做下来会感觉很有收获；张锦芯的那本难度没有前者大，但跟最后真题比较相似，推荐做模拟考试用。</p><p>　　关于数学专业课的复习，由于介绍多了大家也不一定感兴趣，毕竟都是考不同专业的，所以我只想跟大家分享一下对于理科类科目复习共同的心得，那就是——做题。所谓“重剑无锋，大巧不工”，“做题”真的是我认为取得考研成功的关键，甚至是唯一的道路。专业课本的书后习题一定要做，一方面，通过做题检验你是否真正掌握了知识，还能进一步加深对其的理解；另一方面，出题的老师往往是教过这门课的，那课本自然是出题的最大依据，课后习题一般都很具有代表性，完全可以变个样子甚至就原样出成考题，用来考察考生的知识掌握程度再合适不过了。跟课程相关的习题集也可以有选择性地做，不是要搞题海战术，而是作为对课本题目的补充，比如复习数学分析时就很有必要做做《吉米多维奇数学分析习题集》。另外，如果能够拿到往届的或正在上这门课的同学的平时作业习题，也很有参考价值的，因为对同一本书不同的老师侧重点也会有所不同，这可以从他平时给学生留作业的风格看出来，而这个老师出题的风格也许就会出现在你的专业课试卷上。</p><p>　　复习考研说起来往往是个很艰辛的过程，但当你身处其中时，并不一定只会觉得苦。有时会因为取得一点进步而欣喜，有时会面临困难而苦恼，其中的点点滴滴都是一种生活经历，从中学到的不只是知识，还有许多终生值得借鉴的经验，需要自己体会。</p><p>　　何苦不现在就把握机遇，挑战新的高峰，给自己的人生定制一个清晰的方向。</p><p>　　在安适的山寨容易埋葬憧憬，在舒适的田野容易迷失方向。失去竞争实力时才去感叹时光如逝，何苦不现在就把握机遇，挑战新的高峰，给自己的人生定制一个清晰的方向。我希冀，我付出，所以我收获。你是否也像我一样为考研奋斗而最终收获呢？你的心中是否有明确的计划去实现你的理想呢？在此我希望与大家分享自己的心得与体会，使大家少走弯路，顺利攀登考研高峰。</p><p>　　制订好整体复习计划，合理安排复习时间，是相当重要的。对数学复习而言，我将其大体分成三个阶段。</p><p>　　<strong>一、以书为本，总体把握</strong></p><p>　　因为课本对基本概念的定义，基本原理的推导都是十分准确、精练的，掌握了这些基础知识体系，后续阶段的复习会取得事半功倍的效果。有些同学一开始就盲目地追求做题数量，忽视了课本的复习，那是极不可取的。必须通过对课本的复习，理出一个知识框架体系，从总体上把握考点。另外，必须定期总结和巩固前一阶段所学习的知识，温故而知新。</p><p>　　<strong>二、认真做题，广积思路</strong></p><p>　　众所周知，数学还是以练为主的。除了第一阶段必须完成课本上的习题外，主要的精力应集中在陈老师和黄老师本书所提到的黄老师均为黄先开教授。主编的《复习指南》上。刚做这本书上的习题时，我真有点力不从心，有时觉得解题方法很奇特，而答案也有些突兀。经过陈老师和黄老师上课时仔细地讲解，我对这些难点有了更深刻的理解。老师们稳重的授课风格，有条不紊的解题思路，以及循序渐进、举一反三的教学方法使大家能够更有效地吸收知识。我想强调融会贯通的重要性，千万别为了做题而做题，因为做题只是一种手段而已。应通过做题将所学知识点联系起来，并将所学的思路与方法为己所用。</p><p>　　<strong>三、研究真题，查漏补缺</strong></p><p>　　从一些研究生介绍和自我感觉来说，真题的作用绝对是其他模拟题所不可替代的。只要你仔细研究就会发现历史是如此惊人地相似，很多考题都是貌离神合。应该用一到两个月的时间来做和研究近十年真题，包括数（一）到数（四）中你要考的内容。这不仅可作为检测自己最直接的手段，而且更重要的是能让考生熟悉考试的内容和侧重点，了解命题人的命题思路。在分析真题时，可找出自己的不足，再回到课本和辅导书进行复习巩固，理解的程度自然就加深了。至于模拟题应有选择地做几套，目的只是练练手，切勿一味贪多。</p>', 'https://www.baidu.com');
INSERT INTO `information` VALUES (9, 'Matlab实战学习', 'http://localhost:9090/files/1715426644042-107.jpg', 10, '2024-01-04', '否', 2, '审核通过', '', '<h3></h3><h1><span style=\"font-weight: normal;\" id=\"augwf\">实践才是学MATLAB的最好方法</span></h1><div><p>实践确实是学习MATLAB的最佳途径。正如学习任何新技能一样，理论知识只有通过实践才能真正巩固和应用。MATLAB作为一种强大的数学计算软件，涵盖了广泛的领域，包括工程、科学、数据分析等。通过实践，你可以更直观地理解它的功能和应用场景。<br/><br/>首先，通过解决问题来学习MATLAB是非常有效的。选择一些简单的问题，比如数值计算、数据可视化或者简单的算法实现，然后尝试用MATLAB来解决。从简单的开始，逐渐增加难度，这样你可以逐步掌握更多的功能和技巧。<br/><br/>其次，参与项目或者实验也是学习MATLAB的好方法。无论是在学校、工作还是个人项目中，都可以应用MATLAB来处理数据、模拟系统或者实现算法。通过实际项目的经验，你不仅可以学到MATLAB的知识，还能学习到实际问题解决的方法和技巧。<br/><br/>此外，阅读和参考MATLAB的文档和示例也是非常重要的。MATLAB提供了丰富的文档和示例代码，涵盖了各种功能和用法。通过阅读文档和运行示例代码，你可以更全面地了解MATLAB的功能和用法，并且可以借鉴他人的经验和技巧。<br/><br/>总之，学习MATLAB的最佳方法是实践。通过解决问题、参与项目和阅读文档，你可以不断地提高自己的MATLAB技能，从而更好地应用它解决实际问题。</p></div>', 'https://www.bilibili.com/video/BV1D84y1y7nr/?spm_id_from=333.337.search-card.all.click&vd_source=8424c565825d2b52605509af323e7dcc');
INSERT INTO `information` VALUES (10, 'R语言的学习', 'http://localhost:9090/files/1715426902166-103.jpg', 10, '2024-01-04', '否', 6, '审核通过', '符合标准', '<p>学习R语言是一项有趣而又具有挑战性的任务，但是通过系统和有计划的学习，你可以迅速掌握这门强大的统计分析工具。<br/><br/>1. **了解基础概念**：开始学习R语言之前，建议先了解一些基本的统计学和数据分析概念，比如数据类型、变量、统计指标等。这些知识将有助于你更好地理解R语言的使用场景和功能。<br/><br/>2. **学习语法和基本操作**：R语言的语法类似于其他编程语言，但也有其独特之处。你可以通过阅读教程或者参加在线课程来学习R语言的语法规则和基本操作，包括变量赋值、向量操作、函数调用等。<br/><br/>3. **掌握数据处理技巧**：R语言在数据处理和数据分析方面表现出色。学习如何读取、清洗、转换和处理数据是使用R语言的重要一步。你可以通过练习来掌握R语言中常用的数据处理技巧和函数。<br/><br/>4. **学习统计分析方法**：R语言是一个强大的统计分析工具，提供了丰富的统计方法和函数。你可以学习如何使用R语言进行描述性统计、假设检验、回归分析、聚类分析等常用的统计分析方法。<br/><br/>5. **练习项目和案例**：通过参与实际项目和解决真实案例来巩固所学知识。选择一些感兴趣的数据集，尝试用R语言进行数据分析和可视化，并且尝试解决其中的问题和挑战。<br/><br/>6. **阅读文档和社区交流**：R语言有庞大的用户社区和丰富的文档资源，你可以通过阅读官方文档、参加用户社区或者访问在线论坛来获取更多的学习资源和技术支持。<br/><br/>最重要的是保持耐心和持续的学习态度。学习R语言可能会遇到挑战，但是通过坚持不懈地学习和实践，你一定能够掌握这门强大的数据分析工具。</p><p>学习R语言就像是一场充满未知和惊喜的冒险。它不仅是一门编程语言，更是一扇通向数据之门的钥匙。在这个探险之旅中，你将穿越数据的大洋，探索数据的海底世界，发现其中的宝藏和秘密。R语言是你的船只，带领你穿越数据的浪潮，探索数据的深处。<br/><br/>在这个旅程中，你将遇到各种形式和规模的数据集。有些数据集可能是结构化的，包含在表格中；有些可能是非结构化的，如文本、图像或音频数据；还有一些可能是半结构化的，需要进行处理和清洗。学习R语言就是学习如何处理和分析这些不同类型的数据，发现它们的内在规律和关联性。<br/><br/>通过学习R语言，你将掌握各种数据处理和分析技能。你将学会如何读取数据，从各种来源如CSV、Excel、数据库等；如何清洗数据，处理缺失值、异常值和重复值；如何转换数据，进行数据变换和标准化；如何探索数据，进行描述性统计、可视化和探索性数据分析。你还将学习如何应用统计方法和机器学习算法，从数据中挖掘出有价值的信息和见解。<br/><br/>在这个探险之旅中，你将不断面对挑战和困难。有时候你可能会遇到数据集太大而无法一次性加载到内存中；有时候你可能会遇到数据集质量不佳或格式不统一；有时候你可能会遇到分析问题复杂而难以解决。但正是通过克服这些困难，你才能不断成长，不断提升自己的技能和能力。<br/><br/>最重要的是，学习R语言是一种持续的过程。数据世界变化万千，新的挑战和问题不断涌现，而R语言作为一种开源和灵活的工具，也在不断更新和演进。因此，保持好奇心，保持学习的态度，不断探索和实践，才能在这个数据之旅中不断前行，不断成长。</p>', 'https://www.bilibili.com/video/BV1fh411H7vi/?spm_id_from=333.337.search-card.all.click');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '今天系统正式上线，开始内测', '今天系统正式上线，开始内测', '2024-04-05', 'admin');
INSERT INTO `notice` VALUES (2, '所有功能都已完成，可以正常使用', '所有功能都已完成，可以正常使用', '2024-04-05', 'admin');
INSERT INTO `notice` VALUES (3, '今天天气很不错，可以出去一起玩了', '今天天气很不错，可以出去一起玩了', '2024-04-05', 'admin');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `course_id` int NULL DEFAULT NULL COMMENT '课程ID',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '订单价格',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '下单时间',
  `user_id` int NULL DEFAULT NULL COMMENT '下单用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '课程订单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (2, 8, 100.00, '20240110151136', '2024-03-10 15:11:36', 2);
INSERT INTO `orders` VALUES (3, 8, 90.00, '20240110151332', '2024-03-10 15:13:32', 1);
INSERT INTO `orders` VALUES (4, 7, 18.00, '20240110153430', '2024-03-10 15:34:30', 1);
INSERT INTO `orders` VALUES (6, 3, 40.00, '20240110153641', '2024-03-10 15:36:41', 1);
INSERT INTO `orders` VALUES (7, 10, 90.00, '20240110153655', '2024-03-10 15:36:55', 1);
INSERT INTO `orders` VALUES (8, 11, 0.10, '20240420162741', '2024-04-20 16:27:41', 1);
INSERT INTO `orders` VALUES (9, 4, 0.10, '20240420164259', '2024-04-20 16:42:59', 1);
INSERT INTO `orders` VALUES (10, 5, 0.10, '20240420164312', '2024-04-20 16:43:12', 1);
INSERT INTO `orders` VALUES (11, 11, 0.10, '20240422222608', '2024-04-22 22:26:08', 8);
INSERT INTO `orders` VALUES (12, 5, 0.10, '20240423150825', '2024-04-23 15:08:25', 8);
INSERT INTO `orders` VALUES (14, 10, 0.10, '20240506194843', '2024-05-06 19:48:43', 8);
INSERT INTO `orders` VALUES (15, 7, 0.10, '20240506213843', '2024-05-06 21:38:43', 8);

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程封面',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程名称',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '课程介绍',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程类型',
  `price` int NULL DEFAULT 0 COMMENT '课程积分',
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程视频',
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '资料链接',
  `recommend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '否' COMMENT '是否推荐',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '积分专区表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (1, 'http://localhost:9090/files/1704264305020-Java基础入门课程.jpg', 'Springboot零基础小白学习教程', '', 'VIDEO', 0, 'http://localhost:9090/files/1704264385595-人间失格.mp4', 'https://www.baidu.com', '否', '2024-03-03');
INSERT INTO `score` VALUES (3, 'http://localhost:9090/files/1704264523087-JavaWeb实战学习课程.jpeg', 'Java实战项目带你快速实现从0到1的跨越', '', 'TEXT', 0, NULL, 'https://www.baidu.com', '否', '2024-03-03');
INSERT INTO `score` VALUES (4, 'http://localhost:9090/files/1704264567376-Springboot+Vue分布式实战.jpg', 'Springboot+vue的实战项目', '', 'TEXT', 0, NULL, 'https://www.baidu.com', '否', '2024-03-03');
INSERT INTO `score` VALUES (5, 'http://localhost:9090/files/1704264611155-Vue最新教程.jpg', 'Vue的最新教程', '', 'TEXT', 0, NULL, 'https://www.baidu.com', '否', '2024-03-03');
INSERT INTO `score` VALUES (6, 'http://localhost:9090/files/1704264656611-Java入学课程.jpg', 'Java从入门到实战课程', '', 'TEXT', 0, NULL, 'https://www.baidu.com', '否', '2024-03-03');
INSERT INTO `score` VALUES (7, 'http://localhost:9090/files/1704264669921-Vue全套教程.jpg', 'Vue项目实战视频教程', '', 'TEXT', 0, NULL, 'https://www.baidu.com', '否', '2024-03-03');
INSERT INTO `score` VALUES (8, 'http://localhost:9090/files/1704264702674-Vue进阶项目实战.jpg', 'Vue实战项目教程', '', 'TEXT', 0, NULL, 'https://www.baidu.com', '否', '2024-03-03');
INSERT INTO `score` VALUES (9, 'http://localhost:9090/files/1704264739918-Java进阶开发课程.jpg', 'Java实战项目进阶课程', '', 'TEXT', 0, NULL, 'https://www.baidu.com', '是', '2024-03-03');

-- ----------------------------
-- Table structure for scoreorder
-- ----------------------------
DROP TABLE IF EXISTS `scoreorder`;
CREATE TABLE `scoreorder`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `score_id` int NULL DEFAULT NULL COMMENT '积分课程ID',
  `score` int NULL DEFAULT NULL COMMENT '所需积分',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '兑换时间',
  `user_id` int NULL DEFAULT NULL COMMENT '兑换用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '积分专区表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scoreorder
-- ----------------------------
INSERT INTO `scoreorder` VALUES (1, 9, 30, '20240111150746', '2024-03-11 15:07:46', 1);
INSERT INTO `scoreorder` VALUES (2, 8, 20, '20240111151507', '2024-03-11 15:15:07', 1);
INSERT INTO `scoreorder` VALUES (3, 7, 30, '20240111151543', '2024-03-11 15:15:43', 1);

-- ----------------------------
-- Table structure for signin
-- ----------------------------
DROP TABLE IF EXISTS `signin`;
CREATE TABLE `signin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '签到时间',
  `day` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '当天年月日',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '签到信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of signin
-- ----------------------------
INSERT INTO `signin` VALUES (16, 1, '2024-04-22 13:34:18', '2024-04-22');
INSERT INTO `signin` VALUES (17, 2, '2024-01-08 23:24:49', '2024-03-08');
INSERT INTO `signin` VALUES (18, 8, '2024-05-11 15:20:03', '2024-05-11');
INSERT INTO `signin` VALUES (19, 6, '2024-05-11 19:33:05', '2024-05-11');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `member` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '会员',
  `score` int NULL DEFAULT 0 COMMENT '积分',
  `account` double(10, 2) NULL DEFAULT 0.00 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zhangsan', '123456', '张三', 'http://localhost:9090/files/1703754381592-柴犬.jpeg', 'USER', '18877776666', 'zhangsan@xm.com', '会员', 60, 5943.70);
INSERT INTO `user` VALUES (2, 'lisi', '123456', '李四', 'http://localhost:9090/files/1703754542393-柯基.jpeg', 'USER', '18899990000', 'lisi@xm.com', '非会员', 10, 0.00);
INSERT INTO `user` VALUES (6, 'wangwu', '123456', '王五', 'http://localhost:9090/files/1703755711737-拉布拉多.jpeg', 'USER', '18899990000', 'wangwu@xm.com', '非会员', 20, 0.00);
INSERT INTO `user` VALUES (7, 'zhaoliu', '123456', '赵六', 'http://localhost:9090/files/1703755730433-金毛.jpeg', 'USER', '18866665555', 'zhaoliu@xm.com', '非会员', 0, 0.00);
INSERT INTO `user` VALUES (8, 'yaoshun', '123456', '姚顺', 'http://localhost:9090/files/1713764268745-柴犬.jpeg', 'USER', '18135416541', 'yaoshun@xupt.cn', '会员', 20, 5349.50);

SET FOREIGN_KEY_CHECKS = 1;
