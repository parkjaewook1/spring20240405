# (INNER) JOIN
# LEFT (OUTER) JOIN
# RIGHT (OUTER) JOIN
#FULL (OUTER) JOIN -> mariadb 에는 없다
# UNION

USE mydb2;

CREATE TABLE table10
(
    col1 INT
);
CREATE TABLE table11
(
    col_a INT
);

INSERT INTO table10
VALUES (3),
       (4),
       (4),
       (5);
INSERT INTO table11
VALUES (3),
       (4),
       (7);

# UNION 합집합
SELECT *
FROM table10
UNION
SELECT *
FROM table11;

# LEFT JOIN
SELECT *
FROM table10
         LEFT JOIN table11
                   ON col1 = col_a
UNION
SELECT *
FROM table10
         RIGHT JOIN table11
                    ON col1 = col_a;
SELECT *
FROM table10
         JOIN table11
              ON col1 = col_a;

# UNION ALL
SELECT *
FROM table10
         LEFT JOIN table11
                   ON col1 = col_a
UNION ALL
SELECT *
FROM table10
         RIGHT JOIN table11
                    ON col1 = col_a;