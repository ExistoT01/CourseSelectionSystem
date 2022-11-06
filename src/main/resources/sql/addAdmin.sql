/*
    添加管理员
 */

--
-- 管理员表
--

drop table if exists admin;
CREATE TABLE admin
(
    Aname     varchar(12) NOT NULL,
    Apassword varchar(12) NOT NULL,
    PRIMARY KEY (`Aname`)
);

--
-- 管理员数据
--
insert into admin
values ('admin', '000000');