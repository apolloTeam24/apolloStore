<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Apollo</title>

</head>
<body>

<div class="container">
    <h1>商品列表</h1>
    <a href="<c:url value="/mvc/goods/add"/>">增加新用户</a>
    <c:forEach items="${goods}" var="goods">
        <div>
            <span>${goods.id}</span>
            <span>${goods.title}</span>
            <span>${goods.itemName}</span>
            <span>${goods.brand}</span>
            <span>${goods.sell_point}</span>
            <span>${goods.price}</span>
            <span>${goods.num}</span>
            <span>${goods.image}</span>
            <span>${goods.cid}</span>
            <span>${goods.status}</span>
            <span>${goods.created}</span>
            <span>${goods.updated}</span>
            <span><a href="/mvc/goods/edit?id=${goods.id}">修改</a></span>
            <form action="/mvc/goods/delete" method="post" onsubmit="return validate(this)">
                <input type="hidden" name="id" value="${goods.id}">
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
