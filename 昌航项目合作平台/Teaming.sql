/*
 Navicat Premium Data Transfer

 Source Server         : root_teaming
 Source Server Type    : MariaDB
 Source Server Version : 100408
 Source Host           : localhost:3306
 Source Schema         : Teaming

 Target Server Type    : MariaDB
 Target Server Version : 100408
 File Encoding         : 65001

 Date: 24/05/2020 20:31:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college`  (
  `college_id` int(11) NOT NULL,
  `college_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `college_logo` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`college_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES (1, '材料科学与工程学院', '/image/college_logo/cl.png');
INSERT INTO `college` VALUES (2, '环境与化学工程学院', '/image/college_logo/hh.png');
INSERT INTO `college` VALUES (3, '航空制造工程学院', '/image/college_logo/hz.png');
INSERT INTO `college` VALUES (4, '信息工程学院', '/image/college_logo/xg.png');
INSERT INTO `college` VALUES (5, '外国语学院', '/image/college_logo/wy.png');
INSERT INTO `college` VALUES (6, '飞行器工程学院', '/image/college_logo/fxq.png');
INSERT INTO `college` VALUES (7, '数学与信息科学学院', '/image/college_logo/sx.png');
INSERT INTO `college` VALUES (8, '测试与光电工程学院', '/image/college_logo/cg.png');
INSERT INTO `college` VALUES (9, '经济管理学院', '/image/college_logo/jg.png');
INSERT INTO `college` VALUES (10, '体育学院', '/image/college_logo/ty.png');
INSERT INTO `college` VALUES (11, '土木建筑学院', '/image/college_logo/tm.png');
INSERT INTO `college` VALUES (12, '艺术与设计学院', '/image/college_logo/ys.png');
INSERT INTO `college` VALUES (14, '文法学院', '/image/college_logo/wf.png');
INSERT INTO `college` VALUES (15, '音乐学院', '/image/college_logo/yy.png');
INSERT INTO `college` VALUES (16, '通航学院', '/image/college_logo/th.png');
INSERT INTO `college` VALUES (20, '软件学院', '/image/college_logo/rj.png');
INSERT INTO `college` VALUES (22, '国际教育学院', '/image/college_logo/gj.png');

-- ----------------------------
-- Table structure for com_college
-- ----------------------------
DROP TABLE IF EXISTS `com_college`;
CREATE TABLE `com_college`  (
  `com_id` int(11) NOT NULL,
  `college_id` int(11) NOT NULL,
  PRIMARY KEY (`com_id`, `college_id`) USING BTREE,
  INDEX `foreign_key2`(`college_id`) USING BTREE,
  CONSTRAINT `com_college_ibfk_1` FOREIGN KEY (`com_id`) REFERENCES `competition` (`com_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `com_college_ibfk_2` FOREIGN KEY (`college_id`) REFERENCES `college` (`college_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_college
-- ----------------------------
INSERT INTO `com_college` VALUES (1, 1);
INSERT INTO `com_college` VALUES (1, 2);
INSERT INTO `com_college` VALUES (1, 3);
INSERT INTO `com_college` VALUES (1, 4);
INSERT INTO `com_college` VALUES (1, 5);
INSERT INTO `com_college` VALUES (1, 6);
INSERT INTO `com_college` VALUES (1, 7);
INSERT INTO `com_college` VALUES (1, 8);
INSERT INTO `com_college` VALUES (1, 9);
INSERT INTO `com_college` VALUES (1, 10);
INSERT INTO `com_college` VALUES (1, 11);
INSERT INTO `com_college` VALUES (1, 12);
INSERT INTO `com_college` VALUES (1, 14);
INSERT INTO `com_college` VALUES (1, 15);
INSERT INTO `com_college` VALUES (1, 16);
INSERT INTO `com_college` VALUES (1, 20);
INSERT INTO `com_college` VALUES (1, 22);
INSERT INTO `com_college` VALUES (2, 1);
INSERT INTO `com_college` VALUES (2, 2);
INSERT INTO `com_college` VALUES (2, 3);
INSERT INTO `com_college` VALUES (2, 4);
INSERT INTO `com_college` VALUES (2, 5);
INSERT INTO `com_college` VALUES (2, 6);
INSERT INTO `com_college` VALUES (2, 7);
INSERT INTO `com_college` VALUES (2, 8);
INSERT INTO `com_college` VALUES (2, 9);
INSERT INTO `com_college` VALUES (2, 10);
INSERT INTO `com_college` VALUES (2, 11);
INSERT INTO `com_college` VALUES (2, 12);
INSERT INTO `com_college` VALUES (2, 14);
INSERT INTO `com_college` VALUES (2, 15);
INSERT INTO `com_college` VALUES (2, 16);
INSERT INTO `com_college` VALUES (2, 20);
INSERT INTO `com_college` VALUES (2, 22);
INSERT INTO `com_college` VALUES (3, 20);
INSERT INTO `com_college` VALUES (4, 12);
INSERT INTO `com_college` VALUES (5, 2);
INSERT INTO `com_college` VALUES (6, 9);
INSERT INTO `com_college` VALUES (7, 11);
INSERT INTO `com_college` VALUES (8, 3);
INSERT INTO `com_college` VALUES (9, 15);
INSERT INTO `com_college` VALUES (10, 1);
INSERT INTO `com_college` VALUES (10, 2);
INSERT INTO `com_college` VALUES (10, 3);
INSERT INTO `com_college` VALUES (10, 4);
INSERT INTO `com_college` VALUES (10, 5);
INSERT INTO `com_college` VALUES (10, 6);
INSERT INTO `com_college` VALUES (10, 7);
INSERT INTO `com_college` VALUES (10, 8);
INSERT INTO `com_college` VALUES (10, 9);
INSERT INTO `com_college` VALUES (10, 10);
INSERT INTO `com_college` VALUES (10, 11);
INSERT INTO `com_college` VALUES (10, 12);
INSERT INTO `com_college` VALUES (10, 14);
INSERT INTO `com_college` VALUES (10, 15);
INSERT INTO `com_college` VALUES (10, 16);
INSERT INTO `com_college` VALUES (10, 20);
INSERT INTO `com_college` VALUES (10, 22);
INSERT INTO `com_college` VALUES (11, 4);
INSERT INTO `com_college` VALUES (11, 20);

-- ----------------------------
-- Table structure for competition
-- ----------------------------
DROP TABLE IF EXISTS `competition`;
CREATE TABLE `competition`  (
  `com_id` int(11) NOT NULL,
  `com_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(7) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `com_logo` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `com_introduction` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`com_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of competition
-- ----------------------------
INSERT INTO `competition` VALUES (1, '数学建模竞赛', '国家一等', '/image/competition_logo/sxjm.jpg', '全国大学生数学建模竞赛是国家教委高教司和中国工业与应用数学学会共同主办的面向全国大学生的群众性科技活动。竞赛题目一般来源于工程技术和管理科学等方面经过适当简化加工的实际问题，不要求参赛者预先掌握深入的专门知识，只需要学过普通高校的数学课程。题目有较大的灵活性供参赛者发挥其创造能力。参赛者三人一组，在为期三天的时间内根据题目要求，完成一篇包括模型的假设、建立和求解、计算方法的设计和计算机实现、结果的分析和检验、模型的改进等方面的论文（即答卷）。');
INSERT INTO `competition` VALUES (2, '\"三小\"项目', NULL, '/image/competition_logo/sanxiao.jpg', '“三小”（小发明、小制作、小创作）是由南昌航空大学开展的活动，参与团队有为期一年的时间完成自己的项目');
INSERT INTO `competition` VALUES (3, '微信小程序设计大赛', NULL, '/image/competition_logo/xiaochengxu.jpg', '微信小程序设计大赛基于微信小程序平台的创新应用开发设计，可以单人参赛或自由组队，每支参赛队伍人数最多不超过4人，允许跨年级、跨专业、跨校和跨赛区组队。每人只能参加一支队伍，大赛将分为小程序和小游戏两种类别进行竞赛，二者具有不同的作品要求、评审标准和奖项设置，每支参赛队伍只能选择一个类别参加比赛。');
INSERT INTO `competition` VALUES (4, '两岸新锐设计竞赛', NULL, '/image/competition_logo/huacan.png', '两岸新锐设计竞赛“华灿奖”，旨在发现、推介两岸四地青年设计师的综合设计赛事。竞赛面向青年设计师和高校师生，以创新、时尚、实用为评审原则，选拔最具创新意识和培养潜力的青年设计人才，从而增进两岸四地青年设计人才的交流与互动，推动中国设计事业的创新发展.');
INSERT INTO `competition` VALUES (5, '全国大学生化工设计竞赛', NULL, '/image/competition_logo/huagong.png', '为了多方面培养大学生的创新思维和工程技能，培养团队协作精神，增强大学生的工程设计与实践能力，实践“卓越工程师教育培养计划”，中国化工学会、中国化工教育协会在东华工程科技股份有限公司和恒逸石化股份有限公司的冠名赞助下举办“东华科技-恒逸石化杯”全国大学生化工设计竞赛。\r\n在初赛阶段，参赛队伍根据竞赛命题和要求，完成方案设计，提交设计作品的电子文档和书面文档，决赛时参赛队要提交书面文档并进行口头报告和现场答辩，由评审委员会评选获奖队伍.');
INSERT INTO `competition` VALUES (6, '市场调查与分析大赛', NULL, '/image/competition_logo/cra.png', '大赛设置专科组、本科组两个组别。专科组和本科组均设知识赛和实践赛两个竞赛环节。其中知识赛为个人赛，采取在线网考方式；实践赛为团体赛形式，分为分区赛（专科组不设分区赛）和全国总决赛（暨海峡两岸大学生市场调查与分析大赛大陆地区选拔赛）。个人知识赛合格的选手自行组队参加实践赛，每个团队由3-5名选手组成。');
INSERT INTO `competition` VALUES (7, '先进成图技术与产品信息建模大赛', NULL, '/image/competition_logo/xianjinchengtu.png', '全国大学生先进成图技术与产品信息建模创新大赛是由教育部高等学校工程图学课程教学指导委员会、中国图学学会制图技术专业委员会、中国图学学会产品信息建模专业委员会联合主办的图学类课程最高级别的国家级赛事。被誉为“图学界的奥林匹克”，受到全国许多高校的普遍重视。');
INSERT INTO `competition` VALUES (8, '三维数字化创新设计大赛', NULL, '/image/competition_logo/sanwei.png', '全国三维数字化创新设计大赛（简称“全国 3D 大赛”或 3DDS），以“三维数字化”与“创新设计”为特色，突出体现科技进步和产业升级的要求，是大众创新、万众创业的具体实践。全国3D大赛自2008年发起举办以来，已连续成功举办至第13届，受到各地方、高校和企业的重视，赛事规模稳定扩大，参赛高校连续每届超过600所、参赛企业每年超过1000家，初赛参赛人数累积突破700万人、省赛表彰获奖选手累积突破16万人、国赛表彰获奖选手累积突破1.6万人；参赛作品水平不断提升，涌现出了一大批优秀设计作品与团队，并快速成长为行业新锐与翘楚,备受业界关注。');
INSERT INTO `competition` VALUES (9, '全国高校钢琴大赛', NULL, '/image/competition_logo/gangqin.png', '全国高校钢琴大赛是由中国高等教育学会主办，柏斯音乐集团、国音臻艺文化传媒集团共同承办的全国性钢琴比赛，大赛的设立旨在推动我国钢琴艺术的发展，促进钢琴演奏、教育人才的成长，通过竞赛的方式，遴选出成绩优秀的青年钢琴演奏者，进行表彰和奖掖。');
INSERT INTO `competition` VALUES (10, '大学生服务外包创新大赛', NULL, '/image/competition_logo/waibao.png', '大赛分为A、B两类，其中A类为企业命题，B类为创业实践。参赛队可从两类比赛中选择一类参加。\r\n大赛的主要目的是搭建产学结合的大学生服务外包创新创业能力展示平台；赛题一方面来源于现代服务产业企业的现实需求，鼓励学生综合考虑业务模型、技术方案、商业运营等各种因素，提供完整方案，立足实际情况创新应用；另一方面，大赛还鼓励参赛团队提出有创造力的创意项目，在优秀方案的基础上实现创业，增强大学生的创新创业意识。在评审环节过程与结果并重，增强能力培养导向，尤其关注团队的综合素质、学习能力与问题解决能力。');
INSERT INTO `competition` VALUES (11, '大学生计算机设计大赛', NULL, '/image/competition_logo/jisuanji.png', '“大赛”内容目前分设软件应用与开发类、微课与课件类、数字媒体设计类普通组、数字媒体设计类专业组、计算机音乐创作类、数字媒体设计类中华民族文化组、软件服务外包类等类组。以后将根据需要适当增设竞赛领域，使各大系列的学生都有充分展示其计算机应用与创作才智的平台。\r\n“大赛”过程分初赛和决赛两个阶段，初赛主要通过省级（直辖市、自治区级）预赛和国赛网评的方式筛选作品，决赛采用现场演示和答辩方式。');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_time` date NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `com_id` int(11) NOT NULL,
  `num_people` int(11) NULL DEFAULT 1,
  `stage` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `detail` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `aim_college` int(11) NULL DEFAULT NULL,
  `news_remain_time` int(11) NULL DEFAULT 10,
  `views` int(11) NULL DEFAULT 0,
  `likes` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`news_id`) USING BTREE,
  INDEX `foreign_key1`(`user_id`) USING BTREE,
  INDEX `foreign_key2`(`com_id`) USING BTREE,
  INDEX `foreign_key3`(`aim_college`) USING BTREE,
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `news_ibfk_2` FOREIGN KEY (`com_id`) REFERENCES `competition` (`com_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `news_ibfk_3` FOREIGN KEY (`aim_college`) REFERENCES `college` (`college_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (3, '顶顶顶', '2019-11-19', 'ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 1, 6, '准备中', '宋大哥热爱贝贝贴吧', 14, 0, 2, 0);
INSERT INTO `news` VALUES (6, 'teaming', '2020-02-07', 'ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 2, 1, '准备中', 'asdfghjkljhggffdd', 4, 0, 0, 0);
INSERT INTO `news` VALUES (7, '乐扣乐扣lklkl', '2020-02-11', 'ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 3, 3, '准备中', '给，规范和快递客服管理后来看到发给你哈给，规范和快递客服管理后来看到发给你哈给，规范和快递客服管理后来看到发给你哈给，规范和快递客服管理后来看到发给你哈给，规范和快递客服管理后来看到发给你哈', 1, 0, 2, 1);
INSERT INTO `news` VALUES (8, '软件开发', '2020-02-12', 'ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 3, 1, '准备中', '紫云母隐隐作痛高准翼无名指婆儿你新坡一鱼香肉丝我肉哦', 20, 0, 2, 0);
INSERT INTO `news` VALUES (9, '节目民族风', '2020-02-12', 'ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 2, 4, '准备中', '哦哦购周末6466764986468', 4, 0, 2, 1);
INSERT INTO `news` VALUES (10, '建模了', '2020-02-12', 'ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 1, 2, '准备中', '米诺斯特拉的人来说说的不一样好吗？？？？？？', 7, 0, 5, 2);
INSERT INTO `news` VALUES (11, '林俊杰', '2020-02-12', 'ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 1, 5, '准备中', '路路通可口可乐了了', 3, 0, 0, 0);
INSERT INTO `news` VALUES (12, '略略略', '2020-02-12', 'ooSHI5clVNf1dl60Xr-RY0U14WmA', 2, 2, '准备中', '燃气热水器里回去睡觉了我', 4, 0, 2, 1);
INSERT INTO `news` VALUES (13, '需要一个plmm', '2020-02-12', 'ooSHI5Z2ctsK9kob1hlMmk5AOIkY', 2, 2, '准备中', '需要一群一群一群plmm', 4, 0, 3, 2);
INSERT INTO `news` VALUES (14, '吃吃吃', '2020-02-12', 'ooSHI5RHE-djoo0OUHaXUaZMW79A', 2, 5, '准备中', '不咋不咋不在', 2, 0, 13, 3);
INSERT INTO `news` VALUES (16, 'qqqhgc', '2020-02-13', 'ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 3, 1, '准备中', 'sdgfdgfsdgfsgsdgsfdffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffsfgsfdgsdfg', 4, 0, 7, 1);
INSERT INTO `news` VALUES (17, 'popopo', '2020-02-13', 'ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 1, 2, '准备中', '但是覅古河道覅送给和房东i事故后大佛寺的风格v合适的佛牌该函数的赔付给好评大夫', 2, 0, 7, 1);
INSERT INTO `news` VALUES (18, '啪啦啪啦啪2', '2020-02-13', 'ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 1, 5, '已经开始一个月', '劈里啪啦劈里啪啦劈里啪啦劈里啪啦', 2, 0, 26, 5);
INSERT INTO `news` VALUES (19, '我图可以233', '2020-02-14', 'ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 3, 3, '宣传中', 'ds欧舒丹粉红色的和相符合abc', 4, 0, 44, 1);
INSERT INTO `news` VALUES (20, '水水水呵呵呵哈哈哈哈哈啊哈哈哈哈哈哈啊哈', '2020-02-15', 'ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 1, 3, '中期le', '的很多很多很多很多很多\n打开大家都觉得\n的开导开导开导开导看\n打卡打卡打卡打卡\n的快乐打卡打卡打卡\n打开打开打开\n的领导看到疯狂的疯狂放得开\n打开打开打开的\n的开导开导开导开导开导开导开导开导\n的开导开导开导开导看大口大口\n看的开导开导开导开导看\n啊啊急啊急啊急啊急啊\n啊急啊急啊急啊急啊急啊急啊急啊', 3, 0, 67, 3);
INSERT INTO `news` VALUES (23, '吞吞吐吐', '2020-03-29', 'ooSHI5SvUUeCc_f5ilHlgrDgqLcI', 1, 7, '', '聚聚会', 20, 0, 32, 0);
INSERT INTO `news` VALUES (25, '哈利路亚', '2020-04-01', 'ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 2, 5, '0', '哈利路亚接龙你下楼哦咯娄多米诺富民路我去你哦多咯都铎宫特辑', 1, 0, 10, 6);
INSERT INTO `news` VALUES (26, '赞我咋', '2020-04-01', 'ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 2, 2, '来来来', '赞赞赞赞要要要赞赞赞赞赞', 2, 0, 45, 25);
INSERT INTO `news` VALUES (27, '漂亮MM', '2020-04-01', 'ooSHI5Z2ctsK9kob1hlMmk5AOIkY', 1, 2, '', '', 1, 0, 79, 10);
INSERT INTO `news` VALUES (28, '寻求锅巴', '2020-04-01', 'ooSHI5clVNf1dl60Xr-RY0U14WmA', 2, 2, '', '寻找一个好锅巴', 4, 0, 41, 18);
INSERT INTO `news` VALUES (29, '小问号', '2020-04-01', 'ooSHI5clVNf1dl60Xr-RY0U14WmA', 1, 3, '', '小问号，你是否有很多朋友', 1, 0, 20, 0);
INSERT INTO `news` VALUES (30, '测试', '2020-04-08', 'ooSHI5SvUUeCc_f5ilHlgrDgqLcI', 2, 3, '发展中', '这是用来测试的没有其他用处', 4, 0, 30, 1);
INSERT INTO `news` VALUES (31, 'dddd', '2020-04-25', 'ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 2, 9, '无', 'fasdfsadfsadf 速度放缓啊的法国', 1, 0, 25, 1);
INSERT INTO `news` VALUES (32, '123', '2020-05-12', 'ooSHI5SvUUeCc_f5ilHlgrDgqLcI', 2, 2, '50%', '1231414', 1, 0, 22, 4);
INSERT INTO `news` VALUES (37, '23ada', '2020-05-22', 'ooSHI5SvUUeCc_f5ilHlgrDgqLcI', 1, 3, '12', 'safhkaflalkj', 1, 8, 2, 0);
INSERT INTO `news` VALUES (38, '12321124', '2020-05-22', 'ooSHI5SvUUeCc_f5ilHlgrDgqLcI', 1, 2, '12', '1241414', 1, 8, 2, 0);
INSERT INTO `news` VALUES (39, '2', '2020-05-22', 'ooSHI5SvUUeCc_f5ilHlgrDgqLcI', 1, 4, '22', 'afkajflakjlfjkl22', 1, 8, 30, 1);
INSERT INTO `news` VALUES (40, '2222', '2020-05-22', 'ooSHI5SvUUeCc_f5ilHlgrDgqLcI', 1, 4, '22', '222222222222222222222', 1, 8, 6, 1);
INSERT INTO `news` VALUES (41, 'rwqerwe', '2020-05-23', 'ooSHI5Z2ctsK9kob1hlMmk5AOIkY', 2, 1, '准备中', 'wsrfwerwe', 2, 9, 52, 4);
INSERT INTO `news` VALUES (42, 'QQQQQQQQQQQ', '2020-05-23', 'ooSHI5Z2ctsK9kob1hlMmk5AOIkY', 1, 1, '准备中', 'sdfsdfsdfsdf', 4, 9, 4, 0);
INSERT INTO `news` VALUES (43, '林俊杰', '2020-05-23', 'ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 1, 5, '辣鸡', '图提醒我一下', 4, 9, 9, 4);
INSERT INTO `news` VALUES (44, '666', '2020-05-24', 'ooSHI5dMBqZKbYqYXdEsAkN4X1KQ', 10, 2, '无', '666', 20, 10, 10, 0);

-- ----------------------------
-- Table structure for statistics
-- ----------------------------
DROP TABLE IF EXISTS `statistics`;
CREATE TABLE `statistics`  (
  `total_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `total` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`total_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statistics
-- ----------------------------
INSERT INTO `statistics` VALUES ('NewsCount', 32);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `college_id` int(11) NOT NULL,
  `grade` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `experience` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `qq` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `weixin` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tel` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_introduction` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `remain_time` int(11) NULL DEFAULT 15,
  `user_status` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `foreign_key`(`college_id`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `college` (`college_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('ooSHI5ayfAtc4eMFKm5hgoyDQ0sM', 'colour', 'https://wx.qlogo.cn/mmopen/vi_32/64DZbCTibJcliaGyX4yY2qm5TibGdI8X6QMB8qZqYF6et2iarWIC8fksZfUKLhGic3c0EpznY2M1bQI4tyh3tryZltg/132', '男', 2, '大三', 'dddaaa', '123456789', '', '', '<view class=\"section__title\" >dsfghfgsdhfd上帝法规i士大夫关于i士大夫饭店客房的v1就就就就就给给给给就就就就和和和看看看看和和和和看看看和和和和看看和客户看和看还可和客户还可和客户看看还可很好看和客户还可和客户客户客户和客户和客户还可客户客户还可客户看和就', 15, 1);
INSERT INTO `user` VALUES ('ooSHI5clVNf1dl60Xr-RY0U14WmA', '李彪', '/image/user_init.jpg', '男', 1, '大三', '错错错', '147258369', '123456', '12345667', '', 15, 1);
INSERT INTO `user` VALUES ('ooSHI5dMBqZKbYqYXdEsAkN4X1KQ', 'rttyu', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJTicWezKMjQww164aJ5icvR34B6TNnDucebgpncvWWjBvmoNRfWGJx0Emcia2P8LydlPGV7yx016oKA/132', '男', 1, '大一', '', '5555555', '', '', '', 15, 1);
INSERT INTO `user` VALUES ('ooSHI5RHE-djoo0OUHaXUaZMW79A', 'LL1还差个v', 'undefined', '男', 1, '大二', '快快快快', '6895555', '女扮男装', '979949494', '难兄难弟', 15, 1);
INSERT INTO `user` VALUES ('ooSHI5SvUUeCc_f5ilHlgrDgqLcI', 'LL2', 'https://wx.qlogo.cn/mmopen/vi_32/a0WdicXV10lYiaNPDvYBzHo4ogFMuCorlA40GzxEs80hF7ria9aDzQFTh20wJjn3tGTAxibweDnMW0Z0GmZ05JvcxQ/132', '男', 1, '大四', '蓝桥杯', '2503446348@qq', '17346623776', '17346623776', '第一行\n第二行\n第三行\n\n你给我想不到的快乐\n\n像绿洲给了沙漠\n\n说 你会永远陪着我\n\n做我的根 我翅膀\n\n让我飞 也有回去的窝\n\n我愿意 我也可以 付出一切 也不会可惜', 15, 1);
INSERT INTO `user` VALUES ('ooSHI5Z2ctsK9kob1hlMmk5AOIkY', '毛敬恩', 'https://wx.qlogo.cn/mmopen/vi_32/Z1LFYRhfXAvuEXTPabYSGibx40rNxLfhEGNficTVibkIx1BNm6oVQxV2micL1ud3O0ibiab2ibic04YCgXl9tOEvJICf5w/132', '男', 1, '大二', '', '12121', '', '', '', 15, 1);

-- ----------------------------
-- View structure for detail_news
-- ----------------------------
DROP VIEW IF EXISTS `detail_news`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `detail_news` AS select `news`.`user_id` AS `user_id`,`user`.`avatar` AS `avatar`,`user`.`user_name` AS `user_name`,`college`.`college_name` AS `college_name`,`competition`.`com_logo` AS `com_logo`,`competition`.`com_name` AS `com_name`,`competition`.`level` AS `level`,`news`.`news_id` AS `news_id`,`news`.`title` AS `title`,`news`.`num_people` AS `num_people`,`news`.`stage` AS `stage`,`news`.`aim_college` AS `aim_college`,`news`.`detail` AS `detail`,`news`.`post_time` AS `post_time`,`news`.`views` AS `views`,`news`.`likes` AS `likes`,`news`.`news_remain_time` AS `news_remain_time` from (((`user` join `college`) join `competition`) join `news`) where `news`.`user_id` = `user`.`user_id` and `user`.`college_id` = `college`.`college_id` and `news`.`com_id` = `competition`.`com_id` order by `news`.`post_time` desc,`news`.`views` desc,`news`.`likes` desc;

-- ----------------------------
-- View structure for general_news
-- ----------------------------
DROP VIEW IF EXISTS `general_news`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `general_news` AS select `user`.`avatar` AS `avatar`,`user`.`user_name` AS `user_name`,`college`.`college_name` AS `college_name`,`competition`.`com_logo` AS `com_logo`,`competition`.`com_name` AS `com_name`,`competition`.`level` AS `level`,`news`.`news_id` AS `news_id`,`news`.`title` AS `title`,`news`.`detail` AS `detail`,`news`.`post_time` AS `post_time`,`news`.`views` AS `views`,`news`.`likes` AS `likes`,`news`.`news_remain_time` AS `news_remain_time` from (((`user` join `college`) join `competition`) join `news`) where `news`.`user_id` = `user`.`user_id` and `user`.`college_id` = `college`.`college_id` and `news`.`com_id` = `competition`.`com_id` order by `news`.`post_time` desc,`news`.`views` desc,`news`.`likes` desc;

-- ----------------------------
-- Procedure structure for get_one_college_competition
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_one_college_competition`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_one_college_competition`(in p_college_name varchar(15))
begin
    select distinct competition.com_id,competition.com_name,competition.com_logo
        from competition,college,com_college
        where college_name = p_college_name and
              com_college.college_id = college.college_id and
              competition.com_id = com_college.com_id;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for my_public_news
-- ----------------------------
DROP PROCEDURE IF EXISTS `my_public_news`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `my_public_news`(in _user_id varchar(64))
begin
    select news_id,title,views,likes,news_remain_time,post_time
        from news where user_id = _user_id
    order by post_time desc, views desc, likes desc;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for posting
-- ----------------------------
DROP PROCEDURE IF EXISTS `posting`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `posting`(in openid varchar(64), in _title varchar(20), in _post_time date, in _com_id int, in _num_people int, in _aim_college int, in _detail varchar(200), in _stage varchar(15))
begin
        #先获取下一条news的id
        # declare nextNewsID int;
        # set nextNewsID = (select total from statistics where total_name = 'NextNewsID');
        #插入记录
        insert into news(title, post_time, user_id, com_id, num_people, stage, detail, aim_college)
            value ( _title, _post_time, openid, _com_id, _num_people, _stage, _detail, _aim_college);
    end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for post_detail
-- ----------------------------
DROP PROCEDURE IF EXISTS `post_detail`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `post_detail`(in id int)
begin
    update news set views = views + 1 where news_id = id;
    select detail_news.*, college.college_name aim_college_name from detail_news, college
    where news_id = id and aim_college = college_id;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_in_aim_college
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_in_aim_college`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_in_aim_college`(in page int, in id int)
begin
    declare _page int;
    set _page = (page-1)*10;
    select * from detail_news
        where news_remain_time > 0 and
            detail_news.aim_college = id
        limit _page, 10;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_in_college
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_in_college`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_in_college`(in page int, in id int)
begin
    declare _page int;
    set _page = (page-1)*10;
    select * from general_news
        where news_remain_time > 0 and
            general_news.college_name = (select college_name from college where college_id = id)
        limit _page, 10;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_in_competition
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_in_competition`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_in_competition`(in page int, in id int)
begin
    declare _page int;
    set _page = (page-1)*10;
    select * from general_news
        where news_remain_time > 0 and
            general_news.com_name = (select com_name from competition where com_id = id)
        limit _page, 10;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_in_homepage
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_in_homepage`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_in_homepage`(in page int)
begin
    declare _page int;
    set _page = (page-1)*10;
    select * from general_news where news_remain_time > 0 limit _page, 10;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_news_remain_time
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_news_remain_time`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_news_remain_time`()
begin
    update news set news_remain_time = news_remain_time - 1
    where news_remain_time > 0 ;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for user_info
-- ----------------------------
DROP PROCEDURE IF EXISTS `user_info`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_info`(in openid varchar(64))
begin
    select user_name,sex,grade,college_name,experience,qq,weixin,tel,user_introduction
    from user,college
    where user_id = openid and user.college_id = college.college_id;
end
;;
delimiter ;

-- ----------------------------
-- Event structure for event_on_news
-- ----------------------------
DROP EVENT IF EXISTS `event_on_news`;
delimiter ;;
CREATE DEFINER = `root`@`localhost` EVENT `event_on_news`
ON SCHEDULE
EVERY '1' DAY STARTS '2019-11-20 13:12:43'
ON COMPLETION PRESERVE
DO CALL update_news_remain_time()
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table news
-- ----------------------------
DROP TRIGGER IF EXISTS `after_news_insert`;
delimiter ;;
CREATE TRIGGER `after_news_insert` AFTER INSERT ON `news` FOR EACH ROW begin
    update statistics set total = total + 1
        where total_name = 'NewsCount';
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table news
-- ----------------------------
DROP TRIGGER IF EXISTS `after_news_delete`;
delimiter ;;
CREATE TRIGGER `after_news_delete` AFTER DELETE ON `news` FOR EACH ROW begin
    update statistics set total = total - 1
        where total_name = 'NewsCount';
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
