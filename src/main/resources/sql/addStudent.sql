/*
    添加学生
 */

--
-- 学生表
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`
(
    `id`       char(12) NOT NULL,
    `name`     varchar(20) DEFAULT NULL,
    `gender`   varchar(18) DEFAULT NULL,
    `password` varchar(50) DEFAULT NULL,
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
values ('20020007092', '孙三', '男', '000000', 22, '计算机科学与技术', '计算机学院');
insert into student
values ('20020007093', '李四', '女', '000000', 22, '软件工程', '计算机学院');
insert into student
values ('20020007094', '王五', '男', '000000', 21, '保密技术', '保密学院');
insert into student
values ('20020007095', '张七', '女', '000000', 20, '大数据科学', '计算机学院');


