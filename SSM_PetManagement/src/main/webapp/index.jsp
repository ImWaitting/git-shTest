<%--
  Created by IntelliJ IDEA.
  User: Fsq01
  Date: 2024/4/17
  Time: 10:26
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
    <link rel="stylesheet" href="static/css/bootstrap.min.css" type="text/css" media="all">
    <!-- Animate CSS Link -->
    <link rel="stylesheet" href="static/css/animate.css" type="text/css" media="all">
    <!-- Animated text CSS Link -->
    <link rel="stylesheet" href="static/css/animated-text.css" type="text/css" media="all">
    <!-- Font Awesome CSS Link -->
    <link rel="stylesheet" href="static/css/all.min.css" type="text/css" media="all">
    <!-- Font Flaticon CSS Link -->
    <link rel="stylesheet" href="static/css/flaticon.css" type="text/css" media="all">
    <!-- Flaticon CDN Link -->
    <link rel='stylesheet' href='static/css/uicons-solid-straight.css'>
    <!-- Custom Default CSS Link -->
    <link rel="stylesheet" href="static/css/custom-default.css" type="text/css" media="all">
    <!-- Meanmenu CSS Link -->
    <link rel="stylesheet" href="static/css/meanmenu.min.css" type="text/css" media="all">
    <!-- Venobox CSS Link -->
    <link rel="stylesheet" href="static/css/venobox.css" type="text/css" media="all">
    <!-- Bootstrap Icons Link -->
    <link rel="stylesheet" href="static/css/bootstrap-icons.css" type="text/css" media="all">
    <!-- Slick CSS Link -->
    <link rel="stylesheet" href="static/css/slick.css" type="text/css" media="all">
    <!-- Custom Style CSS Link -->
    <link rel="stylesheet" href="static/css/style.css" type="text/css" media="all">
    <!-- Responsive CSS Link -->
    <link rel="stylesheet" href="static/css/responsive.css" type="text/css" media="all">


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
<!--========= End Prealoader ==============-->




<!--==================================================-->
<!-- 启动 Cat 商店标题菜单部分 -->
<!--==================================================-->
<header class="header-manu-section" id="header-sticky">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-2">
                <div class="Cat Shop-logo ">
                    <a href="#" title="Cat Master"><img src="static/picture/cat-logo.png" alt="logo"></a>
                </div>
            </div>
            <div class="col-lg-5">
                <nav class="header-menu ">
                    <ul>
                        <li><a href="#" class="active">首页 <i class="fas fa-chevron-down"></i></a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="index.jsp">活动首页</a></li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="#">商店<i class="fas fa-chevron-down"></i></a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="shop.jsp">商店</a></li>
                                    <li><a href="store.jsp">注册店铺</a></li>
                                    <li><a href="product.jsp">店铺管理</a></li>
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
                        <li><a href="#">用户<i class="fas fa-chevron-down"></i></a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="customer.jsp">个人中心</a></li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="contact.html">联系</a></li>
                        <li>${sessionScope.customer.nickName}</li>
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
                                <!--<small class="cart_counter"></small>-->
                            </button>
                            </li>
                            <li><a href="/login.jsp">登录,注册</a></li>
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
<!-- End Cat Shop Header 主要部分-->
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
                        <li><a href="index.html">首页 01</a></li>
                        <li><a href="index2.html">首页 02</a></li>
                    </ul>
                </li>
                <li><a href="#">商店 </a>
                    <ul class="sub-menu">
                        <li><a href="#">商店</a></li>
                        <li><a href="shop-register.html">注册店铺</a></li>
                    </ul>
                </li>
                <li class="menu-item-has-children"><a href="#">其他</a>
                    <ul class="sub-menu">
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
                </li>
                <li class="menu-item-has-children"><a href="#">博客</a>
                    <ul class="sub-menu">
                        <li><a href="blog.html">博客网格</a></li>
                        <li><a href="blog-list.html">博客列表</a></li>
                        <li><a href="blog-details.html">博客详细信息</a></li>
                    </ul>
                </li>
                <li><a href="contact.html">联系</a></li>
            </ul>
        </nav>
    </div>
</div>
<!--==================================================-->
<!-- 结束主菜单区域 -->
<!--==================================================-->





