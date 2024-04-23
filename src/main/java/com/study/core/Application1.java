package com.study.core;

import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
public class Application1 {
    public static void main(String[] args) {
        System.out.println("main method");

        Controller1 c = new Controller1();
        Dao1 dao = new Dao1();
//        c.setDao(dao);
        c.action();
    }
}

class Dao1 {
    public void select() {
        System.out.println("select datas....");
    }
}

class Controller1 {
    //dependency
    private Dao1 dao;

    public void action() {
        dao.select();
    }
}
