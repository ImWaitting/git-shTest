<%--
  Created by IntelliJ IDEA.
  User: Fsq01
  Date: 2024/4/17
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="border: #0a53be">
    <table border="1" cellpadding="0" cellspacing="0" width="80%">
        <tr>
            <th>ID</th>
            <th>商品</th>
            <th>单价</th>
            <th>数量</th>
            <th>总价</th>
            <th>销售日期</th>
            <th>销售员</th>
        </tr>

        <c:forEach items="${requestScope.pageInfo.list}" var="product">
            <tr>
                <td>${product.productId}</td>
                <td>${product.productName}</td>
                <td>${product.price}</td>
                    <%-- <td>${product.image}</td>--%>
                <td>${product.status}</td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="7">
                <a href="productById?pageNo=1">首页</a>
                <a href="productById?pageNo=${pageInfo.prePage}">上一页</a>
                <a href="productById?pageNo=${pageInfo.nextPage}">下一页</a>
                <a href="productById?pageNo=${pageInfo.pages}">末页</a>
                第${pageInfo.pageNum}页/共${pageInfo.pages}页(${pageInfo.total}条记录)
            </td>
        </tr>
    </table>

    <form action="productById" method="post">
        <input name="Id" value="1">
        <input type="submit" value="1">
    </form>
</div>
</body>
</html>
