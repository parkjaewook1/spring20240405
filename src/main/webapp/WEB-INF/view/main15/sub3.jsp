<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--4개 영역 scope, page ,application, request--%>
<%--page = 같은 페이지 내에서 사용가능 하도록--%>
<%--request =--%>
<%--view 간 값 전달시 request 영역 attribute를 활용하면 됨--%>
<c:set var="current1" value="sub3 value1" scope="page"/>
<c:set var="current2" value="sub3 value2" scope="request"/>
<c:import url="navbar2.jsp"/>
<div>
    ${current1}, ${current2}
    <hr>
    sub3의 콘텐츠~!~!~!~!
</div>

</body>
</html>
