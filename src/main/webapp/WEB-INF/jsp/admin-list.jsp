<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Apollo</title>
    <link rel="stylesheet" href="<c:url value="/static/css/bootstrap.css"/>"/>
    <link rel="icon" href="<c:url value="/static/img/apollo.ico"/>" />

</head>
<body>

<div class="container">
    <h1>Admin列表</h1>
    <a href="<c:url value="/mvc/admin/add"/>">增加Admin</a>
    <c:forEach items="${admins}" var="admin">
        <div>
            <span>${admin.id}</span>
            <span>${admin.userName}</span>
            <span>${admin.password}</span>
            <span>${admin.phone}</span>
            <span>${admin.mail}</span>
            <span><a href="/mvc/admin/edit?id=${admin.id}">修改</a></span>
            <form action="/mvc/admin/delete" method="post" onsubmit="return validate(this)">
                <input type="hidden" name="id" value="${admin.id}">
                <span><input type="submit" value="删除"></span>
            </form>
        </div>
    </c:forEach>
    <ul class="pagination">
        <li class="disabled"><a href="#">首页</a></li>
        <li class="disabled"><a href="#">前页</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">后页</a></li>
        <li><a href="#">尾页</a></li>
    </ul>
</div>

<script>
    function validate(frm) {
        return confirm("确定要删除id是"+frm["id"].value+"的用户么？");
    }
</script>
</body>
</html>
