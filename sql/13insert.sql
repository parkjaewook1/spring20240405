USE w3schools;

# INSERT INTO 테이블명(컬럼명...)
# VALUES (데이터들...)

SELECT *
FROM Employees
ORDER BY EmployeeID DESC;

DESC Employees;

INSERT INTO Employees (LastName)
VALUES ('ironman');

INSERT INTO Employees (FirstName)
VALUES ('tony');

INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('captain', 'steve', '1990-01-01', 'pic1', 'america');

INSERT INTO Employees
    (FirstName, LastName)
VALUES ('natasha', 'widow');


INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('dongwon', 'gamja', 'sinchon', 'hah', '9999', 'kor');

SELECT *
FROM Customers
ORDER BY CustomerID DESC;


# null : 값이 없음