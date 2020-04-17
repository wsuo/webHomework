<%--
  Created by IntelliJ IDEA.
  User: wsuo
  Date: 2020/4/3 0003
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello</title>
</head>
<style>
    td:first-child {
        background-color: deeppink;
    }
    td:last-child {
        background-color: darkorange;
    }
</style>
<body>
<%session.setAttribute("user", "王硕");%>
<table border="1">
    <tr>
        <td>你的会话ID:</td>
        <td><%=session.getId()%></td>
    </tr>
    <tr>
        <td>session对象中的user值:</td>
        <td><%=session.getAttribute("user")%></td>
    </tr>
</table>
</body>
</html>
