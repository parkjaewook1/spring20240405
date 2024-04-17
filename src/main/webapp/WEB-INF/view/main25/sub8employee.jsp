<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        th {
            border: 1px solid orangered;
        }


    </style>
</head>
<body>
<h3>직원 목록</h3>
<form>
    <input value="${prevsearch}" type="text" name="search" placeholder="조회할 직원이름 입력">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty employees}" var="emptyemployee">
    <h4>조회된 직원이 없습니다.</h4>
</c:if>
<c:if test="${not emptyemployee}">


    <table>
        <thead>
        <tr>
            <th>No.</th>
            <th>Last Name</th>
            <th>First Name</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${employees}" var="employee" varStatus="status">
            <tr>
                <th>${status.count}</th>
                <th>${employee.lastName}</th>
                <th>${employee.firstName}</th>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>


</body>
</html>
