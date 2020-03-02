<%--
  Created by IntelliJ IDEA.
  User: wsuo
  Date: 2020/3/2 0002
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>作业二</title>
</head>
<body>
<h1>
<%out.print(request.getAttribute("host"));%>
<%out.print(request.getAttribute("time"));%>
<%out.print(request.getAttribute("para"));%></h1>
</body>
</html>
