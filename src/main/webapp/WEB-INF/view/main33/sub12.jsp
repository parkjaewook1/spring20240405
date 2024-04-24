<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, td, tr, th {
            border-collapse: collapse;
            border: 1px solid black;
        }
    </style>
</head>
<body>
<form>
</form>

<h3>새 데이터 입력</h3>
<form action="" method="post">
    <div>
        제목
        <input type="text" name="title" value="격투기">
    </div>
    <div>
        이름
        <input type="text" name="name" value="최홍만">
    </div>
    <div>
        나이
        <input type="number" name="age" value="40">
    </div>
    <div>
        가격
        <input type="number" name="price" value="40.40">
    </div>
    <div>
        날짜
        <input type="date" name="published" value="2024-08-05">
    </div>
    <div>
        날짜 및 시간
        <input type="datetime-local" name="inserted" value="2024-08-05T14:24:30">
    </div>
    <div>
        <input type="submit" value="저장">
    </div>
</form>
<hr>
<h3>my_table10 자료들</h3>

<table>
    <thead>
    <tr>
        <th>제목</th>
        <th>이름</th>
        <th>나이</th>
        <th>가격</th>
        <th>날짜</th>
        <th>날짜 및 시간</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${datas}" var="data">
        <tr>
            <td>${data.title}</td>
            <td>${data.name}</td>
            <td>${data.age}</td>
            <td>${data.price}</td>
            <td>${data.published}</td>
            <td>${data.inserted}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
