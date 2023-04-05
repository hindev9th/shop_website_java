<%--
  Created by IntelliJ IDEA.
  User: hien
  Date: 3/1/2023
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<html>
<head>
    <title>404</title>
</head>
<body>
<!-- Breadcrumbs -->
<div class="breadcrumbs-container">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <nav class="woocommerce-breadcrumb">
                    <a href="<c:url value="/" />">Home</a>
                    <span class="separator">/</span> 404
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumbs End -->
<!-- cart page content -->
<div class="error_page_start">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>404! PAGE NOT BE FOUND</h2>
                <p>Sorry but the page you are looking for does not exist, have been removed, name changed or is temporarity unavailable.</p>
                <div class="hom_btn">
                    <a href="<c:url value="/" />">Back to home page</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- cart page content end -->
</body>
</html>
