<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Apollo</title>
    <link rel="stylesheet" href="<c:url value="/static/css/bootstrap.css"/>"/>
    <link rel="icon" href="<c:url value="/static/img/apollo.ico"/>" />
</head>
<body>
<h1>添加用户</h1>
<form action="/mvc/admin/add" method="post">
    <input type="text" name="id" placeholder="ID">
    <input type="text" name="userName" placeholder="用户名">
    <input type="text" name="password" placeholder="密码">
    <input type="text" name="phone" placeholder="电话">
    <input type="text" name="mail" placeholder="邮箱">
    <input type="submit">
</form>
</body>
</html>
