<%--
  Created by IntelliJ IDEA.
  User: hien
  Date: 2/7/2023
  Time: 5:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<head>
    <title>Login</title>
</head>
<body>
<div class="breadcrumbs-container">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <nav class="woocommerce-breadcrumb">
                    <a href="<c:url value="/" />">Trang chủ</a>
                    <span class="separator">/</span> Đăng nhập
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
                <h1 class="entry-title">Đăng nhập</h1>
            </div>
        </div>
    </div>
</div>
<!-- Page title end -->
<!-- cart page content -->
<div class="login-page-area">
    <div class="container">
        <div class="login-area">
            <!-- New Customer Start -->
            <div class="row">
                <div class="col-md-6">
                    <div class="well mb-sm-30">
                        <div class="new-customer">
                            <h3 class="custom-title">new customer</h3>
                            <p class="mtb-10"><strong>Register</strong></p>
                            <p>By creating an account you will be able to shop faster, be up to date on an order's
                                status, and keep track of the orders you have previously made</p>
                            <a class="customer-btn" href="register.html">continue</a>
                        </div>
                    </div>
                </div>
                <!-- New Customer End -->
                <!-- Returning Customer Start -->
                <div class="col-md-6">
                    <div class="well">
                        <div class="return-customer">
                            <h3 class="mb-10 custom-title">Chào mừng bạn đã trở lại !</h3>

                            <%--                                <p class="mb-10"><strong>I am a returning customer</strong></p>--%>
                            <form id="login-form" action="<c:url value="/login" />" method="post">
                                <div class="form-group">
                                    <label>Username</label>
                                    <input type="text" name="username" placeholder="Nhập Username của bạn..."
                                           id="input-username" minlength="4" required class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="text" name="password" minlength="4" required placeholder="Mật khẩu"
                                           id="input-password"
                                           class="form-control">
                                </div>
                                <p class="lost-password"><a href="#">Quên mật khẩu?</a></p>
                                <input type="submit" id="btn-login" value="Đăng nhập" class="return-customer-btn">
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Returning Customer End -->
            </div>
        </div>
    </div>
</div>

<!-- cart page content end -->
</body>
