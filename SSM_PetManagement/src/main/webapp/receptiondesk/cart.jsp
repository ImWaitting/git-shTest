
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="Cat Shop">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>宠物店</title>
    <!-- Favicon -->

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


</head>

<body>
<!--========= Start Prealoader ==============-->
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
<header class="header-manu-section" id="header-sticky">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-2">
                <div class="Cat Shop-logo ">
                    <a href="index.jsp" title="Cat Master"><img src="../static/picture/cat-logo.png" alt="logo"></a>
                </div>
            </div>
            <div class="col-lg-5">
                <nav class="header-menu ">
                    <ul>
                        <li><a href="#" class="active">首页 <i class="fas fa-chevron-down"></i></a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="index.jsp">活动主页</a></li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="#">商店<i class="fas fa-chevron-down"></i></a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="shop.jsp">商店</a></li>
                                    <li><a href="shop-register.jsp">注册店铺</a></li>
                                    <li><a href="shop-register.jsp">店铺管理</a></li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="#">其他 <i class="fas fa-chevron-down"></i></a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="about.html">关于我们</a></li>
                                    <li><a href="service.html">服务</a></li>
                                    <li><a href="service-details.html">服务详情</a></li>
                                    <li><a href="team-member.html">团队成员</a></li>
                                    <li><a href="testimonial.html">证明</a></li>
                                    <li><a href="pricing.html">定价</a></li>
                                    <li><a href="why-choose-us.html">为什么选择我们</a></li>
                                    <li><a href="cart.html">车</a></li>
                                    <li><a href="checkout.html">收款处</a></li>
                                    <li><a href="faq.html">常见问题</a></li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="contact.html">联系</a></li>
                        <li>欢迎</li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-5">
                <div class="header-menu-right">
                    <form action="#">
                        <div class="header-search">
                            <input type="text" id="search" name="search" placeholder="Search">
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
                                    <div class="nav-btn navSidebar-button"><a href="#!">
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
<div class="mobile-menu-area sticky d-sm-block d-md-block d-lg-none ">
    <div class="mobile-menu">
        <nav class="header-menu">
            <ul class="nav_scroll">
                <li class="menu-item-has-children"><a href="#">Home</a>
                    <ul class="sub-menu">
                        <li><a href="index.html">Home Page 01</a></li>
                        <li><a href="index2.html">Home Page 02</a></li>
                    </ul>
                </li>
                <li><a href="#">Shop </a>
                    <ul class="sub-menu">
                        <li><a href="shop.html">Shop</a></li>
                        <li><a href="shop-details.html">Shop Details</a></li>
                    </ul>
                </li>
                <li class="menu-item-has-children"><a href="#">Pages</a>
                    <ul class="sub-menu">
                        <li><a href="about.html">About Us</a></li>
                        <li><a href="service.html">Service</a></li>
                        <li><a href="service-details.html">Service Details</a></li>
                        <li><a href="team-member.html">Team Member</a></li>
                        <li><a href="testimonial.html">Testimonial</a></li>
                        <li><a href="pricing.html">Pricing</a></li>
                        <li><a href="why-choose-us.html">Why Choose Us</a></li>
                        <li><a href="">Cart</a></li>
                        <li><a href="checkout.html">Checkout</a></li>
                        <li><a href="faq.html">Faq</a></li>
                    </ul>
                </li>
                <li class="menu-item-has-children"><a href="#">Blog</a>
                    <ul class="sub-menu">
                        <li><a href="blog.html">Blog Grid</a></li>
                        <li><a href="blog-list.html">Blog List</a></li>
                        <li><a href="blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="contact.html">Contact</a></li>
            </ul>
        </nav>
    </div>
