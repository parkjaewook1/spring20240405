USE w3schools;

# UPDATE 테이블명
# SET 컬럼명 = 바꿀값, 컬럼명 = 바꿀값,,,,,
# WHERE 레코드의 조건

# 주의 !!! : UPDATE 전에 같은 WHERE로 SELECT 꼭 해보기!!!
# 10,Bottom-Dollar Marketse,Elizabeth Lincoln,23 Tsawassen Blvd.,Tsawassen,T2F 8M4,Canada


SELECT *
FROM Customers
WHERE CustomerID = 10;

UPDATE Customers
SET ContactName = 'TONY STARK'
WHERE CustomerID = 10;

UPDATE Products
SET Price = Price * 3
WHERE CategoryID = 2;

SELECT *
FROM Products
WHERE CategoryID = 2;
