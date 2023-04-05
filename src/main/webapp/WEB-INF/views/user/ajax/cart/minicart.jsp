<%--
  Created by IntelliJ IDEA.
  User: hien
  Date: 3/5/2023
  Time: 5:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<div class="shop-cart-menu pull-right">
    <ul>
        <li><a href="wishlist.html"><i class="ion-android-favorite-outline"></i></a></li>
        <li><a href="#">
            <span class="cart-icon">
                <i class="ion-bag"></i><sup>${empty sessionScope.countCart ? 0 : sessionScope.countCart}</sup>
            </span>
            <span class="cart-text">
                <span class="cart-text-title">Giỏ hàng <br>
                    <strong><fmt:formatNumber type="number" maxFractionDigits="3"
                                              value="${empty sessionScope.subtotalCart ? 0 : sessionScope.subtotalCart}"/>₫</strong>
                </span>
            </span>
        </a>
            <ul>
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
                                <h5><a href="<c:url value="/product/${item.productId}" />">${item.name}</a></h5>
                                <c:if test="${item.price > 0}">
                                    <del><fmt:formatNumber type="number" maxFractionDigits="3"
                                                           value="${item.price}"/>₫</del>
                                    <span class="price"><fmt:formatNumber type="number" maxFractionDigits="3"
                                                                          value="${item.sale}"/>₫</span>
                                </c:if>
                                <c:if test="${item.price == 0}">
                                    <span class="price"><fmt:formatNumber type="number" maxFractionDigits="3"
                                                                          value="${item.price}"/>₫</span>
                                </c:if>
                                <span class="quantaty">Qty: ${item.quantity}</span>
                                <span class="cart-remove"><a href="#"><i
                                        class="fa fa-times"></i></a></span>
                            </div>
                        </div>
                    </li>
                </c:forEach>
                <li>
                    <!-- shop-cart-total -->
                    <div class="shop-cart-total">
                        <p>Tổng phụ: <span class="pull-right"><fmt:formatNumber type="number" maxFractionDigits="3"
                                                                                value="${empty sessionScope.subtotalCart ? 0 : sessionScope.subtotalCart}"/>₫</span>
                        </p>
                    </div>
                </li>
                <li>
                    <div class="shop-cart-btn">
                        <a href="checkout.html">Thanh toán</a>
                        <a href="cart.html" class="pull-right">Giỏ hàng</a>
                    </div>
                </li>
            </ul>
        </li>
    </ul>
</div>

