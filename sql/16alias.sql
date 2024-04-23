USE w3schools;

SELECT *
FROM Products;

DESC Products;

# AS : 컬럼 (또는 테이블)에 별칭을 줌
# 생략가능
SELECT ProductID, ProductName, Price
FROM Products;

SELECT ProductID   id,
       ProductName name,
       Price       가격
FROM Products;