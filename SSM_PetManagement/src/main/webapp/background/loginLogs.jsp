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
    <title>登录日志</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/loginLogs.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/loginLogs.js"></script>
</head>
<body>
<div style="background-color: #F6F7F9;width: 100%;height: 900px;margin: 0px;">
    <div id="first">
        <p>当前位置：登录日志</p>
    </div>
    <div id="body">
        <div id="bodySearch">
            <input type="text" name="phone" class="phone" id="phone" placeholder="请输入手机号,按放大镜进行搜索..." />
            <a href="javaScript:void(0)" id="selectPhone"><img class="img" src="../static/images/角色管理/c811b95ffd8412d2ba56ec41ee1d823.png" /></a>
            <input type="button" class="clean" value="重置">
        </div>
        <div id="bodyName">登录日志</div>
        <div id="bodyTable">
            <table id="showTable" style="border-collapse: collapse; border: 1px solid black;">
                <tr>
                    <th><input type="checkbox" id="checkedAll" onclick="selectOrClearAllCheckbox(this);">全选</th>
                    <th>序号</th>
                    <th>姓名</th>
                    <th>手机号</th>
                    <th>邮箱</th>
                    <th>ip地址</th>
                    <th>登录时间</th>
                    <th>角色</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${sessionScope.pageinfoLoginLogs.list}" var="loginlogs">
                    <tr>
                        <td><input type="checkbox" class="check-box"></td>
                        <td>${loginlogs.id}</td>
                        <td>${loginlogs.name}</td>
                        <td>${loginlogs.mobliePhone}</td>
                        <td>${loginlogs.email}</td>
                        <td>${loginlogs.ipAddress}</td>
                        <td>${loginlogs.loginTime}</td>
                        <td>${loginlogs.role}</td>
                        <td>
                            <input type="button" class="deleteLoginLogs" value="删除">
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <div id="pageNo">
                <a href="${pageContext.request.contextPath}/pageLoginLogs?pageNo=1">首页</a>
                |
                <c:choose>
                    <c:when test="${sessionScope.pageinfoLoginLogs.isFirstPage}">
                        <a href="javaScript:void(0)">上一页</a>
                    </c:when>
                    <c:otherwise>
                        <a href="pageLoginLogs?pageNo=${sessionScope.pageinfoLoginLogs.prePage}">上一页</a>
                    </c:otherwise>
                </c:choose>
                |
                <c:choose>
                    <c:when test="${sessionScope.pageinfoLoginLogs.isLastPage}">
                        <a href="javaScript:void(0)">下一页</a>
                    </c:when>
                    <c:otherwise>
                        <a href="pageLoginLogs?pageNo=${sessionScope.pageinfoLoginLogs.nextPage}">下一页</a>
                    </c:otherwise>
                </c:choose>
                |
                <a href="pageLoginLogs?pageNo=${sessionScope.pageinfoLoginLogs.pages}">末页</a>
                第${sessionScope.pageinfoLoginLogs.pageNum}页/共${sessionScope.pageinfoLoginLogs.pages}页(${sessionScope.pageinfoLoginLogs.total}条记录)
            </div></div>
    </div>
    <div class="ot">Copyright © 2011–2021 校内宠物管理平台</div>
</div>
</body>
</html>
