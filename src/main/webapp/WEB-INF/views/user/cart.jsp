<%--
  Created by IntelliJ IDEA.
  User: hien
  Date: 4/6/2023
  Time: 2:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<html>
<head>
    <title>Giỏ hàng</title>
</head>
<body>
<!-- Breadcrumbs -->
<div class="breadcrumbs-container">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <nav class="woocommerce-breadcrumb">
                    <a href="<c:url value="/"/> ">Trang chủ</a>
                    <span class="separator">/</span> Giỏ hàng
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumbs End -->
<!-- Page title -->
<div class="entry-header">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h1 class="entry-title">Giỏ hàng</h1>
            </div>
        </div>
    </div>
</div>
<!-- Page title end -->
<!-- cart page content -->
<div class="cart-page-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12" id="cart-message">
                <c:if test="${empty sessionScope.cart}">
                    <div class="box-cart-message">
                        <h3>Giỏ hàng của bạn chưa có sản phẩm nào.</h3>
                        <div class="buttons-cart">
                            <a href="<c:url value="/"/> ">Mua sắm ngay</a>
                        </div>
                    </div>
                </c:if>
                <c:if test="${not empty sessionScope.cart}">
                    <!-- Form Start -->
                    <form action="#">
                        <!-- Table Content Start -->
                        <div class="table-content table-responsive mb-50" id="list-cart-items">

                                <c:forEach var="item" items="${sessionScope.cart}">
                                    <div class="cart-item">
                                        <div class="product-content">
                                            <div class="product-image">
                                                <a href="<c:url value="/product/${item.productId}" />"><img src="<c:url value = "/assets/user/images/product/mini/${item.image}" />" alt="product image"></a>
                                            </div>
                                            <div class="product-details">
                                                <div class="product-info">
                                                    <a href="<c:url value="/product/${item.productId}"/>" class="product-name">${item.name}</a>
                                                    <div class="product-type">
                                                        <span class="type">Loại: ${item.type}</span>
                                                        <span class="color">Màu sắc: ${item.colorName}</span>
                                                    </div>
                                                    <c:if test="${item.sale>0}">
                                                        <del><fmt:formatNumber type="number"
                                                                               maxFractionDigits="3"
                                                                               value="${item.price}"/>₫</del>
                                                        <span class="product-price"><fmt:formatNumber type="number"
                                                                                                      maxFractionDigits="3"
                                                                                                      value="${item.sale}"/>₫</span>
                                                    </c:if>
                                                    <c:if test="${item.sale == 0}">
                                                        <span class="product-price"><fmt:formatNumber type="number"
                                                                                                      maxFractionDigits="3"
                                                                                                      value="${item.price}"/>₫</span>
                                                    </c:if>
                                                </div>
                                                <div class="product-quantity">
                                                    <span class="product-quantity-action" id="action-minus"
                                                           product-id="${item.productId}" data-color-id="${item.colorId}" ><i
                                                            class="fa fa-minus" aria-hidden="true"></i></span>
                                                    <input type="number" readonly min="0" value="${item.quantity}"
                                                           class="input-quantity-cart">
                                                    <span class="product-quantity-action" id="action-plus"
                                                           product-id="${item.productId}" data-color-id="${item.colorId}"><i
                                                            class="fa fa-plus" aria-hidden="true"></i></span>
                                                </div>
                                                <span class="product-subtotal">Tổng: <fmt:formatNumber type="number"
                                                                                                       maxFractionDigits="3"
                                                                                                       value="${item.sale > 0
                                                                                       ? item.sale * item.quantity :
                                                                                       item.price * item.quantity
                                                                                       }"/>₫</span>
                                                <div class="product-remove-item">
                                                    <a class="btn-remove-item-cart" data-id="${item.productId}" data-color="${item.colorId}">Xóa</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                        </div>
                        <!-- Table Content Start -->
                        <div class="row">
                            <!-- Cart Button Start -->
                            <div class="col-md-8 col-sm-7 col-xs-12">
                                <div class="buttons-cart">
                                    <a href="<c:url value="/"/>">Tiếp tục mua sắm</a>
                                </div>
                            </div>
                            <!-- Cart Button Start -->
                            <!-- Cart Totals Start -->
                            <div class="col-md-4 col-sm-5 col-xs-12">
                                <div class="cart_totals">
                                    <h2>Tổng giỏ hàng</h2>
                                    <br>
                                    <table>
                                        <tbody>
                                        <tr class="cart-subtotal">
                                            <th>Tiết kiệm</th>
                                            <td><span
                                                    class="amount total-save"><fmt:formatNumber type="number"
                                                                                                maxFractionDigits="3"
                                                                                                value="${sessionScope.totalSave}"/>₫</span>
                                            </td>
                                        </tr>
                                        <tr class="cart-subtotal">
                                            <th>Tổng phụ</th>
                                            <td><span class="amount subtotal-minicart"><fmt:formatNumber type="number"
                                                                                                         maxFractionDigits="3"
                                                                                                         value="${sessionScope.subtotalCart}"/>₫</span>
                                            </td>
                                        </tr>
                                        <tr class="order-total">
                                            <th>Tổng</th>
                                            <td>
                                                <strong><span class="amount subtotal-minicart"><fmt:formatNumber
                                                        type="number" maxFractionDigits="3"
                                                        value="${sessionScope.subtotalCart}"/>₫</span></strong>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <div class="wc-proceed-to-checkout">
                                        <a href="checkout.html">Tiếp tục thanh toán</a>
                                    </div>
                                </div>
                            </div>
                            <!-- Cart Totals End -->
                        </div>
                        <!-- Row End -->
                    </form>
                    <!-- Form End -->
                </c:if>

            </div>
        </div>
    </div>
</div>
<!-- cart page content end -->
</body>
</html>
                                       