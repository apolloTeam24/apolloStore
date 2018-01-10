<%--
  Created by IntelliJ IDEA.
  User: jelly
  Date: 2018/1/8
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <style>

        #top-div {
            width: 1920px;
            height: 50px;
            background-color: rgb(228,228,228);
            position: absolute;
            left: 0px;
            top: 0px;
        }

        #login-div {
            position: absolute;
            left: 750px;
            top: 10px;
            background-color: greenyellow;
            width: 160px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            font-size: 16px;
            font-family: "Microsoft YaHei";

        }

        #register-div {
            position: absolute;
            left: 900px;
            top: 10px;
            background-color: chocolate;
            line-height: 30px;
            text-align: center;
            font-size: 16px;
            font-family: "Microsoft YaHei";
            width: 160px;
            height: 30px;


        }
    </style>
</head>
<body>
<div id="top-div">
    <div id="login-div"><a href="login.jsp" style="text-decoration: none">你好，请登录</a></div>
    <div id="register-div"><a href="register.jsp" style="text-decoration: none">免费注册</a></div>
</div>
</body>
</html>
