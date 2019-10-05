<%--
  Created by IntelliJ IDEA.
  User: accelerccc
  Date: 2019/10/4/0004
  Time: 12:37
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
    <title>add</title>
</head>
<style>
    a{
        color: black;
        text-decoration: none;
    }
    #form02{
        width: 25%;
        margin: 0 auto;
    }
    #d03{
        font-size: larger;
    }

</style>
<body>
<h1 align="center">This page is to add the user</h1>
<br><br><br><br>
<div id="d03">
<form id="form02" action="toAdd" method="post">
    code: <input type="text" class="form-control text-success" name="code" ><br>
    name:<input type="text" class="form-control text-success" name="name" ><br>
    age:<input type="text" class="form-control text-success" name="age" ><br>
    sex:<input type="text" class="form-control text-success" name="sex" ><br>
    money:<input type="text" class="form-control text-success" name="money" ><br><br><br>
    <input type="submit" class="btn btn-primary"  value="add the information" >
</form>
</div>


</body>
</html>