</div>
<section class="banner-inner-section">
    <video autoplay="" loop="" muted="" class="banner-inner-bg">
        <source src="assets/images/video/banner-inner-bg.mp4" type="video/mp4">
    </video>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="banner-inner-title wow fadeInRight">
                    <h1>购物车</h1>
                </div>
                <div class="banner-inner-link wow fadeInRight" data-wow-delay=".3s">
                    <ul>
                        <li><a href="index.jsp"><i class="fas fa-home"></i>首页</a></li>
                        <li class="separator"><i class="bi bi-arrow-right"></i></li>
                        <li><a href=""><i class="far fa-hand-point-right"></i>购物车</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="cart-section">
    <div class="container">
        <div class="row mb-n6 mb-lg-n10">
            <h2 class="cart-title mb-4">购物车清单</h2>

            <div class="col-12 mb-6 mb-lg-10">

                <!-- 平板电脑和Up设备的购物车桌开始 -->
                <table class="cart-table table table-bordered text-center align-middle mb-6 d-none d-md-table">
                    <thead>
                    <tr>
                        <th class="imag">图片</th>
                        <th class="titl">产品</th>
                        <th class="quantit">数量</th>
                        <th class="pric">价格</th>
                        <th class="tota">总计</th>
                    </tr>
                    </thead>
                    <tbody class="border-top-0">
                    <tr data-id="1">
                        <td><img src="${sessionScope.products.image}" width="200px" height="200px"></td>
                        <td>${sessionScope.products.productName}</td>
                        <td class="price">${sessionScope.products.price}</td>
                        <td>
                            <div class="product-quantity-count">
                                <input class="quantity" type="number" name="quantity" min="1" value="1">
                            </div>
                        </td>
                        <td class="total">${sessionScope.products.price}</td>
                    </tr>
                    </tbody>
                </table>
                <!-- 平板电脑和Up设备的购物车桌结束 -->

                <!-- 移动设备的购物车表开始 -->
                <div class="cart-products-mobile d-md-none">
                    <div class="cart-product-mobile">
                        <div class="cart-product-mobile-thumb">
                            <a href="shop-details.html" class="cart-product-mobile-image">

                            </a>
                            <button class="cart-product-mobile-remove"><i class="bi bi-x-circle"></i></button>
                        </div>
                        <div class="cart-product-mobile-content">
                            <h5 class="cart-product-mobile-title"><a href="shop-details.html">House Coffee Original（原汁原味咖啡旅馆）</a></h5>
                            <span class="cart-product-mobile-quantity">1 x <span class="price2">$110.00</span></span>
                            <span class="cart-product-mobile-total"><b>Total:</b> <span class="total2">$110.00</span> </span>
                            <div class="product-quantity-count">
                                <input class="quantity2" type="number" name="quantity" min="1" value="1">
                            </div>
                        </div>
                    </div>
                    <div class="cart-product-mobile">
                        <div class="cart-product-mobile-thumb">
                            <a href="shop-details.html" class="cart-product-mobile-image">
                                <img src="../static/picture/collection-thumb4.jpeg" alt="" width="90" height="103">
                            </a>
                            <button class="cart-product-mobile-remove"><i class="bi bi-x-circle"></i></button>
                        </div>
                        <div class="cart-product-mobile-content">
                            <h5 class="cart-product-mobile-title"><a href="shop-details.html">中度烘焙咖啡粉</a></h5>
                            <span class="cart-product-mobile-quantity">1 x <span class="price2">$18.00</span></span>
                            <span class="cart-product-mobile-total"><b>Total:</b> <span class="total2">$18.00</span> </span>
                            <div class="product-quantity-count">
                                <input class="quantity2" type="number" name="quantity" min="1" value="1">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-between gap-3">
                    <div class="col-auto cat-shop-btn "><button onclick="location.href='shop.jsp'">继续购物 <i class="bi bi-arrow-right-short"></i> <span></span></button></div>
                    <div class="col-auto d-flex flex-wrap gap-3 cat-shop-btn ">
                        <button>更新购物车 <i class="bi bi-arrow-right-short"></i> <span></span></button>
                        <button>清空购物车 <i class="bi bi-arrow-right-short"></i> <span></span></button>
                    </div>
                </div>
                <!-- Cart Action Buttons End -->

            </div>

            <!-- Cart Totals Start -->
            <div class="col mb-6 d-none d-md-table">
                <div class="cart-totals">
                    <h4 class="title">购物车总数</h4>
                    <table class="table table-borderless bg-transparent">
                        <tbody>
                        <tr class="subtotal">
                            <th>小计</th>
                            <td><span id="subtotal">${sessionScope.products.price}</span></td>
                        </tr>
                        <tr class="shopping-fee">
                            <th>购物费</th>
                            <td><span id="shopping">5元</span></td>
                        </tr>
                        <tr class="total">
                            <th>总计</th>
                            <td><strong><span id="total">${sessionScope.products.price+5}元</span></strong></td>
                        </tr>
                        </tbody>
                    </table>
                    <button class="show-alert btn btn-dark" onclick="location.href='/receptiondesk/checkout.jsp'">继续结帐</button>
                </div>
            </div>
            <!-- 购物车总数结束 -->

            <!-- 移动设备的购物车总数开始 -->
            <div class="col d-md-none">
                <div class="cart-totals">
                    <h4 class="title">购物车总数</h4>
                    <table class="table table-borderless bg-transparent">
                        <tbody>
                        <tr class="subtotal">
                            <th>小计</th>
                            <td><span id="subtotal2"></span></td>
                        </tr>
                        <tr class="shopping-fee">
                            <th>购物费</th>
                            <td><span id="shopping2"></span></td>
                        </tr>
                        <tr class="total">
                            <th>总计</th>
                            <td><strong><span id="total2"></span></strong></td>
                        </tr>
                        </tbody>
                    </table>
                    <button class="show-alert btn btn-dark">继续结帐</button>
                </div>
            </div>
            <!-- Cart Totals For Mobile Devices End -->

        </div>
    </div>
