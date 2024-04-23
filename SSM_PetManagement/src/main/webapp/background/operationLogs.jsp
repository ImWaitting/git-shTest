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
    <title>操作日志</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/operationLogs.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/operationLogs.js"></script>
</head>
<body>
<div style="background-color: #FFFFFF;width: 100%;height: 900px;margin: 0px;">
    <div id="first">
        <p>当前位置：操作日志</p>
    </div>
        <div id="bodySearch">
            <input type="text" name="phone" class="phone" id="phone" placeholder="请输入客户手机号,按放大镜进行搜索..." />
            <a href="javaScript:void(0)" id="selectPhone"><img class="img" src="../static/images/角色管理/c811b95ffd8412d2ba56ec41ee1d823.png" /></a>
            <input type="button" class="clean" value="重置">
        </div>
        <div id="bodyName">操作日志</div>
        <div id="bodyTable">
            <table id="showTable" style="border-collapse: collapse; border: 1px solid black;">
                <tr>
                    <th><input type="checkbox" id="checkedAll" onclick="selectOrClearAllCheckbox(this);">全选</th>
                    <th>序号</th>
                    <th>店铺</th>
                    <th>联系电话</th>
                    <th>类别</th>
                    <th>操作时间</th>
                    <th>操作内容</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${sessionScope.pageInfo.list}" var="operationLogs">
                    <tr>
                        <td><input type="checkbox" class="check-box"></td>
                        <td>${operationLogs.id}</td>
                        <td>${operationLogs.store}</td>
                        <td>${operationLogs.mobilePhone}</td>
                        <td>${operationLogs.category}</td>
                        <td>${operationLogs.operationTime}</td>
                        <td>${operationLogs.operationContext}</td>
                        <td>
                            <input type="button" class="deleteOperationLogs" value="删除">
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <div id="pageNo">
                <a href="pageOperationLogs?pageNo=1">首页</a>
                |
                <c:choose>
                    <c:when test="${sessionScope.pageInfo.isFirstPage}">
                        <a href="javaScript:void(0)">上一页</a>
                    </c:when>
                    <c:otherwise>
                        <a href="pageOperationLogs?pageNo=${sessionScope.pageInfo.prePage}">上一页</a>
                    </c:otherwise>
                </c:choose>
                |
                <c:choose>
                    <c:when test="${sessionScope.pageInfo.isLastPage}">
                        <a href="javaScript:void(0)">下一页</a>
                    </c:when>
                    <c:otherwise>
                        <a href="pageOperationLogs?pageNo=${sessionScope.pageInfo.nextPage}">下一页</a>
                    </c:otherwise>
                </c:choose>
                |
                <a href="pageOperationLogs?pageNo=${sessionScope.pageInfo.pages}">末页</a>
                第${sessionScope.pageInfo.pageNum}页/共${sessionScope.pageInfo.pages}页(${sessionScope.pageInfo.total}条记录)
            </div>
        </div>
    </div>
    <div class="ot">Copyright © 2011–2021 校内宠物管理平台</div>
</body>
</html>