<!--==================================================-->
<!-- Start Cat Shop Banner Section Here -->
<!--==================================================-->
<section class="banner-slider">
    <div class="banner-section">
        <div class="banner-bg">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="banner-content">
                            <div class="banner-sub-title">
                                <h6>更好的卖家</h6>
                            </div>
                            <div class="banner-title">
                                <h1>毛毡猫 <span>床</span> 为
                                    室内猫...</h1>
                            </div>
                            <div class="banner-desc">
                                <p>有许多 variatins 段落是我们最畅销的
                                    室内猫有些形式幽默在线课程。</p>
                            </div>
                            <div class="banner-btn cat-shop-btn">
                                <a href="contact.html">准备开始 <i class="bi bi-arrow-right-short"></i> <span></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="banner-thumb">
                            <img src="static/picture/banner-thumb7.png" data-speed='4' class="layer" alt="thumb">
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-shape">
                <div class="banner-shape1">
                    <img src="static/picture/banner-shape.png" alt="shape">
                </div>
                <div class="banner-shape2">
                    <img src="static/picture/banner-shape2.png" alt="shape">
                </div>

                <div class="banner-shape3">
                    <img src="static/picture/banner-shape3.png" alt="shape">
                </div>
                <div class="banner-shape4">
                    <img src="static/picture/banner-shape4.png" alt="shape">
                </div>
                <div class="banner-shape5">
                    <img src="static/picture/banner-shape5.png" alt="shape">
                </div>
                <div class="banner-shape6">
                    <img src="static/picture/banner-shape2.png" alt="shape">
                </div>
            </div>
        </div>
    </div>
    <div class="banner-section">
        <div class="banner-bg">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="banner-content">
                            <div class="banner-sub-title">
                                <h6>更好的卖家</h6>
                            </div>
                            <div class="banner-title">
                                <h1>毛毡猫 <span>床</span> 为
                                    室内猫...</h1>
                            </div>
                            <div class="banner-desc">
                                <p>有许多 variatins 段落是我们最畅销的
                                    室内猫有些形式幽默在线课程。</p>
                            </div>
                            <div class="banner-btn cat-shop-btn">
                                <a href="contact.html">准备开始<i class="bi bi-arrow-right-short"></i> <span></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="banner-thumb">
                            <img src="static/picture/banner-thumb2.png" data-speed='4' class="layer" alt="thumb">
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-shape">
                <div class="banner-shape1">
                    <img src="static/picture/banner-shape.png" alt="shape">
                </div>
                <div class="banner-shape2">
                    <img src="static/picture/banner-shape2.png" alt="shape">
                </div>

                <div class="banner-shape3">
                    <img src="static/picture/banner-shape3.png" alt="shape">
                </div>
                <div class="banner-shape4">
                    <img src="static/picture/banner-shape4.png" alt="shape">
                </div>
                <div class="banner-shape5">
                    <img src="static/picture/banner-shape5.png" alt="shape">
                </div>
                <div class="banner-shape6">
                    <img src="static/picture/banner-shape2.png" alt="shape">
                </div>
            </div>
        </div>
    </div>
    <div class="banner-section">
        <div class="banner-bg">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="banner-content">
                            <div class="banner-sub-title">
                                <h6>更好的卖家</h6>
                            </div>
                            <div class="banner-title">
                                <h1>毛毡猫 <span>床</span> 为
                                    室内猫...</h1>
                            </div>
                            <div class="banner-desc">
                                <p>有许多 variatins 段落是我们最畅销的
                                    室内猫有些形式幽默在线课程。</p>
                            </div>
                            <div class="banner-btn cat-shop-btn">
                                <a href="contact.html">准备开始 <i class="bi bi-arrow-right-short"></i> <span></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="banner-thumb">
                            <img src="static/picture/banner-thumb.png" data-speed='4' class="layer" alt="thumb">
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-shape">
                <div class="banner-shape1">
                    <img src="static/picture/banner-shape.png" alt="shape">
                </div>
                <div class="banner-shape2">
                    <img src="static/picture/banner-shape2.png" alt="shape">
                </div>

                <div class="banner-shape3">
                    <img src="static/picture/banner-shape3.png" alt="shape">
                </div>
                <div class="banner-shape4">
                    <img src="static/picture/banner-shape4.png" alt="shape">
                </div>
                <div class="banner-shape5">
                    <img src="static/picture/banner-shape5.png" alt="shape">
                </div>
                <div class="banner-shape6">
                    <img src="static/picture/banner-shape2.png" alt="shape">
                </div>
            </div>
        </div>
    </div>
    <div class="banner-section">
        <div class="banner-bg">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="banner-content">
                            <div class="banner-sub-title">
                                <h6>更好的卖家</h6>
                            </div>
                            <div class="banner-title">
                                <h1>毛毡猫<span>床</span> 为
                                    室内猫...</h1>
                            </div>
                            <div class="banner-desc">
                                <p>有许多 variatins 段落是我们最畅销的
                                    室内猫有些形式幽默在线课程。</p>
                            </div>
                            <div class="banner-btn cat-shop-btn">
                                <a href="contact.html">准备开始 <i class="bi bi-arrow-right-short"></i> <span></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="banner-thumb">
                            <img src="static/picture/banner-thumb4.png" data-speed='4' class="layer" alt="thumb">
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-shape">
                <div class="banner-shape1">
                    <img src="static/picture/banner-shape.png" alt="shape">
                </div>
                <div class="banner-shape2">
                    <img src="static/picture/banner-shape2.png" alt="shape">
                </div>

                <div class="banner-shape3">
                    <img src="static/picture/banner-shape3.png" alt="shape">
                </div>
                <div class="banner-shape4">
                    <img src="static/picture/banner-shape4.png" alt="shape">
                </div>
                <div class="banner-shape5">
                    <img src="static/picture/banner-shape5.png" alt="shape">
                </div>
                <div class="banner-shape6">
                    <img src="static/picture/banner-shape2.png" alt="shape">
                </div>
            </div>
        </div>
    </div>
    <div class="banner-section">
        <div class="banner-bg">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="banner-content">
                            <div class="banner-sub-title">
                                <h6>更好的卖家</h6>
                            </div>
                            <div class="banner-title">
                                <h1>毛毡猫<span>床</span> 为
                                    室内猫...</h1>
                            </div>
                            <div class="banner-desc">
                                <p>有许多 variatins 段落是我们最畅销的
                                    室内猫有些形式幽默在线课程。</p>
                            </div>
                            <div class="banner-btn cat-shop-btn">
                                <a href="contact.html">准备开始 <i class="bi bi-arrow-right-short"></i> <span></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="banner-thumb">
                            <img src="static/picture/banner-thumb3.png" data-speed='4' class="layer" alt="thumb">
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-shape">
                <div class="banner-shape1">
                    <img src="static/picture/banner-shape.png" alt="shape">
                </div>
                <div class="banner-shape2">
                    <img src="static/picture/banner-shape2.png" alt="shape">
                </div>

                <div class="banner-shape3">
                    <img src="static/picture/banner-shape3.png" alt="shape">
                </div>
                <div class="banner-shape4">
                    <img src="static/picture/banner-shape4.png" alt="shape">
                </div>
                <div class="banner-shape5">
                    <img src="static/picture/banner-shape5.png" alt="shape">
                </div>
                <div class="banner-shape6">
                    <img src="static/picture/banner-shape2.png" alt="shape">
                </div>
            </div>
        </div>
    </div>
</section>
<!--==================================================-->
<!-- End Cat Shop Banner Section Here -->
<!--==================================================-->






