<%--
  Created by IntelliJ IDEA.
  User: zhang
  Date: 2018/1/6
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注冊</title>
    <link rel="stylesheet" href="<c:url value="/static/css/bootstrap.css"/>"/>
    <link rel="icon" href="<c:url value="/static/img/apollo.ico"/>" />
    <style>
        #div-big-top {
            position: absolute;
            left: 0px;
            top: 0px;
            width: 100%;
            height: 150px;
            background: white;
            box-shadow: 0px 10px 10px rgb(242,242,242);
        }

        #top-picture{
            width: 80px;
            height: 60px;
            position: absolute;
            left: 100px;
            top: 50px;
        }

        #top-type2{
            width: 100px;
            height: 60px;
            position: absolute;
            left: 150px;
            top: 50px;
        }

        #top-type3{
            width: 124px;
            height: 32px;
            font-size: 25px;
            position: absolute;
            left: 255px;
            top: 70px;
        }

        #top-right-type {
            width: 122px;
            height: 32px;
            font-size: 17px;
            color: rgb(167,167,167);
            position: absolute;
            right: 220px;
            top: 90px;
        }

        #top-right-type2 {
            width: 62px;
            height: 26px;
            font-size: 18px;
            font-family: SimSun;
            position: absolute;
            right: 175px;
            top: 90px;
        }

        #middle-div {
            width: 700px;
            height: 780px;;
            position: absolute;
            top: 166px;
        }

        #input-username {
            line-height: 50px;
            text-indent: 14px;
            border: 1px solid gray;
            width: 400px;
            height: 50px;
            letter-spacing: 20px;
            font-size: 22px;
            font-family: SimSun;
            position: absolute;
            left: 70px;
            top: 25px;
        }

        #input-user-password {
            border: 1px solid gray;
            line-height: 50px;
            text-indent: 14px;
            width: 400px;
            height: 50px;
            letter-spacing: 10px;
            font-size: 22px;
            font-family: SimSun;
            position: absolute;
            left: 70px;
            top: 110px;
        }

        #input-user-check-password {
            border: 1px solid gray;
            line-height: 50px;
            text-indent: 14px;
            width: 400px;
            height: 50px;
            letter-spacing: 10px;
            font-size: 22px;
            font-family: SimSun;
            position: absolute;
            left: 70px;
            top: 195px;
        }

        #input-phone {
            border: 1px solid gray;
            line-height: 50px;
            text-indent: 14px;
            width: 400px;
            height: 50px;
            font-size: 22px;
            font-family: SimSun;
            position: absolute;
            left: 70px;
            top: 280px;
        }

        #verification-code {
            border: 1px solid gray;
            line-height: 50px;
            text-indent: 14px;
            width: 400px;
            height: 50px;
            letter-spacing: 10px;
            font-size: 22px;
            font-family: SimSun;
            position: absolute;
            left: 70px;
            top: 385px;
        }

        #phone-verification-code {
            border: 1px solid gray;
            line-height: 50px;
            text-indent: 14px;
            width: 400px;
            height: 50px;
            font-size: 22px;
            font-family: SimSun;
            position: absolute;
            left: 70px;
            top: 490px;
        }

        #verification-code-picture {
            width: 100px;
            height: 44px;
            border: 1px solid black;
            position: absolute;
            left: 295px;
            top: 2px;
            font-size: 17px;
            line-height: 44px;
            text-align: center;
        }

        #email-check {
            width: 104px;
            height: 38px;
            line-height: 38px;
            text-align: center;
            color: rgb(129,181,255);
            position: absolute;
            left: 380px;
            top: 330px;
        }

        #get-verification-code {
            width: 100px;
            height: 44px;
            border: 1px solid black;
            position: absolute;
            left: 295px;
            top: 2px;
            font-size: 17px;
            line-height: 44px;
            text-align: center;
        }

        #bottom-div {
            width: 420px;
            height: 60px;
            text-indent: 22px;
            position: absolute;
            left: 75px;
            top: 580px;
        }

        #tick {
            width: 20px;
            height: 20px;
            position: absolute;
            top:  3px;
            left: -20px;
        }

        #user-register-div {
            color: rgb(85,146,255);
            position: absolute;
            left: 80px;
            top: 1px;
        }

        #privacy {
            color: rgb(85,146,255);
            position: absolute;
            left: 200px;
            top: 1px;
        }

        #register-immediately {
            width: 400px;
            height: 54px;
            line-height: 54px;
            text-indent: 22px;
            position: absolute;
            left: 75px;
            top: 650px;
            color: #fff;
            background: #e22;
            border: 0;
            font-size: 16px;
            font-family: "Microsoft YaHei","Hiragino Sans GB";
            text-align: center;
        }

        #middle-vertical-bar {
            width: 10px;
            height: 605px;
            position: absolute;
            left: 700px;
            top: 190px;
        }

        #left-top {
            color: #666;
            width: 210px;
            height: 120px;
            text-indent: 50px;
            line-height: 120px;
            text-align: center;
            position: absolute;
            left: 850px;
            top: 150px;
        }

        #left-top2 {
            color: #666;
            width: 210px;
            height: 80px;
            line-height: 80px;
            text-indent: 50px;
            position: absolute;
            left: 850px;
            top: 330px;
            text-align: center;
        }

        input#box[type=checkbox] {
            width: 22px;
            height: 22px;
            position: absolute;
            left: 12px;
            top: -7px;
        }

    </style>
