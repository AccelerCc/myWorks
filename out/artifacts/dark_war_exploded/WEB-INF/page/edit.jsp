<%--
  Created by IntelliJ IDEA.
  User: accelerccc
  Date: 2019/10/4/0004
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>edit</title>
</head>
<body>
<h1>this is the edit page</h1>
<c:forEach items="${userDataByID}" var="user">
    <form action="toUpdate" method="post">

    id:     <select name="id" >
                <option value="${user.id}">${user.id}</option>
            </select>
        <br>
    code:  <input type="text" name="code" value="${user.code}"><br>
    name:  <input type="text" name="name" value="${user.name}"><br>
    age:   <input type="text" name="age" value="${user.age}"><br>
    sex:   <input type="text" name="sex" value="${user.sex}"><br>
    money: <input type="text" name="money" value="${user.money}"><br><br>
    <input type="submit" value="edit the message">
    </form>
</c:forEach>
</body>
</html>
