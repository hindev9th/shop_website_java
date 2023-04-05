<%--
  Created by IntelliJ IDEA.
  User: hien
  Date: 2/7/2023
  Time: 5:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
    <div class="breadcrumbs-container">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <nav class="woocommerce-breadcrumb">
                        <a href="/">Trang chủ</a>
                        <span class="separator">/</span> Đăng ký
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
                    <h1 class="entry-title">Đăng ký tài khoản mới</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- Page title end -->
    <!-- cart page content -->
    <div class="register-page-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <form:form action="register" cssClass="form-register" method="post" modelAttribute="customer">
                        <fieldset>
                            <legend>Thông tin cá nhân của bạn</legend>
                            <div class="form-group d-md-flex align-items-md-center">
                                <form:label path="name" cssClass="control-label col-md-2" ><span class="require">*</span>Họ tên</form:label>
                                <div class="col-md-10">
                                    <form:input path="name" type="text" cssClass="form-control" required="true" placeholder="vd: Nguyễn Văn A"/>
                                </div>
                            </div>
                            <div class="form-group d-md-flex align-items-md-center">
                                <form:label path="gender" cssClass="control-label col-md-2"><span class="require">*</span>Giới tính</form:label>
                                <div class="col-md-10">
                                    <form:input path="gender" type="text" cssClass="form-control"  required="true" placeholder="vd: Nam"/>
                                </div>
                            </div>
                            <div class="form-group d-md-flex align-items-md-center">
                                <form:label path="date" cssClass="control-label col-md-2"><span class="require">*</span>Ngày sinh</form:label>
                                <div class="col-md-10">
                                    <form:input path="date" type="date" cssClass="form-control" id="registerDate" required="true"/>
                                </div>
                            </div>
                            <div class="form-group d-md-flex align-items-md-center">
                                <form:label path="phone" cssClass="control-label col-md-2">Số điện thoại</form:label>
                                <div class="col-md-10">
                                    <form:input path="phone" type="number" cssClass="form-control"
                                                title="Số điện thoại của bạn"
                                                placeholder="0858..." />
                                </div>
                            </div>
                            <div class="form-group d-md-flex align-items-md-center">
                                <form:label path="email" cssClass="control-label col-md-2">Email</form:label>
                                <div class="col-md-10">
                                    <form:input path="email" type="email" cssClass="form-control"
                                                title="Địa chỉ email của bạn vd: abc@gmail.com"
                                                placeholder="abc@gg.com" />
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Tài khoản của bạn</legend>
                            <div class="form-group d-md-flex align-items-md-center">
                                <form:label path="username" cssClass="control-label col-md-2" title="(Chữ hoa , thường , số)(không được khoảng trắng và các ký tự đặc biệt)"><span class="require">*</span>Tên tài khoản:</form:label>
                                <div class="col-md-10">
                                    <form:input path="username" required="true" minlength="6" id="register-usn" pattern="[a-zA-Z0-9]+" type="text"  cssClass="form-control" title="Tên tài khoản(Chữ hoa , thường , số)(không được khoảng trắng và các ký tự đặc biệt)" placeholder="tentaikhoan..."/>
                                </div>
                            </div>
                            <div class="form-group d-md-flex align-items-md-center">
                                    <form:label path="password" cssClass="control-label col-md-2" title="(Chữ hoa , thường , số)(không được khoảng trắng và các ký tự đặc biệt)"><span class="require">*</span>Mật khẩu:</form:label>
                                <div class="col-md-10">
                                    <form:input path="password" required="true" minlength="6" id="register-pwd" pattern="[a-zA-Z0-9]+" type="password"  cssClass="form-control" title="Mật khẩu(Chữ hoa , thường , số)(không được khoảng trắng và các ký tự đặc biệt)"/>
                                </div>
                            </div>
                            <div class="form-group d-md-flex align-items-md-center">
                                <label class="control-label col-md-2" for="pwd-confirm" title="(Chữ hoa , thường , số)(không được khoảng trắng và các ký tự đặc biệt)"><span class="require">*</span>Xác nhận mật khẩu</label>
                                <div class="col-md-10">
                                    <input type="password" pattern="[a-zA-Z0-9]+" class="form-control" required id="pwd-confirm" title="Xác nhận mật khẩu(Chữ hoa , thường , số)(không được khoảng trắng và các ký tự đặc biệt)">
                                </div>
                            </div>
                        </fieldset>
                        <div class="terms">
                            <div class="float-md-right">
<%--                                <span>I have read and agree to the <a href="#" class="agree"><b>Privacy Policy</b></a></span>--%>
<%--                                <input type="checkbox" name="agree" value="1"> &nbsp;--%>
                                <input type="submit" value="Đăng ký" class="return-customer-btn">
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
    <!-- cart page content end -->
</body>
</html>
