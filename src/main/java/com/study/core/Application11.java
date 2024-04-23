package com.study.core;

import lombok.Getter;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application11 {
    public static void main(String[] args) {
        BeanFactory bf = SpringApplication.run(Application11.class, args);
        MyClass112 b1 = bf.getBean(MyClass112.class);
        MyClass111 b2 = b1.getField();
    }
}

@Component
@Getter
class MyClass112 {
    private MyClass111 field;

    @Autowired
    public MyClass112(MyClass111 field) {
        this.field = field;
    }
}


@Component
class MyClass111 {

}