</head>
<body>
<div id="div-big-top" >
    <div id="top-picture">圖片</div>
    <div id="top-type2">图片2</div>
    <div id="top-type3">欢迎注册</div>
    <div id="top-right-type">已有账号 ?</div>
    <div id="top-right-type2">请登陆</div>
</div>

<div id="middle-div">
    <div id="input-username" >用户名<input type="text" style="position: absolute;left: 148px;top: 5px;border: none; font-size: 15px;height:39px;width: 235px;" placeholder="您的账户名和登录名" onkeyup="value=value.replace(/[\W]/g,'') "onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"></div>
    <div id="input-user-password" >设置密码<input type="password" style="position: absolute;left: 148px;top: 5px;border: none; font-size: 15px;height:39px;width: 235px" placeholder="建议至少使用两种字符组合"></div>
    <div id="input-user-check-password" >确认密码<input type="password" style="position: absolute;left: 148px;top: 5px;border: none; font-size: 15px;height:39px;width: 235px" placeholder="请再次输入密码"></div>
    <div id="input-phone" ><select style="position: absolute;left: 8px;top: 9px;font-size: 19px">
        <option>中国 0086</option>
        <option>中国 0186</option>
        <option>中国 0186</option>
    </select>
        <input type="text" style="position: absolute;left: 148px;top: 5px;border: none; font-size: 15px;height:39px;width: 205px" placeholder="建议使用常用手机" maxlength="11" onkeyup="this.value=this.value.replace(/\D/g,'')"></div>

    <div id="verification-code" >验证码
        <div id="verification-code-picture">
            验证码
        </div><input type="text" style="position: absolute;left: 148px;top: 5px;border: none; font-size: 15px;height:39px;width: 130px" placeholder="请输入验证码"></div>
    <div id="phone-verification-code" >手机验证码
        <div id="get-verification-code">
            获取验证码
        </div><input type="text" style="position: absolute;left: 148px;top: 5px;border: none; font-size: 15px;height:39px;width: 130px" placeholder="请输入手机验证码"></div>

    <div id="email-check">邮箱验证</div>
    <div id="bottom-div">阅读并同意
    <div id="tick"><input type="checkbox" name="c1" id="box"></div>
        <div id="user-register-div">《用户注册协议》</div>
        <div id="privacy">《隐私政策》</div>
    </div>
    <div id="register-immediately">立即注册</div>
</div>
<div id="middle-vertical-bar">
    <table height=605 style="border-color:rgb(230,230,230);border-left-style:solid;"><tr><td valign=top></table></div>
<div id="left-top">企业用户注册
    <table width=210 style="border-color:rgb(230,230,230);border-top-style:solid;"><tr><td valign=top></table></div>
<div id="left-top2">INTERNATIONAL CUSTOMERS</div>



<%--<script>--%>
    <%--function showKeyPress(evt) {--%>
        <%--evt = (evt) ? evt : window.event--%>
        <%--return checkSpecificKey(evt.keyCode);--%>
    <%--}--%>

    <%--function checkSpecificKey(keyCode) {--%>
        <%--var specialKey = "[`~!#$^&*()=|{}':;',\\[\\].<>/?~！#￥……&*（）——|{}【】‘；：”“'。，、？]‘’";--%>
        <%--var realkey = String.fromCharCode(keyCode);--%>
        <%--var flg = false;--%>
        <%--flg = (specialKey.indexOf(realkey) >= 0);--%>
        <%--if (flg) {--%>
             <%--alert('请勿输入特殊字符: ' + realkey);--%>
            <%--return false;--%>
        <%--}--%>
        <%--return true;--%>
    <%--}--%>
    <%--document.onkeypress = showKeyPress;--%>
<%--</script>--%>
<script src="<c:url value="/static/js/jquery-1.12.4.js"/>"></script>
<script src="<c:url value="/static/js/bootstrap.js"/>"></script>
</body>
</html>
