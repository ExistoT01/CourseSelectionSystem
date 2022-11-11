/*
    添加课程
 */

--
-- 课程表
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`
(
    `id`      char(12)    NOT NULL,
    `name`    varchar(20) NOT NULL,
    `college` varchar(50) DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE
);

--
-- 课程数据
--

insert into course
values ('0014', '数据库', '计算机学院');
insert into course
values ('0015', '高等数学', '数学院');
insert into course
values ('0016', '操作系统', '计算机学院');
insert into course
values ('0017', '数据结构', '计算机学院');
insert into course
values ('0018', '体育', '体育学院');
insert into course
values ('0019', '大学物理', '物理学院');
insert into course
values ('0020', '概率统计', '数学院');
insert into course
values ('0021', 'C++', '计算机学院');
insert into course
values ('0022', '毛概', '马克思主义学院');
insert into course
values ('0023', '大学英语', '外语学院');
insert into course
values ('0024', '信号系统', '计算机学院');