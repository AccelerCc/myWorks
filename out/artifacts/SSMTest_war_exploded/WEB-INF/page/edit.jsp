<%--
  Created by IntelliJ IDEA.
  User: accelerccc
  Date: 2019/10/4/0004
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<html>
<head>
    <title>edit</title>
</head>
<style>

    #editDiv01{
        width: 25%;
        margin: 0 auto;
    }
    #form01{
        font-size: larger;
    }
</style>
<body>
<h1 align="center">this is the edit page</h1>
<div id="editDiv01">
<c:forEach items="${userDataByID}" var="user">
    <form id="form01" action="toUpdate" method="post">

    id:     <select class="form-control" name="id" >
                <option value="${user.id}">${user.id}</option>
            </select>
        <br>
    code:  <input type="text" class="form-control text-success" name="code" value="${user.code}"><br>
    name:  <input type="text" class="form-control text-success" name="name" value="${user.name}"><br>
    age:   <input type="text" class="form-control text-success" name="age" value="${user.age}"><br>
    sex:   <input type="text" class="form-control text-success" name="sex" value="${user.sex}"><br>
    money: <input type="text" class="form-control text-success" name="money" value="${user.money}"><br><br>
    <input type="submit" class="btn btn-primary" value="edit the message">
    </form>
</c:forEach>
</div>
</body>
</html>
