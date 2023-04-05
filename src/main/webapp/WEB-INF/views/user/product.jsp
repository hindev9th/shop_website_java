<%--
  Created by IntelliJ IDEA.
  User: hien
  Date: 3/2/2023
  Time: 3:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<html>
<head>
    <title>Product</title>
</head>
<body>
<!-- Breadcrumbs -->
<div class="breadcrumbs-container">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <nav class="woocommerce-breadcrumb">
                    <a href="<c:url value="/" />">Trang chủ</a>
                    <span class="separator">/</span>
                    <a href="<c:url value="/category" />">Danh mục</a>
                    <span class="separator">/</span>
                    <a href="<c:url value="/category/${product.get(0).categoryId}" />">${category.name}</a>
                    <span class="separator">/</span> ${product.get(0).name}
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumbs End -->
<!-- Single product area -->
<div class="single-product-area">
    <div class="container">
        <div class="single-product-wrapper">
            <div class="row">
                <div class="col-xs-12 col-md-7 col-lg-7 position-relative">
                    <div class="product-details-img-content product-details">
                        <div class="product-details-tab mr-40">
                            <div class="product-details-large tab-content">
                                <c:forEach var="item" items="${product}" varStatus="status">
                                    <c:if test="${not empty item.colorImage}">
                                        <div class="tab-pane ${status.first ? 'active' : ''}" id="a${item.colorId}">
                                            <div class="product-popup">
                                                <a href="<c:url value="/assets/user/images/product/mini/${item.colorImage}" />">
                                                    <img src="<c:url value="/assets/user/images/product/mini/${item.colorImage}" />" alt="${item.colorImage}">
                                                </a>
                                            </div>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </div>
                            <div class="product-details-small nav product-dec-slider owl-carousel">
                                <c:forEach var="item" items="${product}" varStatus="status">
                                    <c:if test="${not empty item.colorImage}">
                                        <a class="${status.first ? 'active' : ''}" href="#a${item.colorId}">
                                            <img src="<c:url value="/assets/user/images/product/mini/${item.colorImage}" />" alt="${item.colorImage}">
                                        </a>
                                    </c:if>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-5 col-lg-5">
                    <div class="single-product-info">
                        <h1>${product.get(0).name}</h1>
                        <div class="product-rattings">
                            <c:forEach begin="1" var="i" end="5">
                                <c:if test="${i <= product.get(0).rate}">
                                    <span><i class="fa fa-star"></i></span>
                                </c:if>
                                <c:if test="${i > product.get(0).rate}">
                                    <span><i class="fa fa-star-o"></i></span>
                                </c:if>
                            </c:forEach>
                        </div>
                        <span class="price">
                            <c:if test="${product.get(0).sale > 0 }">
                                <del><fmt:formatNumber type="number" maxFractionDigits="3"
                                                       value="${product.get(0).price}"/>₫</del>
                                <fmt:formatNumber type="number" maxFractionDigits="3" value="${product.get(0).sale}"/>₫
                            </c:if>
                            <c:if test="${product.get(0).sale == 0 }">
                                <fmt:formatNumber type="number" maxFractionDigits="3" value="${product.get(0).price}"/>₫
                            </c:if>
                        </span>

                        <c:if test="${productType.size() > 0}">
                            <div class="product_meta">
                                <span class="posted_in">Loại: </span>
                            </div>
                            <div class="box-type">
                                <c:forEach var="item" items="${productType}" varStatus="status">
                                    <a href="<c:url value="/product/${item.id}" />"
                                       class="${item.id == product.get(0).id ? 'active' : ''}"
                                    >${item.type}</a>
                                </c:forEach>
                            </div>
                        </c:if>

                        <c:if test="${product.size() > 0}">
                            <div class="product_meta">
                                <span class="posted_in">Màu sắc: </span>
                            </div>
                            <div class="box-color">
                                <ul class="nav" role="tablist">
                                    <c:forEach var="item" items="${product}" varStatus="status">
                                        <li class="${status.first ? 'active' : ''}">
                                            <a data-bs-toggle="tab" href="#a${item.colorId}" data-color-id="${item.colorId}"
                                               class="tab-color ${status.first ? 'active' : ''}"
                                            >${item.colorName}</a>
                                        </li>
                                    </c:forEach>

                                </ul>
                            </div>
                        </c:if>
                        <div class="box-quantity d-flex">
                            <form action="#">
                                <input class="quantity mr-40" id="quantity-product" min="1" value="1" type="number">
                            </form>
                            <a class="btn-add-to-cart add-cart" action="<c:url value="/ajax/cart/add"/>" product-id="${product[0].id}" data-color-id="${product[0].colorId}" i="1" name="${product[0].name}" >Thêm giỏ hàng</a>
                        </div>
                        <div class="wishlist-compear-area">
                            <a href="wishlist.html"><i class="ion-ios-heart-outline"></i> Add to Wishlist</a>
                        </div>
                        <div class="product_meta">
                            <span class="posted_in">Thương hiệu: <a href="#" rel="tag">${brand.name}</a></span>
                        </div>
                        <div class="single-product-sharing">
                            <div class="widget widget_socialsharing_widget">
                                <h3 class="widget-title">Share :</h3>
                                <ul class="social-icons">
                                    <li><a class="facebook social-icon"
                                           href="https://www.facebook.com/share.php?<c:url value="/product/${product.get(0).id}"/>"
                                           target="_blank"><i
                                            class="fa fa-facebook"></i></a></li>
                                    <li><a class="twitter social-icon"
                                           href="https://twitter.com/intent/tweet?url=<c:url value="/product/${product.get(0).id}"/>"><i
                                            class="fa fa-twitter"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Single product area end -->
