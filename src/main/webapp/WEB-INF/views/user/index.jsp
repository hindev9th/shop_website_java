<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<!DOCTYPE html>
<head>
    <title>Home</title>
</head>
<body>
    <!-- Slider area -->
    <div class="slider-area">
        <!-- slider-area start -->
        <div class="slider-area-inner">
            <!-- slider start -->
            <div class="slider-inner">
                <div id="mainSlider" class="nivoSlider nevo-slider">
                    <c:forEach var="item" items="${sliders}">
                        <c:if test="${item.position == 1}">
                            <img src="<c:url value = "/assets/user/images/slider/${item.image}" />" alt="main slider" title="#sliderId${item.id}" />
                        </c:if>
                    </c:forEach>
                </div>
                <c:forEach var="item" items="${sliders}">
                    <c:if test="${item.position == 1}">
                        <div id="sliderId${item.id}" class="nivo-html-caption slider-caption">
                            <div class="slider-progress"></div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="slider-content slider-content-1 slider-animated-1">
                                            <h1 class="hone">${item.title}</h1>
                                            <h3>${item.content}</h3>
                                            <div class="button-1 hover-btn-2">
                                                <a href="${item.url}">Xem thêm</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
            <!-- slider end -->
        </div>
        <!-- slider-area end -->
    </div>
    <!-- Slider area end -->
    <!-- Home four banner area -->
    <div class="home-four-banner-area">
        <div class="container">
            <div class="row">
                <c:forEach var="item" items="${sliders}" >
                    <c:if test="${item.position == 2}">
                        <div class="four-fast col-sm-6 col-lg-3 col-md-6 col-xs-12">
                            <div class="four-single-banner-text">
                                <div class="four-banner-img">
                                    <a href="${item.url}">
                                        <img src="<c:url value = "/assets/user/images/banner/${item.image}" />" alt="">
                                    </a>
                                </div>
                                <div class="four-banner-text">
                                    <h3>${item.title}</h3>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </div>
    <!-- Home four banner area end -->

    <div class="product-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="section-title">
                        <h3>Sản phẩm bán chạy</h3>
                    </div>
                </div>
            </div>
            <div class="product-area-inner">
                <div class="space-24">
                    <div class="home-two-product-carousel-active owl-carousel">
                        <div class="col-sm-12">
                            <!-- single product -->
                            <div class="single-product-area">
                                <div class="product-wrapper gridview">
                                    <div class="list-col4">
                                        <div class="product-image">
                                            <a href="">
                                                <span class="onsale">Sale!</span>
                                                <img src="<c:url value = "/assets/user/images/product/1.jpg" />" alt="">
                                            </a>
                                            <div class="quickviewbtn">
                                                <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"
                                                   data-original-title="Quick View"><i class="ion-eye"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="list-col8">
                                        <div class="product-info">
                                            <h2><a href="single-product.html">Sit voluptatem</a></h2>
                                            <span class="price">
                                                        <del>$ 77.00</del> $ 66.00
                                                    </span>
                                        </div>
                                        <div class="product-hidden">
                                            <div class="add-to-cart">
                                                <a href="cart.html">Add to cart</a>
                                            </div>
                                            <div class="star-actions">
                                                <div class="product-rattings">
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star-half-o"></i></span>
                                                    <span><i class="fa fa-star-o"></i></span>
                                                </div>
                                                <ul class="actions">
                                                    <li><a href=""><i class="ion-android-favorite-outline"></i></a>
                                                    </li>
                                                    <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product end -->
                            <!-- single product -->
                            <div class="single-product-area">
                                <div class="product-wrapper gridview">
                                    <div class="list-col4">
                                        <div class="product-image">
                                            <a href="">
                                                <img src="<c:url value = "/assets/user/images/product/2.jpg" />" alt="">
                                            </a>
                                            <div class="quickviewbtn">
                                                <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"
                                                   data-original-title="Quick View"><i class="ion-eye"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="list-col8">
                                        <div class="product-info">
                                            <h2><a href="single-product.html">Nulla sed libero</a></h2>
                                            <span class="price">
                                                        $ 45.00
                                                    </span>
                                        </div>
                                        <div class="product-hidden">
                                            <div class="add-to-cart">
                                                <a href="cart.html">Add to cart</a>
                                            </div>
                                            <div class="star-actions">
                                                <div class="product-rattings">
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star-half-o"></i></span>
                                                    <span><i class="fa fa-star-o"></i></span>
                                                </div>
                                                <ul class="actions">
                                                    <li><a href=""><i class="ion-android-favorite-outline"></i></a>
                                                    </li>
                                                    <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="product-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="section-title">
                        <h3>Sản phẩm nổi bật</h3>
                    </div>
                </div>
            </div>
            <div class="product-area-inner">
                <div class="space-24">
                    <div class="home-two-product-carousel-active owl-carousel">
                        <div class="col-sm-12">
                            <!-- single product -->
                            <div class="single-product-area">
                                <div class="product-wrapper gridview">
                                    <div class="list-col4">
                                        <div class="product-image">
                                            <a href="">
                                                <span class="onsale">Sale!</span>
                                                <img src="<c:url value = "/assets/user/images/product/1.jpg" />" alt="">
                                            </a>
                                            <div class="quickviewbtn">
                                                <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"
                                                   data-original-title="Quick View"><i class="ion-eye"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="list-col8">
                                        <div class="product-info">
                                            <h2><a href="single-product.html">Sit voluptatem</a></h2>
                                            <span class="price">
                                                        <del>$ 77.00</del> $ 66.00
                                                    </span>
                                        </div>
                                        <div class="product-hidden">
                                            <div class="add-to-cart">
                                                <a href="cart.html">Add to cart</a>
                                            </div>
                                            <div class="star-actions">
                                                <div class="product-rattings">
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star-half-o"></i></span>
                                                    <span><i class="fa fa-star-o"></i></span>
                                                </div>
                                                <ul class="actions">
                                                    <li><a href=""><i class="ion-android-favorite-outline"></i></a>
                                                    </li>
                                                    <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product end -->
                            <!-- single product -->
                            <div class="single-product-area">
                                <div class="product-wrapper gridview">
                                    <div class="list-col4">
                                        <div class="product-image">
                                            <a href="">
                                                <img src="<c:url value = "/assets/user/images/product/2.jpg" />" alt="">
                                            </a>
                                            <div class="quickviewbtn">
                                                <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"
                                                   data-original-title="Quick View"><i class="ion-eye"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="list-col8">
                                        <div class="product-info">
                                            <h2><a href="single-product.html">Nulla sed libero</a></h2>
                                            <span class="price">
                                                        $ 45.00
                                                    </span>
                                        </div>
                                        <div class="product-hidden">
                                            <div class="add-to-cart">
                                                <a href="cart.html">Add to cart</a>
                                            </div>
                                            <div class="star-actions">
                                                <div class="product-rattings">
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star-half-o"></i></span>
                                                    <span><i class="fa fa-star-o"></i></span>
                                                </div>
                                                <ul class="actions">
                                                    <li><a href=""><i class="ion-android-favorite-outline"></i></a>
                                                    </li>
                                                    <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Brand logo area -->
    <div class="brand-logo-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="four-brand-carousel-active owl-carousel">
                        <!-- single brand logo -->
                        <div class="brand-logo">
                            <a href="#"><img src="<c:url value = "/assets/user/images/brand/brand1.jpg" />" alt="Brand logo"></a>
                        </div>
                        <!-- single brand logo end -->
                        <!-- single brand logo -->
                        <div class="brand-logo">
                            <a href="#"><img src="<c:url value = "/assets/user/images/brand/brand2.jpg" />" alt="Brand logo"></a>
                        </div>
                        <!-- single brand logo end -->
                        <!-- single brand logo -->
                        <div class="brand-logo">
                            <a href="#"><img src="<c:url value = "/assets/user/images/brand/brand3.jpg" />" alt="Brand logo"></a>
                        </div>
                        <!-- single brand logo end -->
                        <!-- single brand logo -->
                        <div class="brand-logo">
                            <a href="#"><img src="<c:url value = "/assets/user/images/brand/brand4.jpg" />" alt="Brand logo"></a>
                        </div>
                        <!-- single brand logo end -->
                        <!-- single brand logo -->
                        <div class="brand-logo">
                            <a href="#"><img src="<c:url value = "/assets/user/images/brand/brand5.jpg" />" alt="Brand logo"></a>
                        </div>
                        <!-- single brand logo end -->
                        <!-- single brand logo -->
                        <div class="brand-logo">
                            <a href="#"><img src="<c:url value = "/assets/user/images/brand/brand6.jpg" />" alt="Brand logo"></a>
                        </div>
                        <!-- single brand logo end -->
                        <!-- single brand logo -->
                        <div class="brand-logo">
                            <a href="#"><img src="<c:url value = "/assets/user/images/brand/brand7.jpg" />" alt="Brand logo"></a>
                        </div>
                        <!-- single brand logo end -->
                        <!-- single brand logo -->
                        <div class="brand-logo">
                            <a href="#"><img src="<c:url value = "/assets/user/images/brand/brand8.jpg" />" alt="Brand logo"></a>
                        </div>
                        <!-- single brand logo end -->
                        <!-- single brand logo -->
                        <div class="brand-logo">
                            <a href="#"><img src="<c:url value = "/assets/user/images/brand/brand9.jpg" />" alt="Brand logo"></a>
                        </div>
                        <!-- single brand logo end -->
                        <!-- single brand logo -->
                        <div class="brand-logo">
                            <a href="#"><img src="<c:url value = "/assets/user/images/brand/brand1.jpg" />" alt="Brand logo"></a>
                        </div>
                        <!-- single brand logo end -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Brand logo area end -->
    <!-- product carosel area -->
    <div class="product-carosel-area">
        <div class="container">
            <div class="row">
                <!-- Product column -->
                <div class="col-sm-12 col-md-6 col-xl-4">
                    <div class="home-three-mini-product">
                        <div class="section-title">
                            <h3>SẢN PHẨM MỚI</h3>
                        </div>
                        <div class="mini-product carosel-next-prive owl-carousel">
                            <div class="mini-product-listview">
                                <c:forEach var="item" items="${product_new}" varStatus="loop" >
                                <!-- single product -->
                                <div class="single-product-area">
                                    <div class="product-wrapper listview">
                                        <div class="list-col4">
                                            <div class="product-image">
                                                <a href="<c:url value="/product/${item.id}" />">
                                                    <img src="<c:url value = "/assets/user/images/product/mini/${item.image}" />" alt="">
                                                </a>
                                                <div class="quickviewbtn">
                                                    <a href="#" data-bs-toggle="modal"
                                                       data-bs-target="#product_modal"
                                                       data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="list-col8">
                                            <div class="product-info">
                                                <h2><a href="<c:url value="/product/${item.id}" />">${item.name} - ${item.type}</a></h2>
                                                <span class="price">
                                                                <c:if test="${item.sale > 0}">
                                                                    <del><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.sale}" />₫</del>
                                                                </c:if>
                                                                    <fmt:formatNumber type="number" maxFractionDigits="3" value="${item.price}" />₫
                                                                </span>
                                                <div class="product-rattings">
                                                    <c:forEach var="i" begin="1" end="${item.rate}">
                                                        <span><i class="fa fa-star"></i></span>
                                                    </c:forEach>
                                                        <%--                                                            <span><i class="fa fa-star-half-o"></i></span>--%>
                                                    <c:if test="${item.rate < 5}">
                                                        <c:forEach var="i" begin="${item.rate}" end="4">
                                                            <span><i class="fa fa-star-o"></i></span>
                                                        </c:forEach>
                                                    </c:if>

                                                </div>
                                            </div>
                                            <div class="add-to-cart">
                                                <a class="btn-add-to-cart" action="<c:url value="/ajax/cart/add"/>" product-id="${item.id}" data-color-id="${item.colorId}" i="1" name="${item.name}" >Thêm giỏ hàng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- single product end -->
                                <c:if test="${(loop.index + 1 ) % 4 == 0}">
                            </div>
                            <div class="mini-product-listview">
                                </c:if>
                                <c:if test="${(loop.index + 1 ) == product_featured.size()}">
                            </div>
                            </c:if>
                            </c:forEach>

                        </div>
                    </div>
                </div>
                <!-- Product column end -->
                <!-- Product column -->
                <div class="col-sm-12 col-md-6 col-xl-4">
                    <div class="home-three-mini-product">
                        <div class="section-title">
                            <h3>TOP ĐÁNH GIÁ</h3>
                        </div>
                        <div class="mini-product carosel-next-prive owl-carousel">
                            <div class="mini-product-listview">
                                <c:forEach var="item" items="${product_top}" varStatus="loop" >
                                <!-- single product -->
                                <div class="single-product-area">
                                    <div class="product-wrapper listview">
                                        <div class="list-col4">
                                            <div class="product-image">
                                                <a href="<c:url value="/product/${item.id}" />">
                                                    <img src="<c:url value = "/assets/user/images/product/mini/${item.image}" />" alt="">
                                                </a>
                                                <div class="quickviewbtn">
                                                    <a href="#" data-bs-toggle="modal"
                                                       data-bs-target="#product_modal"
                                                       data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="list-col8">
                                            <div class="product-info">
                                                <h2><a href="<c:url value="/product/${item.id}" />">${item.name} - ${item.type}</a></h2>
                                                <span class="price">
                                                                <c:if test="${item.sale > 0}">
                                                                    <del><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.sale}" />₫</del>
                                                                </c:if>
                                                                    <fmt:formatNumber type="number" maxFractionDigits="3" value="${item.price}" />₫
                                                                </span>
                                                <div class="product-rattings">
                                                    <c:forEach var="i" begin="1" end="${item.rate}">
                                                        <span><i class="fa fa-star"></i></span>
                                                    </c:forEach>
                                                        <%--                                                            <span><i class="fa fa-star-half-o"></i></span>--%>
                                                    <c:if test="${item.rate < 5}">
                                                        <c:forEach var="i" begin="${item.rate}" end="4">
                                                            <span><i class="fa fa-star-o"></i></span>
                                                        </c:forEach>
                                                    </c:if>

                                                </div>
                                            </div>
                                            <div class="add-to-cart">
                                                <a class="btn-add-to-cart" action="<c:url value="/ajax/cart/add"/>" product-id="${item.id}" data-color-id="${item.colorId}" i="1" name="${item.name}" >Thêm giỏ hàng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- single product end -->
                                <c:if test="${(loop.index + 1 ) % 4 == 0}">
                            </div>
                            <div class="mini-product-listview">
                                </c:if>
                                <c:if test="${(loop.index + 1 ) == product_featured.size()}">
                            </div>
                            </c:if>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <!-- Product column end -->
                <!-- Product column -->
                <div class="col-sm-12 col-md-6 col-xl-4">
                    <div class="home-three-mini-product">
                        <div class="section-title">
                            <h3>Sản phẩm nổi bật</h3>
                        </div>
                        <div class="mini-product carosel-next-prive owl-carousel">
                            <div class="mini-product-listview">
                            <c:forEach var="item" items="${product_featured}" varStatus="loop" >
                                    <!-- single product -->
                                    <div class="single-product-area">
                                        <div class="product-wrapper listview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="<c:url value="/product/${item.id}" />">
                                                        <img src="<c:url value = "/assets/user/images/product/mini/${item.image}" />" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal"
                                                           data-bs-target="#product_modal"
                                                           data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="<c:url value="/product/${item.id}" />">${item.name} - ${item.type}</a></h2>
                                                    <span class="price">
                                                                <c:if test="${item.sale > 0}">
                                                                    <del><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.price}" />₫</del>
                                                                    <fmt:formatNumber type="number" maxFractionDigits="3" value="${item.sale}" />₫
                                                                </c:if>
                                                        <c:if test="${item.sale == 0}">
                                                            <fmt:formatNumber type="number" maxFractionDigits="3" value="${item.price}" />₫
                                                        </c:if>
                                                                </span>
                                                    <div class="product-rattings">
                                                        <c:forEach var="i" begin="1" end="5">
                                                            <c:if test="${i <= item.rate}">
                                                                <span><i class="fa fa-star"></i></span>
                                                            </c:if>
                                                            <c:if test="${i > item.rate}">
                                                                <span><i class="fa fa-star-o"></i></span>
                                                            </c:if>
                                                        </c:forEach>
<%--                                                            <span><i class="fa fa-star-half-o"></i></span>--%>
                                                    </div>
                                                </div>
                                                <div class="add-to-cart">
                                                    <a class="btn-add-to-cart" action="<c:url value="/ajax/cart/add"/>" product-id="${item.id}" data-color-id="${item.colorId}" i="1" name="${item.name}" >Thêm giỏ hàng</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- single product end -->
                                <c:if test="${(loop.index + 1 ) % 4 == 0}">
                            </div>
                            <div class="mini-product-listview">
                                </c:if>
                                    <c:if test="${(loop.index + 1 ) == product_featured.size()}">
                            </div>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <!-- Product column end -->
            </div>
        </div>
    </div>
    <!-- product carosel area end -->
</body>