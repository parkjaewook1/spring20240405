package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;

import java.util.Iterator;

@Controller
@RequestMapping("main4")
public class Controller04 {


    // /main4/sub1
    // /main4/sub1?city
    // /main4/sub1?country
    // /main4/sub1?city=seoul&country=korea
    @RequestMapping("sub1")
    public void sub1(WebRequest request) {
        Iterator<String> names = request.getParameterNames();

        while (names.hasNext()) {
            String name = names.next();
            System.out.println(name);
        }
    }

    // /main4/sub2?name=son&age=44&city=london&country=uk
    @RequestMapping(value = "sub2")

    public void sub2(WebRequest request) {
        Iterator<String> names = request.getParameterNames();
        while (names.hasNext()) {
            String name = names.next();
//            System.out.println(name);
            String value = request.getParameter(name);
            System.out.println(name + "=" + value);
        }
    }

    // /main4/sub3?query=aespa
    // /main4/sub3?query=bts
    // /main4/sub3?query=newjeans
    @RequestMapping("sub3")
    public void sub3(WebRequest request) {
        String value = request.getParameter("query");

        if (value != null) {
            System.out.println(value + "검색 하기 로직 실행");
            System.out.println("검색결과 응답하기");
        }
    }


    // /main4/sub4?city=seoul
    // /main4/sub4?city=city
    // /main4/sub4?city=london
    @RequestMapping("sub4")
    public void sub4(WebRequest request) {
        String value = request.getParameter("city");

        if (value != null) {
            System.out.println(value + "입니다");
            System.out.println("다음은?");
        }
    }

    // /main4/sub5?age=10
    // /main4/sub5?age=20
    // /main4/sub5?age=13
    // /main4/sub5?age=19
    // /main4/sub5?age=35
    @RequestMapping("sub5")
    public void sub5(WebRequest request) {
        String value = request.getParameter("age");
        int age = Integer.parseInt(value);

        if (age < 13) {
            System.out.println("유아용 정보 검색");
        } else if (age < 19) {
            System.out.println("청소년 정보 검색");
        } else {
            System.out.println("성인 정보 검색");
        }
    }


    // /main4/sub6?weight=40
    // /main4/sub6?weight=50
    // /main4/sub6?weight=65.5
    // /main4/sub6?weight=78.9
    @RequestMapping("sub6")
    public void sub6(WebRequest request) {
        // 몸무게 weight 파라미터에 따라 다른 일
        String value = request.getParameter("weight");
        double weight = Double.parseDouble(value);

        if (weight < 50.0) {
            System.out.println("저체중");
        } else if (weight < 90.0) {
            System.out.println("보통");
        } else {
            System.out.println("과체중");
        }

    }
}