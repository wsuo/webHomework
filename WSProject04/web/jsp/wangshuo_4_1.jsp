<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: wsuo
  Date: 2020/4/3 0003
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>输出系统时间</title>
    <style>

        * {
            margin: 0;
            padding: 0;
        }

        body {
            background-color: cornflowerblue;
        }

        .div1 {
            text-align: center;
            background-color: #fff;
            border-radius: 20px;
            width: 300px;
            height: 350px;
            margin: auto;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
        }

        h3, h2 {
            color: cornflowerblue;
        }

    </style>
</head>
<body>
<div class="div1">
    <%
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
        String format = sdf.format(new Date());
    %>
    <h2>当地时间</h2><br>
    <h3><%=format%>
    </h3>
</div>
</body>
</html>
