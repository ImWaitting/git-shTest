<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>主菜单页面</title>
    <link rel="stylesheet" type="text/css" href ="${pageContext.request.contextPath}/static/css/main.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/main.js"></script>
</head>
<body>
    <div id="box">
        <div id="head">
            <h2>
                <img src="${pageContext.request.contextPath}/static/images/login/u19.png" width="50px" height="50px" >
                校内宠物后台管理系统
            </h2>
            <div id="updateuser">
                <div>修改密码</div>
                <input type="button" value="退出" id="exit">
            </div>
            <div id="loginUser">
                <div id="loginInfo">
                    <img src="${pageContext.request.contextPath}/static/images/login/img_1.png" alt="" id=useImage >
                    <span>${sessionScope.role.role}</span>
                    <div id="loginLogs">
                        <p style="padding-left: 20px">账户信息</p>
                        <hr>
                        <ul>
                            <li>姓名：${sessionScope.loginInfo.name}</li>
                            <li>本次登录：${sessionScope.loginInfo.loginTime}</li>
                            <li>IP地址：${sessionScope.loginInfo.ipAddress}</li>
                            <li>上次登录：${sessionScope.loginInfo.lastLoginTime}</li>
                        </ul>
                    </div>
                </div>
                <div id="color">
                    <img src="${pageContext.request.contextPath}/static/images/framework/color.svg" width="30px" height="30px">
                    <div id="headColor">
                        <div id="Colors">
                            <div class="colorbox" style="background: #2fc1a4"></div>
                            <div class="colorbox" style="background: #3498db"></div>
                            <div class="colorbox" style="background: #ed6e4d"></div>
                            <div class="colorbox" style="background: #fabb3d"></div>
                            <div class="colorbox" style="background: #aa7ab3"></div>
                            <div class="colorbox" style="background: #9ad0b9"></div>
                            <div class="colorbox" style="background: #ea94be"></div>
                            <div class="colorbox" style="background: #c1374a"></div>
                        </div>
                    </div>
                </div>
                <div id="close">
                    <img src="${pageContext.request.contextPath}/static/images/framework/close.svg" width="30px" height="30px">
                    <div id="closeInfo">
                        退出登录
                    </div>
                </div>
            </div>
        </div>
        <div id="connect">
            <div id="basis">
                <ul>
                    <li class="selected">
                        <div style="display: inline-block">
                            <img src="${pageContext.request.contextPath}/static/images/framework/u35.svg" width="20px" height="20px">
                        </div>
                        <div class="listInfo">
                            <a href="${pageContext.request.contextPath}/Role/pageRole" target="iframe">首页</a>
                        </div>
                    </li>
                    <li>
                        <div style="display: inline-block">
                            <img src="${pageContext.request.contextPath}/static/images/framework/u38.svg" width="20px" height="20px">
                        </div>
                        <div class="listInfo">
                            <span>
                                 <a href="${pageContext.request.contextPath}/customerInfo" target="iframe">客户管理</a>
                            </span>
                        </div>
                    </li>
                    <li>
                        <div class="u42">
                            <img src="${pageContext.request.contextPath}/static/images/framework/u43.svg" width="15px" height="15px">
                        </div>
                        <div class="listInfo">
                            <span>
                                <a href="${pageContext.request.contextPath}/Role/pageRole" target="iframe">角色管理</a>
                            </span>
                        </div>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/static/images/framework/u46.png" width="20px" height="20px">
                        <div class="listInfo">
                            <span>
                                <a href="${pageContext.request.contextPath}/product" target="iframe">商品管理</a>
                            </span>
                        </div>
                    </li>
                    <li>
                        <div class="u42">
                            <img src="${pageContext.request.contextPath}/static/images/framework/u43.svg" width="15px" height="15px">
                        </div>
                        <div class="listInfo">
                            <span>
                                <a href="${pageContext.request.contextPath}/getstore" target="iframe">店铺管理</a>
                            </span>
                        </div>
                    </li>
                    <li>
                        <div style="display: inline-block;width: 22px">
                            <img src="${pageContext.request.contextPath}/static/images/framework/h2.svg" width="22px" height="22px">
                        </div>
                        <div style="display: inline-block;width: 80px" >
                            <a href="${pageContext.request.contextPath}/pageLoginLogs" target="iframe">登录日志</a>
                        </div>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/static/images/framework/u25.svg" width="20px" height="20px">
                        <div style="display: inline-block;width: 80px" >
                            <span>
                                <a href="${pageContext.request.contextPath}/pageOperationLogs" target="iframe">操作日志</a>
                            </span>
                        </div>
                    </li>
                </ul>
                <ul id="comm" style="display: none">
                    <h3>商品管理</h3>
                    <li class="selected">商品分类</li>
                    <li>商品单位</li>
                    <li>商品资料</li>
                    <li>组装拆分规则</li>
                    <li>商品调价计划</li>
                    <li>商品标签</li>
                    <li>单位换算</li>
                </ul>
            </div>
            <div id="table">
                <iframe src="${pageContext.request.contextPath}/Role/pageRole" frameborder="0" width="100%" height="100%" id="iframe" name="iframe"></iframe>
            </div>
        </div>
    </div>
</body>
</html>