<!--==================================================-->
<!-- Start Cat Shop Category Section Here -->
<!--==================================================-->
<section class="category-section">
    <div class="container">
        <div class="row text-center">
            <div class="col-lg-12">
                <div class="cat-shop-section-title wow fadeInUp">
                    <h1>返回首页 <span>类别</span></h1>
                </div>
                <div class="category-items">
                    <div class="category-item wow fadeInUp">
                        <div class="category-thumb">
                            <img src="static/picture/category-thumb.png" alt="thumb">
                        </div>
                        <div class="category-content">
                            <div class="category-title">
                                <h4>兔</h4>
                            </div>
                            <div class="category-capecity">
                                <p>6 产品</p>
                            </div>
                        </div>
                    </div>
                    <div class="category-item wow fadeInUp" data-wow-delay=".2s">
                        <div class="category-thumb">
                            <img src="static/picture/category-thumb2.png" alt="thumb">
                        </div>
                        <div class="category-content">
                            <div class="category-title">
                                <h4>鱼</h4>
                            </div>
                            <div class="category-capecity">
                                <p>15 产品</p>
                            </div>
                        </div>
                    </div>
                    <div class="category-item wow fadeInUp" data-wow-delay=".4s">
                        <div class="category-thumb">
                            <img src="static/picture/category-thumb3.png" alt="thumb">
                        </div>
                        <div class="category-content">
                            <div class="category-title">
                                <h4>猫</h4>
                            </div>
                            <div class="category-capecity">
                                <p>5 产品</p>
                            </div>
                        </div>
                    </div>
                    <div class="category-item wow fadeInUp" data-wow-delay=".6s">
                        <div class="category-thumb">
                            <img src="static/picture/category-thumb4.png" alt="thumb">
                        </div>
                        <div class="category-content">
                            <div class="category-title">
                                <h4>鸟</h4>
                            </div>
                            <div class="category-capecity">
                                <p>25 产品</p>
                            </div>
                        </div>
                    </div>
                    <div class="category-item wow fadeInUp" data-wow-delay=".8s">
                        <div class="category-thumb">
                            <img src="static/picture/category-thumb5.png" alt="thumb">
                        </div>
                        <div class="category-content">
                            <div class="category-title">
                                <h4>猫</h4>
                            </div>
                            <div class="category-capecity">
                                <p>5 产品</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="category-single-box style1 wow fadeInUp">
                    <div class="category-box-content">
                        <div class="category-box-sub-title">
                            <h6>出售 70%</h6>
                        </div>
                        <div class="category-box-title">
                            <h4>赠送礼物
                                选择</h4>
                        </div>
                        <div class="category-box-btn cat-shop-btn">
                            <a href="shop.html">显示全部 <i class="bi bi-arrow-right-short"></i> <span></span></a>
                        </div>
                    </div>
                    <div class="category-box-thumb">
                        <img src="static/picture/category-box-thumb.png" alt="thumb">
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="category-single-box style2 wow fadeInUp" data-wow-delay=".3s">
                    <div class="category-box-content">
                        <div class="category-box-sub-title">
                            <h6>数字礼品卡</h6>
                        </div>
                        <div class="category-box-title">
                            <h4>高达 80% 的
                                零售</h4>
                        </div>
                        <div class="category-box-btn cat-shop-btn">
                            <a href="shop.html">显示全部 <i class="bi bi-arrow-right-short"></i> <span></span></a>
                        </div>
                    </div>
                    <div class="category-box-thumb">
                        <img src="static/picture/category-box-thumb2.png" alt="thumb">
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="category-single-box style3 wow fadeInUp" data-wow-delay=".6s">
                    <div class="category-box-content">
                        <div class="category-box-sub-title">
                            <h6>销售新鲜食品</h6>
                        </div>
                        <div class="category-box-title">
                            <h4>猫最好的汤包</h4>
                        </div>
                        <div class="category-box-btn cat-shop-btn">
                            <a href="shop.html">显示全部 <i class="bi bi-arrow-right-short"></i> <span></span></a>
                        </div>
                    </div>
                    <div class="category-box-thumb">
                        <img src="static/picture/category-box-thumb3.png" alt="thumb">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--==================================================-->
<!-- End Cat Shop Category Section Here -->
<!--==================================================-->






<!--==================================================-->
<!-- Start Cat Shop Collection Section Here -->
<!--==================================================-->
<section class="collection-section">
    <div class="container ">
        <div class="row">
            <div class="col-lg-12">
                <div class="cat-shop-section-title wow fadeInUp">
                    <h1>春天宠物 <span>收集</span></h1>
                </div>
            </div>
        </div>
        <div class="collection-box">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="collection-single-box wow fadeInUp">
                        <div class="collection-box-thumb">
                            <img src="static/picture/collection-thumb.jpeg" alt="thumb">
                        </div>
                        <div class="collection-box-content">
                            <div class="collection-icon">
                                <ul>
                                    <li><button class="product-action-btn whiteListConfirm" data-tooltip-text="Added to Whitelist"><i class="far fa-heart"></i></button></li>
                                    <li><button class="product-action-btn" data-tooltip-text="Quick View" data-bs-toggle="modal" data-bs-target="#exampleProductModal"><i class="fas fa-search"></i></button></li>
                                    <li><button class="product-action-btn cartConfirm" data-tooltip-text="Add to Cart"><i class="bi bi-cart4"></i></button></li>
                                </ul>
                            </div>
                            <div class="collection-box-title">
                                <h6>塑料汤容器</h6>
                            </div>
                            <div class="collection-box-price">
                                <h6>$ 39.00</h6>
                            </div>
                        </div>
                    </div>
                </div><div class="col-lg-3 col-md-6">
                <div class="collection-single-box wow fadeInUp" data-wow-delay=".2s">
                    <div class="collection-box-thumb">
                        <img src="static/picture/collection-thumb2.jpeg" alt="thumb">
                    </div>
                    <div class="collection-box-content">
                        <div class="collection-icon">
                            <ul>
                                <li><button class="product-action-btn whiteListConfirm" data-tooltip-text="Added to Whitelist"><i class="far fa-heart"></i></button></li>
                                <li><button class="product-action-btn" data-tooltip-text="Quick View" data-bs-toggle="modal" data-bs-target="#exampleProductModal"><i class="fas fa-search"></i></button></li>
                                <li><button class="product-action-btn cartConfirm" data-tooltip-text="Add to Cart"><i class="bi bi-cart4"></i></button></li>
                            </ul>
                        </div>
                        <div class="collection-box-title">
                            <h6>PECTCT 猫粮</h6>
                        </div>
                        <div class="collection-box-price">
                            <h6>$ 29.00 <del>$ 39.00</del></h6>
                        </div>
                    </div>
                </div>
            </div><div class="col-lg-3 col-md-6">
                <div class="collection-single-box wow fadeInUp" data-wow-delay=".4s">
                    <div class="collection-box-thumb">
                        <img src="static/picture/collection-thumb3.jpeg" alt="thumb">
                    </div>
                    <div class="collection-box-content">
                        <div class="collection-icon">
                            <ul>
                                <li><button class="product-action-btn whiteListConfirm" data-tooltip-text="Added to Whitelist"><i class="far fa-heart"></i></button></li>
                                <li><button class="product-action-btn" data-tooltip-text="Quick View" data-bs-toggle="modal" data-bs-target="#exampleProductModal"><i class="fas fa-search"></i></button></li>
                                <li><button class="product-action-btn cartConfirm" data-tooltip-text="Add to Cart"><i class="bi bi-cart4"></i></button></li>
                            </ul>
                        </div>
                        <div class="collection-box-title">
                            <h6>纸汤容器</h6>
                        </div>
                        <div class="collection-box-price">
                            <h6>$ 19.00</h6>
                        </div>
                    </div>
                </div>
            </div>
                <div class="col-lg-3 col-md-6">
                    <div class="collection-single-box wow fadeInUp" data-wow-delay=".6s">
                        <div class="collection-box-thumb">
                            <img src="static/picture/collection-thumb4.jpeg" alt="thumb">
                        </div>
                        <div class="collection-box-content">
                            <div class="collection-icon">
                                <ul>
                                    <li><button class="product-action-btn whiteListConfirm" data-tooltip-text="Added to Whitelist"><i class="far fa-heart"></i></button></li>
                                    <li><button class="product-action-btn" data-tooltip-text="Quick View" data-bs-toggle="modal" data-bs-target="#exampleProductModal"><i class="fas fa-search"></i></button></li>
                                    <li><button class="product-action-btn cartConfirm" data-tooltip-text="Add to Cart"><i class="bi bi-cart4"></i></button></li>
                                </ul>
                            </div>
                            <div class="collection-box-title">
                                <h6>PAIMO-MD 猫奶</h6>
                            </div>
                            <div class="collection-box-price">
                                <h6>$ 29.00</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--==================================================-->
