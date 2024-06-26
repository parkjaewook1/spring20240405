-- SQL 주석
# SQL 주석
# 명령문 실행 ctrl + enter
SELECT *
FROM w3schools.Employees;

# 명령문 종료는 ; 꼭 사용
SELECT *
FROM w3schools.Customers;

# table 데이터들이 저장되는 공간
# 행(records, data, row), 열(field, attribute, column)로 이루어져 있음

# schema (database): table 들이 정의되어 있는 고새

# schema 만들기
CREATE DATABASE test1;
CREATE TABLE test1
(
    id   int,
    name varchar(20)
);
SELECT *
FROM test1.test;

# 현재 사용중인 데이터베이스 선택
USE test1;

SELECT *
FROM test;

USE w3schools;
SELECT *
FROM Customers;

