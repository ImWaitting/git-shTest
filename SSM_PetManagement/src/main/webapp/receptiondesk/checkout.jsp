<%--
  Created by IntelliJ IDEA.
  User: Fsq01
  Date: 2024/4/17
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<!--========= End Prealoader ==============-->




<!--==================================================-->
<!-- Start Cat Shop Header Menu Section -->
<!--==================================================-->
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
                                    <li><a href="cart.html">购物车</a></li>
                                    <li><a href="checkout.html">收款处</a></li>
                                    <li><a href="faq.html">常见问题</a></li>
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
<!--==================================================-->
<!-- End Cat Shop Header Main Section -->
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
                        <li><a href="cart.html">Cart</a></li>
                        <li><a href="">Checkout</a></li>
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
<!--==================================================-->
<!-- End Main Menu Area -->
<!--==================================================-->





<!--==================================================-->
<!-- Start Cat Shop Banner Section Here -->
<!--==================================================-->
<section class="banner-inner-section">
    <video autoplay="" loop="" muted="" class="banner-inner-bg">
        <source src="assets/images/video/banner-inner-bg.mp4" type="video/mp4">
    </video>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="banner-inner-title wow fadeInRight">
                    <h1>收款处</h1>
                </div>
                <div class="banner-inner-link wow fadeInRight" data-wow-delay=".3s">
                    <ul>
                        <li><a href="index.jsp"><i class="fas fa-home"></i>首页</a></li>
                        <li class="separator"><i class="bi bi-arrow-right"></i></li>
                        <li><a href=""><i class="far fa-hand-point-right"></i>收款处</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!--==================================================-->
<!-- End Cat Shop Banner Section Here -->
<!--==================================================-->






