
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>客户管理</title>
</head>
    <style>
        body{
            width: 100%;
            height: 100%;
            margin: 0 auto;
        }
        #body {
            height: 100%;
            width: 100%;
            border-color: rgba(228, 228, 228, 1);
            background-color: white;
        }
        #first {
            background-color: #F9F9F9;
            height: 50px;
            border: 1px #E4E4E4 solid;
            margin-left: auto;
            margin-right: auto;
            text-align: left;
            padding-left: 30px;
            font-family: '黑体';
            font-weight: 400;
            font-style: normal;
            color: #555555;
            font-size: 14px;
        }
        #bodyName {
            left: 0px;
            top: 0px;
            height: 40px;
            background: inherit;
            background-color: rgba(234, 234, 234, 1);
            border-style: solid;
            border-color: rgba(228, 228, 228, 1);
            border-radius: 0px;
            font-family: '微软雅黑 Bold', '微软雅黑 Regular', '微软雅黑';
            font-weight: 700;
            font-style: normal;
            font-size: 14px;
            text-align: left;
            line-height: 28px;
            color: #666666;
            margin-top: 50px;
            padding-top: 10px;
            padding-left: 18px;
        }
        #div2{
            width: 100%;
            height: 100%;
            margin: 0 auto;
            background-color: #FFFFFF;

        }
        #input1{
            border: 1px #DBDBDB solid;
            left: 0px;
            top: 0px;
            width: 350px;
            height: 36px;
            padding: 3px 2px 3px 2px;
            font-family: 'Arial Normal', 'Arial';
            font-weight: 400;
            font-style: normal;
            font-size: 14px;
            letter-spacing: normal;
            text-align: left;
            outline: none;
            margin-left: 50px;
        }
        #div2 img{
            margin-left:20px;

        }
        #div2 img,#input1{
            vertical-align: middle;
        }
        #addshow,#cz{
            left: 0px;
            top: 0px;
            width: 101px;
            height: 36px;
            background: inherit;
            background-color: rgba(229, 229, 229, 1);
            border: none;
            border-radius: 7px;
            font-family: '微软雅黑';
            font-weight: 400;
            font-style: normal;
            font-size: 14px;
            color: #555555;
            line-height: 30px;
            margin-left: 20px;
            margin-top: 50px;
        }
        #addshow:hover{
            background-color: #2FC1A4;
            cursor: pointer;
            transition: 0.5s;
            color: #FFFFFF;
        }
        #cz:hover{
            background-color: #2FC1A4;
            cursor: pointer;
            transition: 0.5s;
            color: #FFFFFF;
        }
        th {
            left: 0px;
            top: 0px;
            height: 40px;
            background: inherit;
            background-color: rgba(249, 250, 252, 1);
            box-sizing: border-box;
            border-width: 1px;
            border-style: solid;
            border-color: rgba(230, 230, 230, 1);
            border-radius: 0px;
            box-shadow: none;
            font-family: '微软雅黑 Bold', '微软雅黑 Regular', '微软雅黑';
            font-weight: 700;
            font-style: normal;
            font-size: 12px;
            color: #666666;
            text-align: center;
            line-height: 26px;
        }
        td {
            left: 0px;
            top: 0px;
            height: 40px;
            background: inherit;
            background-color: rgba(255, 255, 255, 1);
            box-sizing: border-box;
            border-width: 1px;
            border-style: solid;
            border-color: rgba(230, 230, 230, 1);
            border-radius: 0px;
            box-shadow: none;
            font-family: '微软雅黑';
            font-weight: 400;
            font-style: normal;
            font-size: 12px;
            color: #666666;
            text-align: center;
            line-height: 22px;
        }
        .a1 {
            left: 0px;
            top: 0px;
            width: 74px;
            height: 30px;
            background: inherit;
            background-color: #F2F2F2;
            border: none;
            border-radius: 7px;
            font-family: '微软雅黑';
            font-weight: 400;
            font-style: normal;
            font-size: 14px;
            color: #555555;
            margin-left: 30px;

        }
        td input:nth-of-type(1):hover {
            color: #1ABC9C;
        }
        td input:nth-of-type(2):hover {
            color: red;
        }
        .ot {
            height: 60px;
            font-family: '微软雅黑';
            font-weight: 400;
            font-style: normal;
            font-size: 12px;
            color: #95A5A6;
            line-height: 24px;
            text-align: center;
            margin-top: 30px;
        }
        #addcustomer,#update{
            display: none;
            border-width: 0px;
            position: absolute;
            right: 0px;
            top: 0px;
            width: 454px;
            height: 711px;
            background: inherit;
            background-color: rgba(255, 255, 255, 1);
            border: none;
            border-radius: 0px;
            box-shadow: none;
            color: #1ABC9C;
            font-family: 'Arial Normal', 'Arial';
            font-weight: 400;
            font-style: normal;
            font-size: 14px;
            letter-spacing: normal;
            text-align: center;
            text-transform: none;
        }
        #addcustomer p:nth-child(1),#update p:nth-child(1) {
            font-family: '黑体 Bold', '黑体';
            font-weight: 700;
            font-style: normal;
            font-size: 20px;
            color: #1ABC9C;
        }
        #addcustomer p span,#update p span{
            font-family: '黑体';
            font-weight: 400;
            font-style: normal;
            color: #1ABC9C;
            font-size: 18px;
            text-align: right;
        }
        #addcustomer .ins,#addcustomer .ins1,#addcustomer .jsh,#addcustomer p select,
        #update .ins,#update .ins1,#update .jsh,#update p select{
            width: 300px;
            height: 30px;
            padding: 3px 2px 3px 2px;
            font-family: '黑体';
            font-weight: 400;
            font-style: normal;
            font-size: 18px;
            color: #1ABC9C;
            letter-spacing: normal;
            text-align: left;
            text-transform: none;
            outline: none;
            border: 1px #1ABC9C solid;
            margin-top: 10px;
        }
        #addcustomer .ins1,#update .ins1{
            margin-left: 35px;
        }
        #addcustomer p select,#update p select{
            margin-left: 34px;
        }
        #addcustomer .jsh,#update .jsh{
            margin-left: 18px;
        }
        #bc,#bcs {
            width: 124px;
            height: 38px;
            background: inherit;
            background-color: rgba(255, 255, 255, 1);
            box-sizing: border-box;
            border-width: 1px;
            border-style: solid;
            border-color: rgba(26, 188, 156, 1);
            border-radius: 10px;
            box-shadow: none;
            font-family: '黑体';
            font-weight: 400;
            font-style: normal;
            font-size: 18px;
            color: #1ABC9C;
            line-height: 30px;
            text-align: center;
            margin-top: 30px;
        }
        #fh,#fhs {
            border-width: 0px;
            width: 124px;
            height: 38px;
            background: inherit;
            background-color: rgba(221, 216, 216, 1);
            border: none;
            border-radius: 10px;
            box-shadow: none;
            font-family: '黑体';
            font-weight: 400;
            font-style: normal;
            font-size: 18px;
            color: #1ABC9C;
            line-height: 30px;
            text-align: center;
            margin-top: 30px;
            margin-left: 30px;
        }
        #bc:hover,#fh:hover,#bcs:hover,#fhs:hover{
            background-color: #1ABC9C;
            color: white;
        }
        .ps input{
            border: 0.8px solid #1ABC9C;
        }
    </style>
