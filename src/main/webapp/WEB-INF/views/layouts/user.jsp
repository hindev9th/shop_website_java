<%--
  Created by IntelliJ IDEA.
  User: hien
  Date: 19/12/2022
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="<c:url value = "/assets/user/images/icons/icon_logo.png"/>">
        <!-- Place favicon.ico in the root directory -->
        <title><decorator:title/></title>

        <base href="<c:url value="/"/>" />
        <link rel="stylesheet" href="<c:url value = "/assets/user/css/bootstrap.min.css"/>">
        <link rel="stylesheet" href="<c:url value = "/assets/user/css/font-awesome.min.css" />">
        <link rel="stylesheet" href="<c:url value = "/assets/user/css/ionicons.min.css"/>">
        <link rel="stylesheet" href="<c:url value = "/assets/user/css/css-plugins-call.css"/>">
        <link rel="stylesheet" href="<c:url value = "/assets/user/css/bundle.css"/>">
        <link rel="stylesheet" href="<c:url value = "/assets/user/css/main.css"/>">
        <link rel="stylesheet" href="<c:url value = "/assets/user/css/responsive.css"/>">
        <link rel="stylesheet" href="<c:url value = "/assets/user/css/colors.css"/>">
    </head>

    <body>
        <ul class="notifications"></ul>
        <div class="box-loading active">
            <img src="<c:url value="/assets/user/images/loader.gif" />"/>
        </div>
        <!-- Body main wrapper start -->
        <div class="wrapper home-three home-four">
            <%@include file="user/header.jsp" %>

            <decorator:body/>

            <%@include file="user/footer.jsp" %>
        </div>

        <!-- jQuery CDN -->
        <script src="<c:url value = "/assets/user/js/jquery-1.12.4.min.js"/>"></script>

        <!-- jQuery Local -->
        <script src="<c:url value = "/assets/user/js/jquery.barrating.min.js"/>"></script>

        <!-- Bootstrap min js  -->
        <script src="<c:url value = "/assets/user/js/bootstrap.min.js"/>"></script>
        <!-- nivo slider pack js  -->
        <script src="<c:url value = "/assets/user/js/jquery.nivo.slider.pack.js"/>"></script>
        <!-- All plugins here -->
        <script src="<c:url value = "/assets/user/js/plugins.js"/>"></script>
        <!-- Main js  -->
        <script src="<c:url value = "/assets/user/js/main.js"/>"></script>
        <!-- Custom js  -->
        <script src="<c:url value = "/assets/user/js/custom.js"/>"></script>
        <script src="<c:url value = "/assets/user/js/ajax.js"/>"></script>

    </body>
</html>
