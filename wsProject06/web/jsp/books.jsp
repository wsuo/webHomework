<%--
  Created by IntelliJ IDEA.
  User: wsuo
  Date: 2020/4/12 0012
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>书籍</title>
    <style>
        table tr, td {
            border: 1px solid brown;
        }
    </style>
</head>
<body>
<table>
    <tr style="background: #ababff">
        <td>书号</td>
        <td>书名</td>
        <td>价格</td>
    </tr>
    <c:forEach items="${requestScope.books}" var="book" varStatus="status">
        <c:if test="${status.count % 2 == 0}">
            <tr style="background: #eeeeff">
        </c:if>
        <c:if test="${status.count % 2 != 0}">
            <tr style="background: #dedeff">
        </c:if>
        <td>${book.isbn}</td>
        <td>${book.title}</td>
        <td>${book.price}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
