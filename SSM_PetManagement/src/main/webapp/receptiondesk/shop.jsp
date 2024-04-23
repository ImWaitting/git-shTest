
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="Cat Shop">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>宠物店</title>
    <!-- Bootstrap CSS Link -->
    <link rel="stylesheet" href="../static/css/bootstrap.min.css" type="text/css" media="all">
    <!-- Animate CSS Link -->
    <link rel="stylesheet" href="../static/css/animate.css" type="text/css" media="all">
    <!-- Animated text CSS Link -->
    <link rel="stylesheet" href="../static/css/animated-text.css" type="text/css" media="all">
    <!-- Font Awesome CSS Link -->
    <link rel="stylesheet" href="../static/css/all.min.css" type="text/css" media="all">
    <!-- Font Flaticon CSS Link -->
    <link rel="stylesheet" href="../static/css/flaticon.css" type="text/css" media="all">
    <!-- Flaticon CDN Link -->
    <link rel='stylesheet' href='../static/css/uicons-solid-straight.css'>
    <!-- Custom Default CSS Link -->
    <link rel="stylesheet" href="../static/css/custom-default.css" type="text/css" media="all">
    <!-- Meanmenu CSS Link -->
    <link rel="stylesheet" href="../static/css/meanmenu.min.css" type="text/css" media="all">
    <!-- Venobox CSS Link -->
    <link rel="stylesheet" href="../static/css/venobox.css" type="text/css" media="all">
    <!-- Bootstrap Icons Link -->
    <link rel="stylesheet" href="../static/css/bootstrap-icons.css" type="text/css" media="all">
    <!-- Slick CSS Link -->
    <link rel="stylesheet" href="../static/css/slick.css" type="text/css" media="all">
    <!-- Custom Style CSS Link -->
    <link rel="stylesheet" href="../static/css/style.css" type="text/css" media="all">
    <!-- Responsive CSS Link -->
    <link rel="stylesheet" href="../static/css/responsive.css" type="text/css" media="all">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.js"></script>
    <script>
        $(function (){
            let enroll = $("#enroll");
            let shelves= $("#shelves");
            let contact=$("#cc").val();
            let id=$("#cid").val();
            let store=$("#store").val();
            enroll.click(function (){
                if(contact!=null && contact!=="" && id!=null && id!==""){
                   if(store!=null && store!==""){
                       alert("已注册店铺,不能继续注册！")
                   }else {
                       window.location.href="/receptiondesk/store.jsp";
                   }
                }else {
                    alert("实名认证后才能注册店铺！");
                    window.location.href="/receptiondesk/customer.jsp";
                }
            });
            shelves.click(function (){
                if(store!=null && store!==""){
                    window.location.href="/receptiondesk/product.jsp";
                }else {
                    alert("请先注册店铺！");
                }
            });
        })
    </script>
</head>
<body>
<!--========= 启动 Prealoader ==============-->
<div class="loading-screen" id="loading-screen">
    <span class="bar top-bar"></span>
    <span class="bar down-bar"></span>
    <div class="animation-preloader">
        <div class="spinner"></div>
        <h3>Loading...</h3>
        <div class="txt-loading">
                <span data-text-preloader="P" class="letters-loading">
                    P
                </span>
            <span data-text-preloader="e" class="letters-loading">
                    e
                </span>
            <span data-text-preloader="t" class="letters-loading">
                    t
                </span>
            <span data-text-preloader="S" class="letters-loading">
                    S
                </span>
            <span data-text-preloader="h" class="letters-loading">
                    h
                </span>
            <span data-text-preloader="o" class="letters-loading">
                    o
                </span>
            <span data-text-preloader="p" class="letters-loading">
                    p
            </span>
        </div>
    </div>
</div>

