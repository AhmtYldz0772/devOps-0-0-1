package com.example.devops_001_hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

@RestController
@RequestMapping
public class Controller {
    @GetMapping()
    public String time(){
        return "selam "+ LocalDateTime.now();
    }
    @GetMapping("/time")
    public String hello(){
        return "Devops hello" + LocalDateTime.now();
    }

}
