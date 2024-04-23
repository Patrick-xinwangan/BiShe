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

 Date: 23/04/2024 12:37:33
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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '评论信息表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '课程信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 'http://localhost:9090/files/1703835490804-博客论坛系统.jpg', '博客论坛系统，基于SpringBoot+Vue的博客论坛系统', '', 'TEXT', 0.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.baidu.com/', 1.00, '是', '2024-01-02');
INSERT INTO `course` VALUES (3, 'http://localhost:9090/files/1703835884819-中国助农扶贫网.jpg', '助农扶贫系统，基于Springboot+Vue的助农扶贫网', '', 'TEXT', 0.00, NULL, 'https://www.baidu.com/', 0.10, '否', '2024-01-02');
INSERT INTO `course` VALUES (4, 'http://localhost:9090/files/1703839366950-宠物之家系统.jpg', '宠物之家管理系统，基于Springboot+Vue的宠物管理系统', '', 'VIDEO', 1.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.baidu.com/', 0.10, '否', '2024-01-02');
INSERT INTO `course` VALUES (5, 'http://localhost:9090/files/1703840572693-天猫商城+推荐算法.jpg', '电商+推荐算法，基于Springboot+Vue+协同过滤推荐算法的网上购物商城系统', '', 'VIDEO', 1.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.baidu.com/', 0.10, '是', '2024-01-02');
INSERT INTO `course` VALUES (6, 'http://localhost:9090/files/1704186962103-飞鱼酒店预订网.jpg', '飞鱼酒店预订网，基于Springboot+Vue的酒店预订系统', '', 'VIDEO', 1.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.baidu.com/', 0.10, '否', '2024-01-02');
INSERT INTO `course` VALUES (7, 'http://localhost:9090/files/1704187047042-企业人力资源管理系统.jpg', '企业人力资源管理系统，基于Springboot+Vue+企业人力资源管理系统', '', 'VIDEO', 1.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.baidu.com/', 0.10, '否', '2024-01-02');
INSERT INTO `course` VALUES (8, 'http://localhost:9090/files/1704187091406-医院预约挂号系统.jpg', '医院预约挂号系统，基于Springboot+Vue的挂号预约系统', '', 'VIDEO', 1.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.baidu.com/', 0.10, '否', '2024-01-02');
INSERT INTO `course` VALUES (9, 'http://localhost:9090/files/1704187169966-实验室预约系统.jpg', '实验室预约系统，基于Springboot+Vue的实验室预约系统', '', 'VIDEO', 1.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.baidu.com/', 0.10, '否', '2024-01-02');
INSERT INTO `course` VALUES (10, 'http://localhost:9090/files/1704187213647-教务管理系统.jpg', '教务管理系统，基于Springboot+Vue的教务系统', '', 'VIDEO', 1.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.baidu.com/', 0.10, '否', '2024-01-02');
INSERT INTO `course` VALUES (11, 'http://localhost:9090/files/1704187255637-高校社团系统.jpg', '高校社团管理系统，基于Springboot+Vue的高校社团管理系统', '', 'VIDEO', 1.00, 'http://localhost:9090/files/1703835588577-人间失格.mp4', 'https://www.baidu.com/', 0.10, '否', '2024-01-02');

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '资源订单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fileorder
-- ----------------------------
INSERT INTO `fileorder` VALUES (1, 10, 20, '20240111160758', '2024-01-11 16:07:57', 2);
INSERT INTO `fileorder` VALUES (2, 5, 20, '20240111161442', '2024-01-11 16:14:42', 6);
INSERT INTO `fileorder` VALUES (3, 2, 10, '20240420165422', '2024-04-20 16:54:22', 1);
INSERT INTO `fileorder` VALUES (4, 3, 10, '20240420165432', '2024-04-20 16:54:32', 1);
INSERT INTO `fileorder` VALUES (5, 5, 10, '20240422222706', '2024-04-22 22:27:06', 8);

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
INSERT INTO `information` VALUES (2, '科学健身视频资料', 'http://localhost:9090/files/1704355405419-3.png', 10, '2024-01-04', '否', 1, '审核通过', '符合标准', '', 'https://www.baidu.com');
INSERT INTO `information` VALUES (3, '十万字Springboot资料', 'http://localhost:9090/files/1704355712332-9.png', 10, '2024-01-04', '否', 1, '审核通过', '符合标准', '<p>一、SpringBoot的starter简介<br/>1.1 什么是starter（场景启动器）<br/>在SpringBoot出现之前，如果我们想使用SpringMVC来构建我们的web项目，必须要做的几件事情如下：<br/><br/>首先项目中需要引入SpringMVC的依赖<br/>在web.xml中注册SpringMVC的DispatcherServlet，并配置url映射<br/>编写springmcv-servlet.xml，在其中配置SpringMVC中几个重要的组件，处理映射器（HandlerMapping）、处理适配器（HandlerAdapter）、视图解析器（ViewResolver）<br/>在applicationcontext.xml文件中引入springmvc-servlet.xml文件<br/>…<br/>以上这几步只是配置好了SpringMVC，如果我们还需要与数据库进行交互，就要在application.xml中配置数据库连接池DataSource，如果需要数据库事务，还需要配置TransactionManager…<br/><br/>这就是使用Spring框架开发项目带来的一些的问题：<br/><br/>依赖导入问题： 每个项目都需要来单独维护自己所依赖的jar包，在项目中使用到什么功能就需要引入什么样的依赖。手动导入依赖容易出错，且无法统一集中管理<br/>配置繁琐： 在引入依赖之后需要做繁杂的配置，并且这些配置是每个项目来说都是必要的，例如web.xml配置（Listener配置、Filter配置、Servlet配置）、log4j配置、数据库连接池配置等等。这些配置重复且繁杂，在不同的项目中需要进行多次重复开发，这在很大程度上降低了我们的开发效率<br/>而在SpringBoot出现之后，它为我们提供了一个强大的功能来解决上述的两个痛点，这就是SpringBoot的starters（场景启动器）。<br/><br/>Spring Boot通过将我们常用的功能场景抽取出来，做成的一系列场景启动器，这些启动器帮我们导入了实现各个功能所需要依赖的全部组件，我们只需要在项目中引入这些starters，相关场景的所有依赖就会全部被导入进来，并且我们可以抛弃繁杂的配置，仅需要通过配置文件来进行少量的配置就可以使用相应的功能。<br/><br/>二、SpringBoot场景启动器的原理<br/>在导入的starter之后，SpringBoot主要帮我们完成了两件事情：<br/><br/>相关组件的自动导入<br/>相关组件的自动配置<br/>这两件事情统一称为SpringBoot的自动配置<br/><br/>2.1 自动配置原理<br/>2.1.1 自动配置类的获取与注入<br/>我们从主程序入口来探索一下整个过程的原理：<br/><br/>@SpringBootApplication //标注这个类是一个springboot的应用<br/>public class CommunityApplication {<br/>    public static void main(String[] args) {<br/>        //将springboot应用启动<br/>        SpringApplication.run(CommunityApplication.class, args);<br/>    }<br/>}<br/></p>', 'https://www.baidu.com');
INSERT INTO `information` VALUES (4, '20G口才演讲视频教程', 'http://localhost:9090/files/1704356078819-1.png', 10, '2024-01-04', '否', 2, '审核通过', '符合标准', '<p>数学是一门让很多同学都头疼的学科，到了大学除了法学等个别社会科学专业的学生，都摆脱不了对它的学习，但因为它的相对复杂性，使得数学成了一门挂科率很高的学科，正像大学校园里经常调侃的：“大学里面都有一颗树，叫做“高数”，很多人都挂在上面。”很多同学不爱学习数学，认为自己学不好，但是数学对我们的日常生活很重要，涉及面也十分广泛，我感觉只要掌握好数学的学习方法，学起来应该还是比较容易的，下面给大家分享一下高数的学习方法。</p><p>　　每个人的学习习惯和理解问题的能力也有所不同，但一般的方法还是有规律的，想要学好数学必不可少的有以下几个环节。</p><p>　　一、培养兴趣。</p><p>　　大家都知道，想要把一件事做好首先要对其有兴趣，学习也是一样。很多同学看见数学复杂多变的符号和公式，头就变大了。一开始便对其产生了厌恶，不爱学习导致成绩下滑，成绩不好就对其更加厌烦，久而久之成了一个循环的怪圈。所以想学好数学，首当其冲的是培养对它的兴趣，把学数学当成一种快乐的事，同学们可以试着从简单的题目开始学习，每解出一道问题心里就会有种成就感，大大提高对数学的兴趣，然后在逐步向难度大的题目过度，使学数学成为一种习惯。</p><p>　　二、课前预习。</p><p>　　这一过程很重要，因为只有课前预习过，才会在听课时做到心中有数，即老师所讲的内容哪些是属于难以理解的，什么是重点等。预习的过程也不需要花太多时间，一般地一次课内容花三、四十分钟左右时间就可以了。在预习时不必要把所有问题弄懂，只要带着这些不懂的问题去听课就行。</p><p>　　三、认真听讲，记好笔记。</p><p>　　对于上课要用心听讲大家都明白，但要记好课堂笔记的重要性有的同学就不以为然了，认为教材上都有，大可不必去记。其实这种认识是错误的，也是中学里带来的一种不良的学习习惯。老师对于高等数学课程的讲授，绝对不是教材上的内容的简单重复，而是翻阅了大量的同类参考书，而结合自己的教学经验与体会，所以毫不夸张地说，教师的授课教案既有以往成功的经验体会，同时也有过去的教训的借鉴。因此，同学在听课的同时必须记好课堂笔记，同时这种好的学习习惯即勤动笔对于自己学习及工作能力的培养也是大有好处的。</p><p>　　四、跟随老师，积极互动。</p><p>　　上面说了上课要认真听讲记好笔记，与此同时上课积极发言、踊跃的与老师做好互动也非常重要。上课积极回答老师提出的问题，老师的讲课状态就会越好，从而可以多讲一些有用的知识。这样课堂气氛也活跃了，有了更好的学习氛围，老师通过学生的反应与互动，更清楚的了解学生接受的程度，以调整自己的讲课方式和速度等，以便同学们更好的理解。学习是一个互动的过程，所以师生间的交流必不可少。</p><p>　　五、课后复习，整理笔记，多做题</p><p>　　课后的自习，不少人是赶快做作业，这也是一种不好的习惯，其实下课后应该进一步认真钻研教材或教学参考书，在完全弄懂本次课内容之后，整理充实课堂笔记，有些需要理解的地方添上自己的心得与体会，把书本上的知识真正变成自己掌握的知识，然后再完成作业，这要比下课就赶作业的效果要好得多，而且完成作业的速度也要快得多。理科类的东西重要的还是多加练习，多做习题，才能更好地运用和理解公式，培养出良好的解题思路和逻辑思维。</p><p>　　六、善于归纳</p><p>　　人的记忆力是有限的，要全面记住所有有用的东西而不遗忘是很难办到的，怎么办呢?这就需要对自己学的知识加以归纳总结，找出它们之间的内在联系和共同本质的东西，然后使之系统化条理化，从而记住最有代表性的知识点，而其余部分只要在此基础上经过推理便可以了解。每学完一章，自己要作总结。总结包括一章中的基本概念，核心内容;本章解决了什么问题，是怎样解决的;依靠哪些重要理论和结论，解决问题的思路是什么?理出条理，归纳出要点与核心内容以及自己对问题的理解和体会。最后是全课程的总结。在考试前要作总结，这个总结将全书内容加以整理概括，分析所学的内容，掌握各章之间的联系。这个总结很重要，是对全课程核心内容、重要理论与方法的综合整理。在总结的基础上，自己对全书内容要有更深一层的了解，要对一些稍有难度的题加以分析解决以检验自己对全部内容的掌握。</p><p>　　总之，大学的学习是人生中最后一个系统的学习过程，它不仅要传授给我们一个比较完整的专业知识，还要培养学生即将走向社会的工作能力和社会知识。就高等数学课程而言，是培养我们学生的观察判断能力、逻辑思维能力、自学能力以及动手解题的能力，而这几种能力结合起来，就可以构成独立分析问题的能力和解决问题的能力。在此，期望大家高度重视高等数学的学习，找到适合自己的学习方法，相信大家会获得更大的收获。</p>', 'https://www.baidu.com');
INSERT INTO `information` VALUES (5, '复旦大学哲学公开课资料汇总', 'http://localhost:9090/files/1704360538622-5.png', 10, '2024-01-04', '否', 1, '审核通过', '符合标准', '<p>一、课程背景</p><p><br/></p><p>马克思主义哲学是马克思主义理论体系的核心部分，它以科学的世界观和方法论为</p><p>工人阶级和人类解放提供了强大的思想武器。随着时代的发展，马克思主义哲学不</p><p>断得到丰富和发展，为我国社会主义事业提供了有力的理论支持。本课程旨在深入</p><p>研究马克思主义哲学的基本原理，探讨其在当代社会的意义和价值，以期提高学生</p><p>的理论素养和实践能力。</p><p><br/></p><p>二、教学目标</p><p>1. </p><p>理解马克思主义哲学的基本原理，包括唯物史观、辩证法等。</p><p>2. </p><p>掌握马克思主义哲学在当代社会中的意义和价值。</p><p>3. </p><p>学会运用马克思主义哲学分析当代社会问题，提高实践能力。</p><p>4. </p><p>增强对社会主义核心价值观的认同和信仰。</p><p> </p><p>三、教学内容</p><p>1. </p><p>马克思主义哲学的产生和发展历程。</p><p>2. </p><p>马克思主义哲学的基本原理，如唯物史观、辩证法等。</p><p>3. </p><p>马克思主义哲学在当代社会中的意义和价值。</p><p>4. </p><p>运用马克思主义哲学分析当代社会问题。</p><p>5. </p><p>社会主义核心价值观的内涵和意义。</p><p> </p><p>四、教学方法</p><p>1. </p><p>讲授：讲解马克思主义哲学的基本原理、发展历程及其在当代社会中的意义和</p><p>价值。</p><p>2. </p><p>案例分析：通过分析当代社会问题，让学生学会运用马克思主义哲学进行分析。</p><p>3. </p><p>小组讨论：分组讨论社会主义核心价值观在当代社会中的实践，激发学生的思</p><p>考。</p><p>4. </p><p>课后作业：布置相关阅读材料，让学生进一步深入理解马克思主义哲学。</p>', 'https://www.baidu.com');
INSERT INTO `information` VALUES (6, '大学数学基础学习笔记分享', 'http://localhost:9090/files/1704360594976-lun-1.jpg', 10, '2024-01-04', '否', 1, '审核通过', '符合标准', '<p>（1）乘法与因式分解</p><p>a2-b2=(a+b)(a-b)；a3+b3=(a+b)(a2-ab+b2)；a3-b3=(a-b)(a2+ab+b2)。</p><p>（2）三角不等式</p><p>|a+b|≤|a|+|b|；|a-b|≤|a|+|b|；|a|≤b-b≤a≤b；|a-b|≥|a|-|b|-|a|≤a≤|a|。</p><p>（3）一元二次方程的解：-b+√(b2-4ac)/2a-b-b+√(b2-4ac)/2a。</p><p>（4）根与系数的关系：X1+X2=-b/aX1*X2=c/a，注:韦达定理。</p><p>（5）判别式</p><p>1）b2-4a=0，注:方程有相等的两实根。</p><p>2）b2-4ac&gt;0，注:方程有一个实根。</p>', 'https://www.baidu.com');
INSERT INTO `information` VALUES (7, '5万字Java基础资料下载', 'http://localhost:9090/files/1704360655310-7.png', 10, '2024-01-04', '否', 2, '审核通过', '符合标准', '<p><strong>全面复习，把书读薄</strong></p><p>　　从历年试卷的内容分布上可以看出，凡是考试大纲中提及的内容，都可能考到，甚至某些不太重要的内容，在某一年可以在大题中出现，如98年数学一中，不但第三题是一道纯粹的解析几何题，而且还有两道题是与线性代数结合考了解析几何的内容，可见，猜题的复习方法是靠不住的，而应当参照考试大纲，全面息，不留遗漏。</p><p>　　全面复习不是生记硬背所有的知识，相反，是要抓住问题的实质和各内容，各方法的本质联系，把要记的东西缩小到最小程度，（要努力使自已理解所学知识，多抓住问题的联系，少记一些死知识），而且，不记则已，记住了就要牢靠，事实证明，有些记忆是终生不忘的，而其它的知识又可以在记住基本知识的基础上，运用它们的联系而得到。这就是全面复习的含义。</p><p>　　<strong>突出重点，精益求精</strong></p><p>　　在考试大纲的要求中，对内容有理解，了解，知道三个层次的要求；对方法有掌，会（能）两个层次的要求，一般地说，要求理解的内容，要求掌握的方法，是考试的重点。在历年考试中，这方面考题出现的概率较大；在同一份试卷中，这方面试题所占有的分数也较多。\"猜题\"的人，往往要在这方面下功夫。一般说来，也确能猜出几分来。但遇到综合题，这些题在主要内容中含有次要内容。这时，\"猜题\"便行不通了。我们讲的突出重点，不仅要在主要内容和方法上多下功夫，更重要的是要去寻找重点内容与次要内容间的联系，以主带资，用重点内容担挈整个内容。主要内容理解透了，其它的内容和方法迎刃而解。即抓出主要内容不是放弃次要内容而孤立主要内容，而是从分析各内容的联系，从比较中自然地突出主要内容。如微分中值定理，有罗尔定理，拉格朗日定理，柯西定理和泰勒公式。由于罗尔定理是拉格朗日定理的特殊情况，而柯西定理和泰勒公式又是拉格朗日定理的推广。比较这些关系，便自然得到拉格朗日定理是核心，这这个定理搞深搞透，并从联系中掌握好其它几个定理，而在考试大纲中，罗尔定理与拉格朗日定理都是要求理解的内容，都是考试重点，我们更突出拉氏定理，可谓是精益求精。</p><p>　　<strong>基本训练反复进行</strong></p><p>　　学习数学，要做一定数量的题，把基本功练熟练透，但我们不主张\"题海\"战术，而是提倡精练，即反复做一些典型的题，做致电一题多解，一题多变。要训练抽象思维能力，对些基本定理的证明，基本公式的推导，以及一些基本练习题，要作到不用书写，就象棋手下\"盲棋\"一样，只需用脑子默想，即能得到下确答案。这就是我们在前言中提到的，在20分钟内完成10道客观题。其中有些是不用动笔，一眼就能乍出答案的题，这样才叫训练有素，\"熟能生巧\"，基本功扎实的人，遇到难题办法也多，不易被难倒。相反，作练习时，眼高手低，总找难题作，结果，上了考场，遇到与自己曾经作过的类似的题目都有可能不会；不少考生把会作的题算错了，归为粗心大意，确实，人会有粗心的，但基本功扎实的人，出了错立即会发现，很少会\"粗心\"地出错。</p><p>　　高等数学是高等工科院校的重要基础课程。但对于如何学好这门课程。有些同学却是百展莫愁，头痛不已。而高数的学习、掌握和运用是后序课程的基础和保障，学不好高数，对于三大力学，还有结构设计原理来说，是不可能学好的。</p><p>　　数学是一门深奥而又有兴趣的课程。如果增加对这门课程的自信心，不要畏惧它。你会很容易接受这门课，你也会发觉其实这门课程并不难，这对于学好数学是一个非常必要的条件。</p><p>　　多想多做是学好数学的关键。多想是根本，多做是基础，多做是为了熟能生巧，是为了真正应用，是学好数学的前提条件。而多想充分发挥联想是学好数学的根本条件。学数学要知道举一反三，当老师讲到某一点或某一类型的问题时，你的思路就应拓展开来，不应仅仅局限于这一点或这一类型的问题，而应该把前面所学的知识点结合起来，想想如果你碰到这种题目你会怎么办？假如以后碰到这种类型的题目你又会怎么样？其实数学是个活学问也是个死学问。正所谓万变不离其宗。所有的题目都是所学过的公式和方法稍微转变一下过来的。对于像我这样自学的人来说，更需要多做、多想。这样才能加深理解，运用自如。</p><p>　　现在懂了，以后又不会做了。数学必须要做题，对于数学的题目要学会分析，不要忽视每一个已知条件，发现一个已知条件要联想到相关的公式，而如何能充分的灵活的运用公式。这就是多做能产生的效果。</p><p>　　学好数学，学懂数学，主要的是“通”，而如何能“通”，这就是日积月累的多想多做，只要您通过勤学苦练，坚持不懈的努力，您一定会体会到高等数学没什么可怕的。</p>', 'https://www.baidu.com');
INSERT INTO `information` VALUES (8, '6万字Java多线程学习笔记', 'http://localhost:9090/files/1704360682237-2.png', 10, '2024-01-04', '否', 2, '审核不通过', '不符合标准', '<p>　工欲善其事，必先利其器，首先要做的当然是收集考研的相关信息和复习资料。我那些天在北大研究生院的网页、北大未名BBS和一些考研相关的网站上得到了许多有价值的信息，让我在短时间内对考研有了许多了解，也大体上安排好了复习的时间表。事实上，在整个复习考研过程中我都很关注最新的资料和信息的收集整理，随时调整自己的复习计划，毕竟“闭门造车”的方法往往是事倍功半的，面对考研这种需要耗费大量心力的“工程”就更不可取了。</p><p>　　接下来就是一步一个脚印的复习了，但是复习考研的风格可不像期末考试前突击的那几天一样，它需要的时间少则几个月，多则一年，所以一个适合自己的复习计划是必不可少的。由于我本科时读的就是数学，在专业课上的复习压力相对小些，所以我选择在最后两个多月在家里全力复习备考，之前的几个月在业余时间以看书浏览各科知识点为主，偶尔做做题。</p><p>　　有了计划，更关键的是严格执行它。其实这个道理大家都明白，但俗话说：计划赶不上变化。今天可能你最要好的同学拉着你聚会，明天可能你身体不适一整天都看不进多少东西，大家有各自的情况，我反正这些事都赶上过不止一次，之后一般都选择每天把复习的量加大一点，争取能在几天之内把损失的时间补上。另外，我觉得复习计划也不宜定得太长、太详细，就像《每天爱你八小时》里梁朝伟说的：“我不能保证24小时之后的事。”每天早晨根据具体情况定好当天的计划就行了，第二天到了再说第二天的，如果你连今天的都没完成，那明天的计划提前定了也是白搭。但这并不表示一个长期的计划没有用，大家心里应该衡量好比如用大约多久看完这本书啦，用多久做完这本习题集啦，不然的话会在考试临近的时候发现好多最初计划要做的复习工作没时间做了。</p><p>　　具体到各科，对于公共课政治其实我是最头疼的（相信好多研友也是跟我同样的感觉），因为文科的东西重在积累，而这种需要记和背的活儿感觉总是很累人。我对付它的方法是“书读千遍，其意自现”，当然千遍是读不到，但那本“红宝书”我读了肯定有五遍，岳华亭的那本我也看了三遍。我一般选择做数学做的比较累了之后抱着政治参考书浏览，指望逐字逐句记住是不现实的，但把知识点理解了之后，能够用自己的话说出来还是不难的，前几遍可能看得比较慢，到后来大部分都熟了，只要在一些没掌握的地方留一下心就好了，今年的考题证明这种靠理解而不是靠背的方法还算是对路的。</p><p>　　公共课英语中我感觉阅读是最重要的（其实很显然，占分多嘛），而想要提高阅读水平的前提是单词量一定要过关，就是大纲里给的单词要无条件掌握，毕竟要读懂句子就要先认识单词才行。其实对于考研英语我没有太多的心得，只能给大家介绍一下我练模拟题用的书：一本是毕金献的\'模拟题，难度比较大，但认真做下来会感觉很有收获；张锦芯的那本难度没有前者大，但跟最后真题比较相似，推荐做模拟考试用。</p><p>　　关于数学专业课的复习，由于介绍多了大家也不一定感兴趣，毕竟都是考不同专业的，所以我只想跟大家分享一下对于理科类科目复习共同的心得，那就是——做题。所谓“重剑无锋，大巧不工”，“做题”真的是我认为取得考研成功的关键，甚至是唯一的道路。专业课本的书后习题一定要做，一方面，通过做题检验你是否真正掌握了知识，还能进一步加深对其的理解；另一方面，出题的老师往往是教过这门课的，那课本自然是出题的最大依据，课后习题一般都很具有代表性，完全可以变个样子甚至就原样出成考题，用来考察考生的知识掌握程度再合适不过了。跟课程相关的习题集也可以有选择性地做，不是要搞题海战术，而是作为对课本题目的补充，比如复习数学分析时就很有必要做做《吉米多维奇数学分析习题集》。另外，如果能够拿到往届的或正在上这门课的同学的平时作业习题，也很有参考价值的，因为对同一本书不同的老师侧重点也会有所不同，这可以从他平时给学生留作业的风格看出来，而这个老师出题的风格也许就会出现在你的专业课试卷上。</p><p>　　复习考研说起来往往是个很艰辛的过程，但当你身处其中时，并不一定只会觉得苦。有时会因为取得一点进步而欣喜，有时会面临困难而苦恼，其中的点点滴滴都是一种生活经历，从中学到的不只是知识，还有许多终生值得借鉴的经验，需要自己体会。</p><p>　　何苦不现在就把握机遇，挑战新的高峰，给自己的人生定制一个清晰的方向。</p><p>　　在安适的山寨容易埋葬憧憬，在舒适的田野容易迷失方向。失去竞争实力时才去感叹时光如逝，何苦不现在就把握机遇，挑战新的高峰，给自己的人生定制一个清晰的方向。我希冀，我付出，所以我收获。你是否也像我一样为考研奋斗而最终收获呢？你的心中是否有明确的计划去实现你的理想呢？在此我希望与大家分享自己的心得与体会，使大家少走弯路，顺利攀登考研高峰。</p><p>　　制订好整体复习计划，合理安排复习时间，是相当重要的。对数学复习而言，我将其大体分成三个阶段。</p><p>　　<strong>一、以书为本，总体把握</strong></p><p>　　因为课本对基本概念的定义，基本原理的推导都是十分准确、精练的，掌握了这些基础知识体系，后续阶段的复习会取得事半功倍的效果。有些同学一开始就盲目地追求做题数量，忽视了课本的复习，那是极不可取的。必须通过对课本的复习，理出一个知识框架体系，从总体上把握考点。另外，必须定期总结和巩固前一阶段所学习的知识，温故而知新。</p><p>　　<strong>二、认真做题，广积思路</strong></p><p>　　众所周知，数学还是以练为主的。除了第一阶段必须完成课本上的习题外，主要的精力应集中在陈老师和黄老师本书所提到的黄老师均为黄先开教授。主编的《复习指南》上。刚做这本书上的习题时，我真有点力不从心，有时觉得解题方法很奇特，而答案也有些突兀。经过陈老师和黄老师上课时仔细地讲解，我对这些难点有了更深刻的理解。老师们稳重的授课风格，有条不紊的解题思路，以及循序渐进、举一反三的教学方法使大家能够更有效地吸收知识。我想强调融会贯通的重要性，千万别为了做题而做题，因为做题只是一种手段而已。应通过做题将所学知识点联系起来，并将所学的思路与方法为己所用。</p><p>　　<strong>三、研究真题，查漏补缺</strong></p><p>　　从一些研究生介绍和自我感觉来说，真题的作用绝对是其他模拟题所不可替代的。只要你仔细研究就会发现历史是如此惊人地相似，很多考题都是貌离神合。应该用一到两个月的时间来做和研究近十年真题，包括数（一）到数（四）中你要考的内容。这不仅可作为检测自己最直接的手段，而且更重要的是能让考生熟悉考试的内容和侧重点，了解命题人的命题思路。在分析真题时，可找出自己的不足，再回到课本和辅导书进行复习巩固，理解的程度自然就加深了。至于模拟题应有选择地做几套，目的只是练练手，切勿一味贪多。</p>', 'https://www.baidu.com');
INSERT INTO `information` VALUES (9, '电脑制图PS从零实战资料', 'http://localhost:9090/files/1704360713381-6.png', 10, '2024-01-04', '否', 2, '审核通过', '符合标准', '<h3>一、软件的安装</h3><p>PS有特别多的版本，每年都会出一个新版本，版本越高，功能越人性化，但是常用的功能都是一样的，<b>尽量选择自己电脑匹配能流畅运行的版本</b>，如果你的电脑平时用起来就很流畅，基本上不会出现卡顿，那我推荐你安装2020以上的版本，如果你的电脑自己平时用着都有些卡顿，那我推荐你使用2020以下的版本；</p><p><b>PS软件对CPU要求高一点</b>，如果你想买电脑学PS，尽量选择CPU性能高一些的，对显卡的要求不是很高。</p><h3>二、软件学习</h3><p>软件的学习讲究的是一个<b>循序渐进</b>，不能一个新手刚上来就做高难度练习，第一是因为你不懂原理，根本不知道为什么这样操作，第二浪费时间，离开这个视频你还是啥也不会！</p><p>所以一定要<b>先打好基础，学会原理</b>！可以<b>按照下面这个思维导图的内容进行学习</b></p><p><img src=\"http://localhost:9090/files/1713602910360-ps.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p>大家可以把每部分拆分开，比如今天要学习首选项的功能，明天学习画笔、选区等等，<b>给自己制定一个学习计划</b>！</p><p><b>我给你们大致制定了一个PS学习的计划，可以参考一下！</b></p><p><b>第一部分学习内容：</b></p><p>认识软件的界面、首选项基础设置、自定义设置、PS的基础工具以及工具的属性栏如何使用，主要包括移动工具、选区工具、裁切工具、画笔工具、文字工具、渐变工具、钢笔工具等；</p><p>基础的一些原理，分辨率、像素、位图矢量图、颜色模式（RGB、CMYK）、图片的格式和特点；</p><p><b>注意：大家在学习的过程中，最好记一些工具的使用原理，这样温故知新会记得更牢固！</b></p><p><b>下面这些是我写的关于原理的讲解，主要是关于PS的一些基础操作，非常适合新手学习，如果你对这些比较了解的话，可以直接看第二部分。</b></p><p><b>第二部分学习内容：</b></p><p>图层、蒙版、通道的原理，图层样式的使用，图层的混合模式，调整图层的操作方法，蒙版的像素操作和矢量操作，智能对象、智能图层、智能滤镜，自由变换，色相饱和度、曲线、色阶、通道混合器、色彩平衡等调整图层的原理和使用方法。</p><p><b>第三部分学习内容：</b></p><p>前两部分打好基础了，第三周开始直接案例实战，提升速度最快；</p><p>抠图、调色、做合成、证件照修图、一些PS的案例比如双重曝光、丁达尔效应、故障风效果、粒子效果、气泡效果、星轨制作、黑白照片上色、动漫风格制作等，让自己的理论结合工具运用的更熟练；直接<b>上手操作，这一块的内容非常多！</b></p><p><a href=\"https://zhuanlan.zhihu.com/p/65824778\"></a></p><p><b>第四部分学习内容：</b></p><p>如果你能坚持到这里呢，你的PS技术已经可以说非常的熟练，现在可以学习一些跟设计理论有关的内容。</p>', 'https://www.baidu.com');
INSERT INTO `information` VALUES (10, '《边城》分享', 'http://localhost:9090/files/1704360754251-9.png', 10, '2024-01-04', '是', 6, '审核通过', '符合标准', '<p>小说《边城》里的文字总是不经意的撩拨着我的心弦，文中处处浸润着湘楚景色，处处是淳厚质朴的风味人情，字里行间飘散着一种淡淡的诗意。读起它时你便会被忧伤围绕，像是触及到了什么，是怀念儿时那个有着暖阳的冬日午后？还是现在这个让我有些把握不透的世界？</p><p>　　“由四川过湖南去，靠东有一条官路。这官路将近湘西边境到了一个地方名为“茶峒”的小山城时，有一小溪，溪边有座白色小塔，塔下住了一户单独的人家。这人家只一个老人，一个女孩子，一只黄狗。”</p><p>　　这便是沈从文先生带给我们的他的边城，一座沉默的城，一座质朴的城，一座宿命的城，从开始到结束似乎都在默默的隐忍着什么。翠翠，这个像观音一样的女孩子，她就是这座城的化身，从恋上了那个在梦中可以用歌声将她带到很远地方的人儿开始，她便选择了沉默，虽然内心起伏不定，表面却始终如一。文中的结局疼爱她的祖父在雷雨夜里去世，天保淹死，白塔坍塌，默默相爱的青年恋人离去。翠翠依然重复着母亲的命运，惟有等待，“那人也许永远不会回来，也许明天就会回来。”</p><p>　　沈从文先生从人物的内心深处，以简练而又细腻，散淡而又自然的笔法刻画着人物的心理，使人不由自主的融入人物的心灵世界，融入湘西这片纯朴漂亮的土地，融入那群温良率直的人们中，他用诗一般的语言的轻声述说着整个民族的悲哀，召唤我们炎黄子孙本性的良知，正是因为爱得这般深沉才孕育了这些带着哀思的文字。</p><p>　　我在想，为何取名小说《边城》，在心里它就这么“遥远”吗？还是在沈从文先生心灵深处正守护着什么？其实我们每个人心灵深处不都有一座“边城”吗？也许那座悲天悯人的城已经随着历史的洪流沉入那厚重的底色中，而留给我们的是对人生和社会的深深思考。</p>', 'https://www.baidu.com');

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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '课程订单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (2, 8, 100.00, '20240110151136', '2024-01-10 15:11:36', 2);
INSERT INTO `orders` VALUES (3, 8, 90.00, '20240110151332', '2024-01-10 15:13:32', 1);
INSERT INTO `orders` VALUES (4, 7, 18.00, '20240110153430', '2024-01-10 15:34:30', 1);
INSERT INTO `orders` VALUES (5, 6, 18.00, '20240110153529', '2024-01-10 15:35:29', 1);
INSERT INTO `orders` VALUES (6, 3, 40.00, '20240110153641', '2024-01-10 15:36:41', 1);
INSERT INTO `orders` VALUES (7, 10, 90.00, '20240110153655', '2024-01-10 15:36:55', 1);
INSERT INTO `orders` VALUES (8, 11, 0.10, '20240420162741', '2024-04-20 16:27:41', 1);
INSERT INTO `orders` VALUES (9, 4, 0.10, '20240420164259', '2024-04-20 16:42:59', 1);
INSERT INTO `orders` VALUES (10, 5, 0.10, '20240420164312', '2024-04-20 16:43:12', 1);
INSERT INTO `orders` VALUES (11, 11, 0.10, '20240422222608', '2024-04-22 22:26:08', 8);

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
INSERT INTO `score` VALUES (1, 'http://localhost:9090/files/1704264305020-Java基础入门课程.jpg', 'Springboot零基础小白学习教程', '', 'VIDEO', 0, 'http://localhost:9090/files/1704264385595-人间失格.mp4', 'https://www.baidu.com', '否', '2024-01-03');
INSERT INTO `score` VALUES (3, 'http://localhost:9090/files/1704264523087-JavaWeb实战学习课程.jpeg', 'Java实战项目带你快速实现从0到1的跨越', '', 'TEXT', 0, NULL, 'https://www.baidu.com', '否', '2024-01-03');
INSERT INTO `score` VALUES (4, 'http://localhost:9090/files/1704264567376-Springboot+Vue分布式实战.jpg', 'Springboot+vue的实战项目', '', 'TEXT', 0, NULL, 'https://www.baidu.com', '否', '2024-01-03');
INSERT INTO `score` VALUES (5, 'http://localhost:9090/files/1704264611155-Vue最新教程.jpg', 'Vue的最新教程', '', 'TEXT', 0, NULL, 'https://www.baidu.com', '否', '2024-01-03');
INSERT INTO `score` VALUES (6, 'http://localhost:9090/files/1704264656611-Java入学课程.jpg', 'Java从入门到实战课程', '', 'TEXT', 0, NULL, 'https://www.baidu.com', '否', '2024-01-03');
INSERT INTO `score` VALUES (7, 'http://localhost:9090/files/1704264669921-Vue全套教程.jpg', 'Vue项目实战视频教程', '', 'TEXT', 0, NULL, 'https://www.baidu.com', '否', '2024-01-03');
INSERT INTO `score` VALUES (8, 'http://localhost:9090/files/1704264702674-Vue进阶项目实战.jpg', 'Vue实战项目教程', '', 'TEXT', 0, NULL, 'https://www.baidu.com', '否', '2024-01-03');
INSERT INTO `score` VALUES (9, 'http://localhost:9090/files/1704264739918-Java进阶开发课程.jpg', 'Java实战项目进阶课程', '', 'TEXT', 0, NULL, 'https://www.baidu.com', '是', '2024-01-03');

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
INSERT INTO `scoreorder` VALUES (1, 9, 30, '20240111150746', '2024-01-11 15:07:46', 1);
INSERT INTO `scoreorder` VALUES (2, 8, 20, '20240111151507', '2024-01-11 15:15:07', 1);
INSERT INTO `scoreorder` VALUES (3, 7, 30, '20240111151543', '2024-01-11 15:15:43', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '签到信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of signin
-- ----------------------------
INSERT INTO `signin` VALUES (16, 1, '2024-04-22 13:34:18', '2024-04-22');
INSERT INTO `signin` VALUES (17, 2, '2024-01-08 23:24:49', '2024-01-08');
INSERT INTO `signin` VALUES (18, 8, '2024-04-22 13:47:34', '2024-04-22');

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
INSERT INTO `user` VALUES (2, 'lisi', '123456', '李四', 'http://localhost:9090/files/1703754542393-柯基.jpeg', 'USER', '18899990000', 'lisi@xm.com', '非会员', 0, 0.00);
INSERT INTO `user` VALUES (6, 'wangwu', '123456', '王五', 'http://localhost:9090/files/1703755711737-拉布拉多.jpeg', 'USER', '18899990000', 'wangwu@xm.com', '非会员', 0, 0.00);
INSERT INTO `user` VALUES (7, 'zhaoliu', '123456', '赵六', 'http://localhost:9090/files/1703755730433-金毛.jpeg', 'USER', '18866665555', 'zhaoliu@xm.com', '非会员', 0, 0.00);
INSERT INTO `user` VALUES (8, 'yaoshun', '123456', '姚顺', 'http://localhost:9090/files/1713764268745-柴犬.jpeg', 'USER', '18135416541', 'yaoshun@xupt.cn', '会员', 0, 5249.90);

SET FOREIGN_KEY_CHECKS = 1;