<!--==================================================-->
<!-- 启动 Cat 商店标题菜单部分 -->
<!--==================================================-->
<header class="header-manu-section" id="header-sticky">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-2">
                <div class="Cat Shop-logo ">
                    <a href="${pageContext.request.contextPath}/receptiondesk/index.jsp" title="Cat Master"><img src="../static/picture/cat-logo.png" alt="logo"></a>
                </div>
            </div>
            <div class="col-lg-5">
                <nav class="header-menu ">
                    <input type="hidden" value="${sessionScope.customer.contact}" id="cc">
                    <input type="hidden" value="${sessionScope.customer.IDcard}" id="cid">
                    <input type="hidden" value="${sessionScope.store}" id="store">
                    <ul>
                        <li><a href="#" class="active">首页 <i class="fas fa-chevron-down"></i></a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/receptiondesk/index.jsp">活动主页</a></li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="#">商店<i class="fas fa-chevron-down"></i></a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="">商店</a></li>
                                    <li><a href="#" id="enroll">注册店铺</a></li>
                                    <li><a href="#" id="shelves">上架商品</a></li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="#">其他 <i class="fas fa-chevron-down"></i></a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="#">关于我们</a></li>
                                    <li><a href="#">服务</a></li>
                                    <li><a href="#">服务详情</a></li>
                                    <li><a href="#">团队成员</a></li>
                                    <li><a href="#">证明</a></li>
                                    <li><a href="#">定价</a></li>
                                    <li><a href="#">为什么选择我们</a></li>
                                    <li><a href="#">购物车</a></li>
                                    <li><a href="#">收款处</a></li>
                                    <li><a href="#">常见问题</a></li>
                                </ul>
                            </div>
                        </li>
                        <!--<li><a href="#">博客 <i class="fas fa-chevron-down"></i></a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="blog.html">博客网格</a></li>
                                    <li><a href="blog-list.html">博客列表</a></li>
                                    <li><a href="blog-details.html">博客详细信息</a></li>
                                </ul>
                            </div>
                        </li>-->
                        <li><a href="#">联系</a></li>
                        <li></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-5">
                <div class="header-menu-right">
                    <form action="product1" method="post">
                        <div class="header-search">
                            <input type="text" id="search" name="search" placeholder="请输入商品名称">
                            <button type="submit"><i class="bi bi-search"></i></button>
                        </div>
                    </form>
                    <div class="header-menu-btn">
                        <ul>
                            <li><button class="cart_btn headers-button" type="button">
                                <i class="bi bi-cart3"></i>
                                <!--<small class="cart_counter">4</small>-->
                            </button>
                            </li>
                            <li><button class="white_btn headers-button" type="button">
                                <i class="far fa-heart"></i>
                            </button>
                            </li>
                            <li>
                                <div class="search-box-btn search-box-outer">
                                    <div class="nav-btn navSidebar-button"><a href="#">
                                        <div class="header-menu-bar">
                                            <div class="line1"></div>
                                            <div class="line2"></div>
                                            <div class="line3"></div>
                                        </div>
                                    </a></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!--==================================================-->
<!-- End Cat 商店标题 主要部分 -->
<!--==================================================-->

<!--==================================================-->
<!-- 开始主菜单区域 -->
<!--==================================================-->
<div class="mobile-menu-area sticky d-sm-block d-md-block d-lg-none ">
    <div class="mobile-menu">
        <nav class="header-menu">
            <ul class="nav_scroll">
                <li class="menu-item-has-children"><a href="#">Home</a>
                    <ul class="sub-menu">
                        <li><a href="${pageContext.request.contextPath}/receptiondesk/index.jsp">首页 01</a></li>
                        <li><a href="${pageContext.request.contextPath}/receptiondesk/index.jsp">首页 02</a></li>
                    </ul>
                </li>
                <li><a href="#">Shop </a>
                    <ul class="sub-menu">
                        <li><a href="">Shop</a></li>
                        <li><a href="#">Shop Details</a></li>
                    </ul>
                </li>
                <li class="menu-item-has-children"><a href="#">Pages</a>
                    <ul class="sub-menu">
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Service</a></li>
                        <li><a href="#">Service Details</a></li>
                        <li><a href="#">Team Member</a></li>
                        <li><a href="#">Testimonial</a></li>
                        <li><a href="#">Pricing</a></li>
                        <li><a href="#">Why Choose Us</a></li>
                        <li><a href="#">Cart</a></li>
                        <li><a href="#">收款处</a></li>
                        <li><a href="#">常见问题</a></li>
                    </ul>
                </li>
                <li class="menu-item-has-children"><a href="#">Blog</a>
                    <ul class="sub-menu">
                        <li><a href="#">Blog Grid</a></li>
                        <li><a href="#">Blog List</a></li>
                        <li><a href="#">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </div>
</div>
<!--==================================================-->
<!-- 结束主菜单区域 -->
<!--==================================================-->


