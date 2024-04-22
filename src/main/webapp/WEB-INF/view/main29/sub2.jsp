<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="background-color: pink; padding: 20px;">
            ${message}
    </div>
</c:if>
<h3>직원 조회</h3>
<form>
    직원 조회
    <input type="number" name="id">
    <button>조회</button>


</form>
<hr>
<c:if test="${empty employee}">
    조회된 직원이 없습니다.
</c:if>
<c:if test="${not empty employee}">

    <div>
        번호
        <input type="number" readonly value="${customer.id}">
    </div>
    <div>
        이름
        <input type="text" readonly value="${customer.name}">
    </div>
    <div>
        계약명
        <input type="text" readonly value="${customer.contactName}">
    </div>
    <div>
        주소
        <input type="text" readonly value="${customer.address}">
    </div>
    <div>
        도시
        <input type="text" readonly value="${customer.city}">
    </div>
    <div>
        우편번호
        <input type="text" readonly value="${customer.postalCode}">
    </div>
    <div>
        국가
        <input type="text" readonly value="${customer.country}">
    </div>

    <form action="/main29/sub2/delete" method="post" onsubmit="return confirm('삭제하시겠습니까?')">
        <div style="display: none">

            <input type="text" name="id" value="${employee.id}">
        </div>
        <div>
            <button style="background-color: red ">삭제</button>
        </div>
    </form>
</c:if>
</body>
</html>
