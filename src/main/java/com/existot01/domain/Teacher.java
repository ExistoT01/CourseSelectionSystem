package com.existot01.domain;

public class Teacher {
    // 教师编号
    private String id;
    // 姓名
    private String name;
    // 密码
    private String password;
    // 年龄
    private Integer age;
    // 性别
    private String gender;
    // 教师简介
    private String intro;

    /**
     * 无参构造
     */
    public Teacher() {
    }

    /**
     * 使用编号姓名构建
     * @param id
     * @param name
     */
    public Teacher(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }
}