<body>
<div id="first">
    <p>当前位置：客户管理</p>
</div>
    <div id="body">
        <div id="div2">
             <div>
                 <form method="post" action="customerInfo">
                     <input type="text" placeholder="请输入客户手机号,按放大镜搜索..." name="mobilePhone" id="input1">
                     <button type="submit" style="padding: 5px; border: none; background: none; cursor: pointer;">
                         <img src="../static/images/商品管理/img.png">
                     </button>
                     <button class="inp" id="addshow">
                         添加用户
                     </button>
                     <input type="reset" id="cz" value="重置">
                 </form>
            </div>
            <div id="div3">
                <div id="bodyName">客户列表</div>
                <div id="ajaxdiv">
                    <table border="1" style="width: 100%;border-collapse: collapse;text-align: center;border: 0.8px solid #E6E6E6">
                        <tr>
                            <th>
                                <input type="checkbox" class="inps">
                                全选
                            </th>
                            <th>序号</th>
                            <th>昵称</th>
                            <th>学号</th>
                            <th>手机号</th>
                            <th>状态</th>
                            <th>性别</th>
                            <th>添加时间</th>
                            <th>操作</th>
                        </tr>
                            <c:forEach items="${requestScope.pageInfo.list}" var="customer">
                                <tr id="nim">
                                    <td><input type="checkbox" id="check"></td>
                                    <td>${customer.customerId}</td>
                                    <td>${customer.nickName}</td>
                                    <td>${customer.studentNo}</td>
                                    <td>${customer.mobilePhone}</td>
                                    <td>${customer.status}</td>
                                    <td>${customer.sex}</td>
                                    <td>${customer.createTime}</td>
                                    <td>
                                        <input type="button" value="编辑" class="a1" id="updatecustom">
                                        <input type="button" value="删除" class="a1" id="delete">
                                        <input type="hidden" value="${customer.nickName}" id="nicknamehidden">
                                        <input type="hidden" value="${customer.studentNo}" id="studentnohidden">
                                        <input type="hidden" value="${customer.status}" id="statushidden">
                                        <input type="hidden" value="${customer.mobilePhone}" id="mobilephonehidden">
                                        <input type="hidden" value="${customer.sex}" id="sexhidden">
                                        <input type="hidden" value="${customer.customerId}" id="custid">
                                        <input type="hidden" value="${customer.account}" id="cusaccount">
                                        <input type="hidden" value="${customer.passWord}" id="cuspassWord">
                                    </td>
                                </tr>
                            </c:forEach>
                    </table>
                    <div style="height: 100px;background-color: #F6F7F9;">
                        <div style="margin:0 auto;text-align: center;padding-top: 20px">
                            <a href="?pageNo=1" ${requestScope.pageInfo.pageNum == 1 ? 'class="disabled"' : ''}>首页</a>
                            |
                            <c:choose>
                                <c:when test="${!requestScope.pageInfo.isFirstPage}">
                                    <a href="?pageNo=${requestScope.pageInfo.prePage}">上一页</a>
                                </c:when>
                                <c:otherwise>
                                    <span class="disabled">上一页</span>
                                </c:otherwise>
                            </c:choose>
                            |
                            <c:choose>
                                <c:when test="${!requestScope.pageInfo.isLastPage}">
                                    <a href="?pageNo=${requestScope.pageInfo.nextPage}" class="pagination-link">下一页</a>
                                </c:when>
                                <c:otherwise>
                                    <span class="pagination-disabled">下一页</span>
                                </c:otherwise>
                            </c:choose>
                            |
                            <c:choose>
                                <c:when test="${!requestScope.pageInfo.isLastPage}">
                                    <a href="?pageNo=${requestScope.pageInfo.pages}" class="pagination-link">末页</a>
                                </c:when>
                                <c:otherwise>
                                    <span class="pagination-disabled">末页</span>
                                </c:otherwise>
                            </c:choose>
                            |
                            <span>第${requestScope.pageInfo.pageNum}页/</span>
                            <span>共${requestScope.pageInfo.pages}页</span>
                            <span>(${requestScope.pageInfo.total}条记录)</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ot">Copyright © 2011–2021 校内宠物管理平台</div>
        <div id="addcustomer">
            <p>添加客户</p>
            <p class="ps">
                <span>序号:</span>
                <input type="text" class="ins1" id="IDcard" placeholder="自动生成" disabled>
            </p>
            <p class="ps">
                <span>昵称:</span>
                <input type="text" class="ins1" id="nickName">
            </p>
            <p class="ps">
                <span>学号:</span>
                <input type="text" class="ins1" id="studentNo">
            </p>
            <p class="ps">
                <span>手机号:</span>
                <input type="text" class="jsh" id="mobilePhone">
            </p>
            <p class="ps"><span>状态:</span>
                <select id="status" style="color: #1ABC9C">
                    <option value="正常" style="color: #1ABC9C">正常</option>
                    <option value="禁用" style="color: red">禁用</option>
                </select>
            </p>
            <p class="ps"><span>性别:</span>
                <select  id="sex">
                    <option value="男">男</option>
                    <option value="女">女</option>
                    <option value="未知">未知</option>
                </select>
            </p>
            <p class="ps">
                <span>登录账号:</span>
                <input type="text" class="ins" id="account">
            </p>
            <p class="ps">
                <span>登录密码:</span>
                <input type="password" class="ins" id="passWord">
            </p>
            <p class="ps">
                <span>确认密码:</span>
                <input type="password" class="ins" id="WeChat">
            </p>
            <p id="bcfh">
                <input type="reset" value="保存" id="bc">
                <input type="reset" value="返回" id="fh">
            </p>
        </div>
        <div id="update">
            <p>修改客户</p>
            <p class="ps"><span>序号:</span><input type="text" class="ins1" id="IDcards" disabled></p>
            <p class="ps"><span>昵称:</span><input type="text" class="ins1" id="nickNames"></p>
            <p class="ps"><span>学号:</span><input type="text" class="ins1" id="studentNos"></p>
            <p class="ps"><span>手机号:</span><input type="text" class="jsh" id="mobilePhones"></p>
            <p class="ps"><span>状态:</span>
                <select id="statuss" style="color: #1ABC9C">
                    <option value="正常" style="color: #1ABC9C">正常</option>
                    <option value="禁用" style="color: red">禁用</option>
                </select>
            </p>
            <p class="ps"><span>性别:</span>
                <select  id="sexs">
                    <option value="男">男</option>
                    <option value="女">女</option>
                    <option value="未知">未知</option>
                </select>
            </p>
            <p class="ps"><span>登录账号:</span><input type="text" class="ins" id="accounts" disabled></p>
            <p class="ps"><span>登录密码:</span><input type="text" class="ins" id="passWords"></p>
            <p class="ps"><span>确认密码:</span><input type="text" class="ins" id="WeChats"></p>
            <p id="bcfhs">
                <input type="reset" value="保存" id="bcs">
                <input type="reset" value="返回" id="fhs">
            </p>
        </div>
    </div>

