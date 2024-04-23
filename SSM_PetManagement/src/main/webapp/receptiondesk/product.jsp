<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品申请</title>
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

    img {
        font-family: "Arial Normal", Arial;
        font-weight: 400;
        font-style: normal;
        font-size: 14px;
        letter-spacing: normal;
        color: rgb(102, 102, 102);
        text-align: center;
        line-height: normal;
        text-transform: none;
        border-width: 0px;

        width: 100px;
        height: 100px;
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

    div[id="img"] {
        display: flex;
        justify-content: right;



    }
    div[id="img_div"] {
        width: 200px;
        height: 100px;
    }


</style>


<body>
<div id="body">
    <div id="head">
        <h4 style="width: 100%;height: 32px;background-color: #ff7a1f;
    vertical-align: middle;line-height: 32px;text-indent: 14px;">商品上架申请</h4>

    </div>
    <div style="position: absolute;left: 15px;top: 75px;width: 60%;height: 480px;background-color: rgba(255, 255, 255, 1);box-sizing: border-box;border-width: 1px;border-style: none;border-radius: 0px;box-shadow: none;">
        <form action="${pageContext.request.contextPath}/addProduct" method="post" enctype="multipart/form-data">
            <p>
                <span>店铺名称：</span>
                <input type="hidden" name="storeId" value="${sessionScope.store.storeId}">
                <input type="text" name="storeName" id="storeName" value="${sessionScope.store.storeName}" disabled>
            </p>
            <p>
                <span>商品名称：</span>
                <input type="text" name="productName" id="productName" required="required">
            </p>
            <p>
                <span>商品价格：</span>
                <input type="text" name="price" id="price" required="required">
            </p>
            <span >图片：</span>
            <div id="img">
                <label>
                <img src="#" id="preview" alt="预览">
                <input type="file" name="ufile" id="image" required="required" hidden="hidden" >
                </label>
                <div id="img_div"></div>
            </div>
            <p>
                <span>简介：</span>
                <input type="text" name="description" id="description" required="required">
            </p>

            <br>
            <p>
                <input type="submit" value="提交申请">
                <input type="reset" value="取消申请" onclick="location.href='index.jsp'">
            </p>
        </form>
    </div>

</div>
</body>
<script>
    // 表单提交

    function check() {
        var storeName = document.getElementById("storeName").value;
        var productName = document.getElementById("productName").value;
        var price = document.getElementById("price").value;
        var status = document.getElementById("status").value;

        var image = document.getElementById("image").value;
        var description = document.getElementById("description").value;

        if (storeName == "" || productName == "" || price == "" || status == "" || image == "" || description == "") {
            alert("请填写完整信息！");
            return false;
        }
        return true;
    }

    document.getElementById('image').addEventListener('change', function () {
        var file = this.files[0];
        if (file) {
            var reader = new FileReader();
            reader.onload = function (e) {
                document.getElementById('preview').setAttribute('src', e.target.result);
            };
            reader.readAsDataURL(file);
        }
    });
</script>

</html>
