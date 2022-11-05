package com.existot01.controller;

import com.existot01.domain.Admin;
import com.existot01.service.AdminService;
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

    // 管理员登录
    @PostMapping("adminlogin")
    public ModelAndView login(@RequestParam(value = "uname") String id,
                      @RequestParam(value = "upwd") String password,
                      @RequestParam(value = "roles") Object roles,
                      HttpSession httpSession) {
        System.out.println("id = " + id);
        System.out.println("pwd = " + password);
        System.out.println("then");
        System.out.println(roles);

        Admin admin = adminService.getByIdPassword(id, password);
        if (admin != null) {
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
