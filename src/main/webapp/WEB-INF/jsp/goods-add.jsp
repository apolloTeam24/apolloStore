<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Apollo</title>
    <link rel="stylesheet" href="<c:url value="/static/css/bootstrap.css"/>"/>
    <link rel="icon" href="<c:url value="/static/img/apollo.ico"/>" />
</head>
<body>
<h1>添加商品</h1>
<form action="/mvc/goods/add" method="post">
    <input type="text" name="id" placeholder="ID">
    <input type="text" name="title" placeholder="标题">
    <input type="text" name="itemName" placeholder="商品名称">
    <input type="text" name="brand" placeholder="品牌">
    <input type="text" name="sell_point" placeholder="卖点">
    <input type="text" name="price" placeholder="价格">
    <input type="text" name="num" placeholder="库存">
    <input type="text" name="image" placeholder="图片">
    <input type="text" name="cid" placeholder="品类">
    <input type="text" name="status" placeholder="状态">
    <input type="text" name="created" placeholder="创建时间">
    <input type="text" name="updated" placeholder="更新时间">
    <input type="submit">
</form>
</body>
</html>
