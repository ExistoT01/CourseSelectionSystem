/*
    添加老师
 */

--
-- 老师表
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`
(
    `id`       char(12)     NOT NULL,
    `name`     varchar(20) NOT NULL,
    `password` varchar(12) NOT NULL,
    `gender`   varchar(10)  DEFAULT NULL,
    `intro`    varchar(100) DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE
);

--
-- 老师数据
--

insert into teacher
values ('20060310', '张德胜', '000000', '男', '教授、博士生导师、研究院副院长');
insert into teacher
values ('20060311', '李东强', '000000', '男', '欢迎来自计算机/电子/自动化等相关专业的本科生提前进入实验室共同学习进步或报考硕士研究生！带着愉悦的心情工作生活！');
insert into teacher
values ('20060312', '刘晨', '000000', '女', '欢迎来自计算机专业的同学报考硕士研究生！');
insert into teacher
values ('20060313', '李勇', '000000', '男', '硕士研究生导师');
insert into teacher
values ('20060314', '王敏', '000000', '女', '讲师，硕导');
insert into teacher
values ('20060315', '张成', '000000', '男', '三级教授、博士生导师');
insert into teacher
values ('20060316', '刘心', '000000', '女', '二级教授、学部副部长');
insert into teacher
values ('20060317', '余闵', '000000', '男', '教授、博士生导师');
insert into teacher
values ('20060318', '晏晓晨', '000000', '女', '计算机系副教授、硕导');
insert into teacher
values ('20060319', '叶溪城', '000000', '男', '国家级高层次专家');
insert into teacher
values ('20060320', '于采薇', '000000', '女', '教授、博士生导师');
insert into teacher
values ('20060321', '孔羽心', '000000', '女', '硕导');
insert into teacher
values ('20060322', '孟德馨', '000000', '女', '教授、硕导');
insert into teacher
values ('20060323', '张辛月', '000000', '女', '计算机系讲师');
insert into teacher
values ('20060324', '李海花', '000000', '女', '硕导');
insert into teacher
values ('20060325', '刘流', '000000', '男', '教授、博士生导师、研究院副院长');
insert into teacher
values ('20060326', '余亦', '000000', '女', '博士生导师');
insert into teacher
values ('20060327', '刘时初', '000000', '男', '欢迎来自网络空间安全专业的同学报考硕士研究生！');
insert into teacher
values ('20060328', '岳饮冰', '000000', '女', '教授');
insert into teacher
values ('20060329', '李思颖', '000000', '女', '教授、博士生导师、研究院院长');
insert into teacher
values ('20060330', '余莹', '000000', '女', '教授、博士生导师');
insert into teacher
values ('20060331', '张德文', '000000', '男', '欢迎来自信息安全专业的同学报考硕士研究生！');
insert into teacher
values ('20060332', '杨子俊', '000000', '男', '教授、硕导');
insert into teacher
values ('20060333', '刘阔', '000000', '男', '教授、博士生导师');
insert into teacher
values ('20060334', '吴文卿', '000000', '男', '国家高层次专家');
insert into teacher
values ('20060335', '颜一', '000000', '男', '教授、博士生导师');
insert into teacher
values ('20060336', '张德胜', '000000', '男', '欢迎来自保密专业的同学报考硕士研究生');
insert into teacher
values ('20060337', '李桂芳', '000000', '女', '教授、博士生导师');
insert into teacher
values ('20060338', '余露', '000000', '女', '希望大家带着愉悦的心情工作或学习！');
insert into teacher
values ('20060339', '张雪坤', '000000', '男', '每天都保持积极的心态，常常会让效率更高');
insert into teacher
values ('20060340', '李莫酬', '000000', '男', '教授、博士生导师');
insert into teacher
values ('20060341', '杨柳', '000000', '女', '欢迎来自软件工程专业的同学报考本人硕士研究生，方向不限');
insert into teacher
values ('20060342', '冷冰冰', '000000', '女', '教授、博士生导师');
insert into teacher
values ('20060343', '刘汝佳', '000000', '女', '博士生导师');
insert into teacher
values ('20060344', '朱振武', '000000', '男', '欢迎计算机专业的同学参与实验室科研活动或报考研究生');
insert into teacher
values ('20060345', '谭浩强', '000000', '男', '教授、硕导');
insert into teacher
values ('20060346', '金心艾', '000000', '女', '欢迎计算机、保密等专业的同学参与实验室科研活动或报考本人研究生，方向不限');
insert into teacher
values ('20060347', '林砚秋', '000000', '女', '教授');
insert into teacher
values ('20060348', '库里里', '000000', '男', '欢迎计算机、软件工程等专业的同学参与实验室科研活动或报考本人研究生');
insert into teacher
values ('20060349', '陈卓杨', '000000', '男', '教授、博士生导师');
insert into teacher
values ('20060350', '齐铭羽', '000000', '男', '在忙碌的同时，也要关注身心健康');
insert into teacher
values ('20060351', '刘超', '000000', '男', '教授、博士生导师');
insert into teacher
values ('20060352', '王培杵', '000000', '男', '多多运动，才能保持健康的状态');
insert into teacher
values ('20060353', '沈方予', '000000', '男', '欢迎同学们和我一起探讨问题，有问必答');
insert into teacher
values ('20060354', '徐颖惠', '000000', '女', '欢迎来自自动化的同学报考本人的硕士研究生！');
insert into teacher
values ('20060355', '赵孟凡', '000000', '男', '欢迎大家在课余时间跟我一起参加跑步活动，身体是革命的本钱');
insert into teacher
values ('20060356', '杨兆丰', '000000', '男', '教授、博士生导师');
insert into teacher
values ('20060357', '王奇兰', '000000', '女', '教授');
insert into teacher
values ('20060358', '汪月婷', '000000', '女', '博士生导师');
insert into teacher
values ('20060359', '陈百合', '000000', '女', '国家高层次专家');
insert into teacher
values ('20060360', '王卓然', '000000', '男', '教授');