<!--==================================================-->
<!--在此处开始 Cat Shop 横幅部分 -->
<!--==================================================-->
<section class="banner-inner-section">
    <video autoplay="" loop="" muted="" class="banner-inner-bg">
        <source src="assets/images/video/banner-inner-bg.mp4" type="video/mp4">
    </video>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="banner-inner-title wow fadeInRight">
                    <h1>我们的商店</h1>
                </div>
                <div class="banner-inner-link wow fadeInRight" data-wow-delay=".3s">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/receptiondesk/index.jsp"><i class="fas fa-home"></i>主页</a></li>
                        <li class="separator"><i class="bi bi-arrow-right"></i></li>
                        <li><a href=""><i class="far fa-hand-point-right"></i>我们的商店</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="product-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="cat-shop-section-title style2 wow fadeInUp">
                    <h1>我们的<span>商店</span></h1>
                </div>
            </div>

        </div>
        <div class="product-box">
           <div class="row">

        <c:forEach items="${requestScope.pageInfo.list}" var="product">
                <div class="col-lg-3 col-md-6">
                    <div class="collection-single-box wow fadeInUp" data-wow-delay=".2s">
                            <%--<img src="static/picture/collection-thumb2.jpeg" alt="thumb">--%>
                        <form action="${pageContext.request.contextPath}/productById" method="post">
                        <div class="collection-box-thumb">
                                <input style="display: none" id="Id" name="Id" value="${product.productId}">
                                <img src="${product.image}" width="50px" height=250px">
                        </div>
                        <div class="collection-box-content">

                            <div class="collection-icon">
                                <ul>
                                    <li><button class="product-action-btn whiteListConfirm" data-tooltip-text="收藏"><i class="far fa-heart"></i></button></li>
                                    <li><button class="product-action-btn" data-tooltip-text="快速浏览" data-bs-toggle="modal" data-bs-target="#exampleProductModal"><i class="fas fa-search"></i></button></li>
                                    <li><button class="product-action-btn cartConfirm" data-tooltip-text="加入购物车" type="submit"><i class="bi bi-cart4"></i></button></li>
                                </ul>
                            </div>

                            <div class="collection-box-title">
                                <h6>商品名称:${product.productName}</h6>
                            </div>
                            <div class="collection-box-price">
                                <h6>售价:${product.price}元</h6>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
        </c:forEach>
           </div>
    </div>
       </div>
    <table border="1" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="7">
                <a href="${pageContext.request.contextPath}/product1?pageNo=1">首页</a>
                <a href="${pageContext.request.contextPath}/product1?pageNo=${pageInfo.prePage}">上一页</a>
                <a href="${pageContext.request.contextPath}/product1?pageNo=${pageInfo.nextPage}">下一页</a>
                <a href="${pageContext.request.contextPath}/product1?pageNo=${pageInfo.pages}">末页</a>
                第${pageInfo.pageNum}页/共${pageInfo.pages}页(${pageInfo.total}条记录)
            </td>
        </tr>
    </table>
</section>
<!--==================================================-->
<!-- 在这里结束 Cat Shop 服务部分 -->
<!--==================================================-->





