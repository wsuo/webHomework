<%--
  Created by IntelliJ IDEA.
  User: wsuo
  Date: 2020/4/12 0012
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>foreach测试1</title>
</head>
<body>
<table border="1">
    <th colspan="6">ForEach 栗子</th>
    <tr>
        <td>Value of x</td>
        <td>status.index</td>
        <td>status.current</td>
        <td>status.count</td>
        <td>status.first</td>
        <td>status.last</td>
    </tr>
    <c:forEach var="x" varStatus="status" begin="1" end="10" step="3">
        <tr>
            <td align="center"><font color="#6495ed">${x}</font></td>
            <td align="center">${status.index}</td>
            <td align="center">${status.current}</td>
            <td align="center">${status.count}</td>
            <td align="center">${status.first}</td>
            <td align="center">${status.last}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