<!-- End Cat Shop collection Section Here -->
<!--==================================================-->





<!--==================================================-->
<!-- Start Cat Shop Brand Section Here -->
<!--==================================================-->
<section class="brand-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="cat-shop-section-title wow fadeInUp">
                    <h1>流行 <span>品牌</span></h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="brand-slider align-items-center">
                <div class="col-lg-12">
                    <div class="brand-thumb">
                        <img src="static/picture/brand-thumb.png" alt="thumb">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="brand-thumb">
                        <img src="static/picture/brand-thumb2.png" alt="thumb">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="brand-thumb">
                        <img src="static/picture/brand-thumb3.png" alt="thumb">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="brand-thumb">
                        <img src="static/picture/brand-thumb4.png" alt="thumb">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="brand-thumb">
                        <img src="static/picture/brand-thumb5.png" alt="thumb">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="brand-thumb">
                        <img src="static/picture/brand-thumb.png" alt="thumb">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="brand-thumb">
                        <img src="static/picture/brand-thumb2.png" alt="thumb">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="brand-thumb">
                        <img src="static/picture/brand-thumb3.png" alt="thumb">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="brand-thumb">
                        <img src="static/picture/brand-thumb4.png" alt="thumb">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="brand-thumb">
                        <img src="static/picture/brand-thumb5.png" alt="thumb">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--==================================================-->
<!-- End Cat Shop Brand Section Here -->
<!--==================================================-->






<!--==================================================-->
<!-- Start Cat Shop Discount Section Here -->
<!--==================================================-->
<div class="discount-bg">
    <div class="container">
        <section class="discount-section">
            <div class="row">
                <div class="col-lg-6">
                    <div class="discount-content">
                        <div class="cat-shop-section-title wow fadeInRight">
                            <h1>销售高达 <span>3折</span></h1>
                        </div>
                        <div class="discount-desc wow fadeInRight" data-wow-delay=".2s">
                            <p>
                                通过独特的对齐方式，以及时的价值为目标，使用商店
                                诚信追求企业人力资本后高效到我们
                                流程改进我们的宠物店。
                            </p>
                        </div>
                        <div class="discount-btn cat-shop-btn wow fadeInRight" data-wow-delay=".4s">
                            <a href="#">立即购买 <i class="bi bi-arrow-right-short"></i> <span></span></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6"></div>
            </div>
        </section>
    </div>
</div>
<!--==================================================-->
<!-- End Cat Shop Discount Section Here -->
<!--==================================================-->