<!--==================================================-->
<!-- 在此处开始 Cat Shop 页脚部分 -->
<!--==================================================-->
<footer class="footer-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 wow fadeInUp">
                <div class="footer-logo">
                    <a href="index.jsp" title="Cat Master"><img src="../static/picture/cat-logo.png" alt="logo"></a>
                </div>
                <div class="footer-desc">
                    <p>Curabitur vennatis finibus nte et
                        magna eu ve Aliuam puus seim
                        rhoncus bibendum,</p>
                </div>
                <div class="footer-social">
                    <ul>
                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                        <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay=".2s">
                <div class="footer-link">
                    <div class="footer-title">
                        <h5>相关链接</h5>
                    </div>
                    <ul>
                        <li><a href="#"><i class="bi bi-arrow-right"></i>新产品</a></li>
                        <li><a href="#"><i class="bi bi-arrow-right"></i>畅销品</a></li>
                        <li><a href="#"><i class="bi bi-arrow-right"></i>捆绑和保存</a></li>
                        <li><a href="#"><i class="bi bi-arrow-right"></i>在线礼品卡</a></li>
                        <li><a href="#"><i class="bi bi-arrow-right"></i>折扣</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay=".4s">
                <div class="footer-link">
                    <div class="footer-title">
                        <h5>我的帐户</h5>
                    </div>
                    <ul>
                        <li><a href="#"><i class="bi bi-arrow-right"></i>我的个人资料</a></li>
                        <li><a href="#"><i class="bi bi-arrow-right"></i>我的订单历史记录</a></li>
                        <li><a href="#"><i class="bi bi-arrow-right"></i>我的白名单</a></li>
                        <li><a href="#"><i class="bi bi-arrow-right"></i>订单跟踪</a></li>
                        <li><a href="#"><i class="bi bi-arrow-right"></i>购物信息</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay=".6s">
                <div class="footer-contact">
                    <div class="footer-title">
                        <h5>联系我们</h5>
                    </div>
                    <div class="footer-contact-item">
                        <i class="fas fa-phone"></i> <a href="#"> 电话: 800.123.4567</a>
                    </div>
                    <div class="footer-contact-item">
                        <i class="fas fa-envelope"></i> <a href="#"> 电子邮件: example@123.com</a>
                    </div>
                    <div class="footer-contact-item">
                        <div><i class="fas fa-map-marker-alt"></i> </div><div><h6> 托雅 大计, 南托岭街道,
                        长沙, 湖南.</h6></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="footer-bottom-desc wow fadeInLeft">
                        <p>Copyright &copy; 2024.湖南爱宠科技有限公司 保留所有权利。</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="footer-bottom-link wow fadeInLeft">
                        <ul>
                            <li><a href="#">隐私</a></li>
                            <li><a href="#">团队</a></li>
                            <li><a href="#">购买</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-shape">
        <div class="footer-shape1">
            <img src="../static/picture/footer-shape.png" alt="shape">
        </div>
        <div class="footer-shape2">
            <img src="../static/picture/footer-shape2.png" alt="shape">
        </div>
        <div class="footer-shape3">
            <img src="../static/picture/footer-shape3.png" alt="shape">
        </div>
        <div class="footer-shape4">
            <img src="../static/picture/footer-shape3.png" alt="shape">
        </div>
        <div class="footer-shape5">
            <img src="../static/picture/footer-shape.png" alt="shape">
        </div>
        <div class="footer-shape6">
            <img src="../static/picture/footer-shape.png" alt="shape">
        </div>
        <div class="footer-shape7">
            <img src="../static/picture/footer-shape_2.png" alt="shape">
        </div>
    </div>
</footer>
<!--==================================================-->
<!-- 在此处结束 Cat Shop 页脚部分 -->
<!--==================================================-->





<!--==================================================-->
<!-- 在此处开始 Cat Shop 白色侧边栏部分 -->
<!--==================================================-->
<div class="sidebar-menu-wrapper">
    <div class="white_sidebar">
        <button type="button" class="close_btn"><i class="fas fa-times"></i></button>
        <h2 class="heading_title text-uppercase">您的白名单</h2>

        <div class="white_items_list">
            <div class="white_item">
                <div class="item_image">
                    <img src="../static/picture/collection-thumb8.jpeg" alt="image_not_found">
                </div>
                <div class="item_content">
                    <h4 class="item_title">
                        PAIMO-MD 猫奶
                    </h4>
                    <span class="item_price">$29.00</span>
                    <button type="button" class="remove_btn"><i class="fas fa-times"></i></button>
                </div>
            </div>

            <div class="white_item">
                <div class="item_image">
                    <img src="../static/picture/collection-thumb7.jpeg" alt="image_not_found">
                </div>
                <div class="item_content">
                    <h4 class="item_title">
                        纸汤容器

                    </h4>
                    <span class="item_price">$25.00</span>
                    <button type="button" class="remove_btn"><i class="fas fa-times"></i></button>
                </div>
            </div>

            <div class="white_item">
                <div class="item_image">
                    <img src="../static/picture/collection-thumb6.jpeg" alt="image_not_found">
                </div>
                <div class="item_content">
                    <h4 class="item_title">
                        PECTCT 猫粮
                    </h4>
                    <span class="item_price">$49.00 <del>$59.00</del></span>
                    <button type="button" class="remove_btn"><i class="fas fa-times"></i></button>
                </div>
            </div>

            <div class="white_item">
                <div class="item_image">
                    <img src="../static/picture/collection-thumb5.jpeg" alt="image_not_found">
                </div>
                <div class="item_content">
                    <h4 class="item_title">
                        塑料汤容器
                    </h4>
                    <span class="item_price">$39.00</span>
                    <button type="button" class="remove_btn"><i class="fas fa-times"></i></button>
                </div>
            </div>
        </div>
        <div class="more-product">
            <div class="more-product-title">
                <h4>您还可能喜欢</h4>
            </div>
            <div class="more-product-items">
                <div class="more-product-item">
                    <div class="more-product-thumb">
                        <img src="../static/picture/collection-thumb4.jpeg" alt="thumb">
                        <div class="more-product-icon">
                            <ul>
                                <li><a href="#"><i class="far fa-heart"></i></a></li>
                                <li><a href="#"><i class="bi bi-arrow-left-right"></i></a></li>
                                <li><a href="#"><i class="fas fa-search"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="more-product-content">
                        <h6>PAIMO-MD 猫奶</h6>
                        <h6>$29.00</h6>
                    </div>
                </div>
                <div class="more-product-item">
                    <div class="more-product-thumb">
                        <img src="../static/picture/collection-thumb3.jpeg" alt="thumb">
                        <div class="more-product-icon">
                            <ul>
                                <li><a href="#"><i class="far fa-heart"></i></a></li>
                                <li><a href="#"><i class="bi bi-arrow-left-right"></i></a></li>
                                <li><a href="#"><i class="fas fa-search"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="more-product-content">
                        <h6>PIMOT 猫粮</h6>
                        <h6>$49.00</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="white_sidebar_overlay"></div>
