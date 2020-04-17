<%--
  Created by IntelliJ IDEA.
  User: wsuo
  Date: 2020/4/12 0012
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>九九乘法表</title>
</head>
<body>
<c:forEach var="i" begin="1" end="9" step="1">
    <c:forEach var="j" begin="1" end="${i}" step="1">
        ${i} * ${j} = ${i * j} &nbsp;
    </c:forEach> <br>
</c:forEach>
</body>
</html>
