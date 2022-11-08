package com.existot01.dao;

import com.existot01.domain.Teacher;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface TeacherDao {
    @Insert("insert into teacher (id, name, gender, password, age, major, college) values (#{id}, #{name}, #{gender}, #{password}, " +
            "#{age}, #{major}, #{college})")
    public int addTeacher(Teacher teacher);

    @Delete("delete from teacher where id = #{id}")
    public int deleteTeacherByid(String id);

    @Delete("delete from teacher where name = #{name}")
    public int deleteTeacherByName(String name);

    @Update("update teacher set name = #{name}, password = #{password}, ender = #{gender}, " +
            "major = #{major}, college = #{college} where id = #{id}")
    public int modifyTeacher(Teacher teacher);

    @Update("update teacher set password = #{password} where id = #{id}")
    public int resetTeacherPassword(String newPassword, String id);

    @Select("select * from teacher where id = #{id}")
    public Teacher getTeacherById(@Param("id") String id);

    @Select("select * from teacher where name = #{name}")
    public Teacher getTeacherByName(@Param("name") String name);

    @Select("select * from teacher where id = #{id} and password = #{password}")
    public Teacher getTeacherByIdPassword(@Param("id") String id, @Param("password") String password);

    @Select("select * from teacher")
    public List<Teacher> getAllTeachers();
}