<!-- product description -->
<div class="product-description-area">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a data-bs-toggle="tab" href="#description" class="active">Mô tả</a>
                    </li>
                    <li>
                        <a data-bs-toggle="tab" href="#infomation">Thông tin</a>
                    </li>
                    <li>
                        <a data-bs-toggle="tab" href="#reviews">Đánh giá</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div id="description" class="tab-pane fade in show active">
                        <h2>Description</h2>
                        <p>${product.get(0).describe}</p>
                    </div>
                    <div id="infomation" class="tab-pane fade">
                        <h2>infomation</h2>
                        <p>${product.get(0).info}</p>
                    </div>
                    <div id="reviews" class="tab-pane fade product-review-area">
                        <h3>Lượt đánh giá: <span id="total-review">${productReview.size()}</span> </h3>
                        <ol class="commentlist" id="list-product-review" code="${product.get(0).code}">
                            <c:forEach var="item" begin="0" items="${productReview}" end="5">
                                <li>
                                    <div class="single-comment">
                                        <div class="comment-avatar">
                                            <img src="<c:url value="/assets/user/images/avt/${item.image}" />" alt="comment image bege">
                                        </div>
                                        <div class="comment-info">
                                            <div class="product-rattings">
                                                <c:forEach begin="1" var="i" end="5">
                                                    <c:if test="${i <= item.rate}">
                                                        <span><i class="fa fa-star"></i></span>
                                                    </c:if>
                                                    <c:if test="${i > item.rate}">
                                                        <span><i class="fa fa-star-o"></i></span>
                                                    </c:if>
                                                </c:forEach>
                                            </div>
                                            <span class="date"><strong>${item.name}</strong> ${item.createAt}</span>
                                            <p>${item.content}</p>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>

                        </ol>
                        <div class="box-more-review">
                            <button class="btn btn-more-review" code="${product.get(0).code}" action="<c:url value="/ajax/review/${product.get(0).id}/" />" id="btn-more-review">Xem thêm</button>
                        </div>
                        <c:if test="${empty sessionScope.customer}">
                            <div class="box-login">
                                <span>Bạn chưa đăng nhập nên không thể đánh giá sản phẩm này !</span>
                                <a href="<c:url value="/login" /> ">Đăng nhập</a>
                            </div>
                        </c:if>
                        <c:if test="${not empty sessionScope.customer}">
                            <div class="box-login">
                                <span>Bạn chưa mua sản phẩm này hoặc đã đặt nhưng chưa nhận hàng nên không thể đánh giá !</span>
                            </div>

                            <div class="comment-respond">
                                <p>Điểm đánh giá</p>
                                <form action="#">

                                            <span>
                                                <div class="br-wrapper br-theme-fontawesome-stars">
                                                    <select class="star-rating" name="rate" style="display: none;">
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                    </select>

                                                </div>
                                            </span>
                                    <div class="text-filds">
                                        <label for="comment">Đánh giá của bạn <span
                                                class="required">*</span></label>
                                        <textarea id="comment" name="comment" cols="45" rows="8" maxlength="65525"
                                                  required="required"></textarea>
                                    </div>
                                    <div class="form-submit">
                                        <input name="submit" type="submit" id="submit" class="submit"
                                               value="Submit">
                                    </div>
                                </form>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- product description end -->
