<%--
  Created by IntelliJ IDEA.
  User: wsuo
  Date: 2020/3/29 0029
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登陆</title>
</head>
<style>
    .form {
        color: darkorange;
        font-weight: bolder;
        display: block;
    }

    .input1 {
        text-align: left;
    }

    .input2 {
        text-align: right;
        margin-right: 0;
    }

    .span {
        color: red;
        text-align: center;
    }
</style>
<body>
<span class="span">${sessionScope.msg}</span>
<%request.setCharacterEncoding("UTF-8"); %>
<form action="login.do" class="form" method="post" accept-charset="UTF-8">
    <label>
        用户名:
        <input type="text" value="" name="username">
    </label>
    <br>
    <label>
        密&nbsp;&nbsp; 码:
        <input type="text" value="" name="password">
    </label>
    <br>
    <input type="submit" value="登陆" class="input1">
    <input type="reset" value="重置" class="input2">
    <% System.out.println("JSP页面" + request.getRequestURL());%>
</form>

</body>
</html>
