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
                    <div class="topbar-nav" id="top-bar-nav">
                        <div class="wpb_wrapper">
                            <c:if test="${not empty sessionScope.customer}">
                                <!-- my account -->
                                <div class="menu-my-account-container">
                                    <a href="#">${sessionScope.customer.name} <i class="ion-ios-arrow-down"></i></a>
                                    <ul>
                                        <li><a href="my-account.html">Tài khoản của tôi</a></li>
                                        <li><a href="checkout.html">Sở thích</a></li>
                                        <li><a href="login.html">Đơn hàng</a></li>
                                        <li><a href="<c:url value="/signout" />">Đăng xuất</a></li>
                                    </ul>
                                </div>
                            </c:if>
                            <c:if test="${empty sessionScope.customer}">
                                <a href="<c:url value="/login" />" class="btn-return">Đăng nhập<i class=""></i></a>
                                <span> | </span>
                                <a href="<c:url value="/register" />" class="btn-return">Đăng ký<i class=""></i></a>
                            </c:if>
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
                        <a href="<c:url value="/" /> "><img
                                src="<c:url value= "/assets/user/images/logo/logo-black.png" />"
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
                <div class="col-xl-3 col-md-12" id="list-mini-cart">
                    <!-- shop-cart-menu -->
                    <div class="shop-cart-menu pull-right">
                        <ul>
                            <li><a href="wishlist.html"><i class="ion-android-favorite-outline"></i></a></li>
                            <li><a href="#">
                                            <span class="cart-icon">
                                                <i class="ion-bag"></i><sup id="quantity-minicart">${empty sessionScope.countCart ? 0 : sessionScope.countCart}</sup>
                                            </span>
                                <span class="cart-text">
                                                <span class="cart-text-title">Giỏ hàng <br> <strong class="subtotal-minicart"><fmt:formatNumber
                                                        type="number" maxFractionDigits="3"
                                                        value="${empty sessionScope.subtotalCart ? 0 : sessionScope.subtotalCart}"/>₫</strong>
                                                </span>
                                            </span>
                            </a>
                                <ul class="mini-cart">
                                    <ul id="list-item-minicart">
                                        <c:forEach var="item" items="${sessionScope.cart}">
                                            <li>
                                                <!-- single-shop-cart-wrapper -->
                                                <div class="single-shop-cart-wrapper">
                                                    <div class="shop-cart-img">
                                                        <a href="#"><img
                                                                src="<c:url value= "/assets/user/images/product/mini/${item.image}"/>"
                                                                alt="Image of Product"></a>
                                                    </div>
                                                    <div class="shop-cart-info">
                                                        <h5>
                                                            <a href="<c:url value="/product/${item.productId}" />">${item.name}</a>
                                                        </h5>
                                                        <c:if test="${item.price > 0}">
                                                            <del><fmt:formatNumber type="number" maxFractionDigits="3"
                                                                                   value="${item.price}"/>₫
                                                            </del>
                                                            <span class="price"><fmt:formatNumber type="number"
                                                                                                  maxFractionDigits="3"
                                                                                                  value="${item.sale}"/>₫</span>
                                                        </c:if>
                                                        <c:if test="${item.price == 0}">
                                                        <span class="price"><fmt:formatNumber type="number"
                                                                                              maxFractionDigits="3"
                                                                                              value="${item.price}"/>₫</span>
                                                        </c:if>
                                                        <span class="quantaty">Qty: ${item.quantity}</span>
                                                        <span class="cart-remove " ><a class="btn-remove-item-cart" data-id="${item.productId}" data-color="${item.colorId}"><i
                                                                class="fa fa-times" ></i></a></span>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                    <li>
                                        <!-- shop-cart-total -->
                                        <div class="shop-cart-total">
                                            <p class="total-save-cart">Tiết kiệm: <span class="pull-right total-save"><fmt:formatNumber type="number"
                                                                                                                                        maxFractionDigits="3"
                                                                                                                                        value="${empty sessionScope.totalSave ? 0 : sessionScope.totalSave}"/>₫</span>
                                            </p>
                                            <p>Tổng phụ: <span class="pull-right subtotal-minicart"><fmt:formatNumber type="number"
                                                                                                    maxFractionDigits="3"
                                                                                                    value="${empty sessionScope.subtotalCart ? 0 : sessionScope.subtotalCart}"/>₫</span>
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="shop-cart-btn">
                                            <a href="checkout.html">Thanh toán</a>
                                            <a href="<c:url value="/cart"/>" class="pull-right">Giỏ hàng</a>
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
                                    <li><a href="<c:url value="/category/${item.id}" />"></span>${ item.name }<i
                                            class="fa fa-angle-right"
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
                                <li class="current"><a href="<c:url value="/" />">Trang chủ</a></li>
                                <li><a href="<c:url value="/category" />">Thương hiệu <i class="fa fa-angle-down"></i></a>
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
