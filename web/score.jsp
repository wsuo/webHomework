<%--
  Created by IntelliJ IDEA.
  User: wsuo
  Date: 2020/3/1
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>作业一</title>
</head>
<body>
<h1>
    <%
        out.println(request.getAttribute("score"));
    %>

<%--    添加一个回到 index 的链接--%>
    <button value="回到主页" onclick="localhost:8080/webHomework01/index.jsp"/>
</h1>
</body>
</html>