<!-- Single related product -->
<div class="single-related-product-area">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="section-title">
                    <h3>Related products</h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="related-product">
                <div class="single-product-area">
                    <div class="product-wrapper gridview">
                        <div class="list-col4">
                            <div class="product-image">
                                <a href="">
                                    <img src="images/product/9.jpg" alt="">
                                </a>
                                <div class="quickviewbtn">
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"
                                       data-original-title="Quick View"><i class="ion-eye"></i></a>
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
            <div class="related-product">
                <div class="single-product-area">
                    <div class="product-wrapper gridview">
                        <div class="list-col4">
                            <div class="product-image">
                                <a href="">
                                    <img src="images/product/5.jpg" alt="">
                                </a>
                                <div class="quickviewbtn">
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"
                                       data-original-title="Quick View"><i class="ion-eye"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="list-col8">
                            <div class="product-info">
                                <h2><a href="single-product.html">Donec eu libero</a></h2>
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
                                        <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                        <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="related-product">
                <div class="single-product-area">
                    <div class="product-wrapper gridview">
                        <div class="list-col4">
                            <div class="product-image">
                                <a href="">
                                    <img src="images/product/6.jpg" alt="">
                                </a>
                                <div class="quickviewbtn">
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"
                                       data-original-title="Quick View"><i class="ion-eye"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="list-col8">
                            <div class="product-info">
                                <h2><a href="single-product.html">Pellentesque posuere</a></h2>
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
                                        <li><a href=""><i class="ion-android-favorite-outline"></i></a></li>
                                        <li><a href=""><i class="ion-ios-shuffle-strong"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="related-product">
                <div class="single-product-area">
                    <div class="product-wrapper gridview">
                        <div class="list-col4">
                            <div class="product-image">
                                <a href="">
                                    <img src="images/product/7.jpg" alt="">
                                </a>
                                <div class="quickviewbtn">
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"
                                       data-original-title="Quick View"><i class="ion-eye"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="list-col8">
                            <div class="product-info">
                                <h2><a href="single-product.html">Cras neque metus</a></h2>
                                <span class="price">
                                                 $ 70.00
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
            <div class="related-product">
                <div class="single-product-area">
                    <div class="product-wrapper gridview">
                        <div class="list-col4">
                            <div class="product-image">
                                <a href="">
                                    <img src="images/product/1.jpg" alt="">
                                </a>
                                <div class="quickviewbtn">
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#product_modal"
                                       data-original-title="Quick View"><i class="ion-eye"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="list-col8">
                            <div class="product-info">
                                <h2><a href="single-product.html">Aliquam lobortis est</a></h2>
                                <span class="price">
                                                $ 80.00
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
</div>
<!-- Single related product end -->
</body>
</html>
