# 学生选课信息管理系统

> 该项目处于未完成阶段，仍在**持续更新中**

基于SSM的学生选课信息管理系统

## 项目简介

由 Java Spring + SpringMVC + Mybatis 结构编写的学生选课信息管理系统，项目运行在本地，前端由bootstrap完成

## 应用技术

- 工具：IntelliJ IDEA
- 环境：SDK11, tomcat8.5, mysql8.0
- 前端：JavaScript，jQuery，bootstrap4
- 后端：maven，SpringMVC，MyBatis，Ajax

## 项目目录

```
├─.idea
│  ├─codeStyles
│  ├─dataSources
│  │  └─42351afe-9f1f-41ef-adc4-21e1d5f53697
│  │      └─storage_v2
│  │          └─_src_
│  │              └─schema
│  └─inspectionProfiles
├─src
│  ├─main
│  │  ├─java
│  │  │  └─com
│  │  │      └─existot01 // 包名
│  │  │          ├─config // 配置目录
│  │  │          ├─controller // 控制器目录
│  │  │          ├─dao // 数据访问对象 Data Access Object
│  │  │          ├─domain // 
│  │  │          └─service // 服务层
│  │  │              └─impl // 服务层实现
│  │  ├─resources
│  │  │  └─sql // sql文件
│  │  └─webapp // 前端网页资源
│  │      ├─assets
│  │      │  ├─css
│  │      │  │  └─vendor
│  │      │  ├─fonts
│  │      │  ├─images
│  │      │  │  ├─bg
│  │      │  │  ├─commingsoon
│  │      │  │  │  └─flakes
│  │      │  │  │      ├─depth1
│  │      │  │  │      ├─depth2
│  │      │  │  │      ├─depth3
│  │      │  │  │      ├─depth4
│  │      │  │  │      └─depth5
│  │      │  │  ├─projects
│  │      │  │  └─users
│  │      │  └─js
│  │      │      ├─admin
│  │      │      ├─apexcharts
│  │      │      │  └─samples
│  │      │      │      └─assets
│  │      │      ├─demo
│  │      │      ├─ui
│  │      │      └─vendor
│  │      ├─pages
│  │      │  └─admin
│  │      └─WEB-INF
│  └─test // 测试类
│      └─java
│          └─com
│              └─existot01
│                  └─service
└─target
    ├─apache-tomcat-maven-plugin
    ├─classes
    │  ├─com
    │  │  └─existot01
    │  │      ├─config
    │  │      ├─controller
    │  │      ├─dao
    │  │      ├─domain
    │  │      └─service
    │  │          └─impl
    │  └─sql
    ├─generated-sources
    │  └─annotations
    ├─generated-test-sources
    │  └─test-annotations
    ├─maven-status
    │  └─maven-compiler-plugin
    │      └─compile
    │          └─default-compile
    ├─test-classes
    │  └─com
    │      └─existot01
    │          └─service
    └─tomcat
        ├─conf
        ├─logs
        ├─webapps
        └─work
            └─Tomcat
                └─localhost
                    └─_
                        └─org
                            └─apache
                                └─jsp
```

 ## 功能

<img src="https://expicture.oss-cn-beijing.aliyuncs.com/img/202211081703174.png" alt="image-20221108152809252" style="zoom:80%;" />

## 部分界面演示

- 登录界面

  <img src="https://expicture.oss-cn-beijing.aliyuncs.com/img/202211081703176.png" alt="image-20221108152959097" style="zoom:80%;" />

- 管理员主页

  <img src="https://expicture.oss-cn-beijing.aliyuncs.com/img/202211081703177.png" alt="image-20221108160340922" style="zoom:67%;" />

- 添加学生

  <img src="https://expicture.oss-cn-beijing.aliyuncs.com/img/202211081703178.png" alt="image-20221108160407590" style="zoom:80%;" />

> 更多页面请导入项目后浏览

## 技术细节

