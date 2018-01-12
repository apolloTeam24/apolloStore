<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Apollo</title>
    <link rel="stylesheet" href="<c:url value="/static/css/bootstrap.css"/>"/>
    <link rel="icon" href="<c:url value="/static/img/apollo.ico"/>" />
</head>
<body>
<h1>修改admin</h1>
<form action="/mvc/admin/edit" method="post">
    <input type="text" name="id" value="${admin.id}" readonly placeholder="ID">
    <input type="text" name="userName" value="${admin.userName}" placeholder="用户名">
    <input type="text" name="password" value="${admin.password}" placeholder="密码">
    <input type="text" name="phone" value="${admin.phone}" placeholder="电话">
    <input type="text" name="mail" value="${admin.mail}" placeholder="邮箱">
    <input type="submit" value="提交更新">
</form>
<div style="color: red">${errorMessage}</div>
</body>
</html>
