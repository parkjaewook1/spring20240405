USE w3schools;

# 문자열
#VARCHAR(길이)
CREATE TABLE my_table3
(
    name  VARCHAR(3),
    title VARCHAR(5),
    notes VARCHAR(1000)

);
DESC my_table3;
INSERT INTO my_table3
    (name, title, notes)
VALUES ('이강인', '축구선수', '파리생제르망');
INSERT INTO my_table3
    (name, title, notes)
VALUES ('네이마루', '야구선수', '사우디아라비아');


# todo : my_table4
#책 제목, 책 내용, 저자
CREATE TABLE my_table4
(
    BookName    VARCHAR(10),
    BookContent VARCHAR(1000),
    Author      VARCHAR(10)
);
DESC my_table4;
INSERT INTO my_table4
    (BookName, BookContent, Author)
VALUES ('개미', '개미일대기', '베르나르베르베르');
INSERT INTO my_table4
    (BookName, BookContent, Author)
VALUES ('포포나무', '이대역', '맛집');

SELECT *
FROM my_table4;

# 수
#정수 INT
# 실수 DECIMAL, DEC
CREATE TABLE my_table5
(
    age    INT,
    height DEC(10, 4)
);

# todo : 새 테이블 my_table6
# 한 개의 정수 타입 컬럼, 한 개의 실수 타입 컬럼
# DESC 테이블, 레코드 추가, 조회
CREATE TABLE my_table6
(
    quantity INT,
    price    DEC(20, 2)
);
DESC my_table6;
INSERT INTO my_table6
    (quantity, price)
VALUES (500, 203947234.22);
SELECT *
FROM my_table6;


# 날짜시간
# DATE ; 날짜 (YYYY-MM-DD)
# DATETIME; 날짜시간 (YYYY-MM-DD HH:MM:SS)

CREATE TABLE my_table7
(
    col1 DATE,
    col2 DATETIME
);
SELECT *
FROM my_table7;
DESC my_table7;
INSERT INTO my_table7
    (col1, col2)
VALUES ('2002-08-10', '1999-09-09 22:10:10');

# todo : my_table8 에 두 컬럼(DATE, DATETIME) 정의하고
# 레코드 넣고, 조회

CREATE TABLE my_table8
(
    col3 DATE,
    col4 DATETIME
);
DESC my_table8;
INSERT INTO my_table8
    (col3, col4)
VALUES ('2017-01-01', '2024-04-24 11:33:30');
SELECT *
FROM my_table8;

CREATE TABLE my_table9
(
    string_col    VARCHAR(30),
    int_col       INT,
    dec_col       DEC(10, 2),
    date_col      DATE,
    date_time_col DATETIME
);
INSERT INTO my_table9
    (string_col, int_col, dec_col, date_col, date_time_col)
VALUES ('곧 점심시간!!', 50000, 54321.98, '2024-02-02', '1888-08-01 12:04:10');
SELECT *
FROM my_table9;

CREATE TABLE my_table10
(
    title     VARCHAR(30),
    name      VARCHAR(30),
    age       INT,
    price     DEC(10, 3),
    published DATE,
    inserted  DATETIME
);

INSERT INTO my_table10
    (title, name, age, price, published, inserted)
VALUES ('이것이 자바다', '신용권', 40, 23422.223, '1999-09-09', '1999-10-10 12:33:12'),
       ('스프링부트', '홍길동', 50, 2342.123, '2024-01-01', '2024-02-02 09:33:33');

SELECT *
FROM my_table10;