- web应用的三层结构

  > * 表现层
  >
  > * 业务逻辑层
  >
  > * 数据访问层
  
  用三层架构的目的就是为了实现 「高内聚低耦合」 的思想：

  - 高内聚：尽可能类的每个成员方法只完成一件事
  - 低耦合：减少类内部，一个成员方法调用另一个成员方法
  
  从类角度来看，高内聚低耦合：减少类内部，对其他类的调用
  从功能块来看，高内聚低耦合：减少模块之间的交互复杂度
  简单来说，就是「解耦」 ：只做自己功能内的事
  
- 用本项目的一个例子来解释三层结构

  1. 创建 `Student` 实体类

     ```java
     public class Student {
         // 学号
         private String id;
         // 姓名
         private String name;
         // 性别
         private String gender;
         // 密码
         private String password;
         // 年龄
         private Integer age;
         // 专业
         private String major;
         // 学院
         private String college;
     	
         // ...省略 set/get 方法
     }
     ```
  
  2. 编写数据访问层接口( `StudentServiceDao` )
  
     使用**注解开发**编写 `sql mapper`，简单高效
  
     ```java
     public interface StudentDao {
         // ...
         
         @Select("select * from student where id = #{id}")
         public Student getStudentById(@Param("id") String id);
     
     	// ...
     }
     ```
  
  3. 编写业务逻辑层接口( `StudentService `)
  
     ```java
     @Transactional
     public interface StudentService {
         // ...
     
         /**
          * 根据学号查询学生
          * @param id
          * @return 学生实体
          */
         public Student getStudentById(String id);
         
         // ...
     
     }
     ```
  
  4. 编写业务逻辑层实现( `StudentServiceImpl` )
     ```java
     @Service
     public class StudentServiceImpl implements StudentService {
         // ...
        
         @Override
         public Student getStudentById(String id) {
             return studentDao.getStudentById(id);
         }
     
         // ...
     }
     ```
  
   5. 编写表现层控制器 ( `adminController` ) 
  
      *此处是管理员控制器调用方法*
  
      ```java
      @RestController // REST 风格编写
      @RequestMapping("/adminController")
      public class AdminController {
          @Autowired // 自动装配
          StudentService studentService;
      
      	// ...
      	
          @GetMapping("/student/id")
          public Result getStudentById(@RequestParam("id") String id) {
              Student student = studentService.getStudentById(id);
              Integer code = student != null ? Code.GET_OK : Code.GET_ERR;
              String msg = student != null ? "" : "数据查询失败，请重试！";
              return new Result(code, student, msg);
          }
          
          // ...
      
      }
      ```
  6. 之后将数据发送给前端渲染
  
- 面向切面编程 AOP, 控制反转 IoC, 依赖注入DI，全部交由配置文件处理，进而 Spring 管理所有 Java Bean

  ```
  ├─config
  │      JdbcConfig.java
  │      MyBatisConfig.java
  │      ServletConfig.java
  │      SpringConfig.java
  │      SpringMvcConfig.java
  │      SpringMvcSupport.java
  ```

- 请求状态码机制

  在前后端发送请求的过程中，制定响应码 `Code`， 易于之后的 debug

  <img src="https://expicture.oss-cn-beijing.aliyuncs.com/img/202211081703179.png" alt="image-20221108165645959" style="zoom:80%;" />

  ```java
  public class Code {
      // ...
      public static final Integer GET_OK = 20041;
      public static final Integer GET_ERR = 20040;
      // ...
  }
  ```


## 版本日志

Version 1.0.0

1. A 新增 README.md 文件
2. U 更新 登录页面已支持 [管理员，老师，学生] 三种角色登录 

Version 1.0.1

1. A 新增 *查询/删除界面* 删除学生功能
2. U 更新 更新主页左侧栏的教师管理与课程管理选项

version 1.0.2

1. A 新增 按姓名删除学生功能
2. U 更新 添加学生页面，在添加完学生后alert提醒成功
3. A 新增 根据姓名和学号更改学生信息功能
