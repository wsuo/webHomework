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
    <title>分数</title>
</head>
<body>
<h1>
    <%
        out.println(request.getAttribute("score"));
    %>
</h1>
</body>
</html>
