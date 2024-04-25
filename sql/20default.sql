USE w3schools;

# DEFAULT : 값을 주지 않을 때의 기본값을 정의
CREATE TABLE my_table13
(
    col1 VARCHAR(10),
    col2 VARCHAR(10) DEFAULT 'abc'
);
INSERT INTO my_table13
    (col1, col2)
VALUES ('qwe', 'zxc');
INSERT INTO my_table13
    (col2)
VALUES ('iop');
INSERT INTO my_table13
    (col1)
VALUES ('bnm');
SELECT *
FROM my_table13;

CREATE TABLE my_table14
(
    col1 VARCHAR(10),
    col2 VARCHAR(10) NOT NULL,
    col3 VARCHAR(20),
    col4 VARCHAR(30)
);

INSERT INTO my_table14
    (col1, col2, col3, col4)
VALUES ('a', 'b', 'c', 'd');



SELECT *
FROM my_table14;