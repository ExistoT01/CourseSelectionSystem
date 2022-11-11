/*
    添加课程成绩
 */

--
-- 成绩表
--

DROP TABLE IF EXISTS `student_course_grade`;
CREATE TABLE `student_course_grade`
(
    `Sid` char(12) NOT NULL,
    `Cid` char(12) NOT NULL,
    `grade` int DEFAULT NULL
);

--
-- 成绩数据
--

insert into student_course_grade
values ('20020007090', '0014', 38);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007090', '0022', 84);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007090', '0023', 73);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007091', '0015', 95);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007091', '0022', 62);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007091', '0014', 63);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007092', '0023', 92);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007093', '0016', 82);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007094', '0017', 82);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007095', '0018', 88);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007096', '0019', 71);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007097', '0020', 71);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007098', '0021', 76);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007099', '0022', 78);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007100', '0023', 85);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007101', '0014', 70);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007102', '0015', 67);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007103', '0016', 62);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007104', '0017', 60);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007105', '0018', 73);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007106', '0019', 84);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007107', '0020', 96);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007108', '0021', 93);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007109', '0022', 73);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007110', '0023', 86);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007111', '0014', 69);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007112', '0015', 79);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007113', '0016', 72);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007114', '0017', 90);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007115', '0018', 71);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007116', '0019', 98);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007117', '0020', 92);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007118', '0021', 63);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007119', '0022', 83);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007120', '0023', 85);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007121', '0014', 41);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007122', '0015', 47);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007123', '0016', 100);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007124', '0017', 96);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007125', '0018', 68);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007126', '0019', 55);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007127', '0020', 72);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007128', '0021', 82);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007129', '0022', 64);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007130', '0023', 52);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007131', '0014', 75);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007132', '0015', 38);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007133', '0016', 100);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007134', '0017', 53);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007135', '0018', 70);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007136', '0019', 59);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007137', '0020', 38);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007138', '0021', 65);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007139', '0022', 44);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007140', '0023', 50);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007141', '0014', 53);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007142', '0015', 41);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007143', '0016', 84);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007144', '0017', 85);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007145', '0018', 69);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007146', '0019', 42);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007147', '0020', 42);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007148', '0021', 46);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007149', '0022', 64);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007150', '0023', 35);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007151', '0014', 41);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007152', '0015', 87);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007153', '0016', 76);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007154', '0017', 50);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007155', '0018', 88);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007156', '0019', 91);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007157', '0020', 82);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007157', '0023', 32);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007158', '0021', 81);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007159', '0022', 96);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007160', '0023', 70);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007161', '0014', 88);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007162', '0015', 89);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007163', '0016', 63);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007164', '0017', 68);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007165', '0018', 73);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007166', '0019', 72);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007167', '0020', 68);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007168', '0021', 100);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007169', '0022', 76);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007170', '0023', 62);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007171', '0014', 83);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007172', '0015', 82);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007173', '0016', 70);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007174', '0017', 81);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007175', '0018', 100);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007176', '0019', 96);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007177', '0020', 67);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007178', '0021', 76);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007179', '0022', 96);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007180', '0023', 74);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007181', '0014', 94);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007182', '0015', 85);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007183', '0016', 93);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007184', '0017', 85);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007185', '0018', 97);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007186', '0019', 79);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007187', '0020', 85);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007188', '0021', 91);

INSERT INTO student_course_grade (Sid, Cid, grade)
VALUES ('20020007189', '0022', 95);