</div>
<!--==================================================-->
<!-- End Cat Shop Cart Sidebar Section Here -->
<!--==================================================-->





<!--==================================================-->
<!-- End Cat Shop Cart Sidebar Section Here -->
<!--==================================================-->
<div class="sidebar-menu-wrapper">
    <div class="cart_sidebar">
        <button type="button" class="close_btn"><i class="fas fa-times"></i></button>
        <h2 class="heading_title text-uppercase">购物车项目 - <span>4</span></h2>

        <div class="cart_items_list">
            <div class="cart_item">
                <div class="item_image">
                    <img src="../static/picture/collection-thumb.jpeg" alt="image_not_found">
                </div>
                <div class="item_content">
                    <h4 class="item_title">
                        Rorem ipsum dolor sit amet, sectetur adipisi cingey.
                    </h4>
                    <span class="item_price">$19.00</span>
                    <button type="button" class="remove_btn"><i class="fas fa-times"></i></button>
                </div>
            </div>

            <div class="cart_item">
                <div class="item_image">
                    <img src="../static/picture/collection-thumb2.jpeg" alt="image_not_found">
                </div>
                <div class="item_content">
                    <h4 class="item_title">
                        Rorem ipsum dolor sit amet, sectetur adipisi cingey.
                    </h4>
                    <span class="item_price">$19.00</span>
                    <button type="button" class="remove_btn"><i class="fas fa-times"></i></button>
                </div>
            </div>

            <div class="cart_item">
                <div class="item_image">
                    <img src="../static/picture/collection-thumb3.jpeg" alt="image_not_found">
                </div>
                <div class="item_content">
                    <h4 class="item_title">
                        Rorem ipsum dolor sit amet, sectetur adipisi cingey.
                    </h4>
                    <span class="item_price">$19.00</span>
                    <button type="button" class="remove_btn"><i class="fas fa-times"></i></button>
                </div>
            </div>

            <div class="cart_item">
                <div class="item_image">
                    <img src="../static/picture/collection-thumb4.jpeg" alt="image_not_found">
                </div>
                <div class="item_content">
                    <h4 class="item_title">
                        Rorem ipsum dolor sit amet, sectetur adipisi cingey.
                    </h4>
                    <span class="item_price">$19.00</span>
                    <button type="button" class="remove_btn"><i class="fas fa-times"></i></button>
                </div>
            </div>
        </div>
        <div class="total_price text-uppercase">
            <span>小计:</span>
            <span>$76.00</span>
        </div>
        <ul class="btns_group ul_li">
            <li><a href="cart.jsp" class="btn btn_primary text-uppercase">查看购物车</a></li>
            <li><a href="checkout.jsp" class="btn btn_border border_black text-uppercase">收款处</a></li>
        </ul>
    </div>
    <div class="cart_sidebar_overlay"></div>
</div>
<!--==================================================-->
<!-- End Cat Shop Cart Sidebar Section Here -->
<!--==================================================-->






