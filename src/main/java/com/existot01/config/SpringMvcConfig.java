package com.existot01.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan({"com.existot01.controller", "com.existot01.config"})
@EnableWebMvc
public class SpringMvcConfig {
}
