USE w3schools;

# 제약사항 constraints
# 특정의 컬럼에 제약사항을 줌 (예: 꼭 값이 있어야함, 기본값, 중복불가)

# NOT NULL: 꼭 값이 있어야함
CREATE TABLE my_table11
(
    col1 VARCHAR(10),
    col2 VARCHAR(10)

);

DESC my_table11;
INSERT INTO my_table11
    (col2)
VALUES ('value');

SELECT *
FROM my_table11;

SELECT *
FROM my_table11
WHERE col1 IS NOT NULL;

CREATE TABLE my_table12
(
    col1 VARCHAR(10),
    col2 VARCHAR(10)
);
INSERT INTO my_table12
    (col1, col2)
VALUES ('what', 'the');
SELECT *
FROM my_table12
WHERE col1 IS NOT NULL;
SELECT *
FROM my_table12
WHERE col2 IS NOT NULL;
