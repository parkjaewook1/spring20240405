USE w3schools;

INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT CustomerName, ContactName, Address, City, PostalCode, Country
FROM Customers;

SELECT COUNT(*)
FROM Customers;
# (n-1)/ 10 +1 마지막 페이지

# 직원 테이블 추가
INSERT INTO Employees
    (LastName, FirstName, BirthDate, Photo, Notes)
SELECT LastName, FirstName, BirthDate, Photo, Notes
FROM Employees;

SELECT COUNT(*)
FROM Employees;

DELETE
FROM Employees
WHERE EmployeeID > 580;

SELECT *
FROM Employees
ORDER BY EmployeeID
LIMIT 0, 10;

SELECT *
FROM Employees;
