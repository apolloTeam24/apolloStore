<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            *{
                margin: 0px;
                padding: 0px;
            }
            #top-top {
                width: 100%;
                height: 50px;
                position: absolute;
                background-color: rgb(228,228,228);
            }

            #top-div {
            width: 1190px;
            height: 50px;
            background-color: rgb(228,228,228);
            margin: 0px auto;
            }

            #login-div {
            position: absolute;
            left: 570px;
            top:12px;
            width: 75px;
            height: 21px;
            line-height: 21px;
            text-align: center;
            font-size: 11px;
            font-family: "Microsoft YaHei";

            }

            #register-div {
            position: absolute;
            left: 645px;
            top:11px;
            line-height: 21px;
            text-align: center;
            font-size: 12px;
            font-family: "Microsoft YaHei";
            width: 63px;
            height: 21px;
            }

            .top-li {
            border-left: solid 1px darkgray;
            width: 90px;
            height: 21px;
            line-height: 21px;
            text-align: center;
            list-style: none;
            float: left;
            font-size: 12px;
            }

            #ul-top {
            position: absolute;
            top: 10px;
            left: 710px;
            }

            #top-search-div {
            width: 1190px;
            height: 100px;
            position: absolute;
            top: 50px;
            }

            #search-div {
            width: 450px;
            height: 45px;
            background-image: url("<c:url value="/static/img/6.png"/>");
            background-size: 50px 45px;
            position: absolute;
            left: 320px;
            top: 19px;

            /*background-color: #ee2222;*/
            }

            input#search-input[type=text] {
            width: 400px;
            height: 45px;
            }

            #search-input {
                outline: none;
            }

            #shopping-cart {
            width: 150px;
            height: 40px;
            border: solid 1px gray;
            line-height: 40px;
            text-align: center;
            color: red;
            position: absolute;
            left: 880px;
            top: 20px;
            background: url("<c:url value="/static/img/7.png"/>") no-repeat 34px 12px;
            }

            #commodity-page {
                width: 60px;
                height: 30px;
                background-color: #1b6d85;
                position: absolute;
                top: 200px;
                left: 500px;
            }
            /*.li-top-xx {*/
            /*width: 130px;*/
            /*height: 40px;*/
            /*line-height: 40px;*/
            /*text-align: left;*/
            /*float: left;*/
            /*list-style: none;*/
            /**/
            /*}*/

        </style>
    </head>
    <body>
        <div id="top-top"></div>
        <div id="top-div">
            <%--跳转登陆--%>
            <div id="login-div"><a href="/login.html" style="text-decoration: none;">你好，请登录</a></div>

            <%--跳转注册--%>
            <div id="register-div"><a href="/register" style="text-decoration: none">免费注册</a></div>
            <div id="top-top-div">
                <ul id="ul-top">
                    <li class="top-li">我的订单</li>
                    <li class="top-li">我的xx</li>
                        <%--<ul id="top-xx">--%>
                        <%--<li class="li-top-xx">待处理的订单<[表情]>--%>
                        <%--<li class="li-top-xx">返修退换货<[表情]>--%>
                        <%--<li class="li-top-xx">降价商品<[表情]>--%>
                        <%--</ul>--%>

                    <li class="top-li">xx会员</li>
                    <li class="top-li">企业采购</li>
                    <li class="top-li">客户服务</li>
                    <li class="top-li">网站导航</li>
                    <li class="top-li">手机xx</li>
                </ul>
            </div>
            <div id="top-search-div">
                <div id="search-div">
                    <input id="search-input" type="text">
                </div>
                <div id="shopping-cart">购物车
                </div>
            </div>
        </div>

        <div id="commodity-page"><a id="commodity-page-a" href="/commodity">商品页面</a></div>
    </body>
</html>