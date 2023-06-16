package com.example.ali.datax.controller;

import com.example.ali.datax.service.IJsonConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("json")
public class JsonController {
    @Autowired
    private IJsonConfigService iJsonConfigService;

    @GetMapping("/hi")
    public String sayHi(){
        return "hello jy";
    }

    @GetMapping("/text")
    public String getJson(@RequestParam("jsonName") String jsonName){

        return iJsonConfigService.getJsonTextByName(jsonName);
    }

}
