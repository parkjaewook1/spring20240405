# aggregate function : 집계함수
# 평균,합계,갯수,최댓값,최솟값
#NULL 은 집계시 제외됨


# COUNT : 갯수
SELECT COUNT(EmployeeID)
FROM Employees;
SELECT COUNT(Notes)
FROM Employees;

# MIN : 최솟값, 최소값
# MAX : 최댓값, 최대값


SELECT MAX(Price)
FROM Products;
SELECT MIN(Price)
FROM Products;
SELECT MAX(BirthDate)
FROM Employees;
SELECT MIN(BirthDate)
FROM Employees;

SELECT SUM(Price)
FROM Products;

# AVG : 평균
SELECT AVG(Price)
FROM Products;