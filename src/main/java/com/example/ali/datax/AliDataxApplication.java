package com.example.ali.datax;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import javax.annotation.ManagedBean;

@SpringBootApplication
@MapperScan("com.example.ali.datax.mapper")
public class AliDataxApplication {

    public static void main(String[] args) {
        SpringApplication.run(AliDataxApplication.class, args);
    }

}
