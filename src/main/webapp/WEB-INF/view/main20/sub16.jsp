<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--method : 전송 방식 결정--%>
<%--get : 주소에 쿼리스트링으로 붙음--%>
<%--post : 요청 메세지 body(몸체)에 붙음--%>
<form action="/main20/sub17" method="post">
    <div>
        아이디
        <input type="text" name="id">
    </div>
    <div>
        패스워드
        <input type="password" name="password">
    </div>
    <div>자기소개
        <textarea name="describe" id="" cols="30" rows="10"></textarea>
    </div>
    <div>
        <input type="submit">
    </div>
</form>

<hr>
<form action="/main20/sub18" method="post">
    <div>
        이름 :
        <input type="text" name="name">
    </div>
    <div>
        도시 :
        <input type="text" name="city">
    </div>
    <div>
        주소 :
        <input type="text" name="address">
    </div>
</form>

</body>
</html>
