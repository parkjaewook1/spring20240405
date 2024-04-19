<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            border: 1px solid black;
        }

    </style>
</head>
<body>
<hr>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>lastName</th>
        <th>firstName</th>
        <th>birthDate</th>
        <th>photo</th>
        <th>notes</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${employeeList}" var="employee">
        <tr>
            <td>${employee.id}</td>
            <td>${employee.lastName}</td>
            <td>${employee.firstName}</td>
            <td>${employee.birthDate}</td>
            <td>${employee.photo}</td>
            <td>${employee.notes}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div>
    <c:if test="${not empty prevPageNumber}">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="${prevPageNumber}"/>
        </c:url>
        <span>
            <a href="${link}">이전</a>
        </span>
    </c:if>

    <c:forEach begin="${beginPageNumber}" end="${endPageNumber}" var="pageNumber">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="${pageNumber}"/>
        </c:url>
        <span>
            <a href="${link}">${pageNumber}</a>
        </span>
    </c:forEach>

    <c:if test="${not empty nextPageNumber}">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="${nextPageNumber}"/>
        </c:url>
        <span>
            <a href="${link}">다음</a>
        </span>
    </c:if>
</div>
</body>
</html>
