<%--
  Created by IntelliJ IDEA.
  User: hien
  Date: 19/12/2022
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp" %>

<!-- HEADER AREA START -->
<header class="header-area">
    <!-- Header top area start -->
    <div class="header-top-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-sm-6">
                    <div class="top-bar-left">
                        <!-- welcome -->
                        <div class="welcome">
                            <p>Welcome to my website</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <div class="topbar-nav">
                        <div class="wpb_wrapper">
                            <!-- my account -->
                            <div class="menu-my-account-container">
                                <a href="#">My Account <i class="ion-ios-arrow-down"></i></a>
                                <ul>
                                    <li><a href="my-account.html">My Account</a></li>
                                    <li><a href="wishlist.html">Wishlist</a></li>

                                    <li><a href="login.html">Login</a></li>
                                    <li><a href="register.html">Register</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Top bar area end -->
    <!-- Header middle area start -->
    <div class="header-middle-area">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-md-12">
                    <!-- site-logo -->
                    <div class="site-logo">
                        <a href="index.html"><img src="<c:url value= "/assets/user/images/logo/logo-black.png" />"
                                                  alt="Nikado"></a>
                    </div>
                </div>
                <div class="col-xl-6 col-md-12">
                    <!-- header-search -->
                    <div class="header-search clearfix">
                        <div class="category-select pull-right">
                            <select class="nice-select-menu">
                                <option data-display="Tất cả danh mục">Tất cả danh mục</option>
                                <c:forEach var="item" items="${categories}">
                                    <option value="${item.id}">${item.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="header-search-form">
                            <form action="#">
                                <input type="text" name="search" placeholder="Search product...">
                                <input type="submit" name="submit" value="Search">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-12">
                    <!-- shop-cart-menu -->
                    <div class="shop-cart-menu pull-right">
                        <ul>
                            <li><a href="wishlist.html"><i class="ion-android-favorite-outline"></i></a></li>
                            <li><a href="#">
                                            <span class="cart-icon">
                                                <i class="ion-bag"></i><sup>3</sup>
                                            </span>
                                <span class="cart-text">
                                                <span class="cart-text-title">My cart <br> <strong>$ 145.00</strong>
                                                </span>
                                            </span>
                            </a>
                                <ul>
                                    <li>
                                        <!-- single-shop-cart-wrapper -->
                                        <div class="single-shop-cart-wrapper">
                                            <div class="shop-cart-img">
                                                <a href="#"><img
                                                        src="<c:url value= "/assets/user/images/product/1.jpg"/>"
                                                        alt="Image of Product"></a>
                                            </div>
                                            <div class="shop-cart-info">
                                                <h5><a href="cart.html">sport t-shirt men</a></h5>
                                                <span class="price">£515.00</span>
                                                <span class="quantaty">Qty: 1</span>
                                                <span class="cart-remove"><a href="#"><i
                                                        class="fa fa-times"></i></a></span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <!-- single-shop-cart-wrapper -->
                                        <div class="single-shop-cart-wrapper">
                                            <div class="shop-cart-img">
                                                <a href="#"><img
                                                        src="<c:url value= "/assets/user/images/product/2.jpg"/>"
                                                        alt="Image of Product"></a>
                                            </div>
                                            <div class="shop-cart-info">
                                                <h5><a href="cart.html">sport coat amet</a></h5>
                                                <span class="price">£100.00</span>
                                                <span class="quantaty">Qty: 1</span>
                                                <span class="cart-remove"><a href="#"><i
                                                        class="fa fa-times"></i></a></span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <!-- single-shop-cart-wrapper -->
                                        <div class="single-shop-cart-wrapper">
                                            <div class="shop-cart-img">
                                                <a href="#"><img
                                                        src="<c:url value= "/assets/user/images/product/3.jpg"/>"
                                                        alt="Image of Product"></a>
                                            </div>
                                            <div class="shop-cart-info">
                                                <h5><a href="cart.html">Pellentesque men</a></h5>
                                                <span class="price">£265.00</span>
                                                <span class="quantaty">Qty: 1</span>
                                                <span class="cart-remove"><a href="#"><i
                                                        class="fa fa-times"></i></a></span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <!-- shop-cart-total -->
                                        <div class="shop-cart-total">
                                            <p>Subtotal: <span class="pull-right">£880.00</span></p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="shop-cart-btn">
                                            <a href="checkout.html">Checkout</a>
                                            <a href="cart.html" class="pull-right">View Cart</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header middle area end -->
    <!-- Header bottom area start -->
    <div class="header-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-lg-3 hidden-md hidden-sm pull-left category-wrapper">
                    <div class="categori-menu">
                        <span class="categorie-title">Danh mục</span>
                        <nav>
                            <ul class="categori-menu-list menu-hidden">
                                <c:forEach var="item" items="${categories}">
                                    <li><a href="shop.html"></span>${ item.name }<i class="fa fa-angle-right"
                                                                                    aria-hidden="true"></i></a>
                                        <!-- categori Mega-Menu Start -->
                                        <ul class="ht-dropdown megamenu first-megamenu">
                                            <!-- Single Column Start -->
                                            <li class="single-megamenu">
                                                <ul>
                                                    <li class="menu-tile">Cameras</li>
                                                    <li><a href="shop.html">Cords and Cables</a></li>
                                                    <li><a href="shop.html">gps accessories</a></li>
                                                    <li><a href="shop.html">Microphones</a></li>
                                                    <li><a href="shop.html">Wireless Transmitters</a></li>
                                                </ul>
                                            </li>
                                            <!-- Single Column End -->
                                            <!-- Single Column Start -->
                                            <li class="single-megamenu">
                                                <ul>
                                                    <li class="menu-tile">Digital Cameras</li>
                                                    <li><a href="shop.html">Camera one</a></li>
                                                    <li><a href="shop.html">Camera two</a></li>
                                                    <li><a href="shop.html">Camera three</a></li>
                                                    <li><a href="shop.html">Camera four</a></li>
                                                </ul>
                                            </li>
                                            <!-- Single Column End -->
                                            <!-- Single Column Start -->
                                            <li class="single-megamenu">
                                                <ul>
                                                    <li class="menu-tile">Digital Cameras</li>
                                                    <li><a href="shop.html">Camera one</a></li>
                                                    <li><a href="shop.html">Camera two</a></li>
                                                    <li><a href="shop.html">Camera three</a></li>
                                                    <li><a href="shop.html">Camera four</a></li>
                                                </ul>
                                            </li>
                                            <!-- Single Column End -->
                                        </ul>
                                        <!-- categori Mega-Menu End -->
                                    </li>
                                </c:forEach>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-9">
                    <!-- main-menu -->
                    <div class="main-menu">
                        <nav>
                            <ul>
                                <li class="current"><a href="index.html">Trang chủ</a></li>
                                <li ><a href="shop.html">Thương hiệu <i class="fa fa-angle-down"></i></a>
                                    <ul class="submenu">
                                        <c:forEach var="item" items="${brands}">
                                            <li><a href="index.html">${item.name}</a></li>
                                        </c:forEach>
                                    </ul>
                                </li>
                                <li><a href="contact-us.html">Liên hệ</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="mobile-menu-area">
                        <div class="mobile-menu">
                            <nav id="mobile-menu-active">
                                <ul class="menu-overflow">
                                    <li><a href="#">Trang chủ</a></li>
                                    <li><a href="#">Danh mục</a>
                                        <ul>
                                            <c:forEach var="item" items="${categories}">
                                                <li><a href="#">${item.name}</a></li>
                                            </c:forEach>
                                        </ul>
                                    </li>
                                    <li><a href="#">Thương hiệu</a>
                                        <ul>
                                            <c:forEach var="item" items="${brands}">
                                                <li><a href="#">${item.name}</a></li>
                                            </c:forEach>
                                        </ul>
                                    </li>
                                    <li><a href="contact-us.html">Contact</a></li>
                                    <li><a href="#">Features</a>

                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header bottom area end -->
</header>
<!-- HRADER AREA END -->
