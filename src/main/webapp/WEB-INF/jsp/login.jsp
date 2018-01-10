<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>登陆</title>
  <link rel="stylesheet" href="<c:url value="/static/css/bootstrap.css"/>"/>
  <link rel="icon" href="<c:url value="/static/img/Apollo.ico"/>" />
  <style>
    #loge {
      width: 300px;
      height: 60px;
      position: absolute;
      left: 460px;
      top: 40px;
    }

    #b1 {
      font-size: 25px;
      font-family: "Microsoft YaHei";
      font-weight: 400;
    }

    #loge-picture {
      width: 100px;
      height: 60px;
      position: absolute;
      left: -150px;
      top: -20px;
    }

    .q-link {
      position: relative;
      left: 700px;
      top: 22px;
      float: right;
      color: #ee2222;
      text-decoration: none;
    }

    #middle-div {
      width: 1920px;
      height: 600px;
      background-color: rgb(86,160,234);
      position: absolute;
      top: 110px;
    }

    #middle-div-left {
      width: 600px;
      height: 460px;;
      position: absolute;
      left: 350px;
      top: 10px;
    }

    #middle-div-right {
      width: 450px;
      height: 500px;
      position: absolute;
      left: 1100px;
      top: 40px;
      background-color: white;
    }

    #login-tab1 {
      width: 225px;
      height: 105px;
      border-bottom: 1px solid rgb(247,247,247);
      line-height: 105px;
      text-align: center;
      font-size: 18px;
      font-family: "Microsoft YaHei UI Light";
      font-weight: 700;

    }

    #login-tab2 {
      width: 225px;
      height: 105px;
      position: relative;
      left: 225px;
      top: -105px;
      border-bottom: 1px solid rgb(247,247,247);
      line-height: 105px;
      text-align: center;
      font-size: 18px;
      font-family: "Microsoft YaHei UI Light";
      font-weight: 700;

    }

    #login-tab0 {
      width: 1px;
      height: 50px;
      border-right: 1px solid rgb(245,245,245);
      position: absolute;
      left: 225px;
      top: 25px;
    }

    #a1:hover {
      color:rgb(228,57,60);
      font-weight: bolder;
      font-size: 19px;
      font-family: "Microsoft YaHei", "Hiragino Sans GB";
    }

    #a2:hover {
      color:rgb(228,57,60);
      font-weight: bolder;
      font-size: 19px;
      font-family: "Microsoft YaHei", "Hiragino Sans GB";
    }

    #input-user {
      border: 1px solid rgb(201,201,201);
      width: 306px;
      height: 40px;
      position: absolute;
      left: 50px;
      top: 150px;
    }

    #label-picture {
      width: 40px;
      height: 40px;
      top: 0px;
      left: 0px;
      background: url("static/image/1.png");
      position: absolute;
    }

    #input-text-user {
      position: absolute;
      left: 40px;

    }

    #label-picture2 {
      width: 40px;
      height: 40px;
      top: 0px;
      left: 0px;
      background: url("static/image/2.png");
      position: absolute;
    }

    #input-password {
      border: 1px solid rgb(201,201,201);
      width: 306px;
      height: 40px;
      position: absolute;
      left: 50px;
      top: 240px;
    }

    #input-text-password {
      position: absolute;
      left: 40px;
    }

    #auto-login {
      width: 306px;
      height: 40px;
      position: absolute;
      left: 50px;
      top: 295px;
    }

    input#auto-checkbox[type=checkbox] {
      width: 18px;
      height: 18px;
      position: relative;
      top: 4px;
    }

    #auto-login-a {
      font-size: 16px;
      height: 16px;
      line-height: 16px;
      text-align: center;
      font-family: "Microsoft YaHei", "Hiragino Sans GB";
    }

    #password-a {
      width: 80px;
      height: 16px;
      line-height: 16px;
      font-size: 16px;
      text-align: center;
      font-family: "Microsoft YaHei", "Hiragino Sans GB";
      position: relative;
      left: 140px;
      top: 4px;
      text-decoration: none;
    }

    #login-bottom {
      width: 308px;
      height: 42px;
      background-color: #ee2222;
      line-height: 42px;
      text-align: center;
      font-family: "Microsoft YaHei";
      font-size: 20px;
      position: absolute;
      left: 50px;
      top: 350px;
      color: white;
    }
  </style>
</head>

<body>
  <div id="loge"  >
    <b id="b1">欢迎登陆</b>
    <div id="loge-picture">图片</div>
    <a href="Landing-page-questionnaire.jsp" class="q-link">登陆页面，调查问卷</a>
  </div>

  <div id="middle-div">
    <div id="middle-div-left">图片</div>

    <div id="middle-div-right" >
      <div id="login-tab0"></div>
      <div id="login-tab1"><a id="a1">扫码登录</a></div>
      <div id="login-tab2"><a id="a2">账户登录</a></div>

      <%--<div>--%>
        <%--<div id="input-user">--%>
          <%--<label id="label-picture"></label>--%>
          <form action="<c:url value="/login.html"/>" method="POST">
            <input type="text" name="username" value="${user.userName}"  placeholder="邮箱/用户名/已验证手机" style="width: 250px;height: 40px;line-height: 40px;border: gray">

            <input type="text" name="password" value="${user.password}" placeholder="密码" style="width: 250px;height: 40px;line-height: 40px;border: gray">

            <div id="auto-login">
              <input type="checkbox" id="auto-checkbox"><a id="auto-login-a">自动登录</a>
              <a id="password-a" href="home-page.jsp">忘记密码</a>
            </div>

            <input type="submit" id="login-bottom" value="登录">

          </form>


        </div>

      </div>

    </div>

  </div>
  <script src="<c:url value="/static/js/jquery-1.12.4.js"/>"></script>
  <script src="<c:url value="/static/js/bootstrap.js"/>"></script>
  </body>
</html>
