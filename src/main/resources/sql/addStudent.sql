/*
    添加学生
 */

--
-- 学生表
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`
(
    `id`       char(12)    NOT NULL,
    `name`     varchar(20) NOT NULL,
    `gender`   varchar(18) DEFAULT NULL,
    `password` varchar(50) NOT NULL,
    `age`      int         DEFAULT NULL,
    `major`    varchar(50) DEFAULT NULL,
    `college`  varchar(50) DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE
);

--
-- 学生数据
--

insert into student
values ('20020007090', '赵一', '男', '000000', 21, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007091', '钱二', '男', '000000', 23, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007092', '孙三', '男', '000000', 22, '智能科学与技术', '计算机学院');
insert into student
values ('20020007093', '李四', '女', '000000', 22, '软件工程', '软件学院');
insert into student
values ('20020007094', '王五', '男', '000000', 21, '保密技术', '保密学院');
insert into student
values ('20020007095', '习六', '女', '000000', 20, '智能科学与技术', '计算机学院');
insert into student
values ('20020007096', '杨七', '男', '000000', 21, '网络空间安全', '保密学院');
insert into student
values ('20020007097', '郑八', '男', '000000', 20, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007098', '马九', '女', '000000', 21, '软件工程', '软件学院');
insert into student
values ('20020007099', '韩十', '男', '000000', 22, '智能科学与技术', '计算机学院');
insert into student
values ('20020007100', '红十一', '女', '000000', 20, '保密技术', '保密学院');
insert into student
values ('20020007101', '郑十二', '男', '000000', 21, '网络空间安全', '保密学院');
insert into student
values ('20020007102', '元十三', '男', '000000', 22, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007103', '梁十四', '女', '000000', 23, '网络空间安全', '保密学院');
insert into student
values ('20020007104', '卢十五', '男', '000000', 22, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007105', '李十六', '男', '000000', 21, '网络空间安全', '保密学院');
insert into student
values ('20020007106', '毛十七', '女', '000000', 22, '智能科学与技术', '计算机学院');
insert into student
values ('20020007107', '邓十八', '男', '000000', 23, '保密技术', '保密学院');
insert into student
values ('20020007108', '左十九', '男', '000000', 21, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007109', '夏二十', '女', '000000', 23, '网络空间安全', '保密学院');
insert into student
values ('20020007110', '全二一', '女', '000000', 20, '软件工程', '软件学院');
insert into student
values ('20020007111', '从二二', '女', '000000', 21, '智能科学与技术', '计算机学院');
insert into student
values ('20020007112', '松二三', '女', '000000', 22, '网络空间安全', '保密学院');
insert into student
values ('20020007113', '甘二四', '男', '000000', 23, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007114', '巴二五', '女', '000000', 21, '保密技术', '保密学院');
insert into student
values ('20020007115', '谷二六', '男', '000000', 20, '智能科学与技术', '计算机学院');
insert into student
values ('20020007116', '干二七', '女', '000000', 20, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007117', '刘二八', '男', '000000', 21, '网络空间安全', '保密学院');
insert into student
values ('20020007118', '车二九', '男', '000000', 21, '软件工程', '软件学院');
insert into student
values ('20020007119', '班三十', '女', '000000', 23, '保密技术', '保密学院');
insert into student
values ('20020007120', '侯三一', '男', '000000', 23, '智能科学与技术', '计算机学院');
insert into student
values ('20020007121', '蓝三二', '女', '000000', 20, '网络空间安全', '保密学院');
insert into student
values ('20020007122', '石三三', '男', '000000', 20, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007123', '吉三四', '女', '000000', 22, '网络空间安全', '保密学院');
insert into student
values ('20020007124', '龙三五', '男', '000000', 21, '保密技术', '保密学院');
insert into student
values ('20020007125', '乌三六', '男', '000000', 23, '网络空间安全', '保密学院');
insert into student
values ('20020007126', '荀三七', '女', '000000', 21, '保密技术', '保密学院');
insert into student
values ('20020007127', '白三八', '男', '000000', 20, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007128', '司三九', '女', '000000', 20, '软件工程', '软件学院');
insert into student
values ('20020007129', '周四十', '男', '000000', 21, '智能科学与技术', '计算机学院');
insert into student
values ('20020007130', '吕四一', '女', '000000', 23, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007131', '平四二', '男', '000000', 22, '网络空间安全', '保密学院');
insert into student
values ('20020007132', '孟四三', '女', '000000', 21, '网络空间安全', '保密学院');
insert into student
values ('20020007133', '梅四四', '男', '000000', 23, '软件工程', '软件学院');
insert into student
values ('20020007134', '林四五', '女', '000000', 21, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007135', '安四六', '男', '000000', 20, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007136', '尹四七', '女', '000000', 23, '智能科学与技术', '计算机学院');
insert into student
values ('20020007137', '宋四八', '男', '000000', 20, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007138', '荣四九', '女', '000000', 21, '软件工程', '软件学院');
insert into student
values ('20020007139', '富五十', '男', '000000', 20, '软件工程', '软件学院');
insert into student
values ('20020007140', '顾五一', '男', '000000', 22, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007141', '牛五二', '女', '000000', 21, '网络空间安全', '保密学院');
insert into student
values ('20020007142', '赵五三', '女', '000000', 23, '软件工程', '软件学院');
insert into student
values ('20020007143', '乐五四', '女', '000000', 22, '智能科学与技术', '计算机学院');
insert into student
values ('20020007144', '申五五', '男', '000000', 21, '保密技术', '保密学院');
insert into student
values ('20020007145', '卫五六', '男', '000000', 23, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007146', '杨五七', '女', '000000', 21, '保密技术', '保密学院');
insert into student
values ('20020007147', '文五八', '男', '000000', 23, '智能科学与技术', '计算机学院');
insert into student
values ('20020007148', '勾五九', '男', '000000', 20, '网络空间安全', '保密学院');
insert into student
values ('20020007149', '关六十', '女', '000000', 20, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007150', '巫六一', '男', '000000', 21, '保密技术', '保密学院');
insert into student
values ('20020007151', '辛六二', '女', '000000', 22, '智能科学与技术', '计算机学院');
insert into student
values ('20020007152', '山六三', '男', '000000', 23, '软件工程', '软件学院');
insert into student
values ('20020007153', '党六四', '女', '000000', 21, '保密技术', '保密学院');
insert into student
values ('20020007154', '谭六五', '男', '000000', 23, '软件工程', '软件学院');
insert into student
values ('20020007155', '刘六六', '男', '000000', 23, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007156', '曾六七', '女', '000000', 21, '智能科学与技术', '计算机学院');
insert into student
values ('20020007157', '沈六八', '男', '000000', 20, '网络空间安全', '保密学院');
insert into student
values ('20020007158', '叶六九', '女', '000000', 21, '智能科学与技术', '计算机学院');
insert into student
values ('20020007159', '丁七十', '男', '000000', 22, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007160', '马七一', '女', '000000', 21, '保密技术', '保密学院');
insert into student
values ('20020007161', '苗七二', '女', '000000', 23, '保密技术', '保密学院');
insert into student
values ('20020007162', '水七三', '男', '000000', 21, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007163', '王七四', '女', '000000', 22, '网络空间安全', '保密学院');
insert into student
values ('20020007164', '严七五', '男', '000000', 20, '网络空间安全', '保密学院');
insert into student
values ('20020007165', '刘七六', '女', '000000', 20, '智能科学与技术', '计算机学院');
insert into student
values ('20020007166', '鱼七七', '男', '000000', 21, '保密技术', '保密学院');
insert into student
values ('20020007167', '咸七八', '女', '000000', 22, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007168', '高七九', '男', '000000', 23, '保密技术', '保密学院');
insert into student
values ('20020007169', '宗八十', '男', '000000', 21, '保密技术', '保密学院');
insert into student
values ('20020007170', '白八一', '男', '000000', 20, '保密技术', '保密学院');
insert into student
values ('20020007171', '任八二', '女', '000000', 21, '智能科学与技术', '计算机学院');
insert into student
values ('20020007172', '秦八三', '男', '000000', 22, '保密技术', '保密学院');
insert into student
values ('20020007173', '曹八四', '女', '000000', 23, '软件工程', '软件学院');
insert into student
values ('20020007174', '孔八五', '男', '000000', 21, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007175', '贾八六', '女', '000000', 20, '保密技术', '保密学院');
insert into student
values ('20020007176', '强八七', '男', '000000', 20, '网络空间安全', '保密学院');
insert into student
values ('20020007177', '薛八八', '女', '000000', 20, '保密技术', '保密学院');
insert into student
values ('20020007178', '皮八九', '男', '000000', 21, '网络空间安全', '保密学院');
insert into student
values ('20020007179', '田九十', '男', '000000', 22, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007180', '龙九一', '女', '000000', 23, '保密技术', '保密学院');
insert into student
values ('20020007181', '叶九二', '男', '000000', 21, '软件工程', '软件学院');
insert into student
values ('20020007182', '杨九三', '女', '000000', 22, '网络空间安全', '保密学院');
insert into student
values ('20020007183', '杨九四', '男', '000000', 23, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007184', '双九五', '女', '000000', 20, '保密技术', '保密学院');
insert into student
values ('20020007185', '宫九六', '女', '000000', 21, '网络空间安全', '保密学院');
insert into student
values ('20020007186', '农九七', '女', '000000', 22, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007187', '卜九八', '女', '000000', 23, '保密技术', '保密学院');
insert into student
values ('20020007188', '燕九九', '男', '000000', 21, '软件工程', '软件学院');
insert into student
values ('20020007189', '云一百', '男', '000000', 20, '保密技术', '保密学院');