<!--==================================================-->
<!-- Start Cat Shop Checkout Section Here -->
<!--==================================================-->
<div class="shop-product-section">
    <div class="container">
        <form action="#" class="checkout-form">
            <div class="row g-4">

                <div class="col-lg-7">

                    <!-- Billing Address -->
                    <div id="billing-form">
                        <h4 class="mb-4">帐单邮寄地址</h4>
                        <div class="row row-cols-sm-2 row-cols-1 g-4">
                            <div class="col">
                                <label>名字*</label>
                                <input class="form-field" type="text" placeholder="First Name" id="c-name1" name="name" autocomplete="on">
                            </div>
                            <div class="col">
                                <label>姓*</label>
                                <input class="form-field" type="text" placeholder="Last Name" id="c-name2" name="name" autocomplete="on">
                            </div>
                            <div class="col">
                                <label>电子邮件地址*</label>
                                <input class="form-field" type="email" placeholder="Email Address" id="c-mail1" name="email">
                            </div>
                            <div class="col">
                                <label>电话号码*</label>
                                <input class="form-field" type="text" placeholder="Phone number" id="c-numb1" name="number" autocomplete="off">
                            </div>
                            <div class="col-sm-12">
                                <label>公司名称</label>
                                <input class="form-field" type="text" placeholder="Company Name" id="c-cname1" name="name" autocomplete="off">
                            </div>
                            <div class="col-sm-12">
                                <label>地址*</label>
                                <input class="form-field" type="text" placeholder="Address line 1" id="c-addr1" name="name" autocomplete="off">
                            </div>
                            <div class="col-sm-12">
                                <input class="form-field" type="text" placeholder="Address line 2" id="c-addr2" name="name" autocomplete="off">
                            </div>
                            <div class="col">
                                <label>国家*</label>
                                <select class="form-field">
                                    <option>中国</option>
                                    <option>韩国</option>
                                    <option>英国</option>
                                    <option>印度</option>
                                    <option>日本</option>
                                </select>
                            </div>
                            <div class="col">
                                <label>城镇/城市*</label>
                                <input class="form-field" type="text" placeholder="Town/City" id="c-city1" name="name" autocomplete="on">
                            </div>
                            <div class="col">
                                <label>省会*</label>
                                <input class="form-field" type="text" placeholder="State" id="c-state1" name="name" autocomplete="on">
                            </div>
                            <div class="col">
                                <label>邮政编码*</label>
                                <input class="form-field" type="text" placeholder="Zip Code" id="c-zip1" name="name" autocomplete="on">
                            </div>
                            <div class="col-sm-12 d-flex flex-wrap">
                                <div class="form-check me-4">
                                    <input class="form-check-input" type="checkbox" id="create_account">
                                    <label class="form-check-label" for="create_account">创建一个账户？</label>
                                </div>
                                <div class="form-check m-0">
                                    <input class="form-check-input" type="checkbox" id="shiping_address" data-toggle-shipping="#shipping-form">
                                    <label class="form-check-label" for="shiping_address">运送到不同的地址</label>
                                </div>
                            </div>
                        </div>

                    </div>

                    <!-- Shipping Address -->
                    <div id="shipping-form" class="mt-md-8 mt-6">
                        <h4 class="mb-4">收货地址</h4>
                        <div class="row row-cols-sm-2 row-cols-1 g-4">
                            <div class="col">
                                <label>名字*</label>
                                <input class="form-field" type="text" placeholder="First Name" id="c-nam1" name="name" autocomplete="on">
                            </div>
                            <div class="col">
                                <label>姓*</label>
                                <input class="form-field" type="text" placeholder="Last Name" id="c-nam2" name="name" autocomplete="on">
                            </div>
                            <div class="col">
                                <label>电子邮件地址*</label>
                                <input class="form-field" type="email" placeholder="Email Address" id="c-mil1" name="email" autocomplete="on">
                            </div>
                            <div class="col">
                                <label>电话号码*</label>
                                <input class="form-field" type="text" placeholder="Phone number" id="c-num1" name="number" autocomplete="off">
                            </div>
                            <div class="col-sm-12">
                                <label>公司名称</label>
                                <input class="form-field" type="text" placeholder="Company Name" id="c-comp1" name="name" autocomplete="off">
                            </div>
                            <div class="col-sm-12">
                                <label>地址*</label>
                                <input class="form-field" type="text" placeholder="Address line 1" id="c-add1" name="name" autocomplete="on">
                            </div>
                            <div class="col-sm-12">
                                <input class="form-field" type="text" placeholder="Address line 2" id="c-add2" name="name" autocomplete="on">
                            </div>
                            <div class="col">
                                <label>国家*</label>
                                <select class="form-field">
                                    <option>中国</option>
                                    <option>韩国</option>
                                    <option>英国</option>
                                    <option>印度</option>
                                    <option>日本</option>
                                </select>
                            </div>
                            <div class="col">
                                <label>城镇/城市*</label>
                                <input class="form-field" type="text" placeholder="Town/City" id="c-town1" name="name" autocomplete="on">
                            </div>
                            <div class="col">
                                <label>省会*</label>
                                <input class="form-field" type="text" placeholder="State" id="c-state3" name="name" autocomplete="on">
                            </div>
                            <div class="col">
                                <label>邮政编码*</label>
                                <input class="form-field" type="text" placeholder="Zip Code" id="c-zipc1" name="name" autocomplete="on">
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-lg-5">

                    <!-- Checkout Summary Start -->
                    <div class="checkout-box">

                        <h4 class="mb-4">购物车总数</h4>

                        <table class="checkout-summary-table table table-borderless">
                            <thead>
                            <tr>
                                <th>产品</th>
                                <th>总计</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>${sessionScope.products.productName}</td>
                                <td>${sessionScope.products.price}</td>
                            </tr>
                            <tr>
                                <td class="border-top">小计</td>
                                <td class="border-top">${sessionScope.products.price}</td>
                            </tr>
                            <tr>
                                <td class="border-top">运费</td>
                                <td class="border-top">5元</td>
                            </tr>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th class="border-top">合计</th>
                                <th class="border-top">${sessionScope.products.price+5}元</th>
                            </tr>
                            </tfoot>
                        </table>

                    </div>
                    <!-- Checkout Summary End -->

                    <!-- Payment Method Start -->
                    <div class="checkout-box">

                        <h4 class="mb-4">付款方式</h4>

                        <div class="checkout-payment-method">

                            <%--<div class="single-method form-check">
                                <input class="form-check-input" type="radio" id="payment_check" name="payment-method" >
                                <label class="form-check-label" for="payment_check">支票付款</label>
                                <p>请将支票寄给商店，其中包含街道、城镇、省会、邮政编码、国家/地区。</p>
                            </div>

                            <div class="single-method form-check">
                                <input class="form-check-input" type="radio" id="payment_bank" name="payment-method">
                                <label class="form-check-label" for="payment_bank">直接银行转账</label>
                                <p>请通过银行账号转账</p>
                            </div>--%>

                            <div class="single-method form-check">
                                <input class="form-check-input" type="radio" id="payment_cash" name="payment-method">
                                <label class="form-check-label" for="payment_cash">货到付款</label>
                                <p>请仔细填写街道、城镇、省会、邮政编码、国家/地区。</p>
                            </div>

                            <div class="single-method form-check">
                                <input class="form-check-input" type="radio" id="payment_card" name="payment-method" checked="">
                                <label class="form-check-label" for="payment_card">支付宝</label>
                                <p>请通过支付宝扫码付款</p>
                            </div>

                            <div class="single-method form-check">
                                <input class="form-check-input" type="checkbox" id="accept_terms">
                                <label class="form-check-label mb-4" for="accept_terms">我已阅读并接受条款和条件</label>
                            </div>

                        </div>
                        <a href="${pageContext.request.contextPath}/alipay/alipay" class="btn btn-dark btn-primary-hover rounded-0 mt-6" >下订单</a>
<%--
                        <button class="btn btn-dark btn-primary-hover rounded-0 mt-6" onclick="location.href = '/alipay/alipay'">下订单</button>
--%>
                    </div>
                    <!-- 付款方式结束 -->

                </div>

            </div>
        </form>
    </div>
</div>
<!--==================================================-->
<!-- 在这里结束 Cat Shop 结帐部分-->
<!--==================================================-->






<!--==================================================-->
<!-- 在此处开始 Cat Shop 页脚部分-->
<!--==================================================-->
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
<!--==================================================-->
<!-- End Cat Shop Footer Section Here -->
<!--==================================================-->





<!--==================================================-->
<!-- Start Cat Shop White Sidebar Section Here -->
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
            <li><a href="cart.html" class="btn btn_primary text-uppercase">查看购物车</a></li>
            <li><a href="" class="btn btn_border border_black text-uppercase">收款处</a></li>
        </ul>
    </div>
    <div class="cart_sidebar_overlay"></div>
</div>
<!--==================================================-->
<!-- End Cat Shop Cart Sidebar Section Here -->
<!--==================================================-->






<!--==================================================-->
<!-- End Cat Shop Bar Sidebar Section Here -->
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
<!--==================================================-->
<!-- End Cat Shop Bar Sidebar Section Here -->
<!--==================================================-->






<!--==================================================-->
<!-- Start scrollup Section Here-->
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
<!-- Ends scrollup Section Here -->
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
<!-- Custom JS CDN -->
<script src="../static/js/custom.js"></script>
<!-- Slick Js CDN -->
<script src="../static/js/slick.min.js"></script>

</body>

</html>