<!--==================================================-->
<!-- Start Cat Shop Service Section Here -->
<!--==================================================-->
<section class="product-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="cat-shop-section-title wow fadeInUp">
                    <h1>畅销 <span>产品</span></h1>
                </div>
            </div>
        </div>
        <div class="product-box">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="collection-single-box wow fadeInUp">
                        <div class="collection-box-thumb">
                            <img src="static/picture/collection-thumb.jpeg" alt="thumb">
                        </div>
                        <div class="collection-box-content">
                            <div class="collection-icon">
                                <ul>
                                    <li><button class="product-action-btn whiteListConfirm" data-tooltip-text="Added to Whitelist"><i class="far fa-heart"></i></button></li>
                                    <li><button class="product-action-btn" data-tooltip-text="Quick View" data-bs-toggle="modal" data-bs-target="#exampleProductModal"><i class="fas fa-search"></i></button></li>
                                    <li><button class="product-action-btn cartConfirm" data-tooltip-text="Add to Cart"><i class="bi bi-cart4"></i></button></li>
                                </ul>
                            </div>
                            <div class="collection-box-title">
                                <h6>纸牛奶容器</h6>
                            </div>
                            <div class="collection-box-price">
                                <h6>$ 39.00</h6>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="collection-single-box wow fadeInUp" data-wow-delay=".2s">
                        <div class="collection-box-thumb">
                            <img src="static/picture/collection-thumb2.jpeg" alt="thumb">
                        </div>
                        <div class="collection-box-content">
                            <div class="collection-icon">
                                <ul>
                                    <li><button class="product-action-btn whiteListConfirm" data-tooltip-text="Added to Whitelist"><i class="far fa-heart"></i></button></li>
                                    <li><button class="product-action-btn" data-tooltip-text="Quick View" data-bs-toggle="modal" data-bs-target="#exampleProductModal"><i class="fas fa-search"></i></button></li>
                                    <li><button class="product-action-btn cartConfirm" data-tooltip-text="Add to Cart"><i class="bi bi-cart4"></i></button></li>
                                </ul>
                            </div>
                            <div class="collection-box-title">
                                <h6>塑料汤容器</h6>
                            </div>
                            <div class="collection-box-price">
                                <h6>$ 29.00 <del>$ 39.00</del></h6>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="collection-single-box wow fadeInUp" data-wow-delay=".4s">
                        <div class="collection-box-thumb">
                            <img src="static/picture/collection-thumb3.jpeg" alt="thumb">
                        </div>
                        <div class="collection-box-content">
                            <div class="collection-icon">
                                <ul>
                                    <li><button class="product-action-btn whiteListConfirm" data-tooltip-text="Added to Whitelist"><i class="far fa-heart"></i></button></li>
                                    <li><button class="product-action-btn" data-tooltip-text="Quick View" data-bs-toggle="modal" data-bs-target="#exampleProductModal"><i class="fas fa-search"></i></button></li>
                                    <li><button class="product-action-btn cartConfirm" data-tooltip-text="Add to Cart"><i class="bi bi-cart4"></i></button></li>
                                </ul>
                            </div>
                            <div class="collection-box-title">
                                <h6>PIMOT 猫粮</h6>
                            </div>
                            <div class="collection-box-price">
                                <h6>$ 19.00</h6>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="collection-single-box wow fadeInUp" data-wow-delay=".6s">
                        <div class="collection-box-thumb">
                            <img src="static/picture/collection-thumb4.jpeg" alt="thumb">
                        </div>
                        <div class="collection-box-content">
                            <div class="collection-icon">
                                <ul>
                                    <li><button class="product-action-btn whiteListConfirm" data-tooltip-text="Added to Whitelist"><i class="far fa-heart"></i></button></li>
                                    <li><button class="product-action-btn" data-tooltip-text="Quick View" data-bs-toggle="modal" data-bs-target="#exampleProductModal"><i class="fas fa-search"></i></button></li>
                                    <li><button class="product-action-btn cartConfirm" data-tooltip-text="Add to Cart"><i class="bi bi-cart4"></i></button></li>
                                </ul>
                            </div>
                            <div class="collection-box-title">
                                <h6>猫咪新鲜食品</h6>
                            </div>
                            <div class="collection-box-price">
                                <h6>$ 29.00</h6>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="collection-single-box wow fadeInUp">
                        <div class="collection-box-thumb">
                            <img src="static/picture/collection-thumb5.jpeg" alt="thumb">
                        </div>
                        <div class="collection-box-content">
                            <div class="collection-icon">
                                <ul>
                                    <li><button class="product-action-btn whiteListConfirm" data-tooltip-text="Added to Whitelist"><i class="far fa-heart"></i></button></li>
                                    <li><button class="product-action-btn" data-tooltip-text="Quick View" data-bs-toggle="modal" data-bs-target="#exampleProductModal"><i class="fas fa-search"></i></button></li>
                                    <li><button class="product-action-btn cartConfirm" data-tooltip-text="Add to Cart"><i class="bi bi-cart4"></i></button></li>
                                </ul>
                            </div>
                            <div class="collection-box-title">
                                <h6>Secict Helthy 食品</h6>
                            </div>
                            <div class="collection-box-price">
                                <h6>$ 39.00</h6>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="collection-single-box wow fadeInUp" data-wow-delay=".2s">
                        <div class="collection-box-thumb">
                            <img src="static/picture/collection-thumb6.jpeg" alt="thumb">
                        </div>
                        <div class="collection-box-content">
                            <div class="collection-icon">
                                <ul>
                                    <li><button class="product-action-btn whiteListConfirm" data-tooltip-text="Added to Whitelist"><i class="far fa-heart"></i></button></li>
                                    <li><button class="product-action-btn" data-tooltip-text="Quick View" data-bs-toggle="modal" data-bs-target="#exampleProductModal"><i class="fas fa-search"></i></button></li>
                                    <li><button class="product-action-btn cartConfirm" data-tooltip-text="Add to Cart"><i class="bi bi-cart4"></i></button></li>
                                </ul>
                            </div>
                            <div class="collection-box-title">
                                <h6>Fairyblids 猫粮</h6>
                            </div>
                            <div class="collection-box-price">
                                <h6>$ 29.00 <del>$ 39.00</del></h6>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="collection-single-box wow fadeInUp" data-wow-delay=".4s">
                        <div class="collection-box-thumb">
                            <img src="static/picture/collection-thumb7.jpeg" alt="thumb">
                        </div>
                        <div class="collection-box-content">
                            <div class="collection-icon">
                                <ul>
                                    <li><button class="product-action-btn whiteListConfirm" data-tooltip-text="Added to Whitelist"><i class="far fa-heart"></i></button></li>
                                    <li><button class="product-action-btn" data-tooltip-text="Quick View" data-bs-toggle="modal" data-bs-target="#exampleProductModal"><i class="fas fa-search"></i></button></li>
                                    <li><button class="product-action-btn cartConfirm" data-tooltip-text="Add to Cart"><i class="bi bi-cart4"></i></button></li>
                                </ul>
                            </div>
                            <div class="collection-box-title">
                                <h6>婴儿猫粮</h6>
                            </div>
                            <div class="collection-box-price">
                                <h6>$ 19.00</h6>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="collection-single-box wow fadeInUp" data-wow-delay=".6s">
                        <div class="collection-box-thumb">
                            <img src="static/picture/collection-thumb8.jpeg" alt="thumb">
                        </div>
                        <div class="collection-box-content">
                            <div class="collection-icon">
                                <ul>
                                    <li><button class="product-action-btn whiteListConfirm" data-tooltip-text="Added to Whitelist"><i class="far fa-heart"></i></button></li>
                                    <li><button class="product-action-btn" data-tooltip-text="Quick View" data-bs-toggle="modal" data-bs-target="#exampleProductModal"><i class="fas fa-search"></i></button></li>
                                    <li><button class="product-action-btn cartConfirm" data-tooltip-text="Add to Cart"><i class="bi bi-cart4"></i></button></li>
                                </ul>
                            </div>
                            <div class="collection-box-title">
                                <h6>Pegstant 猫粮</h6>
                            </div>
                            <div class="collection-box-price">
                                <h6>$ 29.00</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--==================================================-->
<!-- End Cat Shop Service Section Here -->
<!--==================================================-->





