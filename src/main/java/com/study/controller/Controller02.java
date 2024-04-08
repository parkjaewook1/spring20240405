package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main2")
public class Controller02 {
    @RequestMapping("/sub1")
    public void sub1() {
        System.out.println("으하하하하하하");
    }

    @RequestMapping("/sub2")
    public void sub2() {
        System.out.println("hahahahahahaha");
    }

    @RequestMapping("/sub3")
    public void sub3() {
        System.out.println("potato");
    }
}
