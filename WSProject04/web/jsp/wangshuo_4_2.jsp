<%--
  Created by IntelliJ IDEA.
  User: wsuo
  Date: 2020/4/3 0003
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>动态表格</title>
    <style>

        .outside {
            text-align: center;
            border-radius: 20px;
            width: 400px;
            height: 400px;
            background-color: white;
            margin: auto;
            position: absolute;
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
        }

        body {
            background-color: cornflowerblue;
        }

        table {
            margin-top: 50px;
        }
    </style>
</head>
<body>
<div class="outside">
    <table border="1" align="center">
        <tr align="center">
            <td>序号</td>
            <td>书名</td>
        </tr>
        <%
            String[] array = new String[]{"SpringBoot快速开发指南",
                    "Java语言程序设计基础", "算法第四版"};
            for (int i = 0; i < array.length; i++) {
                %>
        <tr align="center">
            <td><%=i + 1%></td>
            <td><%=array[i]%></td>
        </tr>
        <%
            }
        %>
    </table>
</div>
</body>
</html>
