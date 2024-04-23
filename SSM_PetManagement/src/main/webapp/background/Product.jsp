
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>商品管理</title>
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
    #cz{
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
    td:last-child input {
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
    .a1{
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
    .ps span{
        font-size: 25px;
    }
    .ps input{
        border: 0.8px solid #1ABC9C;
    }
    #chak1,#chak2{
        position: absolute;
        left: 10%;
        top: 11%;
        width: 70%;
        height: 50%;
        background-color: #FFFFFF;
        display: none;
    }
    #sherr,#sherrs{
        background: #ffffff;
        text-align: center;
        border: #eaeaea 1px solid;
    }
    #tuname,img{
        vertical-align: middle;
    }
    #tunames,img{
        vertical-align: middle;
    }
    .inputs:hover{
        cursor: pointer;
        transition: 0.5s;
    }
    .spmcs,.jiaq,.jjie,.spname{
        font-size: 23px;
    }
    #ztai,#ztai1{
        font-size: 23px;
    }
</style>
<body>
<div id="first">
    <p>当前位置：商品管理</p>
</div>
<div id="body">
    <div>
        <div id="div2">
            <div>
                <form method="post" action="product">
                    <input type="text" placeholder="请输入商品名称,按放大镜搜索..." name="productName" id="input1">
                    <button type="submit" style="padding: 5px; border: none; background: none; cursor: pointer;">
                        <img src="../static/images/商品管理/img.png">
                    </button>
                    <input type="reset" id="cz" value="重置">
                </form>
            </div>
            <div id="div3">
                <div id="bodyName">商品列表</div>
                <div id="ajaxdiv">
                    <table border="1" style="width: 100%;border-collapse: collapse;text-align: center;border: 0.8px solid #E6E6E6">
                        <tr>
                            <th width="100px">
                                <input type="checkbox" class="inps">
                                全选
                            </th>
                            <th>商品名称</th>
                            <th>价钱</th>
                            <th>店铺名称</th>
                            <th>状态</th>
                            <th>操作</th>
                        </tr>
                        <c:forEach items="${requestScope.pageInfo.list}" var="product">
                            <tr id="nim">
                                <td>
                                    <input type="checkbox" id="check">
                                </td>
                                <td>${product.productName}</td>
                                <td>${product.price}</td>
                                <td>${product.store.storeName}</td>
                                <td>${product.status}</td>
                                <td>
                                    <input type="button" value="查看" class="a1 see" >
                                    <input type="button" value="删除" class="a1 delete" >
                                    <input type="hidden" value="${product.productId}" id="productId">
                                    <input type="hidden" value="${product.store.storeName}" id="storeName">
                                    <input type="hidden" value="${product.productName}" id="productName">
                                    <input type="hidden" value="${product.price}" id="price">
                                    <input type="hidden" value="${product.status}" id="status">
                                    <input type="hidden" value="${product.description}" id="description">
                                    <input type="hidden" value="${product.productId}" id="productIds">
                                    <input type="hidden" value="${product.image}" id="images">
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
    </div>
    <div class="ot">Copyright © 2011–2021 校内宠物管理平台</div>
    <div id="chak1">
        <div style="width: 100%;height: 80px;margin-bottom: 30px;background-color: #EAEAEA; float:left; ">
            <h2 style="margin: 20px 0 0 30px;display: inline-block;color: #666666;">审核商品</h2>
        </div>
        <div id="sherr">
           <p>
               <span style="font-size: 23px;font-weight: bold">商铺名称:</span>
               <input type="text" style="width: 400px;height: 40px;margin: 0 0 0 30px;" disabled class="spmcs">
           </p>
            <p>
                <span style="font-size: 23px;font-weight: bold">商品名称:</span>
                <input type="text" style="width: 400px;height: 40px;margin: 0 0 0 30px;" disabled  class="spname">
            </p>
            <p>
                <span style="font-size: 23px;font-weight: bold">价钱:</span>
                <input type="text" style="width: 400px;height: 40px;margin: 0 0 0 75px;" disabled class="jiaq">
            </p>
            <p>
                <span style="font-size: 23px;font-weight: bold">状态:</span>
                <input type="text" style="width: 400px;height: 40px;margin: 0 0 0 75px;" disabled id="ztai">
            </p>
            <p>
                <span style="font-size: 23px;font-weight: bold;" id="tuname">图片:</span>
                <img style="margin: 0 280px 0 75px;width: 120px;height: 120px" class="imgs">
            </p>
            <p>
                <span style="font-size: 23px;font-weight: bold">简介:</span>
                <input type="text" style="width: 400px;height: 40px;margin: 0 0 0 75px;" disabled class="jjie">
            </p>
            <p style="margin: 100px 0 50px 137px;">
                <input type="button" class="inputs" value="审批" style="width: 160px;height: 50px;font-size:20px;background-color: #00BFFF;color: white;border: 0;border-radius: 5px;" id="sp">
                <input type="button" class="inputs"  value="取消" style="width: 160px;height: 50px;font-size:20px;background-color: #FFFFFF;color: #666666;border-radius: 5px;margin: 0 0 0 50px;" id="qux">
            </p>
        </div>
    </div>
    <div id="chak2">
        <div style="width: 100%;height: 80px;margin-bottom: 30px;background-color: #EAEAEA; float:left; ">
            <h2 style="margin: 20px 0 0 30px;display: inline-block;color: #666666;">查看商品</h2>
        </div>
        <div id="sherrs">
            <p>
                <span style="font-size: 23px;font-weight: bold">商铺名称:</span>
                <input type="text" style="width: 400px;height: 40px;margin: 0 0 0 30px;" class="spmcs" disabled>
            </p>
            <p>
                <span style="font-size: 23px;font-weight: bold">商品名称:</span>
                <input type="text" style="width: 400px;height: 40px;margin: 0 0 0 30px;" class="spname" disabled>
            </p>
            <p>
                <span style="font-size: 23px;font-weight: bold">价钱:</span>
                <input type="text" style="width: 400px;height: 40px;margin: 0 0 0 75px;" class="jiaq" disabled>
            </p>
            <p>
                <span style="font-size: 23px;font-weight: bold">状态:</span>
                <input type="text" style="width: 400px;height: 40px;margin: 0 0 0 75px;" id="ztai1" disabled>
            </p>
            <p>
                <span style="font-size: 23px;font-weight: bold;" id="tunames">图片:</span>
                <img style="margin: 0 280px 0 75px;width: 120px;height: 120px" class="imgs">
            </p>
            <p>
                <span style="font-size: 23px;font-weight: bold">简介:</span>
                <input type="text" style="width: 400px;height: 40px;margin: 0 0 0 75px;" class="jjie" disabled>
            </p>
            <p style="margin: 100px 0 50px 137px;">
                <input type="button" class="inputs"  value="关闭" style="width: 160px;height: 50px;font-size:20px;background-color: #FFFFFF;color: #666666;border-radius: 5px;margin: 0 0 0 200px;" id="quxs">
            </p>
        </div>
    </div>
