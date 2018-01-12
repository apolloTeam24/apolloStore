<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Apollo</title>
    <link rel="stylesheet" href="<c:url value="/static/css/bootstrap.css"/>"/>
    <link rel="icon" href="<c:url value="/static/img/apollo.ico"/>" />
</head>
<body>
<h1>修改商品</h1>
<form action="/mvc/goods/edit" method="post">
    <input type="text" name="id" value="${goods.id}" placeholder="ID"/>
    <input type="text" name="title" value="${goods.title}" placeholder="标题"/>
    <input type="text" name="itemName" value="${goods.itemName}" placeholder="商品名称"/>
    <input type="text" name="brand" value="${goods.brand}" placeholder="品牌"/>
    <input type="text" name="sellPoint" value="${goods.sell_point}" placeholder="卖点"/>
    <input type="text" name="price" value="${goods.price}" placeholder="价格"/>
    <input type="text" name="num" value="${goods.num}" placeholder="库存"/>
    <input type="text" name="image" value="${goods.image}" placeholder="图片"/>
    <input type="text" name="cid" value="${goods.cid}" placeholder="品类"/>
    <input type="text" name="status" value="${goods.status}" placeholder="状态"/>
    <input type="submit" value="提交更新">
</form>
<div style="color: red">${errorMessage}</div>
</body>
</html>
