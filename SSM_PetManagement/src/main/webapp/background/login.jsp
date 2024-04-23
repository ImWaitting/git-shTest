<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"  language="java" %>
<!doctype html>
<html  class="x-admin-sm">
<head>
    <title>登录页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/login.js"></script>
</head>
<body>
<div id="login">
    <div>
        <h1>宠物管理平台</h1>
        <div id="loginimg">
            <img src="${pageContext.request.contextPath}/static/images/login/img_ajhra2hyWFNXSEw3TythaHVaVFRiT2ZVcE9Tb0c1K1h4dm9kVk5IWlFRb3pYVVAyc1B6RGp3PT0.gif" width="500" height="850">
        </div>
        <div id="logintext">
            <form id="login_form">
                <h2>欢迎登录</h2>
                <input type="text" name="account" placeholder="请输入用户名" class="text">
                <input type="password" name="passWord" placeholder="请输入密码" class="text">
                <div style="width: 60%;margin: auto;text-align: left">
                    <input type="checkbox" name="" id="checked">记住密码
                </div>
                <input type="submit" value="登录" id="loginbotn">
                <p style="color: red;font-size: 1.5rem">
                    <c:if test="${sessionScope.result!=null}">
                        ${sessionScope.result}
                        ${sessionScope.result=null}
                    </c:if>
                </p>
            </form>
        </div>
    </div>
</div>
</body>
</html>