<!--==================================================-->
<!-- Start Cat Shop Testimonial Section Here -->
<!--==================================================-->
<div class="testimonial-slider">
    <section class="testimonial-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-4">
                    <div class="testimonial-thumb">
                        <img src="static/picture/customer-thumb.png" alt="thumb">
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="testimonial-content">
                        <div class="cat-shop-section-title">
                            <h1>快乐 <span>客户</span></h1>
                        </div>
                        <div class="testimonial-desc">
                            <p>Yrese aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet
                                nonummy id, imperdiet feugiat, pede. Sed lectus. Donec mol aenean ut eros et nisl
                                sagittis vestibulum. Nullam nulla eros, ultricies</p>
                        </div>
                        <div class="testimonial-profile-name">
                            <h5>约翰·阿布拉胡姆 <span>客户</span></h5>
                        </div>
                        <div class="testimonnial-rating">
                            <ul>
                                <li><i class="bi bi-star-fill"></i></li>
                                <li><i class="bi bi-star-fill"></i></li>
                                <li><i class="bi bi-star-fill"></i></li>
                                <li><i class="bi bi-star-fill"></i></li>
                                <li><i class="bi bi-star-fill"></i></li>
                            </ul>
                        </div>
                        <div class="testimonial-shape">
                            <i class="fas fa-quote-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="testimonial-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-4">
                    <div class="testimonial-thumb">
                        <img src="static/picture/customer-thumb2.png" alt="thumb">
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="testimonial-content">
                        <div class="cat-shop-section-title">
                            <h1>快乐<span>客户</span></h1>
                        </div>
                        <div class="testimonial-desc">
                            <p>Yrese aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet
                                nonummy id, imperdiet feugiat, pede. Sed lectus. Donec mol aenean ut eros et nisl
                                sagittis vestibulum. Nullam nulla eros, ultricies</p>
                        </div>
                        <div class="testimonial-profile-name">
                            <h5>玛丽琳·希金斯 <span>客户</span></h5>
                        </div>
                        <div class="testimonnial-rating">
                            <ul>
                                <li><i class="bi bi-star-fill"></i></li>
                                <li><i class="bi bi-star-fill"></i></li>
                                <li><i class="bi bi-star-fill"></i></li>
                                <li><i class="bi bi-star-fill"></i></li>
                                <li><i class="bi bi-star-fill"></i></li>
                            </ul>
                        </div>
                        <div class="testimonial-shape">
                            <i class="fas fa-quote-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="testimonial-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-4">
                    <div class="testimonial-thumb wow fadeInRight">
                        <img src="static/picture/customer-thumb3.png" alt="thumb">
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="testimonial-content">
                        <div class="cat-shop-section-title">
                            <h1>快乐 <span>客户</span></h1>
                        </div>
                        <div class="testimonial-desc">
                            <p>Yrese aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet
                                nonummy id, imperdiet feugiat, pede. Sed lectus. Donec mol aenean ut eros et nisl
                                sagittis vestibulum. Nullam nulla eros, ultricies</p>
                        </div>
                        <div class="testimonial-profile-name">
                            <h5>加里·圣地亚哥 <span>客户</span></h5>
                        </div>
                        <div class="testimonnial-rating">
                            <ul>
                                <li><i class="bi bi-star-fill"></i></li>
                                <li><i class="bi bi-star-fill"></i></li>
                                <li><i class="bi bi-star-fill"></i></li>
                                <li><i class="bi bi-star-fill"></i></li>
                                <li><i class="bi bi-star-fill"></i></li>
                            </ul>
                        </div>
                        <div class="testimonial-shape">
                            <i class="fas fa-quote-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!--==================================================-->
<!-- End Cat Shop Testimonial Section Here -->
<!--==================================================-->





<!--==================================================-->
<!-- Start Cat Shop Latest News Section Here -->
<!--==================================================-->
<section class="latest-news-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="cat-shop-section-title wow fadeInUp">
                    <h1>最新消息 <span>信</span></h1>
                </div>
            </div>
        </div>
        <div class="latest-news-box">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="latest-news-single-box wow fadeInUp">
                        <div class="latest-news-box-thumb">
                            <img src="static/picture/latest-news-thumb.jpg" alt="thumb">
                        </div>
                        <div class="latest-news-box-content">
                            <div class="latest-news-content-top">
                                <div class="latest-news-post-by">
                                    <h6><i class="far fa-user"></i>约翰·拉斯詹（John G. Rathjen）</h6>
                                </div>
                                <div class="latest-news-comment">
                                    <h6><i class="bi bi-chat-dots"></i>评论</h6>
                                </div>
                            </div>
                            <div class="latest-news-title">
                                <a href="blog-details.html">如何选择合适的欺凌棒
                                    为了你的狗</a>
                            </div>
                            <div class="latest-news-desc">
                                <p>Lorem ipsum dolor consecttur adipiscing eaxm
                                    elit aenean pharetra mollis pretium.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-news-single-box wow fadeInUp" data-wow-delay=".3s">
                        <div class="latest-news-box-thumb">
                            <img src="static/picture/latest-news-thumb7.jpg" alt="thumb">
                        </div>
                        <div class="latest-news-box-content">
                            <div class="latest-news-content-top">
                                <div class="latest-news-post-by">
                                    <h6><i class="far fa-user"></i>瑞安·亨利（Ryan R.Henry）</h6>
                                </div>
                                <div class="latest-news-comment">
                                    <h6><i class="bi bi-chat-dots"></i>评论</h6>
                                </div>
                            </div>
                            <div class="latest-news-title">
                                <a href="blog-details.html">喜马拉雅牦牛咀嚼物：11 个好处
                                    你需要知道的</a>
                            </div>
                            <div class="latest-news-desc">
                                <p>Lorem ipsum dolor consecttur adipiscing eaxm
                                    elit aenean pharetra mollis pretium.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-news-single-box wow fadeInUp" data-wow-delay=".6s">
                        <div class="latest-news-box-thumb">
                            <img src="static/picture/latest-news-thumb3.jpg" alt="thumb">
                        </div>
                        <div class="latest-news-box-content">
                            <div class="latest-news-content-top">
                                <div class="latest-news-post-by">
                                    <h6><i class="far fa-user"></i>彼得·本纳</h6>
                                </div>
                                <div class="latest-news-comment">
                                    <h6><i class="bi bi-chat-dots"></i>评论</h6>
                                </div>
                            </div>
                            <div class="latest-news-title">
                                <a href="blog-details.html">Smashing Podcast 剧集
                                    维塔利·弗里德曼·杰伊</a>
                            </div>
                            <div class="latest-news-desc">
                                <p>Lorem ipsum dolor consecttur adipiscing eaxm
                                    elit aenean pharetra mollis pretium.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--==================================================-->
