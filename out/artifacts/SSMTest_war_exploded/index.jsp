<%--
  Created by IntelliJ IDEA.
  User: accelerccc
  Date: 2019/10/3/0003
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<html >
<head>
    <title>Welcome</title>
</head>
<style>
    a{
        color: black;
        text-decoration: none;
    }
    #d04{
        width:8%;
        margin: 0 auto;
    }

    div.item img{
        width:100%;
    }
    div#carousel-example-generic{
        width:80%;
        margin:0 auto;
    }
</style>
<body background="http://pic1.win4000.com/wallpaper/a/59423574deaa1.jpg">
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
        <li data-target="#carousel-example-generic" data-slide-to="5"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="http://i0.hdslb.com/bfs/article/b431adff9be59d930443b7b91e94b051a36b9d45.jpg" >
        </div>
        <div class="item">
            <img src="http://b-ssl.duitang.com/uploads/item/201807/25/20180725123533_Tu4R3.jpeg" >
        </div>
        <div class="item">
            <img src="http://pic1.win4000.com/wallpaper/2018-01-09/5a548085a2eff.jpg" >
        </div>

        <div class="item">
            <img src="http://img.3dmgame.com/uploads/images/news/20190410/1554889516_835292.jpg" >
        </div>


    </div>
</div>
<br><br>
<div id="d04">
    <table>
        <tr>
            <td><button class="btn btn-primary">
                <a href="totest" >manager page</a>
            </button>
            </td>

            <td><button class="btn btn-primary">
                <a href="toOrder" >divide beta</a>
            </button></td>
        </tr>
    </table>


</div>





</body>
</html>
