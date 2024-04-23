
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>店铺申请</title>
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
        left:16%;
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
        background-color: #ff7a1f;
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

    input[type="text"] {
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
    <div id="head">
        <h4 style="width: 100%;height: 32px;background-color: #ff7a1f;
    vertical-align: middle;line-height: 32px;text-indent: 14px;">店铺申请</h4>
    </div>
    <div style="position: absolute;left: 15px;top: 75px;width: 60%;height: 480px;background-color: rgba(255, 255, 255, 1);box-sizing: border-box;border-width: 1px;border-style: none;border-radius: 0px;box-shadow: none;">
        <form action="${pageContext.request.contextPath}/addstore" method="post" >
            <p>
                <input type="hidden" name="customer.customerId" value="${sessionScope.customer.customerId}">
                <span>店铺名称：</span>
                <input type="text" name="storeName" id="storeName" required="required">
            </p>
            <p>
                <span>地址：</span>
                <input type="text" name="address" id="address" required="required">
            </p>
            <p>
                <span>出售类型：</span>
                <select name="sellCategory" id="sellCategory" required="required">
                    <option value="猫类">猫类</option>
                    <option value="狗类">狗类</option>
                    <option value="鼠类">鼠类</option>
                    <option value="兔子">兔子</option>
                    <option value="鸟类">鸟类</option>
                </select>
            </p>
            <br>
            <p>
                <input type="submit" value="提交申请">
                <button onclick="location.href='index.jsp'">返回首页</button>
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
        return true;
    }
</script>

</html>
