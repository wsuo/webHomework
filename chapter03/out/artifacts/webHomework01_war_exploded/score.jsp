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
<style>
    button {
        position: relative;
        overflow: hidden;
        display: flex;
        align-items: center;
        justify-content: space-between;
        outline: none;
        padding: var(--space-m) var(--space-l);
        cursor: pointer;
        border: 2px solid transparent;
        border-radius: var(--base-border-radius);
    }
</style>
<body>
<h1 align="center" style="color: darkorange">
    您本次测试的分数为：
    <%
        out.println(request.getAttribute("score"));
    %>
分！
<%--    添加一个回到 index 的链接--%>


</h1>
<a href="http://localhost:8080/webHomework01/index.jsp">回到主页<button value="回到主页"/></a>
</body>
</html>
