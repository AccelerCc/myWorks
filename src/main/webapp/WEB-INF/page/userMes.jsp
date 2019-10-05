<%--
  Created by IntelliJ IDEA.
  User: accelerccc
  Date: 2019/10/4/0004
  Time: 9:11
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<html>
<head>
    <title>Information</title>
</head>
<style>
    a{
        color: black;
        text-decoration: none;
    }
    #tab01 {
        width: 35%;
        height: 70%;
    }
    #tab01 td{
        text-align: center;
        vertical-align:middle;
    }
    #d01{
        width:100%;
        margin: 0 auto;
    }
    #d02{
        width:8%;
        margin: 0 auto;
    }

</style>
<body>
<div id="d01">
<table id="tab01" border="3px" align="center" class="table table-striped table-bordered table-hover  table-condensed" >
    <tr>
        <td >id</td>
        <td >code</td>
        <td >name</td>
        <td >age</td>
        <td >sex</td>
        <td >money</td>
        <td >edit</td>
        <td >delete</td>
    </tr>
    <c:forEach items="${userData}" var="user">
        <tr>
            <td >${user.id}</td>
            <td >${user.code}</td>
            <td >${user.name}</td>
            <td >${user.age}</td>
            <td >${user.sex}</td>
            <td >${user.money}</td>
            <td ><button class="btn btn-success"> <a href="toEdit?id=${user.id}" >edit</a></button></td>
            <td ><button class="btn btn-danger"> <a href="toDelete?id=${user.id}">delete</a></button></td>
        </tr>
    </c:forEach>
</table>
</div>
<br><br><br><br><br>
<div id="d02">
    <button class="btn btn-primary"  >
        <a href="jumpAdd" >add user</a>
    </button>
</div>
</body>
</html>