<!-- End Cat Shop 最新消息部分在这里 -->
<!--==================================================-->






<!--==================================================-->
<!-- 从这里开始 Cat Shop 品牌部分 -->
<!--==================================================-->
<div class="brand-section style2">
    <div class="container-fluid p-0">
        <div class="row">
            <div class="brand-slider2">
                <div class="col-lg-12">
                    <div class="brand2-thumb">
                        <img src="static/picture/brand2-thumb.png" alt="thumb">
                        <div class="brand2-content">
                            <a href="#">Instagram 动态</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="brand2-thumb">
                        <img src="static/picture/brand2-thumb2.png" alt="thumb">
                        <div class="brand2-content">
                            <a href="#">Instagram 动态</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="brand2-thumb">
                        <img src="static/picture/brand2-thumb3.png" alt="thumb">
                        <div class="brand2-content">
                            <a href="#">Instagram 动态</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="brand2-thumb">
                        <img src="static/picture/brand2-thumb4.png" alt="thumb">
                        <div class="brand2-content">
                            <a href="#">Instagram 动态</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="brand2-thumb">
                        <img src="static/picture/brand2-thumb5.png" alt="thumb">
                        <div class="brand2-content">
                            <a href="#">Instagram 动态</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="brand2-thumb">
                        <img src="static/picture/brand2-thumb3.png" alt="thumb">
                        <div class="brand2-content">
                            <a href="#">Instagram 动态</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--==================================================-->
<!-- End Cat Shop Brand Section Here -->
<!--==================================================-->





<!--==================================================-->
<!-- 在此处开始 Cat Shop 页脚部分-->
<!--==================================================-->
<footer class="footer-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 wow fadeInUp">
                <div class="footer-logo">
                    <a href="index.html" title="Cat Master"><img src="static/picture/cat-logo.png" alt="logo"></a>
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
                        <li><a href="#"><i class="bi bi-arrow-right"></i>畅销书</a></li>
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
            <img src="static/picture/footer-shape.png" alt="shape">
        </div>
        <div class="footer-shape2">
            <img src="static/picture/footer-shape2.png" alt="shape">
        </div>
        <div class="footer-shape3">
            <img src="static/picture/footer-shape3.png" alt="shape">
        </div>
        <div class="footer-shape4">
            <img src="static/picture/footer-shape3.png" alt="shape">
        </div>
        <div class="footer-shape5">
            <img src="static/picture/footer-shape.png" alt="shape">
        </div>
        <div class="footer-shape6">
            <img src="static/picture/footer-shape.png" alt="shape">
        </div>
        <div class="footer-shape7">
            <img src="static/picture/footer-shape_2.png" alt="shape">
        </div>
    </div>
</footer>
<!--==================================================-->
<!-- End Cat Shop Footer Section Here -->
<!--==================================================-->





<!--==================================================-->
<!-- 在此处开始 Cat Shop 白色侧边栏部分 -->
<!--==================================================-->
<div class="sidebar-menu-wrapper">
    <div class="white_sidebar">
        <button type="button" class="close_btn"><i class="fas fa-times"></i></button>
        <h2 class="heading_title text-uppercase">Your Whitelist</h2>

        <div class="white_items_list">
            <div class="white_item">
                <div class="item_image">
                    <img src="static/picture/collection-thumb8.jpeg" alt="image_not_found">
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
                    <img src="static/picture/collection-thumb7.jpeg" alt="image_not_found">
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
                    <img src="static/picture/collection-thumb6.jpeg" alt="image_not_found">
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
                    <img src="static/picture/collection-thumb5.jpeg" alt="image_not_found">
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
                        <img src="static/picture/collection-thumb4.jpeg" alt="thumb">
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
                        <img src="static/picture/collection-thumb3.jpeg" alt="thumb">
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
<!--==================================================-->
<!-- End Cat Shop Cart Sidebar Section Here -->
<!--==================================================-->





