package com.existot01.service;

import com.existot01.config.SpringConfig;
import com.existot01.domain.Student;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringConfig.class)
public class StudentServiceTest {

    @Autowired
    private StudentService studentService;


    @Test
    public void testGetStudentById() {
        Student student = studentService.getStudentById("20020007095");
        System.out.println(student);
        System.out.println(student.getId());
    }
    @Test
    public void testGetAllStudents() {
        List<Student> all = studentService.getAllStudents();
        System.out.println(all);
    }



}
