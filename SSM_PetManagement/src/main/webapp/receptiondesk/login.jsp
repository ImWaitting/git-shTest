<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static01/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/static01/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static01/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static01/css/login.css"/>
    <script type="text/javascript">
        window.onload = function () {
            var item = document.getElementsByClassName("item");
            var it = item[0].getElementsByTagName("div");

            var content = document.getElementsByClassName("content");
            var con = content[0].getElementsByTagName("div");

            for (let i = 0; i < it.length; i++) {
                it[i].onclick = function () {
                    for (let j = 0; j < it.length; j++) {
                        it[j].className = '';
                        con[j].style.display = "none";
                    }
                    this.className = "active";
                    it[i].index = i;
                    con[i].style.display = "block";
                }
            }
        }
        $(function (){
            //绑定表单提交事件
            $("#loginBtn").click(function (){
                //获取用户名和密码
                var account = $("input[name='account']").val().trim();
                var passWord = $("input[name='passWord']").val().trim();
                //表单验证
                if(account == null || account == ''){
                    alert("用户名必填");
                    return false;
                }
                if(passWord == null || passWord == ''){
                    alert("密码必填");
                    return false;
                }
                //进入后台验证用户名和密码是否正确
                $.ajax({
                    url:'/login',
                    type:'post',
                    data:{
                        'account':account,
                        'passWord':passWord
                    },
                    dataType:'text',
                    success:function (data){
                        if(data == 1){
                            location.href="index.jsp";
                        }else{
                            alert("登录失败，用户名或密码错误！");
                        }
                    }
                })
            });
        })
    </script>
</head>
<body>
<c:if test="${sessionScope.registerResult != null}">
    <script>
        alert("${sessionScope.registerResult}");
        <%session.removeAttribute("registerResult");%>
    </script>
</c:if>
<div class="control">
    <div class="item">
        <div class="active">登录</div>
        <div>注册</div>
    </div>
    <div class="content">
        <div style="display: block;">

                <input type="text" name="account" placeholder="账号" required="required"/>

                <input type="password" name="passWord" placeholder="密码" required="required"/>
                <br/>


                <span class="role">
					
					</span>

                <input type="submit" value="登录" id="loginBtn"/>

        </div>
        <div>
            <form method="post" action="${pageContext.request.contextPath}/register">


                <input type="text" name="nickName" placeholder="用户名" required="required"/>
                <input type="text" name="account" placeholder="账号" required="required"/>

                <input type="password" name="passWord" placeholder="密码" required="required"/>
                <br/>
                <input type="password" name="passWord1" placeholder="确认密码" required="required"/>
                <br/>

                <input type="submit" value="注册"/>
            </form>
        </div>
    </div>
</div>
</body>
</html>
