<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: wsuo
  Date: 2020/4/12 0012
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>作业</title>
</head>
<body>
<%
    List<String> list = new ArrayList<>();
    list.add("1");
    list.add("2");
    list.add("3");
    list.add("4");
    list.add("5");
    pageContext.setAttribute("list", list);
%>
<c:forEach items="${list}" var="num">
    <c:if test="${num != 4}">
        <c:out value="${num}"/>
    </c:if>
</c:forEach>
</body>
</html>
