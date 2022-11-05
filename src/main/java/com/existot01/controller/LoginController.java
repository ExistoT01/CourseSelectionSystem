package com.existot01.controller;

import com.existot01.domain.Admin;
import com.existot01.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/loginController")
public class LoginController {

    @Autowired
    private AdminService adminService;

    // 管理员登录
    @RequestMapping
    public void login(@RequestParam(value = "uname") String id,
                              @RequestParam(value = "upwd") String password) {
        System.out.println("id = " + id);
        System.out.println("pwd = " + password);

        Admin admin = adminService.getByIdPassword(id, password);
        if (admin != null) {
            System.out.println("登录成功");
        } else {
            System.out.println("登录失败");
        }
    }

}
