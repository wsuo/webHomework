<%--
  Created by IntelliJ IDEA.
  User: wsuo
  Date: 2020/3/29 0029
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
</head>
<body>
<form action="loginServlet02">
    <label>
        用户名:
        <input type="text" value="账号" name="username">
    </label>
    <label>
        密&nbsp;码:
        <input type="text" value="密码" name="password">
    </label>
    <input type="submit" value="登陆">
    <input type="reset" value="重置">
</form>

</body>
</html>
