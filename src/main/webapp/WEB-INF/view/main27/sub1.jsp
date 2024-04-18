<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }
    </style>
</head>
<body>
<hr>
<table>
    <form>
        <div>
            <input type="text" name="search" value="${prevsearch}">
        </div>
        <div>
            <button>조회</button>
        </div>
    </form>
    <hr>
    <thead>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>contact</th>
        <th>address</th>
        <th>city</th>
        <th>post</th>
        <th>country</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.contactName}</td>
            <td>${customer.address}</td>
            <td>${customer.city}</td>
            <td>${customer.postalCode}</td>
            <td>${customer.country}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
