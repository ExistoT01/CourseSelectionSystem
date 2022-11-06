package com.existot01.service.impl;

import com.existot01.dao.StudentDao;
import com.existot01.domain.Student;
import com.existot01.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentDao studentDao;

    @Override
    public boolean addStudent(Student student) {
        studentDao.addStudent(student);
        return true;
    }

    @Override
    public boolean deleteStudentByid(String id) {
        studentDao.deleteStudentByid(id);
        return true;
    }

    @Override
    public boolean deleteStudentByName(String name) {
        studentDao.deleteStudentByName(name);
        return true;
    }

    @Override
    public boolean modifyStudent(Student student) {
        studentDao.modifyStudent(student);
        return true;
    }

    @Override
    public boolean resetStudentPassword(String newPassword, String id) {
        studentDao.resetStudentPassword(newPassword, id);
        return true;
    }

    @Override
    public Student getStudentById(String id) {
        return studentDao.getStudentById(id);
    }

    @Override
    public List<Student> getAllStudents() {
        return studentDao.getAllStudents();
    }
}
