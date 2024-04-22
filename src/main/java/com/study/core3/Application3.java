package com.study.core3;

import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application3 {
    public static void main(String[] args) {
        BeanFactory factory = SpringApplication.run(Application3.class);
        Dao bean1 = factory.getBean(Dao.class);
        Controller bean2 = factory.getBean(Controller.class);

        System.out.println(bean1);
        System.out.println(bean2);

        System.out.println(bean2.getDao());
    }
}

@Component
class Dao {

}

@Component
@Getter
@Setter
class Controller {
    // Dao 연결 와이어
    // Dependency Injection (DI) 주사넣듯이 넣는다잉
    @Autowired
    private Dao dao;
}