<!--==================================================-->
<!-- End Cat Shop Cart Sidebar Section Here -->
<!--==================================================-->
<div class="sidebar-menu-wrapper">
    <div class="cart_sidebar">
        <button type="button" class="close_btn"><i class="fas fa-times"></i></button>
        <h2 class="heading_title text-uppercase">Cart Items - <span>4</span></h2>

        <div class="cart_items_list">
            <div class="cart_item">
                <div class="item_image">
                    <img src="static/picture/collection-thumb.jpeg" alt="image_not_found">
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
                    <img src="static/picture/collection-thumb2.jpeg" alt="image_not_found">
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
                    <img src="static/picture/collection-thumb3.jpeg" alt="image_not_found">
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
                    <img src="static/picture/collection-thumb4.jpeg" alt="image_not_found">
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
            <li><a href="cart.html" class="btn btn_primary text-uppercase">View Cart</a></li>
            <li><a href="checkout.html" class="btn btn_border border_black text-uppercase">Checkout</a></li>
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
                            <a href="index-2.html"><img src="static/picture/cat-logo.png" alt="logo"></a>
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
                                        <a href="shop-2.html"><img src="static/picture/collection-thumb8.jpeg" alt="thumb"></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="widget-gallery-thumb">
                                        <a href="shop-2.html"><img src="static/picture/collection-thumb7.jpeg" alt="thumb"></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="widget-gallery-thumb">
                                        <a href="shop-2.html"><img src="static/picture/collection-thumb3.jpeg" alt="thumb"></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="widget-gallery-thumb">
                                        <a href="shop-2.html"><img src="static/picture/collection-thumb4.jpeg" alt="thumb"></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="widget-gallery-thumb">
                                        <a href="shop-2.html"><img src="static/picture/collection-thumb5.jpeg" alt="thumb"></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="widget-gallery-thumb">
                                        <a href="shop-2.html"><img src="static/picture/collection-thumb6.jpeg" alt="thumb"></a>
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
<!-- Start Quickview Popup Here -->
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
                                            <span class="single-product-badge-new">New</span>
                                        </div>
                                        <div class="single-product-badge-right">
                                            <span class="single-product-badge-sale">Sale:</span>
                                            <span class="single-product-badge-sale">11%</span>
                                        </div>
                                    </div>
                                    <img src="static/picture/collection-thumb5.jpeg" alt="Cat">
                                </div>
                                <div class="image-slide">
                                    <div class="item">
                                        <div class="single-product-badge-left">
                                            <span class="single-product-badge-new">New</span>
                                        </div>
                                        <div class="single-product-badge-right">
                                            <span class="single-product-badge-sale">Sale:</span>
                                            <span class="single-product-badge-sale"> 20%</span>
                                        </div>
                                    </div>
                                    <img src="static/picture/collection-thumb4.jpeg" alt="Cat">
                                </div>
                                <div class="image-slide">
                                    <div class="item">
                                        <div class="single-product-badge-left">
                                            <span class="single-product-badge-new">New</span>
                                        </div>
                                        <div class="single-product-badge-right">
                                            <span class="single-product-badge-sale">Sale:</span>
                                            <span class="single-product-badge-sale"> 5%</span>
                                        </div>
                                    </div>
                                    <img src="static/picture/collection-thumb3.jpeg" alt="Cat">
                                </div>
                                <div class="image-slide">
                                    <div class="item">
                                        <div class="single-product-badge-left">
                                            <span class="single-product-badge-new">Old</span>
                                        </div>
                                        <div class="single-product-badge-right">
                                            <span class="single-product-badge-sale">Sale:</span>
                                            <span class="single-product-badge-sale"> 20%</span>
                                        </div>
                                    </div>
                                    <img src="static/picture/collection-thumb.jpeg" alt="Cat">
                                </div>
                                <div class="image-slide">
                                    <div class="item">
                                        <div class="single-product-badge-left">
                                            <span class="single-product-badge-new">New</span>
                                        </div>
                                        <div class="single-product-badge-right">
                                            <span class="single-product-badge-sale">Sale:</span>
                                            <span class="single-product-badge-sale"> 11%</span>
                                        </div>
                                    </div>
                                    <img src="static/picture/collection-thumb2.jpeg" alt="Cat">
                                </div>
                            </div>
                            <!-- Product Image Slider End -->

                            <!-- Product Thumbnail Carousel Start -->
                            <div class="quick-slider-btn">
                                <div class="image-slide-btn">
                                    <img src="static/picture/collection-thumb3.jpeg" alt="Cat">
                                </div>
                                <div class="image-slide-btn">
                                    <img src="static/picture/collection-thumb4.jpeg" alt="Cat">
                                </div>
                                <div class="image-slide-btn">
                                    <img src="static/picture/collection-thumb5.jpeg" alt="Cat">
                                </div>
                                <div class="image-slide-btn">
                                    <img src="static/picture/collection-thumb.jpeg" alt="Cat">
                                </div>
                                <div class="image-slide-btn">
                                    <img src="static/picture/collection-thumb2.jpeg" alt="Cat">
                                </div>
                            </div>
                            <!-- Product Thumbnail Carousel End -->
                        </div>
                        <!-- Product Image End -->

                        <!-- Product Content Start -->
                        <div class="col-lg-6">
                            <div class="single-product-content">
                                <h1 class="single-product-title">Signature Blend Roast Cat</h1>
                                <div class="single-product-price">$99.00 <del>$110.00</del></div>
                                <ul class="single-product-meta">
                                    <li><span class="label">Availability :</span> <span class="value">11 Left in Stock</span></li>
                                </ul>
                                <div class="single-product-text">
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
                                </div>
                                <div class="single-product-variations">
                                    <div class="size">Size :</div>
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
                                    <div class="color">Color :</div>
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
                                    <div class="metarial">Metarial :</div>
                                    <div class="metarial-value">
                                        <ul>
                                            <li><button> Metal</button></li>
                                            <li><button> Resin</button></li>
                                            <li><button class="active"> Plastic</button></li>
                                            <li><button> Paper</button></li>
                                            <li><button> Fiber</button></li>
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
                                    <a href="cart.html">Add to Cart</a>
                                </div>
                                <ul class="single-product-meta">
                                    <li>
                                        <span class="label">Categories :</span>
                                        <span class="value links">
											<a href="#">Cat</a>
											<a href="#">Deal Collection</a>
											<a href="#">Featured Products</a>
										</span>
                                    <li>
                                        <span class="label">Tags :</span>
                                        <span class="value links">
												<a href="#">Black</a>
												<a href="#">Fiber</a>
												<a href="#">Leather</a>
                                    		</span>
                                    </li>
                                    <li>
                                        <span class="label">Share :</span>
                                        <span class="value social">
												<a href="#"><i class="fab fa-facebook-f"></i></a>
												<a href="#"><i class="fab fa-twitter"></i></a>
												<a href="#"><i class="fab fa-pinterest-p"></i></a>
                                    		</span>
                                    </li>
                                </ul>
                                <div class="single-product-safe-payment">
                                    <p>Guaranteed safe checkout</p>
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
<script src="static/js/modernizr-3.5.0.min.js"></script>
<!-- Jquery JS CDN -->
<script src="static/js/jquery-3.7.1.min.js"></script>
<!-- Jquery Migrate Link -->
<!-- <script src="assets/js/jquery-migrate-3.4.0.js" ></script> -->
<!-- Popper JS CDN -->
<script src="static/js/popper.min.js"></script>
<!-- Bootstrap JS CDN -->
<script src="static/js/bootstrap.min.js"></script>
<!-- CounterUp JS CDN -->
<script src="static/js/jquery.counterup.min.js"></script>
<!-- WayPoints JS CDN -->
<script src="static/js/waypoints.min.js"></script>
<!-- WOW JS CDN -->
<script src="static/js/wow.js"></script>
<!-- Imageloaded JS CDN -->
<script src="static/js/imagesloaded.pkgd.min.js"></script>
<!-- Venubox JS CDN -->
<script src="static/js/venobox.js"></script>
<!-- Animated JS CDN -->
<script src="static/js/animated-text.js"></script>
<!-- VenuBox JS CDN -->
<script src="static/js/venobox.min.js"></script>
<!-- PKG JS CDN -->
<script src="static/js/isotope.pkgd.min.js"></script>
<!-- Ajax JS Link -->
<script src="static/js/ajax-mail.js"></script>
<!-- MeanMenu JS CDN -->
<script src="static/js/jquery.meanmenu.js"></script>
<!-- ScrollUp JS CDN -->
<script src="static/js/jquery.scrollUp.js"></script>
<!-- Burfiller JS CDN -->
<script src="static/js/jquery.barfiller.js"></script>
<!-- Custom JS CDN -->
<script src="static/js/custom.js"></script>
<!-- Slick Js CDN -->
<script src="static/js/slick.min.js"></script>

</body>

</html>

