<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
</head>
<style>


    div[id="body"] {
        font-family: 'Arial Normal', 'Arial';
        font-weight: 400;
        font-style: normal;
        font-size: 14px;
        letter-spacing: normal;
        color: #666666;
        text-align: center;
        line-height: normal;
        text-transform: none;
        position: absolute;
        left: 16%;
        width: 1100px;
        height: 652px;
        background: inherit;
        background-color: rgba(255, 255, 255, 1);
        box-sizing: border-box;
        border-width: 1px;
        border-style: solid;
        border-color: rgba(228, 228, 228, 1);
        border-radius: 0px;
        box-shadow: none;
    }

    div[id="head"] {
        background-color: #ff7a1f;
        letter-spacing: normal;
        color: #666666;
        font-family: '微软雅黑 Bold', '微软雅黑 Regular', '微软雅黑';
        font-weight: 700;
        font-style: normal;
        font-size: 14px;
        text-align: left;
        line-height: 28px;
        border-width: 0px;
        word-wrap: break-word;
        text-transform: none;
        position: absolute;
        align-self: center;
        padding: 2px 2px 2px 15px;
        box-sizing: border-box;
        width: 100%;
        height: 55px;
    }

    span {
        letter-spacing: normal;
        line-height: normal;
        color: #333333;
        text-align: left;
        font-family: 'Arial Negreta', 'Arial Normal', 'Arial';
        font-weight: 700;
        font-style: normal;
        font-size: 18px;
        white-space: nowrap;
        text-transform: none;
        text-rendering: optimizeLegibility;
        -webkit-font-feature-settings: "kern";
        font-kerning: normal;
    }

    p {
        display: flex;
        justify-content: right;

    }


    input[type="text"], select, input[type="password"] {
        box-sizing: border-box;
        left: 0%;
        top: 0px;
        width: 305px;
        height: 34px;
        padding: 3px 2px 3px 2px;
        font-family: 'Arial Normal', 'Arial';
        font-weight: 400;
        font-style: normal;
        font-size: 18px;
        letter-spacing: normal;
        color: #000000;
        text-align: left;
        text-transform: none;
    }

    ul {
        list-style: none;
        margin-left: 30px;
        padding: 0;


    }

    li {
        width: 100%;
        height: 40px;
        line-height: 40px;
    }


    a {
        color: #666666;
        font-family: '微软雅黑 Bold', '微软雅黑 Regular', '微软雅黑';
        font-weight: 700;
        font-style: normal;
        font-size: 14px;
        text-decoration: none;

    }


    a:hover {
        color: #9d00ff;
        text-decoration: none;
    }

    div[id="left"] {
        position: absolute;
        top: 50px;
        box-sizing: border-box;
        z-index: 1;
    }

    div[id="letfBorder"] {
        position: absolute;
        left: 110px;
        top: 55px;
        background-color: rgba(102, 102, 102, 0.16);
        width: 2px;
        height: 595px;
        z-index: 1;
    }

    .style1 {
        position: absolute;
        left: 15px;
        top: 75px;
        width: 60%;
        height: 480px;
        background-color: rgba(255, 255, 255, 1);
        box-sizing: border-box;
        border-width: 1px;
        border-style: none;
        border-radius: 0px;
        box-shadow: none;
    }

    #jbxx em {
        display: inline-block;
        box-sizing: border-box;
        left: 0%;
        top: 0px;
        width: 305px;
        height: 34px;
        padding: 3px 2px 3px 2px;
        font-family: 'Arial Normal', 'Arial';
        font-weight: 400;
        font-style: normal;
        font-size: 18px;
        letter-spacing: normal;
        color: #000000;
        text-align: left;
        text-transform: none;
    }
</style>


