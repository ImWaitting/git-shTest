<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 2024-04-13
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>角色管理</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/role.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/role.js"></script>
</head>
<body>
    <div id="first">
        <p>当前位置：角色管理</p>
    </div>
    <div id="body">
        <div id="bodySearch">
            <input type="text" name="phone" class="phone" id="phone" placeholder="请输入角色手机号,按放大镜进行搜索..." />
            <a href="javaScript:void(0)" id="selectPhone"><img class="img" src="${pageContext.request.contextPath}/static/images/角色管理/c811b95ffd8412d2ba56ec41ee1d823.png" /></a>
            <input type="button" class="add" id="add" value="添加角色">
            <input type="button" class="clean" value="重置">
        </div>
        <div id="bodyName">角色列表</div>
        <div id="bodyTable">
            <table id="showTable" style="border-collapse: collapse; border: 1px solid black;">
                <tr>
                    <th><input type="checkbox" id="checkedAll" onclick="selectOrClearAllCheckbox(this);">全选</th>
                    <th>用户ID</th>
                    <th>姓名</th>
                    <th>邮箱</th>
                    <th>手机号</th>
                    <th>状态</th>
                    <th>角色</th>
                    <th>添加时间</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${sessionScope.pageInfo.list}" var="role">
                    <tr>
                        <td><input type="checkbox" class="check-box"></td>
                        <td>${role.userId}</td>
                        <td>${role.name}</td>
                        <td>${role.email}</td>
                        <td>${role.mobilePhone}</td>
                        <td>${role.status}</td>
                        <td>${role.role}</td>
                        <td>${role.createTime}</td>
                        <td hidden="hidden">${role.account}</td>
                        <td hidden="hidden">${role.passWord}</td>
                        <td>
                            <input type="button" class="update" value="编辑">
                            <input type="button" class="deleteRole" value="删除">
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <div id="pageNo">
                <a href="${pageContext.request.contextPath}/Role/pageRole?pageNo=1">首页</a>
                |
                <c:choose>
                    <c:when test="${sessionScope.pageInfo.isFirstPage}">
                        <a href="javaScript:void(0)">上一页</a>
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/Role/pageRole?pageNo=${sessionScope.pageInfo.prePage}">上一页</a>
                    </c:otherwise>
                </c:choose>
                |
                <c:choose>
                    <c:when test="${sessionScope.pageInfo.isLastPage}">
                        <a href="javaScript:void(0)">下一页</a>
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/Role/pageRole?pageNo=${sessionScope.pageInfo.nextPage}">下一页</a>
                    </c:otherwise>
                </c:choose>
                |
                <a href="${pageContext.request.contextPath}/Role/pageRole?pageNo=${sessionScope.pageInfo.pages}">末页</a>
                第${sessionScope.pageInfo.pageNum}页/共${sessionScope.pageInfo.pages}页(${sessionScope.pageInfo.total}条记录)
            </div>
        </div>
    </div>
    <div class="ot">Copyright © 2011–2021 校内宠物管理平台</div>
    <div id="addbutton">
        <form action="#">
            <p style="">添加角色</p>
            <p>
                <span>用户ID:</span>
                <input type="text" id="userId" value="${sessionScope.pageInfo.total+1}" style="margin-left: 20px;" disabled>
            </p>
            <p>
                <span>姓名:</span>
                <input type="text" id="name" style="margin-left: 35px;">
            </p>
            <p>
                <span>邮箱:</span>
                <input type="text" id="email" style="margin-left: 35px;">
            </p>
            <p>
                <span>手机号:</span>
                <input type="text" id="mobilePhone" style="margin-left: 20px;">
            </p>
            <p>
                <span>状态:</span>
                <select name="status" id="status">
                    <option value="正常">正常</option>
                    <option value="禁用">禁用</option>
                </select>
            </p>
            <p>
                <span>角色:</span>
                <select name="role" id="role">
                    <option value="系统管理员">系统管理员</option>
                    <option value="维护人员">维护人员</option>
                </select>
            </p>
            <p>
                <span>登录账号:</span>
                <input type="text" id="account">
            </p>
            <p>
                <span>登录密码:</span>
                <input type="text" id="passWord">
            </p>
            <p>
                <span>确认密码:</span>
                <input type="text" id="passWord1">
            </p>
            <p>
                <input type="button" class="but1" id="but1" value="保存">
                <input type="button" class="but2" value="返回">
            </p>
        </form>
    </div>
    <div id="updatebutton">
        <form action="#">
            <p style="">编辑角色</p>
            <p>
                <span>用户ID:</span>
                <input type="text" id="userIds" style="margin-left: 20px;" disabled>
            </p>
            <p>
                <span>姓名:</span>
                <input type="text" id="names" style="margin-left: 35px;">
            </p>
            <p>
                <span>邮箱:</span>
                <input type="text" id="emails" style="margin-left: 35px;">
            </p>
            <p>
                <span>手机号:</span>
                <input type="text" id="mobilePhones" style="margin-left: 20px;">
            </p>
            <p>
                <span>状态:</span>
                <select id="statuss">
                    <option value="正常">正常</option>
                    <option value="禁用">禁用</option>
                </select>
            </p>
            <p>
                <span>角色:</span>
                <select id="roles">
                    <option value="维护人员">维护人员</option>
                    <option value="系统管理员">系统管理员</option>
                </select>
            </p>
            <p>
                <span>登录账号:</span>
                <input type="text" id="accounts">
            </p>
            <p>
                <span>登录密码:</span>
                <input type="text" id="passWords">
            </p>
            <p>
                <input type="button" class="up1" value="保存">
                <input type="button" class="up2" value="返回">
            </p>
        </form>
    </div>
</body>
</html>
