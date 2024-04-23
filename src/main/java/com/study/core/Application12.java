package com.study.core;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application12 {
}

@Component
class MyClass121 {

}

@Getter
@Component
@RequiredArgsConstructor
class MyClass122 {
    private final MyClass121 field;
}
