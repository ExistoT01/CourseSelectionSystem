package com.existot01.domain;

public class Student {
    // 学号
    private String id;
    // 姓名
    private String name;
    // 密码
    private String password;
    // 年龄
    private Integer age;
    // 性别
    private String gender;
    // 专业
    private String major;
    // 学院
    private String college;

    /**
     * 无参构造
     */
    public Student() {
    }

    /**
     * 使用学号与姓名构造
     * @param id
     * @param name
     */
    public Student(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }
}