<body>
<div id="body">
    <c:if test="${sessionScope.message!=null}">
        <script>
            alert("${sessionScope.message}");
            <%session.removeAttribute("message");%>
        </script>
    </c:if>
    <div id="head">
        <h4 style="width: 100%;height: 32px;background-color: #ff7a1f;
    vertical-align: middle;line-height: 32px;text-indent: 14px;">个人中心</h4>
    </div>
    <div id="left">
        <ul>
            <li><a href="${pageContext.request.contextPath}/receptiondesk/index.jsp">首页</a></li>
            <li ><a href="${pageContext.request.contextPath}/receptiondesk/customer.jsp">基本信息</a></li>
            <li onclick="document.getElementById('xgxx').hidden = false;document.getElementById('smrz').hidden = true;document.getElementById('jbxx').hidden = true; document.getElementById('smrz').hidden = true; "><a href="#" >修改信息</a></li>
            <li onclick="document.getElementById('smrz').hidden = false;document.getElementById('xgxx').hidden = true; document.getElementById('jbxx').hidden = true; document.getElementById('xgmm').hidden = true; "><a href="#">实名认证</a></li>
            <li onclick="document.getElementById('xgmm').hidden = false;document.getElementById('smrz').hidden = true;document.getElementById('xgxx').hidden = true; document.getElementById('jbxx').hidden = true; "><a href="#">修改密码</a></li>
            <li><a href="${pageContext.request.contextPath}/receptiondesk/login.jsp">退出登录</a></li>

        </ul>

    </div>
    <div id="letfBorder"></div>
    <div id="jbxx" class="style1">
        <p>
            <span>账号：</span>
            <em>${sessionScope.customer.account}</em>
        </p>
        <p>
            <span>昵称：</span>
            <em>${sessionScope.customer.nickName} </em>
        </p>
        <p>
            <span>学号：</span>
            <em>${sessionScope.customer.studentNo}</em>
        </p>
        <p>
            <span>姓名：</span>
            <em>${sessionScope.customer.contact}</em>
        </p>
        <p>
            <span>性别：</span>
            <em>${sessionScope.customer.sex}</em>
        </p>
        <p>
            <span>身份证号：</span>
            <em>${sessionScope.customer.IDcard}</em>
        </p>
        <p>
            <span>微信：</span>
            <em>${sessionScope.customer.weChat}</em>
        </p>
        <p>
            <span>手机号码：</span>
            <em>${sessionScope.customer.mobilePhone}</em>
        </p>

    </div>
    <div id="xgxx" class="style1" hidden="hidden">
        <form action="${pageContext.request.contextPath}/updateCustomerInfo" method="post">
            <input type="text" name="customerId" style="display: none" value="${sessionScope.customer.customerId}">
            <p>
                <span>账号：</span>
                <input type="text" name="account" id="studentID" disabled value="${sessionScope.customer.account}">
            </p>
            <p>
                <span>昵称：</span>
                <input type="text" name="nickName" id="nickName" required="required" value="${sessionScope.customer.nickName}">
            </p>
            <p>
                <span>学号：</span>
                <input type="text" name="studentNo" id="studentNo" required="required" value="${sessionScope.customer.studentNo}">
            </p>
            <p>
                <span>性别：</span>
                <input type="text" name="sex" id="sex" required="required" value="${sessionScope.customer.sex}">
            </p>
            <p>
                <span>微信：</span>
                <input type="text" name="weChat" id="WeChat" required="required" value="${sessionScope.customer.weChat}">
            </p>
            <p>
                <span>手机号码：</span>
                <input type="text" name="mobilePhone" id="mobilePhone" required="required" value="${sessionScope.customer.mobilePhone}">
            </p>
            <br>
            <p>
                <input type="hidden" name="passWord" value="${sessionScope.customer.passWord}">
                <input type="submit" value="保存信息" onclick="passwordyzheng01()">
                <input type="reset" value="重置">
            </p>
        </form>
    </div>

    <div id="smrz" class="style1" hidden="hidden">
        <form action="${pageContext.request.contextPath}/realNameAuthentication" method="post">
            <input type="text" name="customerId" style="display: none" value="${sessionScope.customer.customerId}">
            <p>
                <span>真实姓名：</span>
                <input type="text" name="realName" id="realName" required="required">
            </p>

            <p>
                <span>身份证：</span>
                <input type="text" name="IDcard" id="IDcard" required="required">
            </p>
            <br>
            <p>
                <input type="submit" value="确认实名">
                <input type="reset" value="重置">
            </p>
        </form>
    </div>
    <div id="xgmm" class="style1" hidden="hidden">
        <form action="${pageContext.request.contextPath}/updateCustomerInfo" method="post">
            <p>
                <span>原密码：</span>
                <input type="password" name="passWord0" id="passWord0" required="required">
            </p>

            <p>
                <span>新密码：</span>
                <input type="text" name="passWord2" id="passWord2" required="required">
            </p>
            <p>
                <span>确认密码：</span>
                <input type="text" name="passWord22" id="passWord22" required="required">
            </p>
            <br>
            <p>
                <input type="submit" value="确认修改" onclick="passwordyzheng()">
                <input type="reset" value="重置">
            </p>
        </form>
    </div>
</div>
</body>
<script>
    // 表单提交

    function check() {
        var storeName = document.getElementById("storeName").value;
        var contact = document.getElementById("contact").value;
        var mobilePhone = document.getElementById("mobilePhone").value;
        var WeChat = document.getElementById("WeChat").value;
        var IDcard = document.getElementById("IDcard").value;
        var studentID = document.getElementById("studentID").value;
        var address = document.getElementById("address").value;
        var sellCategory = document.getElementById("sellCategory").value;
        if (storeName == "" || contact == "" || mobilePhone == "" || WeChat == "" || IDcard == "" || studentID == "" || address == "" || sellCategory == "") {
            alert("请将信息填写完整！");
            return false;
        }
    }

    function processEmTags() {
        // 处理em标签内的文本
        var emTags = document.getElementsByTagName('em');

        for (var i = 0; i < emTags.length; i++) {
            var text = emTags[i].textContent.trim();

            if (text === "" || text === "null" || text === "undefined" || text === "待填写") {
                emTags[i].textContent = "待填写";
            }
        }

    }
    function passwordyzheng01() {
        // 处理em标签内的文本
        var pwd2 = document.getElementById('passWord').value;
        var pwd22 = document.getElementById('passWord1').value;
        if (pwd2 == pwd22) {
            alert("修改成功！")
            return true;
        }else {
            alert("密码填写不一致!");
            return false;
        }
    }
    function passwordyzheng() {
        // 处理em标签内的文本
        var pwd2 = document.getElementById('passWord2').value;
        console.log(pwd2);
        var pwd22 = document.getElementById('passWord22').value;
        console.log(pwd22);
        if (pwd2!=pwd22){
            alert("密码填写不一致");
            return false;
        }
        return true;

    }

    processEmTags();



</script>

</html>
