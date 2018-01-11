<%--
  Created by IntelliJ IDEA.
  User: GDX
  Date: 2018/1/9
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改商品</title>
    <link rel="stylesheet" href="<c:url value="/static/css/bootstrap.css"/>"/>
    <link rel="icon" href="<c:url value="/static/img/lala.ico"/>" />
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
</form>
</body>
</html>
