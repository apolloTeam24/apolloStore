<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>YES</title>
</head>
<body>
<h1>编辑图书</h1>
<form action="/mvc/admin/edit" method="post">
    <input type="text" name="id" value="${user.id}" readonly placeholder="ID">
    <input type="text" name="name" value="${user.userName}" placeholder="用户名">
    <input type="text" name="author" value="${user.password}" placeholder="密码">
    <input type="text" name="year" value="${user.phone}" placeholder="电话">
    <input type="text" name="year" value="${user.mail}" placeholder="邮箱">
    <input type="submit" value="提交更新">
</form>
</body>
</html>