</section>
<!-- 结帐提醒 JS -->
<div class="alert-js">
    <span class="alert-overlay"></span>
    <div class="alert-box">
        <i class="bi bi-check-circle"></i>
        <h2>收款处</h2>
        <h3>您已成功选择产品。</h3>
        <div class="alert-buttons">
            <a class="closebtn" title="close">关闭</a>
            <a href="checkout.jsp" title="Proceed">收款处</a>
        </div>
    </div>
</div>
<footer class="footer-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 wow fadeInUp">
                <div class="footer-logo">
                    <a href="index.html" title="Cat Master"><img src="../static/picture/cat-logo.png" alt="logo"></a>
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
<div class="sidebar-menu-wrapper">
    <div class="white_sidebar">
        <button type="button" class="close_btn"><i class="fas fa-times"></i></button>
        <h2 class="heading_title text-uppercase">Your Whitelist</h2>

        <div class="white_items_list">
            <div class="white_item">
                <div class="item_image">
                    <img src="../static/picture/collection-thumb8.jpeg" alt="image_not_found">
                </div>
                <div class="item_content">
                    <h4 class="item_title">
                        PAIMO-MD Cat Milk
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
                        Paper Soup Container

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
                        PECTCT Cat Food
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
                        Plastic Soup Container
                    </h4>
                    <span class="item_price">$39.00</span>
                    <button type="button" class="remove_btn"><i class="fas fa-times"></i></button>
                </div>
            </div>
        </div>
        <div class="more-product">
            <div class="more-product-title">
                <h4>You May Also Like</h4>
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
                        <h6>PAIMO-MD Cat Milk</h6>
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
                        <h6>PIMOT Cat Food</h6>
                        <h6>$49.00</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="white_sidebar_overlay"></div>
</div>
<div class="sidebar-menu-wrapper">
    <div class="cart_sidebar">
        <button type="button" class="close_btn"><i class="fas fa-times"></i></button>
        <h2 class="heading_title text-uppercase">Cart Items - <span>4</span></h2>

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
            <span>Sub Total:</span>
            <span>$76.00</span>
        </div>
        <ul class="btns_group ul_li">
            <li><a href="" class="btn btn_primary text-uppercase">View Cart</a></li>
            <li><a href="checkout.html" class="btn btn_border border_black text-uppercase">Checkout</a></li>
        </ul>
    </div>
    <div class="cart_sidebar_overlay"></div>
</div>
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
                            <h3 class="widget-title">Product Categories</h3>
                            <ul class="list-style-one">
                                <li><a href="shop-2.html"> Cute Cat <span>10</span></a></li>
                                <li><a href="shop-2.html"> White Cat <span>1</span></a></li>
                                <li><a href="shop-2.html"> Asian Cat <span>8</span></a></li>
                                <li><a href="shop-2.html"> British Cat <span>8</span></a></li>
                                <li><a href="shop-2.html"> Cat Food <span>15</span></a></li>
                                <li><a href="shop-2.html"> Baby Cat <span>11</span></a></li>
                                <li><a href="shop-2.html"> Frappuccino Coffe <span>6</span></a></li>
                                <li><a href="shop-2.html"> Americano Cat <span>10</span></a></li>
                                <li><a href="shop-2.html"> Cat Soup <span>5</span></a></li>
                                <li><a href="shop-2.html"> Adult CAt <span>2</span></a></li>
                                <li><a href="shop-2.html"> All Categories <span>1</span></a></li>
                            </ul>
                        </div>
                        <!-- Recent Gallery -->
                        <div class="recent-gallery">
                            <!-- widget title -->
                            <h3 class="widget-title">Recent Post</h3>
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
                        <h3 class="widget-title">Tags</h3>
                        <div class="sidebar-tag-item">
                            <ul>
                                <li><a href="#">Cat Bed</a></li>
                                <li><a href="#">Cats</a></li>
                                <li><a href="#">Cat Soup Container</a></li>
                                <li><a href="#">Cat Food</a></li>
                                <li><a href="#">Cat Soup</a></li>
                            </ul>
                        </div>
                        <!-- Social icon -->
                        <div class="category-icon">
                            <!-- widget title -->
                            <h3 class="widget-title">Shere with Friends</h3>
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
<!-- Custom JS CDN -->
<script src="../static/js/custom.js"></script>
<!-- Slick Js CDN -->
<script src="../static/js/slick.min.js"></script>

</body>

</html>
