<%--
  Created by IntelliJ IDEA.
  User: 13019
  Date: 2024/4/17
  Time: 下午3:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品添加测试页面</title>
</head>
<body>
<form action="addProduct" method="post" enctype="multipart/form-data">
    商铺名称：<input type="text" name="storeId"/>
    <br>
    商品名称：<input type="text" name="productName" />
    <br>
    商品价格：<input type="text" name="price" />
    <br>
    商品描述：<input type="text" name="description" />
    <br>
    图片上传:<input type="file" name="ufile" />
    <br>
    <input type="submit" value="上传商品" />
</form>
</body>
</html>