</div>
</body>
<script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.js"></script>
<script>
    $(function () {
        $("#qux").click(function () {
            $("#chak1").hide();
        })
        $("#quxs").click(function () {
            $("#chak2").hide();
        })
        $("#div3").on("click",".inps",function () {
            $("#div3").find("input[type='checkbox']").prop("checked",$(this).prop("checked"));
        });
        $(".see").click(function () {
            var storeName = $(this).parent().parent().find("#storeName").val();
            var productName = $(this).parent().parent().find("#productName").val();
            var price = $(this).parent().parent().find("#price").val();
            var description = $(this).parent().parent().find("#description").val();
            var status = $(this).parent().parent().find("#status").val();
            var productId = $(this).parent().parent().find("#productId").val();
            var images=$(this).parent().parent().find("#images").val();
            var spmcs = $(".spmcs").val(storeName);
            var spname = $(".spname").val(productName);
            var jiaq = $(".jiaq").val(price);
            var ztai = $("#ztai").val(status);
            var jjie = $(".jjie").val(description);
            var ztai1 = $("#ztai1").val(status);
            var image=$(".imgs").attr("src",images);
            if (status=="发布中"){
                $("#chak1").show();

            } else  if (status=="正常"){
                $("#chak2").show();
            }
            $("#chak1").undelegate("#sp","click");
            $("#chak1").on("click","#sp",function (){
                $.ajax({
                    url:"/updatestatus",
                    type:"post",
                    data:{
                        'productId':productId
                    },
                    dataType:"text",
                    success:function (data) {
                        if (data=="1"){
                            alert("审核成功");
                            location.href = "product"
                        }
                    }
                })
            })


        })
        //删除
        $("#div3").on("click",".delete",function () {
            var productId = $(this).parent().parent().find("#productIds").val();
            if (confirm("确定删除吗?")){
            $.ajax({
                url:"/deleteProductbyid",
                type:"post",
                data:{
                    'productId':productId
                },
                dataType:"text",
                success:function (data) {
                    if (data=="1"){
                        alert("删除成功");
                        location.href = "product"
                    }
                }
            })
        }
        })
    })
</script>
</html>
