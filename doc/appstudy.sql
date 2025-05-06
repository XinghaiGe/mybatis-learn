/*
 Navicat Premium Dump SQL

 Source Server         : mysql1
 Source Server Type    : MySQL
 Source Server Version : 80400 (8.4.0)
 Source Host           : localhost:3306
 Source Schema         : appstudy

 Target Server Type    : MySQL
 Target Server Version : 80400 (8.4.0)
 File Encoding         : 65001

 Date: 02/05/2025 17:46:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_category
-- ----------------------------
DROP TABLE IF EXISTS `app_category`;
CREATE TABLE `app_category`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `categoryCode` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '分类编码',
  `categoryName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  `parentId` bigint NULL DEFAULT NULL COMMENT '父级节点id',
  `createdBy` bigint NULL DEFAULT NULL COMMENT '创建者（来源于backend_user用户表的用户id）',
  `creationTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint NULL DEFAULT NULL COMMENT '更新者（来源于backend_user用户表的用户id）',
  `modifyDate` datetime NULL DEFAULT NULL COMMENT '最新更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 124 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci COMMENT = '手游类别' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_category
-- ----------------------------
INSERT INTO `app_category` VALUES (1, 'ALL_GAME', '全部游戏', NULL, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (2, 'GAME_001', '休闲游戏', 1, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (3, 'GAME_002', '益智游戏', 1, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (4, 'GAME_003', '体育游戏', 1, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (5, 'GAME_004', '角色扮演', 1, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (115, 'GAME_004_01_02', '局域网', 28, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (48, 'GAME_001_02_02', '三国类', 20, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (52, 'GAME_002_01_02', '麻将', 22, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (53, 'GAME_002_01_03', '围棋', 22, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (54, 'GAME_002_02_01', '九宫格', 23, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (55, 'GAME_002_02_02', '杀手数独', 23, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (56, 'GAME_002_02_03', '梅花桩数独', 23, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (57, 'GAME_002_03_01', '车内逃脱', 24, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (19, 'GAME_001_01', '养成类', 2, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (20, 'GAME_001_02', '塔防类', 2, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (21, 'GAME_001_03', '消除类', 2, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (22, 'GAME_002_01', '棋牌类', 3, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (23, 'GAME_002_02', '数独类', 3, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (24, 'GAME_002_03', '密室逃脱类', 3, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (25, 'GAME_003_01', '球类', 4, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (26, 'GAME_003_02', '赛车类', 4, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (28, 'GAME_004_01', '射击类', 5, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (120, 'GAME_004_03_02', '多阵营', 42, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (119, 'GAME_004_03_01', '双阵营', 42, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (118, 'GAME_004_02_02', '3D', 41, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (117, 'GAME_004_02_01', '拳皇', 41, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (116, 'GAME_004_01_03', '广域网', 28, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (112, 'GAME_003_02_01', '汽车', 26, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (111, 'GAME_003_01_03', '排球', 25, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (110, 'GAME_003_01_02', '篮球', 25, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (109, 'GAME_003_01_01', '足球', 25, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (58, 'GAME_002_03_02', '房内逃脱', 24, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (41, 'GAME_004_02', '格斗类', 5, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (42, 'GAME_004_03', '策略对战', 5, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (43, 'GAME_004_04', '冒险升级', 5, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (44, 'GAME_001_01_01', '庄园类', 19, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (45, 'GAME_001_01_02', '荒岛类', 19, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (46, 'GAME_001_01_03', '经营类', 19, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (47, 'GAME_001_02_01', '丧尸类', 20, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (49, 'GAME_001_03_01', '同色消除', 21, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (50, 'GAME_001_03_02', '连线消除', 21, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (51, 'GAME_002_01_01', '象棋', 22, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (114, 'GAME_004_01_01', '单机', 28, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (113, 'GAME_003_02_02', '摩托车', 26, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (121, 'GAME_004_03_03', '5V5', 42, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (122, 'GAME_004_04_01', '单机', 43, 1, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (123, 'GAME_004_04_01', '广域网', 43, 11, '2016-08-12 18:11:47', NULL, NULL);
INSERT INTO `app_category` VALUES (59, 'GAME_002_03_03', '其他场景', 24, 1, '2016-08-12 18:11:47', NULL, NULL);

-- ----------------------------
-- Table structure for app_info
-- ----------------------------
DROP TABLE IF EXISTS `app_info`;
CREATE TABLE `app_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `softwareName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '软件名称',
  `apkName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT 'APK名称（唯一）',
  `supportROM` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '支持ROM',
  `interfaceLanguage` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '界面语言',
  `softwareSize` decimal(20, 2) NULL DEFAULT NULL COMMENT '软件大小（单位：M）',
  `updateDate` date NULL DEFAULT NULL COMMENT '更新日期',
  `devId` bigint NULL DEFAULT NULL COMMENT '开发者id（来源于：dev_user表的开发者id）',
  `appInfo` varchar(5000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '应用简介',
  `status` bigint NULL DEFAULT NULL COMMENT '状态（来源于：data_dictionary，1 待审核 2 审核通过 3 审核不通过 4 已上架 5 已下架）',
  `onSaleDate` datetime NULL DEFAULT NULL COMMENT '上架时间',
  `offSaleDate` datetime NULL DEFAULT NULL COMMENT '下架时间',
  `flatformId` bigint NULL DEFAULT NULL COMMENT '所属平台（来源于：data_dictionary，1 手机 2 平板 3 通用）',
  `categoryLevel3` bigint NULL DEFAULT NULL COMMENT '所属三级分类（来源于：data_dictionary）',
  `downloads` bigint NULL DEFAULT NULL COMMENT '下载量（单位：次）',
  `createdBy` bigint NULL DEFAULT NULL COMMENT '创建者（来源于dev_user开发者信息表的用户id）',
  `creationDate` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint NULL DEFAULT NULL COMMENT '更新者（来源于dev_user开发者信息表的用户id）',
  `modifyDate` datetime NULL DEFAULT NULL COMMENT '最新更新时间',
  `categoryLevel1` bigint NULL DEFAULT NULL COMMENT '所属一级分类（来源于：data_dictionary）',
  `categoryLevel2` bigint NULL DEFAULT NULL COMMENT '所属二级分类（来源于：data_dictionary）',
  `logoPicPath` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT 'LOGO图片url路径',
  `logoLocPath` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT 'LOGO图片的服务器存储路径',
  `versionId` bigint NULL DEFAULT NULL COMMENT '最新的版本id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_info
-- ----------------------------
INSERT INTO `app_info` VALUES (48, '劲乐团U:O2Jam U', 'com.momocorp.o2jamu', '2.3及更高版本', '英文软件', 56.00, NULL, 1, '劲乐团U O2Jam U是一款音乐节拍游戏，跟着音乐的节奏点击屏幕即可，就是跳舞机，需要网络支持。\r\n注意：部分机型会卡死在启动界面或fc，结束进程后重新开启游戏就正常了。', 1, NULL, NULL, 3, 38, 1000, 1, '2016-08-22 11:43:02', NULL, NULL, 2, 19, '/BeyondPlatform/uploadfiles/com.momocorp.o2jamu.jpg', 'D:\\soft\\apache-tomcat-9.1.4\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.momocorp.o2jamu.jpg', NULL);
INSERT INTO `app_info` VALUES (50, '和平精英', 'com.sp.protector.free', '2.3及更高版本', '简体中文', 3.00, NULL, 2, '《和平精英》采用虚幻4引擎研发，致力于从画面、地图、射击手感等多个层面，为玩家全方位打造出极具真实感的军事竞赛体验。 ', 1, NULL, NULL, 1, 116, 5000, 1, '2016-08-22 11:49:12', NULL, NULL, 1, 3, '/BeyondPlatform/statics/uploadfiles/com.sp.protector.free2.jpg', 'D:\\soft\\apache-tomcat-9.1.4\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.sp.protector.free2.jpg', NULL);
INSERT INTO `app_info` VALUES (51, '开心消消乐', 'com.google.android.inputmethod.pinyin', '4.2及更高版本', '简体中文', 16.00, NULL, 1, '《开心消消乐》是一款三消游戏，游戏画面精美、上手简单。玩家只需滑动手指让三个及以上的同色小动物横竖相连即可消除，完成每关的指定消除目标就可以过关。小动物的滑动还会触发很多神奇的效果，比如在四连直线和横线特效相邻时，两个互相拖动，两者同时触发，构成十字架；四连直线可以产生爆炸特效，使横排或竖排四个目标同时清空。\r\n四连直线+爆炸特效，可构成竖着四排，同时清空！威力很强。\r\n\r\n四连横线+爆炸特效，横向四排同时清空，同样威力很强。\r\n\r\n爆炸特效+爆炸特效，爆炸特效的扩大，同样威力很强。\r\n\r\n但横于竖是随即的，全部化为爆炸特效。这个是很实用的特效，大家一定要牢记。\r\n\r\n五连+五连，极难出现。两者相邻相互拖动，直接清屏，这最后一个纯属机缘巧合，玩家也不要强求。', 1, NULL, NULL, 3, 49, 8000, 1, '2016-08-22 11:53:23', NULL, NULL, 1, 3, '/BeyondPlatform/statics/uploadfiles/com.google.android.inputmethod.pinying.jpg', 'D:\\soft\\apache-tomcat-9.1.4\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.google.android.inputmethod.pinying.jpg', 37);
INSERT INTO `app_info` VALUES (52, 'QQ飞车手游', 'com.speedsoftware.rootexplorer', '2.3及更高版本', '简体中文', 3.00, NULL, 1, 'qq飞车手游赛车排行-完美兼容手游,高清大屏,完美画质,给你真实享受.超越手机高端运行,PC深度适配,游戏不卡顿,操控无压力!', 1, NULL, NULL, 1, 112, 2340, 1, '2016-08-22 11:55:14', NULL, NULL, 1, 3, '/BeyondPlatform/statics/uploadfiles/com.speedsoftware.rootexplorer2.jpg', 'D:\\soft\\apache-tomcat-9.1.4\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.speedsoftware.rootexplorer2.jpg', 38);
INSERT INTO `app_info` VALUES (53, 'FIFA 15:终极队伍', 'com.katecca.screenofflockdonate', '2.2及更高版本', '简体中文', 1.00, NULL, 1, '《 FIFA 15：终极队伍 FIFA 15 Ultimate Team》是一款由巨头体育游戏公司EA推出的最新款足球体育游戏。游戏中由着真实球员，真实球队，真实联赛，让玩家不用出门也可以在足球场上一展雄风。欢迎 进入安卓智能手机和平板电脑上最真实的足球游戏。以全新的触摸操作感受每次传球和临门一脚的激动时刻。', 1, NULL, NULL, 1, 109, 20, 1, '2016-08-22 13:07:11', NULL, '2025-04-30 15:10:22', 1, 4, '8be50586b4994cbfb18b1cc1ad8388a3.jpg', 'D:\\soft\\apache-tomcat-9.1.4\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.katecca.screenofflockdonate3.jpg', NULL);
INSERT INTO `app_info` VALUES (55, '机械迷城:Machinarium', 'air.net.machinarium.Machinarium.GP', '2.3及更高版本', '英文软件', 11.00, NULL, 1, '机械迷城Machinarium是一款解密冒险游戏，玩家可以在城市里随意的走动，跟场景或是其他同样是机器人互动，了解他们的需求以及帮忙他们，一步一步往事件的核心探索。 ', 3, NULL, NULL, 1, 48, 277, 1, '2016-08-22 13:09:44', 1, '2025-04-30 15:09:50', 2, 20, '11ea77ef30964456818f4c32237fd49f.jpg', 'D:\\soft\\apache-tomcat-9.1.4\\webapps\\BeyondPlatform\\statics\\uploadfiles\\air.net.machinarium.Machinarium.GP.jpg', 36);
INSERT INTO `app_info` VALUES (56, 'Dont Starve饥荒', 'com.kleientertainment.doNotStarvePocket', '4.0.3及更高版本', '英文软件', 4.00, NULL, 1, 'Don`t Starve: Pocket Edition移动版将深受超过4百万玩家喜爱的热门PC游戏移植到了安卓平台。现在你可以随时随地进入充满科学和魔法元素的世界，体验原汁原味的荒野生存游戏！\r\n你扮演威尔逊，一位被困住并传送到神秘荒野世界的勇敢无畏的绅士科学家。如果威尔逊希望逃出生天并找到回家的路，他必须充分利用所处的环境及这里的各种生物。\r\n进入一个光怪陆离而未经探索的世界，这里充满了奇怪的生物以及形形色色的危险和意外。收集资源以制作符合你的生存风格的物品和建筑。一路解开这块奇怪大陆上的各种谜团。', 4, NULL, '2016-08-22 13:28:16', 2, 45, 390, 1, '2016-08-22 13:11:51', 1, '2025-05-01 17:50:33', 2, 19, '5230b197226d47969c20deaf7e61a067.jpg', 'D:\\soft\\apache-tomcat-9.1.4\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.kleientertainment.doNotStarvePocket.jpg', 42);
INSERT INTO `app_info` VALUES (57, '机械世界:Apparatus', 'com.bithack.apparatus', '1.6及更高版本', '英文软件', 11.00, NULL, 1, '在机械世界Apparatus游戏中你需要利用木板、钉子、绳索、圆轮等等各种道具搭建从简单到复杂的机械结构，使得小球可以最终滚落到蓝色方框中。可以利用的可不止重力，包括杠杆原理、滑轮等等，尤其是后面的关卡，你需要足够灵活的头脑才能解决问题，可玩性还是非常高的。', 3, NULL, NULL, 1, 52, 255, 1, '2016-08-22 13:13:27', 1, '2025-04-30 15:09:56', 3, 22, '3190c3fbc46e47ceb3dcddd3453c5efe.png', 'D:\\soft\\apache-tomcat-9.1.4\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.bithack.apparatus.jpg', 41);
INSERT INTO `app_info` VALUES (58, '沙盘玩具:The Powder Toy', 'com.doodleapps.powdertoy', '2.2及更高版本', '英文软件', 1.00, NULL, 1, '沙盘玩具The Powder Toy是一款模拟类游戏。想过自己建造核电站吗？或者自己做一个CPU？你甚至可以创建一个虚拟网络。沙盘玩具可以模拟空气的压力，速度，热，重力和无数的不同物质之间的相互作用，游戏提供各种形态的建材，用以构建复杂的机器或是电子元件，你可以模拟超酷的爆炸或是布线出复杂的机器人。欢迎提交您的作品。', 5, NULL, '2024-11-21 20:31:33', 3, 45, 2000, 1, '2016-08-22 13:14:56', 1, '2024-12-11 15:55:07', 2, 20, 'f7f6839bf5c84cafb3e774698ec6f7c6.jpg', 'D:\\soft\\apache-tomcat-9.1.4\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.doodleapps.powdertoy.jpg', 40);
INSERT INTO `app_info` VALUES (59, '王者荣耀', 'com.timi-wangzherongyao', '2.2及更高版本', '中文软件', 2666.00, NULL, 1, '一款5V5的公平竞技手游', 4, '2024-11-20 14:43:51', '2024-11-20 14:43:54', 3, 44, 1000, 1, '2020-03-11 18:05:50', 1, '2025-05-01 18:38:54', 2, 19, '1ed83c63d26d49599ad97928bb3dd72e.png', 'D:\\soft\\apache-tomcat-9.1.4\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.timi-wangzherongyao.png', 43);
INSERT INTO `app_info` VALUES (86, 'yyyy', 'com.lbe.security123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 48, 10, NULL, NULL, NULL, '2025-05-01 14:28:57', 2, 20, '57d6d136a65c4406bf0af7f67990c859.jpg', NULL, NULL);
INSERT INTO `app_info` VALUES (88, 'zzzz', 'dfesfe', NULL, NULL, NULL, '2024-12-17', NULL, NULL, 1, NULL, NULL, 2, 46, NULL, NULL, '2024-12-16 16:56:16', NULL, '2025-05-02 09:03:14', 2, 19, '2b509f019a1d4fd1a163613557dfea98.png', NULL, NULL);
INSERT INTO `app_info` VALUES (89, 'zhangsan2', '2432423', NULL, NULL, NULL, '2024-12-18', NULL, NULL, 1, NULL, NULL, 2, 51, NULL, NULL, '2024-12-16 16:56:41', NULL, '2025-05-01 18:38:13', 3, 22, '5bd4b78c64dd44838e1a0555c25f0919.png', NULL, NULL);
INSERT INTO `app_info` VALUES (90, '1', 'com.sp.protector.free', NULL, NULL, 0.00, NULL, NULL, '', 1, NULL, NULL, NULL, 48, 0, NULL, '2025-04-28 19:41:41', NULL, '2025-05-01 17:12:43', 2, 20, 'f5812665bfd642e39082361a3b7616b5.png', NULL, NULL);
INSERT INTO `app_info` VALUES (96, 'test', 'test', NULL, NULL, 34.00, NULL, NULL, 'ets', 1, NULL, NULL, 2, 45, 0, NULL, '2025-05-01 17:09:34', NULL, '2025-05-01 17:10:08', 2, 19, '4d95c0faa22b4d4281a309ea0469c67b.jpeg', NULL, NULL);
INSERT INTO `app_info` VALUES (97, 'q', 'q', NULL, NULL, 1.00, NULL, NULL, 'q', 1, NULL, NULL, 1, 59, 0, NULL, '2025-05-02 10:15:12', NULL, '2025-05-02 10:15:41', 3, 24, 'f14601d3ec8c485982e46402a8c94043.png', NULL, NULL);
INSERT INTO `app_info` VALUES (98, 'w', 'w', NULL, NULL, 2.00, NULL, NULL, 'w', 1, NULL, NULL, 1, 113, 0, NULL, '2025-05-02 10:19:43', NULL, NULL, 4, 26, NULL, NULL, NULL);
INSERT INTO `app_info` VALUES (99, 'e', 'e', NULL, NULL, 3.00, NULL, NULL, 'e', 1, NULL, NULL, 2, 58, 0, NULL, '2025-05-02 10:28:26', NULL, NULL, 3, 24, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for app_version
-- ----------------------------
DROP TABLE IF EXISTS `app_version`;
CREATE TABLE `app_version`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `appId` bigint NULL DEFAULT NULL COMMENT 'appId（来源于：app_info表的主键id）',
  `versionNo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '版本号',
  `versionInfo` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '版本介绍',
  `publishStatus` bigint NULL DEFAULT NULL COMMENT '发布状态（来源于：data_dictionary，1 不发布 2 已发布 3 预发布）',
  `downloadLink` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '下载链接',
  `versionSize` decimal(20, 2) NULL DEFAULT NULL COMMENT '版本大小（单位：M）',
  `createdBy` bigint NULL DEFAULT NULL COMMENT '创建者（来源于dev_user开发者信息表的用户id）',
  `creationDate` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint NULL DEFAULT NULL COMMENT '更新者（来源于dev_user开发者信息表的用户id）',
  `modifyDate` datetime NULL DEFAULT NULL COMMENT '最新更新时间',
  `apkLocPath` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT 'apk文件的服务器存储路径',
  `apkFileName` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '上传的apk文件名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_version
-- ----------------------------
INSERT INTO `app_version` VALUES (33, 58, 'V1.1.1', 'V1.1.1版本简介', 3, '/BeyondPlatform/statics/uploadfiles/com.doodleapps.powdertoy-V1.1.31.apk', 1.00, 1, '2016-08-22 13:17:47', NULL, NULL, 'D:\\soft\\apache-tomcat-7.0.41\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.doodleapps.powdertoy-V1.1.31.apk', 'com.doodleapps.powdertoy-V1.1.31.apk');
INSERT INTO `app_version` VALUES (34, 57, 'V1.1.1', '              V1.1.1版本简介', 3, '/BeyondPlatform/statics/uploadfiles/com.bithack.apparatus-V1.1.1.apk', 11.00, 1, '2016-08-22 13:19:42', 1, '2016-08-22 13:19:54', 'D:\\soft\\apache-tomcat-7.0.41\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.bithack.apparatus-V1.1.1.apk', 'com.bithack.apparatus-V1.1.1.apk');
INSERT INTO `app_version` VALUES (35, 56, 'V1.1.1', '              V1.1.1简介', 2, '/BeyondPlatform/statics/uploadfiles/com.kleientertainment.doNotStarvePocket-V1.1.1.apk', 4.00, 1, '2016-08-22 13:21:12', 1, '2016-08-22 13:28:07', 'D:\\soft\\apache-tomcat-7.0.41\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.kleientertainment.doNotStarvePocket-V1.1.1.apk', 'com.kleientertainment.doNotStarvePocket-V1.1.1.apk');
INSERT INTO `app_version` VALUES (36, 55, 'V1.1.1', '              V1.1.1简介', 3, '/BeyondPlatform/statics/uploadfiles/air.net.machinarium.Machinarium.GP-V1.1.1.apk', 11.00, 1, '2016-08-22 13:21:40', 1, '2016-08-22 13:21:57', 'D:\\soft\\apache-tomcat-7.0.41\\webapps\\BeyondPlatform\\statics\\uploadfiles\\air.net.machinarium.Machinarium.GP-V1.1.1.apk', 'air.net.machinarium.Machinarium.GP-V1.1.1.apk');
INSERT INTO `app_version` VALUES (37, 51, 'V1.1.1', 'V1.1.1简介', 3, '/BeyondPlatform/statics/uploadfiles/com.google.android.inputmethod.pinyin-V1.1.1.apk', 16.00, 1, '2016-08-22 13:24:07', NULL, NULL, 'D:\\soft\\apache-tomcat-7.0.41\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.google.android.inputmethod.pinyin-V1.1.1.apk', 'com.google.android.inputmethod.pinyin-V1.1.1.apk');
INSERT INTO `app_version` VALUES (38, 52, 'V1.1.1', 'V1.1.1简介', 3, '/BeyondPlatform/statics/uploadfiles/com.speedsoftware.rootexplorer-V1.1.1.apk', 3.00, 1, '2016-08-22 13:24:35', NULL, NULL, 'D:\\soft\\apache-tomcat-7.0.41\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.speedsoftware.rootexplorer-V1.1.1.apk', 'com.speedsoftware.rootexplorer-V1.1.1.apk');
INSERT INTO `app_version` VALUES (39, 58, 'V1.1.2', 'V1.1.2', 3, '/BeyondPlatform/statics/uploadfiles/com.doodleapps.powdertoy-V1.1.2.apk', 2.00, 1, '2016-08-22 13:26:15', NULL, NULL, 'D:\\soft\\apache-tomcat-7.0.41\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.doodleapps.powdertoy-V1.1.2.apk', 'com.doodleapps.powdertoy-V1.1.2.apk');
INSERT INTO `app_version` VALUES (40, 58, 'V1.1.3', 'V1.1.3简介', 2, '/BeyondPlatform/statics/uploadfiles/com.doodleapps.powdertoy-V1.1.3.apk', 2.00, 1, '2016-08-22 13:26:47', 1, '2016-08-22 13:27:42', 'D:\\soft\\apache-tomcat-7.0.41\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.doodleapps.powdertoy-V1.1.3.apk', 'com.doodleapps.powdertoy-V1.1.3.apk');
INSERT INTO `app_version` VALUES (41, 57, 'V1.1.2', '              V1.1.2简介', 3, '/BeyondPlatform/statics/uploadfiles/com.bithack.apparatus-V1.1.2.apk', 11.00, 1, '2016-08-22 13:27:32', 1, '2016-08-22 15:08:04', 'D:\\soft\\apache-tomcat-7.0.41\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.bithack.apparatus-V1.1.2.apk', 'com.bithack.apparatus-V1.1.2.apk');
INSERT INTO `app_version` VALUES (42, 56, 'V1.1.2', 'V1.1.2简介', 3, '/BeyondPlatform/statics/uploadfiles/com.kleientertainment.doNotStarvePocket-V1.1.2.apk', 4.00, 1, '2016-08-22 15:00:32', NULL, NULL, 'D:\\soft\\apache-tomcat-7.0.41\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.kleientertainment.doNotStarvePocket-V1.1.2.apk', 'com.kleientertainment.doNotStarvePocket-V1.1.2.apk');
INSERT INTO `app_version` VALUES (43, 59, 'v_3.4.11', '一款5V5的公平竞技手游', 3, '/BeyondPlatform/statics/uploadfiles/com.timi-wangzherongyao-v_3.4.11.apk', 2999.00, 1, '2020-03-11 18:09:51', 1, '2020-03-11 18:38:44', 'D:\\java\\tomcat\\apache-tomcat-9.0.14\\webapps\\BeyondPlatform\\statics\\uploadfiles\\com.timi-wangzherongyao-v_3.4.11.apk', 'com.timi-wangzherongyao-v_3.4.11.apk');
INSERT INTO `app_version` VALUES (45, 59, 'wdw', 'dwq', NULL, '67380835fd4a4b52af54b7e8cd71f08a.png', 12.00, 1, '2024-11-18 10:35:39', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (46, 59, 'sxewfce', 'dewcew', 3, NULL, 12.00, 1, '2024-11-18 14:46:01', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (47, 59, '232', '23', 3, 'c09917e0e975491b8e83e9d794b6a915.apk', 321.00, 1, '2024-11-18 14:50:20', NULL, NULL, 'D:/upload/appinfo/apk/c09917e0e975491b8e83e9d794b6a915.apk', NULL);
INSERT INTO `app_version` VALUES (48, 74, 'srteres', 'e32r', NULL, 'd3c39560b0c14271984710f6974f0987.apk', 12.00, 1, '2024-11-20 10:28:02', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (51, 83, 'erwerw', 'r3rw', 3, '8dc28e65c6c24b478c8bf282545f72b0.apk', 12.00, 1, '2024-11-21 21:36:45', NULL, NULL, 'D:/upload/appinfo/apk/8dc28e65c6c24b478c8bf282545f72b0.apk', NULL);
INSERT INTO `app_version` VALUES (52, 84, '3e2e43', '323', 3, '24026e213e8c4eb29cbb90e2110bc927.apk', 12.00, 1, '2024-11-21 22:00:30', NULL, NULL, 'D:/upload/appinfo/apk/24026e213e8c4eb29cbb90e2110bc927.apk', NULL);
INSERT INTO `app_version` VALUES (54, 59, 'erw', '12', 3, 'd743b8117e0f47758b5bdb90f4d0eac5.apk', 12.00, NULL, '2024-12-04 23:45:07', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (55, 59, 'erw', '12', 3, '64203bbab4d84e0a9952cb476c068314.apk', 12.00, NULL, '2024-12-04 23:46:38', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (56, 59, '55555', '12', 3, '6e2dc110d2a642af8cdd6cd9796cca28.apk', 12.00, NULL, '2024-12-04 23:49:57', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (57, 57, '23123', '12', 3, '23b5391cf4a74edfae99b558fd9db8d9.apk', 12.00, NULL, '2024-12-04 23:51:05', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (58, 57, '5645645', '12', 3, '3d290df72f15445b920bb8175b32da27.apk', 12.00, NULL, '2024-12-04 23:51:24', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (60, 59, 'erwerw11', '121', 3, NULL, 12.00, NULL, '2024-12-10 14:33:43', NULL, NULL, NULL, '424e28b934454984ba45f8a41ed3b9bb.apk');
INSERT INTO `app_version` VALUES (61, 59, 'erwerw1112313', '121111', 3, NULL, 12.00, NULL, '2024-12-10 14:34:58', NULL, NULL, NULL, '971da0a062dc47d98ce82bbd208631dc.apk');
INSERT INTO `app_version` VALUES (64, 86, 'xxx', '23', 3, 'e7c1f8215d5c426db8c0f63712b07c2e.apk', 12.00, NULL, '2024-12-11 15:33:13', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (65, 86, '12', '132', 3, '6a4aa0a84c11441f863b19135e5c4621.apk', 121.00, NULL, '2024-12-12 21:14:01', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (66, 86, '312', '12321', 3, '2a499935587a4a3ab7bb55e27adfb7b5.apk', 121.00, NULL, '2024-12-12 21:14:45', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (67, NULL, '45', '45', 3, '9bc08554c06e498e8191f2953db4a082.apk', 45.00, NULL, '2025-04-30 19:30:49', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (68, NULL, '67', '67', 3, '98f23d1f40414ddca623f875b7b93c0e.apk', 67.00, NULL, '2025-04-30 19:46:43', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (69, NULL, '67', '67', 3, 'c76a3daf0be24e41b5f80cd1a956ccdc.apk', 67.00, NULL, '2025-04-30 19:49:45', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (70, 57, '67', '67', 3, 'ada33df015ef41c49102da9fda1b2405.apk', 67.00, NULL, '2025-04-30 19:54:25', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (71, 57, '67', '67', 3, '59d4b159fecd4d1e9e2c1a812cbe2318.apk', 67.00, NULL, '2025-04-30 19:54:44', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (72, 57, '67', '67', 3, '95eaaf41916648fc88e9aa7d164d4a4b.apk', 67.00, NULL, '2025-04-30 19:54:48', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (73, 57, '67', '67', 3, '080ccb8af656406bb9a61ebe1eebbbe3.apk', 67.00, NULL, '2025-04-30 19:54:48', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (74, 57, '67', '67', 3, '28c4074eb358415abba07ca14f23f39c.apk', 67.00, NULL, '2025-04-30 19:54:49', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (75, 57, '67', '67', 3, '07c027a84a574c509cda867b21346b0c.apk', 67.00, NULL, '2025-04-30 19:54:49', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (76, 57, '67', '67', 3, 'b0358ee5c0864cf6a2782e4df99fbfc0.apk', 67.00, NULL, '2025-04-30 19:54:49', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (77, 57, '67', '67', 3, '338d74ffc4664d44b6a28512c1a08cd4.apk', 67.00, NULL, '2025-04-30 19:54:50', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (78, 57, '67', '67', 3, '03d94b0e37d643f5971c5cd31993c0a4.apk', 67.00, NULL, '2025-04-30 19:54:50', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (79, 57, '67', '67', 3, '3fa3f5dd99164c00a3219731db631ebc.apk', 67.00, NULL, '2025-04-30 19:54:51', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (80, 57, '67', '67', 3, '27da4cb365c645928bf6a1cb119e6aef.apk', 67.00, NULL, '2025-04-30 19:54:53', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (81, 57, '67', '67', 3, '9543dd0d514843b9ac70d3ea9ce5c118.apk', 67.00, NULL, '2025-04-30 19:54:53', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (82, 57, '67', '67', 3, 'c08ef9dc17e74ac6bf76578af3815310.apk', 67.00, NULL, '2025-04-30 19:54:54', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (83, 57, '67', '67', 3, '46850f464c184ac7a2ab56c831fe9136.apk', 67.00, NULL, '2025-04-30 19:54:54', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (84, 57, '67', '67', 3, 'e3c22aabe30a4c17b1cce6fa9845c109.apk', 67.00, NULL, '2025-04-30 19:54:54', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (85, 57, '67', '67', 3, '6ea0c17ccf8640c2a8ba073925956bed.apk', 67.00, NULL, '2025-04-30 19:54:54', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (86, 57, '67', '67', 3, '044da575365b425593342cd9935497a9.apk', 67.00, NULL, '2025-04-30 19:54:54', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (87, 57, 'yyy', 'yyy', 3, 'c589c98cc9254d10997db5c4ce7210d0.apk', 67.00, NULL, '2025-04-30 19:56:32', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (91, NULL, '45', '45', 3, '4a8e1d6945f94aa18c17bbd8b5409fae.apk', 45.00, NULL, '2025-05-01 10:11:18', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (92, 86, '67', '67', 3, '704cc1446b3a4d7196fffa1fe272f3eb.apk', 67.00, NULL, '2025-05-01 14:29:34', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (93, 90, '12', '12', 3, '9a2ec77555bb41aaba47fe273aafd7f1.apk', 12.00, NULL, '2025-05-01 16:41:29', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (94, 96, '45', '45', 3, '5442b23490734c8aa9aedb6fe15ab930.apk', 45.00, NULL, '2025-05-01 17:09:54', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (95, 96, '23', '23', 3, '97bdacab8e43437692673bcb742b02ae.apk', 23.00, NULL, '2025-05-01 17:11:18', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (96, 96, '23', '23', 3, 'f84c6b7f4cbe460dbab9103a72b5f0a2.apk', 23.00, NULL, '2025-05-01 17:12:15', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (97, 96, '23', '23', 3, '0eb4cde7c1184c9f924b7b2ce8c46b79.apk', 23.00, NULL, '2025-05-01 17:12:17', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (98, 96, '23', '23', 3, 'be7b0931f5584e08b1dd8f2a8923d11a.apk', 23.00, NULL, '2025-05-01 17:12:18', NULL, NULL, NULL, NULL);
INSERT INTO `app_version` VALUES (99, 59, '1321', '1314', 3, 'bf49dfb9fc6143888f9a7050dba12a6b.apk', 13413.00, NULL, '2025-05-01 17:14:14', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for backend_user
-- ----------------------------
DROP TABLE IF EXISTS `backend_user`;
CREATE TABLE `backend_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `userCode` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '用户编码',
  `userName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '用户名称',
  `userType` bigint NULL DEFAULT NULL COMMENT '用户角色类型（来源于数据字典表，分为：超管、财务、市场、运营、销售）',
  `createdBy` bigint NULL DEFAULT NULL COMMENT '创建者（来源于backend_user用户表的用户id）',
  `creationDate` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint NULL DEFAULT NULL COMMENT '更新者（来源于backend_user用户表的用户id）',
  `modifyDate` datetime NULL DEFAULT NULL COMMENT '最新更新时间',
  `userPassword` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of backend_user
-- ----------------------------
INSERT INTO `backend_user` VALUES (1, 'admin', '系统管理员', 1, 1, '2016-08-20 00:13:41', NULL, NULL, '123456');

-- ----------------------------
-- Table structure for data_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `data_dictionary`;
CREATE TABLE `data_dictionary`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `typeCode` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '类型编码',
  `typeName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '类型名称',
  `valueId` bigint NULL DEFAULT NULL COMMENT '类型值ID',
  `valueName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '类型值Name',
  `createdBy` bigint NULL DEFAULT NULL COMMENT '创建者（来源于backend_user用户表的用户id）',
  `creationDate` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint NULL DEFAULT NULL COMMENT '更新者（来源于backend_user用户表的用户id）',
  `modifyDate` datetime NULL DEFAULT NULL COMMENT '最新更新时间',
  `typeFlag` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 110 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_dictionary
-- ----------------------------
INSERT INTO `data_dictionary` VALUES (1, 'USER_TYPE', '用户类型', 1, '超级管理员', 1, '2016-08-12 18:11:47', NULL, NULL, 'USER_TYPE_ADMIN');
INSERT INTO `data_dictionary` VALUES (2, 'USER_TYPE', '用户类型', 2, '财务', 1, '2016-08-12 18:11:47', NULL, NULL, '');
INSERT INTO `data_dictionary` VALUES (3, 'USER_TYPE', '用户类型', 3, '市场', 1, '2016-08-12 18:11:47', NULL, NULL, NULL);
INSERT INTO `data_dictionary` VALUES (4, 'USER_TYPE', '用户类型', 4, '运营', 1, '2016-08-12 18:11:47', NULL, NULL, NULL);
INSERT INTO `data_dictionary` VALUES (5, 'USER_TYPE', '用户类型', 5, '销售', 1, '2016-08-12 18:11:47', NULL, NULL, NULL);
INSERT INTO `data_dictionary` VALUES (6, 'APP_STATUS', 'APP状态', 1, '待审核', 1, '2016-08-12 18:11:47', NULL, NULL, 'APP_STATUS_WAIT');
INSERT INTO `data_dictionary` VALUES (7, 'APP_STATUS', 'APP状态', 2, '审核通过', 1, '2016-08-12 18:11:47', NULL, NULL, 'APP_STATUS_YES');
INSERT INTO `data_dictionary` VALUES (8, 'APP_STATUS', 'APP状态', 3, '审核未通过', 1, '2016-08-12 18:11:47', NULL, NULL, 'APP_STATUS_NO');
INSERT INTO `data_dictionary` VALUES (9, 'APP_STATUS', 'APP状态', 4, '已上架', 1, '2016-08-12 18:11:47', NULL, NULL, 'APP_STATUS_ON');
INSERT INTO `data_dictionary` VALUES (10, 'APP_STATUS', 'APP状态', 5, '已下架', 1, '2016-08-12 18:11:47', NULL, NULL, 'APP_STATUS_OFF');
INSERT INTO `data_dictionary` VALUES (11, 'APP_FLATFORM', '所属平台', 1, '手机', 1, '2016-08-12 18:11:47', NULL, NULL, NULL);
INSERT INTO `data_dictionary` VALUES (12, 'APP_FLATFORM', '所属平台', 2, '平板', 1, '2016-08-12 18:11:47', NULL, NULL, NULL);
INSERT INTO `data_dictionary` VALUES (14, 'PUBLISH_STATUS', '发布状态', 1, '不发布', 1, '2016-08-12 18:11:47', NULL, NULL, NULL);
INSERT INTO `data_dictionary` VALUES (15, 'PUBLISH_STATUS', '发布状态', 2, '已发布', 1, '2016-08-12 18:11:47', NULL, NULL, NULL);
INSERT INTO `data_dictionary` VALUES (16, 'PUBLISH_STATUS', '发布状态', 3, '预发布', 1, '2016-08-12 18:11:47', NULL, NULL, NULL);
INSERT INTO `data_dictionary` VALUES (13, 'APP_FLATFORM', '所属平台', 3, '通用', 1, '2016-08-12 18:11:47', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for dev_user
-- ----------------------------
DROP TABLE IF EXISTS `dev_user`;
CREATE TABLE `dev_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `devCode` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '开发者帐号',
  `devName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '开发者名称',
  `devPassword` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '开发者密码',
  `devEmail` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '开发者电子邮箱',
  `devInfo` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '开发者简介',
  `createdBy` bigint NULL DEFAULT NULL COMMENT '创建者（来源于backend_user用户表的用户id）',
  `creationDate` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint NULL DEFAULT NULL COMMENT '更新者（来源于backend_user用户表的用户id）',
  `modifyDate` datetime NULL DEFAULT NULL COMMENT '最新更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dev_user
-- ----------------------------
INSERT INTO `dev_user` VALUES (1, 'test001', '测试账户001', '123456', NULL, NULL, 1, '2024-08-18 00:13:41', NULL, NULL);
INSERT INTO `dev_user` VALUES (2, 'test2', '测试用户2', '123456', NULL, NULL, 1, '2024-11-22 20:49:49', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
