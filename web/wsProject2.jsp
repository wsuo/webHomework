<%--
  Created by IntelliJ IDEA.
  User: wsuo
  Date: 2020/3/11 0011
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WSProject2</title>
</head>
<body>
<h1 align="center">请输入圆柱的参数</h1>
<form action="wsProject2" method="post">
    <table align="center">
        <tr>
            <td><label for="radius">圆柱底面半径: </label></td>
            <td>
                <input type="text" size="30" name="radius" id="radius">
            </td>
        </tr>
        <tr>
            <td><label for="height">圆柱的高: </label></td>
            <td>
                <input type="text" id="height" size="30" name="height">
            </td>
        </tr>
    </table>
    <div align="center"><input type="submit" align="center"/></div>
</form>
</body>
</html>
