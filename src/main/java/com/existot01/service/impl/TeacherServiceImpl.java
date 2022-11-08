package com.existot01.service.impl;

import com.existot01.dao.TeacherDao;
import com.existot01.domain.Teacher;
import com.existot01.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    TeacherDao teacherDao;
    
    @Override
    public boolean addTeacher(Teacher teacher) {
        teacherDao.addTeacher(teacher);
        return true;
    }

    @Override
    public boolean deleteTeacherByid(String id) {
        teacherDao.deleteTeacherByid(id);
        return true;
    }

    @Override
    public boolean deleteTeacherByName(String name) {
        teacherDao.deleteTeacherByName(name);
        return true;
    }

    @Override
    public boolean modifyTeacher(Teacher teacher) {
        teacherDao.modifyTeacher(teacher);
        return true;
    }

    @Override
    public boolean resetTeacherPassword(String newPassword, String id) {
        teacherDao.resetTeacherPassword(newPassword, id);
        return true;
    }

    @Override
    public Teacher getTeacherById(String id) {
        return teacherDao.getTeacherById(id);
    }

    @Override
    public Teacher getTeacherByName(String name) {
        return teacherDao.getTeacherByName(name);
    }

    @Override
    public Teacher getTeacherByIdPassword(String id, String password) {
        return teacherDao.getTeacherByIdPassword(id, password);
    }


    @Override
    public List<Teacher> getAllTeachers() {
        return teacherDao.getAllTeachers();
    }
}
