<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>Expression Language</p>
<p>간단한 연산 사용 가능</p>
<p>산술연산, 논리연산, 비교연산, 삼항연산</p>

<h3>산술연산, +, -, *, /, %</h3>
<p>${5+3}</p>
<p>${7-3}</p>
<p>${8*3}</p>
<p>${6/2}</p>
<p>${7/2}</p>
<p>${7 div 2}</p>
<p>${7 % 2}</p>
<p>${15 mod 4}</p>
<p>${"3" + "4"}</p>
<%--<p>${"three" + "four"}   문자 안댐</p>--%>
<h3>비교연산 >, <, >=, <=, ==</h3>
<p>${5 > 3}</p>
<p>${5 < 3}</p>
<p>${5 >= 3}</p>
<p>${5 <= 3}</p>
<p>${5 == 3}</p>
<p>${5 eq 3}</p>

<p>${"hello" < "spring"}</p>
<p>${"hello" < "Spring"}</p>

<p>${"11" < "2"}</p>
<p>${11 < 2}</p>
<p>${"11" < 2}</p>
<p>${11 < "2"}</p>
<%--<p>${11 < "two"}</p>--%>

<h3>논리연산 &&, ||</h3>
<h4>&& and</h4>
<p>${true && true}</p>
<p>${true && false}</p>
<p>${false && true}</p>
<p>${false && false}</p>
<h4>|| or</h4>
<p>${true || true}</p>
<p>${true || false}</p>
<p>${false || true}</p>
<p>${false || false}</p>
<h4>&& and</h4>
<p>${true and true}</p>
<p>${true and false}</p>
<p>${false and true}</p>
<p>${false and false}</p>
<h4>|| or</h4>
<p>${true or true}</p>
<p>${true or false}</p>
<p>${false or true}</p>
<p>${false or false}</p>

<h4>!</h4>
<p>${! true}</p>
<p>${! false}</p>
<h4>not</h4>
<p>${not true}</p>
<p>${not false}</p>

<h3>삼항연산자</h3>
<p>${true ? "hello" : "world"}</p>
<p>${false ? "hello" : "world"}</p>
<p>${age1 >= 20 ? "투표가능" : "투표불가능"}</p>
<p>${age2 >= 20 ? "투표가능" : "투표불가능"}</p>
<p>${[quantity * price]}</p>

</body>
</html>