<!--==================================================-->
<!-- 结束 Cat Shop Bar 侧边栏部分在这里 -->
<!--==================================================-->
<div class="xs-sidebar-group info-group">
    <div class="xs-overlay xs-bg-black"></div>
    <div class="xs-sidebar-widget">
        <div class="sidebar-widget-container">
            <!-- widget button -->
            <div class="widget-heading">
                <a href="#" class="close-side-widget">
                    <i class="far fa-times-circle"></i>
                </a>
            </div>
            <div class="sidebar-textwidget">
                <!-- Sidebar Info Content -->
                <div class="sidebar-info-contents">
                    <div class="content-inner">
                        <div class="nav-logo">
                            <a href="index-2.html"><img src="../static/picture/cat-logo.png" alt="logo"></a>
                        </div>
                        <!-- widget search -->
                        <div class="widget-search">
                            <div class="widget">
                                <form action="#" method="POST">
                                    <input id="search2" type="text" name="s" value="" placeholder="Search Product" title="Search for:" autocomplete="off">
                                    <button type="submit" class="icon">
                                        <i class="bi bi-search"></i>
                                    </button>
                                </form>
                            </div>
                        </div>
                        <!-- Widget wrapper End -->
                        <div class="product-category">
                            <!-- widget title -->
                            <h3 class="widget-title">产品分类</h3>
                            <ul class="list-style-one">
                                <li><a href="shop-2.html"> 可爱的猫咪 <span>10</span></a></li>
                                <li><a href="shop-2.html"> 白猫 <span>1</span></a></li>
                                <li><a href="shop-2.html"> 亚洲猫 <span>8</span></a></li>
                                <li><a href="shop-2.html"> 英国猫 <span>8</span></a></li>
                                <li><a href="shop-2.html"> 猫粮 <span>15</span></a></li>
                                <li><a href="shop-2.html"> 小猫 <span>11</span></a></li>
                                <li><a href="shop-2.html"> 星冰乐咖啡 <span>6</span></a></li>
                                <li><a href="shop-2.html"> 美式猫<span>10</span></a></li>
                                <li><a href="shop-2.html"> 猫汤 <span>5</span></a></li>
                                <li><a href="shop-2.html"> 成年猫 <span>2</span></a></li>
                                <li><a href="shop-2.html"> 所有类别 <span>1</span></a></li>
                            </ul>
                        </div>
                        <!-- Recent Gallery -->
                        <div class="recent-gallery">
                            <!-- widget title -->
                            <h3 class="widget-title">最近的帖子</h3>
                            <ul>
                                <li>
                                    <div class="widget-gallery-thumb">
                                        <a href="shop-2.html"><img src="../static/picture/collection-thumb8.jpeg" alt="thumb"></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="widget-gallery-thumb">
                                        <a href="shop-2.html"><img src="../static/picture/collection-thumb7.jpeg" alt="thumb"></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="widget-gallery-thumb">
                                        <a href="shop-2.html"><img src="../static/picture/collection-thumb3.jpeg" alt=""></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="widget-gallery-thumb">
                                        <a href="shop-2.html"><img src="../static/picture/collection-thumb4.jpeg" alt=""></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="widget-gallery-thumb">
                                        <a href="shop-2.html"><img src="../static/picture/collection-thumb5.jpeg" alt=""></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="widget-gallery-thumb">
                                        <a href="shop-2.html"><img src="../static/picture/collection-thumb6.jpeg" alt=""></a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- widget title -->
                        <h3 class="widget-title">标签</h3>
                        <div class="sidebar-tag-item">
                            <ul>
                                <li><a href="#">猫床</a></li>
                                <li><a href="#">猫</a></li>
                                <li><a href="#">猫汤容器</a></li>
                                <li><a href="#">猫粮</a></li>
                                <li><a href="#">猫汤</a></li>
                            </ul>
                        </div>
                        <!-- Social icon -->
                        <div class="category-icon">
                            <!-- widget title -->
                            <h3 class="widget-title">和朋友一起来</h3>
                            <div class="follow-company-icon style-two">
                                <a href="#"> <i class="fab fa-facebook-f"></i> </a>
                                <a href="#"> <i class="fab fa-pinterest-p"></i> </a>
                                <a href="#"> <i class="fab fa-instagram"> </i> </a>
                                <a href="#"> <i class="fab fa-google"></i> </a>
                            </div>
                        </div>
                        <!-- icon End -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--==================================================-->
<!-- 结束 Cat Shop Bar 侧边栏部分在这里 -->
<!--==================================================-->






<!--==================================================-->
<!-- 从这里开始向上滚动部分-->
<!--==================================================-->
<div class="scroll-area">
    <div class="top-wrap">
        <div class="go-top-btn-wraper">
            <div class="prgoress_indicator active-progress">
                <svg class="progress-circle svg-content" width="100%" height="100%" viewbox="-1 -1 102 102">
                    <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 270.456;"></path>
                </svg>
            </div>
        </div>
    </div>
</div>
<!--==================================================-->
<!-- 结束向上滚动部分 这里 -->
<!--==================================================-->





