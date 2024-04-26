USE mydb2;

# LEFT (OUTER) JOIN

# INNER JOIN + 왼쪽 테이블에만 있는 레코드

SELECT *
FROM table2;

SELECT *
FROM table1
         LEFT JOIN table2 ON col_a = col_b;

DELETE
FROM table1;
DELETE
FROM table2;
INSERT INTO table1
VALUES (1),
       (2),
       (2),
       (3),
       (4);
INSERT INTO table1
VALUES (3),
       (4),
       (5),
       (5);

SELECT *
FROM table1
         LEFT JOIN table2 ON col_a = col_b;

# talbe3 (4),(5),(6),(3)
DELETE
FROM table3;
DELETE
FROM table4;
SELECT *
FROM table3;

INSERT INTO table3
VALUES (4),
       (5),
       (6),
       (3);
# talbe3 (5),(6),(7),(7),(8)
INSERT INTO table4
VALUES (5),
       (6),
       (7),
       (7),
       (8);
# 1. 카테시안 곱
SELECT *
FROM table3
         JOIN table4;
# 2. INNER JOIN
SELECT *
FROM table3
         JOIN table4 ON col_a = col_b;
# 3. LEFT JOIN
SELECT *
FROM table3
         LEFT JOIN table4 ON col_a = col_b;

SELECT *
FROM table3
         RIGHT JOIN table4 ON col_a = col_b;
