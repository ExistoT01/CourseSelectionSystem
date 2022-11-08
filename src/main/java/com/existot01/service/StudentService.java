package com.existot01.service;

import com.existot01.domain.Student;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface StudentService {

    /**
     * 添加学生
     * @param student
     * @return
     */
    public boolean addStudent(Student student);

    /**
     * 根据学号删除学生
     * @param id
     * @return
     */
    public boolean deleteStudentByid(String id);

    /**
     * 根据姓名删除学生
     * @param name
     * @return
     */
    public boolean deleteStudentByName(String name);

    /**
     * 修改学生信息
     * @param student
     * @return
     */
    public boolean modifyStudent(Student student);

    /**
     * 根据学号修改学生密码
     * @param newPassword 新密码
     * @param id
     * @return
     */
    public boolean resetStudentPassword(String newPassword, String id);

    /**
     * 根据学号查询学生
     * @param id
     * @return 学生实体
     */
    public Student getStudentById(String id);

    /**
     * 根据姓名查询学生
     * @param name
     * @return 学生实体
     */
    public Student getStudentByName(String name);


    /**
     * 根据学号密码查询学生
     * @param id
     * @param password
     * @return 学生实体
     */
    public Student getStudentByIdPassword(String id, String password);

    /**
     * 查询所有学生
     * @return 学生集合
     */
    public List<Student> getAllStudents();
}