<!--==================================================-->
<!-- 在此处开始快速查看弹出窗口 -->
<!--==================================================-->
<div class="quickview-product-modal modal fade" id="exampleProductModal">
    <div class="modal-dialog mw-100">
        <div class="container">
            <div class="modal-content">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="modal-body">
                    <!-- Single Product Top Area Start -->
                    <div class="row">
                        <!-- Product Image Start -->
                        <div class="col-lg-6">
                            <div class="quick-slider">
                                <div class="image-slide">
                                    <!-- Product item Start -->
                                    <div class="item">
                                        <!-- Product Badge Start -->
                                        <div class="single-product-badge-left">
                                            <span class="single-product-badge-new">新增功能</span>
                                        </div>
                                        <div class="single-product-badge-right">
                                            <span class="single-product-badge-sale">销售:</span>
                                            <span class="single-product-badge-sale">11%</span>
                                        </div>
                                    </div>
                                    <img src="../static/picture/collection-thumb5.jpeg" alt="Cat">
                                </div>
                                <div class="image-slide">
                                    <div class="item">
                                        <div class="single-product-badge-left">
                                            <span class="single-product-badge-new">新增功能</span>
                                        </div>
                                        <div class="single-product-badge-right">
                                            <span class="single-product-badge-sale">销售:</span>
                                            <span class="single-product-badge-sale"> 20%</span>
                                        </div>
                                    </div>
                                    <img src="../static/picture/collection-thumb4.jpeg" alt="Cat">
                                </div>
                                <div class="image-slide">
                                    <div class="item">
                                        <div class="single-product-badge-left">
                                            <span class="single-product-badge-new">新增功能</span>
                                        </div>
                                        <div class="single-product-badge-right">
                                            <span class="single-product-badge-sale">销售:</span>
                                            <span class="single-product-badge-sale"> 5%</span>
                                        </div>
                                    </div>
                                    <img src="../static/picture/collection-thumb3.jpeg" alt="Cat">
                                </div>
                                <div class="image-slide">
                                    <div class="item">
                                        <div class="single-product-badge-left">
                                            <span class="single-product-badge-new">老</span>
                                        </div>
                                        <div class="single-product-badge-right">
                                            <span class="single-product-badge-sale">销售:</span>
                                            <span class="single-product-badge-sale"> 20%</span>
                                        </div>
                                    </div>
                                    <img src="../static/picture/collection-thumb.jpeg" alt="Cat">
                                </div>
                                <div class="image-slide">
                                    <div class="item">
                                        <div class="single-product-badge-left">
                                            <span class="single-product-badge-new">新增功能</span>
                                        </div>
                                        <div class="single-product-badge-right">
                                            <span class="single-product-badge-sale">销售:</span>
                                            <span class="single-product-badge-sale"> 11%</span>
                                        </div>
                                    </div>
                                    <img src="../static/picture/collection-thumb2.jpeg" alt="Cat">
                                </div>
                            </div>
                            <!-- Product Image Slider End -->

                            <!-- Product Thumbnail Carousel Start -->
                            <div class="quick-slider-btn">
                                <div class="image-slide-btn">
                                    <img src="../static/picture/collection-thumb3.jpeg" alt="Cat">
                                </div>
                                <div class="image-slide-btn">
                                    <img src="../static/picture/collection-thumb4.jpeg" alt="Cat">
                                </div>
                                <div class="image-slide-btn">
                                    <img src="../static/picture/collection-thumb5.jpeg" alt="Cat">
                                </div>
                                <div class="image-slide-btn">
                                    <img src="../static/picture/collection-thumb.jpeg" alt="Cat">
                                </div>
                                <div class="image-slide-btn">
                                    <img src="../static/picture/collection-thumb2.jpeg" alt="Cat">
                                </div>
                            </div>
                            <!-- Product Thumbnail Carousel End -->
                        </div>
                        <!-- Product Image End -->

                        <!-- Product Content Start -->
                        <div class="col-lg-6">
                            <div class="single-product-content">
                                <h1 class="single-product-title">招牌混合烤猫</h1>
                                <div class="single-product-price">$99.00 <del>$110.00</del></div>
                                <ul class="single-product-meta">
                                    <li><span class="label">可用性 :</span> <span class="value">11 剩余库存</span></li>
                                </ul>
                                <div class="single-product-text">
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
                                </div>
                                <div class="single-product-variations">
                                    <div class="size">大小 :</div>
                                    <div class="size-value">
                                        <ul>
                                            <li><button>S</button></li>
                                            <li><button class="active">M</button></li>
                                            <li><button>L</button></li>
                                            <li><button>XL</button></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="single-product-variations">
                                    <div class="color">颜色 :</div>
                                    <div class="color-value">
                                        <ul>
                                            <li><button><i class="bi bi-check2"></i></button></li>
                                            <li><button><i class="bi bi-check2"></i></button></li>
                                            <li><button class="active"><i class="bi bi-check2"></i></button></li>
                                            <li><button><i class="bi bi-check2"></i></button></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="single-product-variations">
                                    <div class="metarial">梅塔里亚尔 :</div>
                                    <div class="metarial-value">
                                        <ul>
                                            <li><button> 金属</button></li>
                                            <li><button> 树脂</button></li>
                                            <li><button class="active"> 塑胶</button></li>
                                            <li><button> 纸</button></li>
                                            <li><button> 纤维</button></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="quantity">
                                    <div class="cart-plus-minus">
                                        <input id="quantity2" name="quantity" class="cart-plus-minus-box" value="0" type="text">
                                        <div class="dec ctnbutton">-</div>
                                        <div class="inc ctnbutton">+</div>
                                    </div>
                                </div>
                                <div class="add-to-cart-btn">
                                    <a href="cart.jsp">加入购物车</a>
                                </div>
                                <ul class="single-product-meta">
                                    <li>
                                        <span class="label">类别 :</span>
                                        <span class="value links">
											<a href="#">猫</a>
											<a href="#">交易催收</a>
											<a href="#">特色产品</a>
										</span>
                                    <li>
                                        <span class="label">标签 :</span>
                                        <span class="value links">
												<a href="#">黑</a>
												<a href="#">纤维</a>
												<a href="#">皮革</a>
                                    		</span>
                                    </li>
                                    <li>
                                        <span class="label">共享 :</span>
                                        <span class="value social">
												<a href="#"><i class="fab fa-facebook-f"></i></a>
												<a href="#"><i class="fab fa-twitter"></i></a>
												<a href="#"><i class="fab fa-pinterest-p"></i></a>
                                    		</span>
                                    </li>
                                </ul>
                                <div class="single-product-safe-payment">
                                    <p>保证安全结账</p>
                                    <ul>
                                        <li><i class="fab fa-cc-visa"></i></li>
                                        <li><i class="bi bi-cash-coin"></i></li>
                                        <li><i class="fab fa-cc-paypal"></i></li>
                                        <li><i class="fab fa-google-pay"></i></li>
                                        <li><i class="fab fa-apple-pay"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Product Content End -->
                    </div>
                    <!-- Single Product Top Area End -->
                </div>
            </div>
        </div>
    </div>
