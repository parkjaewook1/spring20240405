<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h3>나라</h3>
<table>
    <thead>
    <tr>
        <th>#</th>
        <th>country</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${countries}" varStatus="status" var="country">
        <tr>

            <td>${status.count}</td>
            <td>${country}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
