<%-- 
    Document   : header
    Created on : Sep 08, 2016, 9:46:43 AM
    Author     : EndlessLove
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
        
        <link href="<c:url value="/resources/css/bootstrap-theme.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap-theme.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap-theme.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/etalage.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
        
        <script src="<c:url value="/resources/js/bootstrap.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery.etalage.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery.flexisel.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/npm.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/responsiveslides.min.js"/>" type="text/javascript"></script>

        <!-- Comment facebook -->
    <div id="fb-root"></div>
    <script>(function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id))
                return;
            js = d.createElement(s);
            js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.7&appId=618162915019031";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
</head>
<body>


    <!-- Header -->
    <!-- Header -->
    <!-- Navigation -->

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <!-- Nav -->
        <div class="navbar-header">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/home/index"><p style="color:white;font-weight:bold;"> OoShop</p></a>
        </div>
        <!-- Nav collapse -->
        <div class="collapse navbar-collapse" id="menu">
            <ul class="nav navbar-nav">
                <li>
                    <a href="#">Giới Thiệu</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/home/news">Tin Tức</a>
                </li>
                <li>
                    <a href="#">Liên Hệ</a>
                </li>

            </ul>

            <div class="navbar-right">

                <!-- ------------------------------------------ -->
                <a href="${pageContext.request.contextPath}/home/login" class="btn btn-primary"><span class="glyphicon glyphicon-user"></span>&nbspLogin</a>
                <a href="${pageContext.request.contextPath}/home/register" class="btn btn-primary"><span class="glyphicon glyphicon-lock"></span>&nbspRegister</a>
                <a href="" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>&nbspGiỏ Hàng</a>
                
            </div>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
<!-- Navigation -->

<!-- nav -->
<div class="container">
    <br></br><hr>

    <ul class="nav nav-tabs"  style="font-weight:bold;">
        <li><a href="${pageContext.request.contextPath}/home/index" style="font-size:16px;"><span class="glyphicon glyphicon-home"></span> TRANG CHỦ</a></li>
        
        <c:forEach var="item" items="${listCategory}">
            <li><a href="${pageContext.request.contextPath}/product/list?categoryID=${item.categoryID}">${item.categoryName}</a></li>
        </c:forEach>

    </ul>

    <div class="header-bottom">


        <div class="hd2">

            <p style="font-style:italic;color:#587BF9;float:left;margin-top:6px;">Chào mừng bạn đến với OoShop</p>
            <div class="search" style="float:right;margin-top:6px;">
                <form>
                    <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                                    this.value = '';
                                                                }" >
                    <input type="submit" class="btn btn-info btn-sm" > </li>
                </form>
            </div>
            <ul class="xh">
                <li><a href="https://www.facebook.com/"><img src="<c:url value="/resources/images/fb.png" />"></a></li>
                <li><a href="https://vn.mail.yahoo.com"><img src="<c:url value="/resources/images/yh.png" />"></a></li>
                <li><a href="https://twitter.com/"><img src="<c:url value="/resources/images/tw.png" />"></a></li>
                <li><a href="https://mail.google.com"><img src="<c:url value="/resources/images/gm.png" />"></a></li>

            </ul>           

            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"></div>


    </div>

                <hr>
</div>
<!-- nav -->

<!-- Header -->	


<!-- jQuery -->
<script src="js/jquery.js"></script>
<script src="js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

</body>
</html>