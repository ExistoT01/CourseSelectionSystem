package com.existot01.dao;

import com.existot01.domain.Student;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface StudentDao {

    @Insert("insert into student (id, name, gender, password, age, major, college) values (#{id}, #{name}, #{gender}, #{password}, " +
            "#{age}, #{major}, #{college})")
    public int addStudent(Student student);

    @Delete("delete from student where id = #{id}")
    public int deleteStudentByid(String id);

    @Delete("delete from student where name = #{name}")
    public int deleteStudentByName(String name);

    @Update("update student set name = #{name}, password = #{password}, gender = #{gender}, " +
            "major = #{major}, college = #{college} where id = #{id}")
    public int modifyStudent(Student student);

    @Update("update student set password = #{password} where id = #{id}")
    public int resetStudentPassword(String newPassword, String id);

    @Select("select * from student where id = #{id}")
    public Student getStudentById(@Param("id") String id);

    @Select("select * from student where name = #{name}")
    public Student getStudentByName(@Param("name") String name);

    @Select("select * from student where id = #{id} and password = #{password}")
    public Student getStudentByIdPassword(@Param("id") String id, @Param("password") String password);

    @Select("select * from student")
    public List<Student> getAllStudents();

}
