package com.existot01.controller;

import com.existot01.domain.Student;
import com.existot01.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.nio.charset.StandardCharsets;
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

    @GetMapping("/student/id")
    public Result getStudentById(@RequestParam("id") String id) {
        Student student = studentService.getStudentById(id);
        Integer code = student != null ? Code.GET_OK : Code.GET_ERR;
        String msg = student != null ? "" : "数据查询失败，请重试！";
        return new Result(code, student, msg);
    }

    @DeleteMapping("/student/id")
    public Result deleteStudentById(@RequestParam("id") String id) {
        boolean res = studentService.deleteStudentByid(id);
        return new Result(res ? Code.DEL_OK : Code.DEL_ERR, res);
    }

    @GetMapping("/student/name")
    public Result getStudentByName(@RequestParam("name") String name) {
        //解决中文乱码   要注意用SpringBoot时不需要进行中文乱码处理
        byte[] bytes = name.getBytes(StandardCharsets.ISO_8859_1);
        name = new String(bytes,StandardCharsets.UTF_8);

        System.out.println(name);
        // Student student = studentService.getStudentById(id);
        // Integer code = student != null ? Code.GET_OK : Code.GET_ERR;
        // String msg = student != null ? "" : "数据查询失败，请重试！";
        // return new Result(code, student, msg);

        // System.out.println(name);
        Student student = studentService.getStudentByName(name);
        Integer code = student != null ? Code.GET_OK : Code.GET_ERR;
        String msg = student != null ? "" : "数据查询失败，请重试！";
        return new Result(code, student, msg);
    }

    @PostMapping("/addStudent")
    public Result addStudent(@RequestBody Student student) {
        System.out.println("参数传递 ==> " + student);
        boolean res = studentService.addStudent(student);
        return new Result(res ? Code.ADD_OK : Code.ADD_ERR, res);
    }


}