</div>
<!--==================================================-->
<!-- Ends Quickview Popup Here -->
<!--==================================================-->






<!--==================================================-->
<!-- Start JavaScrift CDN Section -->
<!--==================================================-->

<!-- Modernizr JS -->
<script src="../static/js/modernizr-3.5.0.min.js"></script>
<!-- Jquery JS CDN -->
<script src="../static/js/jquery-3.7.1.min.js"></script>
<!-- Jquery Migrate Link -->
<script src="../static/js/jquery-migrate-3.4.0.js"></script>
<!-- Popper JS CDN -->
<script src="../static/js/popper.min.js"></script>
<!-- Bootstrap JS CDN -->
<script src="../static/js/bootstrap.min.js"></script>
<!-- CounterUp JS CDN -->
<script src="../static/js/jquery.counterup.min.js"></script>
<!-- WayPoints JS CDN -->
<script src="../static/js/waypoints.min.js"></script>
<!-- WOW JS CDN -->
<script src="../static/js/wow.js"></script>
<!-- Imageloaded JS CDN -->
<script src="../static/js/imagesloaded.pkgd.min.js"></script>
<!-- Venubox JS CDN -->
<script src="../static/js/venobox.js"></script>
<!-- Animated JS CDN -->
<script src="../static/js/animated-text.js"></script>
<!-- VenuBox JS CDN -->
<script src="../static/js/venobox.min.js"></script>
<!-- PKG JS CDN -->
<script src="../static/js/isotope.pkgd.min.js"></script>
<!-- Ajax JS Link -->
<script src="../static/js/ajax-mail.js"></script>
<!-- MeanMenu JS CDN -->
<script src="../static/js/jquery.meanmenu.js"></script>
<!-- ScrollUp JS CDN -->
<script src="../static/js/jquery.scrollUp.js"></script>
<!-- Burfiller JS CDN -->
<script src="../static/js/jquery.barfiller.js"></script>
<!-- 自定义 JS CDN -->
<script src="../static/js/custom.js"></script>
<!-- Slick Js CDN -->
<script src="../static/js/slick.min.js"></script>

</body>

</html>
