package com.existot01.controller;

import com.existot01.domain.Admin;
import com.existot01.domain.Student;
import com.existot01.domain.Teacher;
import com.existot01.service.AdminService;
import com.existot01.service.StudentService;
import com.existot01.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.util.Arrays;

@RestController
@RequestMapping(value = "/loginController")
public class LoginController {

    @Autowired
    private AdminService adminService;
    @Autowired
    private StudentService studentService;
    @Autowired
    private TeacherService teacherService;

    // 管理员登录
    @PostMapping("adminlogin")
    public ModelAndView adminlogin(@RequestParam(value = "uname") String id,
                      @RequestParam(value = "upwd") String password,
                      @RequestParam(value = "roles") Object roles,
                      HttpSession httpSession) {
        System.out.println("id = " + id);
        System.out.println("pwd = " + password);
        System.out.println("then");
        System.out.println(roles);

        Admin admin = adminService.getByIdPassword(id, password);
        if (admin != null) {
            System.out.println(admin);
            System.out.println("登录成功");
            httpSession.setAttribute("id", id);
            httpSession.setAttribute("password", password);
            return new ModelAndView(new RedirectView("/pages/admin/home.html"));
        } else {
            System.out.println("登录失败");
            return new ModelAndView(new RedirectView("/pages/login-new.html"));
        }
    }

    // 学生登录
    @PostMapping("studentlogin")
    public ModelAndView studentLogin(@RequestParam(value = "uname") String id,
                              @RequestParam(value = "upwd") String password,
                              @RequestParam(value = "roles") Object roles,
                              HttpSession httpSession) {
        System.out.println("id = " + id);
        System.out.println("pwd = " + password);
        System.out.println("then");
        System.out.println(roles);

        Student student = studentService.getStudentByIdPassword(id, password);
        if (student != null) {
            System.out.println(student);
            System.out.println("登录成功");
            httpSession.setAttribute("id", id);
            httpSession.setAttribute("password", password);
            return new ModelAndView(new RedirectView("/pages/admin/home.html"));
        } else {
            System.out.println("登录失败");
            return new ModelAndView(new RedirectView("/pages/login-new.html"));
        }
    }

    // 教师登录
    @PostMapping("teacherlogin")
    public ModelAndView teacherLogin(@RequestParam(value = "uname") String id,
                                     @RequestParam(value = "upwd") String password,
                                     @RequestParam(value = "roles") Object roles,
                                     HttpSession httpSession) {
        System.out.println("id = " + id);
        System.out.println("pwd = " + password);
        System.out.println("then");
        System.out.println(roles);

        Teacher teacher = teacherService.getTeacherByIdPassword(id, password);
        if (teacher != null) {
            System.out.println(teacher);
            System.out.println("登录成功");
            httpSession.setAttribute("id", id);
            httpSession.setAttribute("password", password);
            return new ModelAndView(new RedirectView("/pages/admin/home.html"));
        } else {
            System.out.println("登录失败");
            return new ModelAndView(new RedirectView("/pages/login-new.html"));
        }
    }


}
