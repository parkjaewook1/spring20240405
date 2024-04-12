<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:set var="attr1" value="page value2" scope="page"/>
<div>
    <div>
        <%--        page value2--%>
        ${attr1}
    </div>
    <div>
        ${attr1}<%--        request value1--%>
    </div>
</div>
