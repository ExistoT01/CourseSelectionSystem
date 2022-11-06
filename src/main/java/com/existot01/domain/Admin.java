package com.existot01.domain;

public class Admin {
    // 管理员账户
    String id;
    // 密码
    String password;

    @Override
    public String toString() {
        return "Admin{" +
                "id='" + id + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public Admin(String id, String password) {
        this.id = id;
        this.password = password;
    }
}
