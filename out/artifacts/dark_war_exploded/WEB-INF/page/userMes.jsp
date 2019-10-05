<%--
  Created by IntelliJ IDEA.
  User: accelerccc
  Date: 2019/10/4/0004
  Time: 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Information</title>
</head>
<body>
<table border="1px" align="center">
    <tr>
        <td>id</td>
        <td>code</td>
        <td>name</td>
        <td>age</td>
        <td>sex</td>
        <td>money</td>
        <td>edit</td>
        <td>delete</td>
    </tr>
    <c:forEach items="${userData}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.code}</td>
            <td>${user.name}</td>
            <td>${user.age}</td>
            <td>${user.sex}</td>
            <td>${user.money}</td>
            <td><a href="toEdit?id=${user.id}" >edit</a></td>
            <td><a href="toDelete?id=${user.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