</body>
<script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.js"></script>
<script>
    // 阻止默认行为
    document.getElementById('addshow').addEventListener('click', function(event) {
        event.preventDefault(); // 阻止默认行为（对于按钮通常是提交表单）
        event.stopPropagation(); // 阻止事件冒泡到父元素

    });
    $(function () {
         $("#addshow").click(function () {
             $("#addcustomer").show()
         });
         $("#fh").click(function () {
             $("#addcustomer").hide()
         });
         $("#fhs").click(function () {
             $("#update").hide()
         });



        $("#div3").on("click",".inps",function () {
            $("#div3").find("input[type='checkbox']").prop("checked",$(this).prop("checked"));
        });

        //添加
        $("#bc").click(function () {
            var IDcard = $("#IDcard").val().trim();
            if (IDcard == "") {
                alert("序号不能为空");
                return;
            }
            if (!/^[0-9]*$/.test(IDcard)) {
                alert("序号只能为数字");
                return;
            }
            var nickName = $("#nickName").val().trim();
            if (nickName == "") {
                alert("昵称不能为空");
                return;
            }
            var studentNo = $("#studentNo").val().trim();
            if (studentNo == "") {
                alert("学号不能为空");
                return;
            }
            if (!/^[0-9]*$/.test(studentNo)) {
                alert("学号只能为数字");
                return;
            }
            var mobilePhone = $("#mobilePhone").val().trim();
            if (mobilePhone == "") {
                alert("手机号不能为空");
                return;
            }
            if (!/^[0-9]*$/.test(mobilePhone)) {
                alert("手机号只能为数字");
                return;
            }
            if (mobilePhone.length != 11) {
                alert("手机号格式错误");
                return;
            }
            var status = $("#status").val().trim();
            if (status == "") {
                alert("状态不能为空");
                return;
            }
            var sex = $("#sex").val().trim();
            if (sex == "") {
                alert("性别不能为空");
                return;
            }
            var account = $("#account").val().trim();
            if (account == "") {
                alert("登入账号不能为空");
                return;
            }
            var passWord = $("#passWord").val().trim();
            if (passWord == "") {
                alert("登入密码不能为空");
                return;
            }
            if (passWord != $("#WeChat").val().trim()) {
                alert("密码不一致");
                return;
            }
            $.ajax({
                url: "/addCustomer",
                type: "post",
                data: {
                    'IDcard': IDcard,
                    'nickName': nickName,
                    'studentNo': studentNo,
                    'mobilePhone': mobilePhone,
                    'status': status,
                    'sex': sex,
                    'account': account,
                    'passWord': passWord
                },
                dataType: "text",
                success: function (data) {
                   if (data == "1") {
                       alert("添加成功");
                       $("#addcustomer").hide()
                       location.href = "customerInfo"
                   }
               }
           })
        });
        //删除
        $("#ajaxdiv").undelegate("#delete","click");
        $("#ajaxdiv").on("click","#delete",function () {
            if (confirm("确定删除吗？")){
              var id = $(this).parent().parent().find("#custid").val();
                if (id != null){
                    $.ajax({
                        url: "/deleteCustomerbyid",
                        type: "post",
                        data: {
                            'id': id
                        },
                        dataType: "text",
                        success: function (data) {
                            if (data == "1") {
                                alert("删除成功");
                                location.href = "customerInfo"
                            }
                        }
                    })
                }
            }
        })

        $("#ajaxdiv").undelegate("#updatecustom","click");
        $("#ajaxdiv").on("click","#updatecustom",function () {
            $("#update").show()
            var id = $(this).parent().parent().find("#custid").val();
            var nicknamehidden = $(this).parent().parent().find("#nicknamehidden").val();
            var studentnohidden = $(this).parent().parent().find("#studentnohidden").val();
            var mobilephonehidden = $(this).parent().parent().find("#mobilephonehidden").val();
            var statushidden = $(this).parent().parent().find("#statushidden").val();
            var sexhidden = $(this).parent().parent().find("#sexhidden").val();
            var  account = $(this).parent().parent().find("#cusaccount").val();
            var  passWord = $(this).parent().parent().find("#cuspassWord").val();

            var IDcards = $("#IDcards")
            var nickNames = $("#nickNames")
            var studentNos = $("#studentNos")
            var mobilePhones = $("#mobilePhones")
            var statuss = $("#statuss")
            var sexs = $("#sexs")
            var accounts = $("#accounts")
            var passWords = $("#passWords")
            var WeChats = $("#WeChats")
            IDcards.val(id);
            nickNames.val(nicknamehidden);
            studentNos.val(studentnohidden);
            mobilePhones.val(mobilephonehidden);
            statuss.val(statushidden);
            sexs.val(sexhidden);
            accounts.val(account);
            passWords.val(passWord);
            WeChats.val(passWord);

        })
        $("#bcs").click(function () {
            var IDcards = $("#IDcards").val().trim();
            var nickNames = $("#nickNames").val().trim();
            var passWords = $("#passWords").val()
            var WeChats = $("#WeChats").val()
            if (nickNames == "") {
                alert("昵称不能为空");
                return;
            }
            var studentNos = $("#studentNos").val().trim();
            if (studentNos == "") {
                alert("学号不能为空");
                return;
            }
            if (!/^[0-9]*$/.test(studentNos)) {
                alert("学号只能为数字");
                return;
            }
            var mobilePhones = $("#mobilePhones").val().trim();
            if (mobilePhones == "") {
                alert("手机号不能为空");
                return;
            }
            if (!/^[0-9]*$/.test(mobilePhones)) {
                alert("手机号只能为数字");
                return;
            }
            if (mobilePhones.length != 11) {
                alert("手机号格式错误");
                return;
            }
            var statuss = $("#statuss").val().trim();
            if (statuss == "") {
                alert("状态不能为空");
                return;
            }
            var sexs = $("#sexs").val().trim();
            if (sexs == "") {
                alert("性别不能为空");
                return;
            }
            if (passWords ==  ""){
                alert("密码不能为空");
                return;
            }
            if (WeChats == ""){
                alert("确认密码不能为空");
                return;
            }
            if (passWords != WeChats){
                alert("密码不一致");
                return;
            }
            $.ajax({
                url: "/updateCustomer",
                type: "post",
                data: {
                    'nickName': nickNames,
                    'studentNo': studentNos,
                    'mobilePhone': mobilePhones,
                    'status': statuss,
                    'passWord':passWords,
                    'sex': sexs,
                    'customerId': IDcards
                },
                dataType: "text",
                success: function (data) {
                    if (data == "1") {
                       alert("修改成功");
                       location.href = "customerInfo"
                   }
               }
           })
        })
    })
</script>
</html>
