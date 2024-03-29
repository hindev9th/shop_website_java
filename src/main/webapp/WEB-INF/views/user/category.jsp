<%--
  Created by IntelliJ IDEA.
  User: hien
  Date: 2/13/2023
  Time: 4:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp" %>

    <title>Sản phẩm</title>
<body>
<!-- Breadcrumbs -->
<div class="breadcrumbs-container">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <nav class="woocommerce-breadcrumb">
                    <a href="<c:url value="/" />">Trang chủ</a>
                    <span class="separator">/</span> Danh sách sản phẩm
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumbs End -->

<!-- Shop page wraper -->
<div class="shop-page-wraper">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-3 sidebar-shop">
                <div class="sidebar-product-categori">
                    <div class="widget-title">
                        <h3>Danh mục sản phẩm</h3>
                    </div>
                    <div class="widget-content">
                        <ul class="product-category">
                            <li class="cat-item">
                                <a href="#">Accessories</a>
                                <span class="count">(5)</span>
                            </li>
                            <li class="cat-item">
                                <a href="#">Bedroom</a>
                                <span class="count">(4)</span>
                            </li>
                            <li class="cat-item">
                                <a href="#">Decor &amp; Furniture</a>
                                <span class="count">(12)</span>
                            </li>
                            <li class="cat-item">
                                <a href="#">Electronics &amp; Computer</a>
                                <span class="count">(13)</span>
                            </li>
                            <li class="cat-item">
                                <a href="#">Fashion &amp; clothings</a>
                                <span class="count">(13)</span>
                            </li>
                            <li class="cat-item">
                                <a href="#">Furniture</a>
                                <span class="count">(4)</span>
                            </li>
                            <li class="cat-item">
                                <a href="#">Home, Garden &amp; Tools</a>
                                <span class="count">(14)</span>
                            </li>
                            <li class="cat-item">
                                <a href="#">Laptops &amp; Desktops</a>
                                <span class="count">(7)</span>
                            </li>
                            <li class="cat-item">
                                <a href="#">Livingroom</a>
                                <span class="count">(4)</span>
                            </li>
                            <li class="cat-item">
                                <a href="#">Men</a>
                                <span class="count">(4)</span>
                            </li>
                            <li class="cat-item">
                                <a href="#">Mobiles &amp; Tablets</a>
                                <span class="count">(6)</span>
                            </li>
                            <li class="cat-item">
                                <a href="#">Sport &amp; Outdoors</a>
                                <span class="count">(7)</span>
                            </li>
                            <li class="cat-item">
                                <a href="#">Toy, Kids &amp; Baby</a>
                                <span class="count">(7)</span>
                            </li>
                            <li class="cat-item">
                                <a href="#">Uncategorized</a>
                                <span class="count">(0)</span>
                            </li>
                            <li class="cat-item">
                                <a href="#">Women</a>
                                <span class="count">(4)</span>
                            </li>
                        </ul>
                    </div>
                    <div class="product-filter mb-30">
                        <div class="widget-title">
                            <h3>Filter by price</h3>
                        </div>
                        <div class="widget-content">
                            <div id="price-range"></div>
                            <div class="price-values">
                                <div class="price_text_btn">
                                    <span>Price:</span>
                                    <input type="text" class="price-amount">
                                </div>
                                <button class="button" type="submit">Filter</button>
                            </div>
                        </div>
                    </div>
                    <div class="widget-title">
                        <h3>SELECT BY COLOR</h3>
                    </div>
                    <div class="widget-content">
                        <ul class="product-category">
                            <li class="cat-item">
                                <a href="#">Gold</a>
                                <span class="count">(1)</span>
                            </li>
                            <li class="cat-item">
                                <a href="#">Green</a>
                                <span class="count">(1)</span>
                            </li>
                            <li class="cat-item">
                                <a href="#">White</a>
                                <span class="count">(1)</span>
                            </li>
                        </ul>
                    </div>
                    <div class="product-filter mb-30">
                        <div class="widget-title">
                            <h3>TOP RATED PRODUCTS</h3>
                        </div>
                        <div class="widget-content">
                            <ul class="product_list_widget">
                                <li class="widget-mini-product">
                                    <div class="product-image">
                                        <a title="Phasellus vel hendrerit" href="#">
                                            <img alt="" src="images/product/2.jpg">
                                        </a>
                                    </div>
                                    <div class="product-info">
                                        <a title="Phasellus vel hendrerit" href="#">
                                            <span class="product-title">Consequuntur magni</span>
                                        </a>
                                        <div class="star-rating">
                                            <div class="rating-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                        </div>
                                        <span class="woocommerce-Price-amount amount">
                                                        <span class="woocommerce-Price-currencySymbol">$</span>55.00</span>
                                    </div>
                                </li>
                                <li class="widget-mini-product">
                                    <div class="product-image">
                                        <a title="Phasellus vel hendrerit" href="#">
                                            <img alt="" src="images/product/3.jpg">
                                        </a>
                                    </div>
                                    <div class="product-info">
                                        <a title="Phasellus vel hendrerit" href="#">
                                            <span class="product-title">Aliquam lobortis</span>
                                        </a>
                                        <div class="star-rating">
                                            <div class="rating-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                        </div>
                                        <span class="woocommerce-Price-amount amount">
                                                        <span class="woocommerce-Price-currencySymbol">$</span>55.00</span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="sidebar-single-banner">
                        <a href="#">
                            <img src="images/banner/shop-sidebar.jpg" alt="Banner">
                        </a>
                    </div>
                    <div class="sidebar-tag">
                        <div class="widget-title">
                            <h3>PRODUCT TAGS</h3>
                        </div>
                        <div class="widget-content">
                            <div class="product-tags">
                                <a href="#">New </a>
                                <a href="#">brand</a>
                                <a href="#">black</a>
                                <a href="#">white</a>
                                <a href="#">chire</a>
                                <a href="#">table</a>
                                <a href="#">Lorem</a>
                                <a href="#">ipsum</a>
                                <a href="#">dolor</a>
                                <a href="#">sit</a>
                                <a href="#">amet</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-md-9 shop-content">
                <div class="shop-banner">
                    <img src="images/banner/shop-category.jpg" alt="">
                </div>
                <div class="product-toolbar">
                    <div class="topbar-title">
                        <h1>Shop</h1>
                    </div>
                    <div class="product-toolbar-inner">
                        <div class="product-view-mode">
                            <ul class="nav nav-tabs">
                                <li><a class="active" data-bs-toggle="tab" href="#grid"><i class="ion-grid"></i></a></li>
                                <li><a data-bs-toggle="tab" href="#list"><i class="ion-navicon"></i></a></li>
                            </ul>
                        </div>
                        <p class="woocommerce-result-count">Showing 1–12 of 42 results</p>
                        <div class="woocommerce-ordering">
                            <form method="get" class="woocommerce-ordering hidden-xs">
                                <div class="orderby-wrapper">
                                    <label>Sort By :</label>
                                    <select class="nice-select-menu orderby">
                                        <option dara-display="Select">Default sorting</option>
                                        <option value="popularity">Sort by popularity</option>
                                        <option value="rating">Sort by average rating</option>
                                        <option value="date">Sort by newness</option>
                                        <option value="price">Sort by price: low to high</option>
                                        <option value="price-desc">Sort by price: high to low</option>
                                    </select>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="shop-page-product-area tab-content">
                        <div id="grid" class="tab-pane fade in show active">
                            <div class="row">
                                <div class="col-sm-6 col-md-4 col-xl-3">
                                    <div class="single-product-area">
                                        <div class="product-wrapper gridview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <img src="images/product/1.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Auctor gravida enim</a></h2>
                                                    <span class="price">
                                                                    <del>$ 85.00</del> $ 75.00
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
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4 col-xl-3">
                                    <div class="single-product-area">
                                        <div class="product-wrapper gridview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <img src="images/product/2.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Auctor gravida enim</a></h2>
                                                    <span class="price">
                                                                    <del>$ 85.00</del> $ 75.00
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
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4 col-xl-3">
                                    <div class="single-product-area">
                                        <div class="product-wrapper gridview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <img src="images/product/3.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Auctor gravida enim</a></h2>
                                                    <span class="price">
                                                                    <del>$ 85.00</del> $ 75.00
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
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4 col-xl-3">
                                    <div class="single-product-area">
                                        <div class="product-wrapper gridview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <img src="images/product/13.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Auctor gravida enim</a></h2>
                                                    <span class="price">
                                                                    <del>$ 85.00</del> $ 75.00
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
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4 col-xl-3">
                                    <div class="single-product-area">
                                        <div class="product-wrapper gridview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <img src="images/product/5.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Auctor gravida enim</a></h2>
                                                    <span class="price">
                                                                    <del>$ 85.00</del> $ 75.00
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
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4 col-xl-3">
                                    <div class="single-product-area">
                                        <div class="product-wrapper gridview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <img src="images/product/6.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Auctor gravida enim</a></h2>
                                                    <span class="price">
                                                                    <del>$ 85.00</del> $ 75.00
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
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4 col-xl-3">
                                    <div class="single-product-area">
                                        <div class="product-wrapper gridview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <img src="images/product/7.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Auctor gravida enim</a></h2>
                                                    <span class="price">
                                                                    <del>$ 85.00</del> $ 75.00
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
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4 col-xl-3">
                                    <div class="single-product-area">
                                        <div class="product-wrapper gridview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <img src="images/product/8.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Auctor gravida enim</a></h2>
                                                    <span class="price">
                                                                    <del>$ 85.00</del> $ 75.00
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
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4 col-xl-3">
                                    <div class="single-product-area">
                                        <div class="product-wrapper gridview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <img src="images/product/9.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Auctor gravida enim</a></h2>
                                                    <span class="price">
                                                                    <del>$ 85.00</del> $ 75.00
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
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4 col-xl-3">
                                    <div class="single-product-area">
                                        <div class="product-wrapper gridview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <img src="images/product/10.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Auctor gravida enim</a></h2>
                                                    <span class="price">
                                                                    <del>$ 85.00</del> $ 75.00
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
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4 col-xl-3">
                                    <div class="single-product-area">
                                        <div class="product-wrapper gridview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <img src="images/product/11.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Auctor gravida enim</a></h2>
                                                    <span class="price">
                                                                    <del>$ 85.00</del> $ 75.00
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
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4 col-xl-3">
                                    <div class="single-product-area">
                                        <div class="product-wrapper gridview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <img src="images/product/12.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Auctor gravida enim</a></h2>
                                                    <span class="price">
                                                                    <del>$ 85.00</del> $ 75.00
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
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4 col-xl-3">
                                    <div class="single-product-area">
                                        <div class="product-wrapper gridview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <img src="images/product/6.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Auctor gravida enim</a></h2>
                                                    <span class="price">
                                                                    <del>$ 85.00</del> $ 75.00
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
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4 col-xl-3">
                                    <div class="single-product-area">
                                        <div class="product-wrapper gridview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <img src="images/product/7.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Auctor gravida enim</a></h2>
                                                    <span class="price">
                                                                    <del>$ 85.00</del> $ 75.00
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
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4 col-xl-3">
                                    <div class="single-product-area">
                                        <div class="product-wrapper gridview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <img src="images/product/8.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Auctor gravida enim</a></h2>
                                                    <span class="price">
                                                                    <del>$ 85.00</del> $ 75.00
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
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4 col-xl-3">
                                    <div class="single-product-area">
                                        <div class="product-wrapper gridview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <img src="images/product/11.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Auctor gravida enim</a></h2>
                                                    <span class="price">
                                                                    <del>$ 85.00</del> $ 75.00
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
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="list" class="tab-pane fade">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="single-product-area">
                                        <div class="product-wrapper listview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <span class="onsale">Sale!</span>
                                                        <img src="images/product/1.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Sit voluptatem</a></h2>
                                                    <span class="price">
                                                                    <del>$ 77.00</del> $ 66.00
                                                                </span>
                                                    <div class="product-rattings">
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star-half-o"></i></span>
                                                        <span><i class="fa fa-star-o"></i></span>
                                                    </div>
                                                    <div class="product-desc">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>
                                                    </div>
                                                </div>
                                                <div class="actions-wrapper">
                                                    <div class="add-to-cart">
                                                        <a href="cart.html">Add to cart</a>
                                                    </div>
                                                    <div class="star-actions">
                                                        <ul class="actions">
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i>Add to Wishlist</a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i>Compare</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="single-product-area">
                                        <div class="product-wrapper listview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <span class="onsale">Sale!</span>
                                                        <img src="images/product/2.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Sit voluptatem</a></h2>
                                                    <span class="price">
                                                                    <del>$ 77.00</del> $ 66.00
                                                                </span>
                                                    <div class="product-rattings">
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star-half-o"></i></span>
                                                        <span><i class="fa fa-star-o"></i></span>
                                                    </div>
                                                    <div class="product-desc">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>
                                                    </div>
                                                </div>
                                                <div class="actions-wrapper">
                                                    <div class="add-to-cart">
                                                        <a href="cart.html">Add to cart</a>
                                                    </div>
                                                    <div class="star-actions">
                                                        <ul class="actions">
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i>Add to Wishlist</a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i>Compare</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="single-product-area">
                                        <div class="product-wrapper listview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <span class="onsale">Sale!</span>
                                                        <img src="images/product/3.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Sit voluptatem</a></h2>
                                                    <span class="price">
                                                                    <del>$ 77.00</del> $ 66.00
                                                                </span>
                                                    <div class="product-rattings">
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star-half-o"></i></span>
                                                        <span><i class="fa fa-star-o"></i></span>
                                                    </div>
                                                    <div class="product-desc">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>
                                                    </div>
                                                </div>
                                                <div class="actions-wrapper">
                                                    <div class="add-to-cart">
                                                        <a href="cart.html">Add to cart</a>
                                                    </div>
                                                    <div class="star-actions">
                                                        <ul class="actions">
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i>Add to Wishlist</a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i>Compare</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="single-product-area">
                                        <div class="product-wrapper listview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <span class="onsale">Sale!</span>
                                                        <img src="images/product/4.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Sit voluptatem</a></h2>
                                                    <span class="price">
                                                                    <del>$ 77.00</del> $ 66.00
                                                                </span>
                                                    <div class="product-rattings">
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star-half-o"></i></span>
                                                        <span><i class="fa fa-star-o"></i></span>
                                                    </div>
                                                    <div class="product-desc">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>
                                                    </div>
                                                </div>
                                                <div class="actions-wrapper">
                                                    <div class="add-to-cart">
                                                        <a href="cart.html">Add to cart</a>
                                                    </div>
                                                    <div class="star-actions">
                                                        <ul class="actions">
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i>Add to Wishlist</a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i>Compare</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="single-product-area">
                                        <div class="product-wrapper listview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <span class="onsale">Sale!</span>
                                                        <img src="images/product/5.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Sit voluptatem</a></h2>
                                                    <span class="price">
                                                                    <del>$ 77.00</del> $ 66.00
                                                                </span>
                                                    <div class="product-rattings">
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star-half-o"></i></span>
                                                        <span><i class="fa fa-star-o"></i></span>
                                                    </div>
                                                    <div class="product-desc">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>
                                                    </div>
                                                </div>
                                                <div class="actions-wrapper">
                                                    <div class="add-to-cart">
                                                        <a href="cart.html">Add to cart</a>
                                                    </div>
                                                    <div class="star-actions">
                                                        <ul class="actions">
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i>Add to Wishlist</a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i>Compare</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="single-product-area">
                                        <div class="product-wrapper listview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <span class="onsale">Sale!</span>
                                                        <img src="images/product/6.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Sit voluptatem</a></h2>
                                                    <span class="price">
                                                                    <del>$ 77.00</del> $ 66.00
                                                                </span>
                                                    <div class="product-rattings">
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star-half-o"></i></span>
                                                        <span><i class="fa fa-star-o"></i></span>
                                                    </div>
                                                    <div class="product-desc">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>
                                                    </div>
                                                </div>
                                                <div class="actions-wrapper">
                                                    <div class="add-to-cart">
                                                        <a href="cart.html">Add to cart</a>
                                                    </div>
                                                    <div class="star-actions">
                                                        <ul class="actions">
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i>Add to Wishlist</a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i>Compare</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="single-product-area">
                                        <div class="product-wrapper listview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <span class="onsale">Sale!</span>
                                                        <img src="images/product/7.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Sit voluptatem</a></h2>
                                                    <span class="price">
                                                                    <del>$ 77.00</del> $ 66.00
                                                                </span>
                                                    <div class="product-rattings">
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star-half-o"></i></span>
                                                        <span><i class="fa fa-star-o"></i></span>
                                                    </div>
                                                    <div class="product-desc">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>
                                                    </div>
                                                </div>
                                                <div class="actions-wrapper">
                                                    <div class="add-to-cart">
                                                        <a href="cart.html">Add to cart</a>
                                                    </div>
                                                    <div class="star-actions">
                                                        <ul class="actions">
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i>Add to Wishlist</a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i>Compare</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="single-product-area">
                                        <div class="product-wrapper listview">
                                            <div class="list-col4">
                                                <div class="product-image">
                                                    <a href="">
                                                        <span class="onsale">Sale!</span>
                                                        <img src="images/product/8.jpg" alt="">
                                                    </a>
                                                    <div class="quickviewbtn">
                                                        <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"  data-original-title="Quick View"><i class="ion-eye"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-col8">
                                                <div class="product-info">
                                                    <h2><a href="single-product.html">Sit voluptatem</a></h2>
                                                    <span class="price">
                                                                    <del>$ 77.00</del> $ 66.00
                                                                </span>
                                                    <div class="product-rattings">
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star-half-o"></i></span>
                                                        <span><i class="fa fa-star-o"></i></span>
                                                    </div>
                                                    <div class="product-desc">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>
                                                    </div>
                                                </div>
                                                <div class="actions-wrapper">
                                                    <div class="add-to-cart">
                                                        <a href="cart.html">Add to cart</a>
                                                    </div>
                                                    <div class="star-actions">
                                                        <ul class="actions">
                                                            <li><a href=""><i class="ion-android-favorite-outline"></i>Add to Wishlist</a></li>
                                                            <li><a href=""><i class="ion-ios-shuffle-strong"></i>Compare</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <nav class="woocommerce-pagination">
                    <ul class="page-numbers">
                        <li><span aria-current="page" class="page-numbers current">1</span></li>
                        <li><a class="page-numbers" href="#">2</a></li>
                        <li><a class="page-numbers" href="#">3</a></li>
                        <li><a class="page-numbers" href="#">4</a></li>
                        <li><a class="next page-numbers" href="#">→</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- Shop page wraper end -->
</body>
