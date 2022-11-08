package com.existot01.service;

import com.existot01.domain.Teacher;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface TeacherService {
    /**
     * 添加老师
     * @param teacher
     * @return
     */
    public boolean addTeacher(Teacher teacher);

    /**
     * 根据编号删除老师
     * @param id
     * @return
     */
    public boolean deleteTeacherByid(String id);

    /**
     * 根据姓名删除老师
     * @param name
     * @return
     */
    public boolean deleteTeacherByName(String name);

    /**
     * 修改老师信息
     * @param teacher
     * @return
     */
    public boolean modifyTeacher(Teacher teacher);

    /**
     * 根据编号修改老师密码
     * @param newPassword 新密码
     * @param id
     * @return
     */
    public boolean resetTeacherPassword(String newPassword, String id);

    /**
     * 根据编号查询老师
     * @param id
     * @return 老师实体
     */
    public Teacher getTeacherById(String id);

    /**
     * 根据姓名查询老师
     * @param name
     * @return 老师实体
     */
    public Teacher getTeacherByName(String name);


    /**
     * 根据编号密码查询老师
     * @param id
     * @param password
     * @return 老师实体
     */
    public Teacher getTeacherByIdPassword(String id, String password);

    /**
     * 查询所有老师
     * @return 老师集合
     */
    public List<Teacher> getAllTeachers();
}
