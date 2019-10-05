<%--
  Created by IntelliJ IDEA.
  User: accelerccc
  Date: 2019/10/3/0003
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>test page</title>
</head>
<body>
<h1>Uses Message</h1>
<c:forEach items="${userData}" var="user">
${user.name}
</c:forEach>
</body>
</html>
