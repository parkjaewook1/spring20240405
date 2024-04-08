package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main3")
public class Controller03 {

    @RequestMapping("sub1")
    public void method1() {
        System.out.println("gaebal");
    }

    @RequestMapping("sub2")
    public void method2() {
        System.out.println("asdf");
    }

    @RequestMapping(value = "/sub3", params = {"name", "age"})
    public void method3() {
        System.out.println("what");
    }

    // /main3/sub3?address&city
    // method5 작성
    @RequestMapping(value = "sub4", params = {"address", "city"})
    public void method4() {
        System.out.println("q");
    }

    // /main3/sub3?city=seoul&country=korea
    @RequestMapping(value = "sub5", params = {"country", "city"})
    public void method5() {
        System.out.println("asdf");
    }

}

