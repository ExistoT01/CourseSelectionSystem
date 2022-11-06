package com.existot01.controller;

import com.existot01.domain.Student;
import com.existot01.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/adminController")
public class AdminController {
    @Autowired
    StudentService studentService;

    @GetMapping("/students")
    public Result getAllStudents() {
        List<Student> studentList = studentService.getAllStudents();
        Integer code = studentList != null ? Code.GET_OK : Code.GET_ERR;
        String msg = studentList != null ? "" : "数据查询失败，请重试！";
        return new Result(code, studentList, msg);
    }
}
