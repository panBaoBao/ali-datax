package com.example.ali.datax;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;

import java.util.Collections;

public class CodeGenerator {
    public static void main(String[] args) {
        String url = "jdbc:mysql://127.0.0.1:3306/db1?useSSL=false&useUnicode=true&charset=UTF-8&generateSimpleParameterMetadata=true";
        String username = "root";
        String password = "a12345";

        FastAutoGenerator.create(url, username, password)
                .globalConfig(builder -> {
                    builder.author("ptm") // 设置作者
                            .enableSwagger() // 开启 swagger 模式
                            .outputDir("E:\\code\\20230615\\gcode"); // 指定输出目录
                })
                .packageConfig(builder -> {
                    builder.parent("com.example.ali.datax") // 设置父包名
                            .moduleName("ali") // 设置父包模块名
                            .pathInfo(Collections.singletonMap(OutputFile.mapperXml, "E:\\code\\20230615\\gcode")); // 设置mapperXml生成路径
                })
                .strategyConfig(builder -> {
                    builder.addInclude("json_config") ;// 设置需要生成的表名
                           // .addTablePrefix("t_", "c_"); // 设置过滤表前缀
                })
                .templateEngine(new FreemarkerTemplateEngine()) // 使用Freemarker引擎模板，默认的是Velocity引擎模板
                .execute();
    }
}
