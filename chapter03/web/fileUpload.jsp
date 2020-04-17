<%--
  Created by IntelliJ IDEA.
  User: wsuo
  Date: 2020/3/4 0004
  Time: 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>
</head>
<body>
${message}<br>
<form action="fileUpload" method="post" enctype="multipart/form-data">
<table>
    <tr>
        <td align="center" colspan="2">文件上传</td>
    </tr>
    <tr>
        <td>用户名:</td>
        <td><input type="text" size="30" name="username"></td>
    </tr>
    <tr>
        <td>文件名:</td>
        <td><input type="file" size="30" name="filename"></td>
    </tr>
    <tr>
        <td align="right"><input type="submit" value="提交"></td>
        <td align="left"><input type="reset" value="重置"></td>
    </tr>
</table>
</form>
</body>
</html>
