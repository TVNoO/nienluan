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

        <link href="<c:url value="http://jquery-ui.googlecode.com/svn/tags/1.8.2/themes/" />" rel="stylesheet">

        
        <script src="<c:url value="/resources/js/jquery.etalage.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/responsiveslides.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery.validate.js"/>" type="text/javascript"></script>

        <script src="<c:url value="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.2/jquery-ui.js"/>" type="text/javascript"></script>


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

    <!-- search autocomplete -->
    <script type="text/javascript">
        $(document).ready(function () {
            $('#productName').autocomplete({
                source: '/search.html';
            });
        });
    </script>


</head>
<body>


    <!-- Header -->
    <!-- Header -->
    <!-- Navigation -->

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <!-- Nav -->
        <div class="navbar-header">
            <a class="navbar-brand" href="trangchu.html"><p style="color:white;font-weight:bold;"> OoShop</p></a>
        </div>
        <!-- Nav collapse -->
        <div class="collapse navbar-collapse" id="menu">
            <ul class="nav navbar-nav">
                <li>
                    <a href="#">Giới Thiệu</a>
                </li>
                <li>
                    <a href="goNews.html">Tin Tức</a>
                </li>
                <li>
                    <a href="#">Liên Hệ</a>
                </li>

            </ul>

            <div class="navbar-right">

                <!-- ------------------------------------------ -->
                
                <%
                    String userEmail = (String) session.getAttribute("userEmail");
                    //out.print(userEmail);
                    if (userEmail != null) {
                %>
                <span style="color: white;">${sessionScope.userEmail}</span>'
                <a href="logout.html" class="btn btn-primary"><span class="glyphicon glyphicon-user"></span>&nbspĐăng Xuất</a>
                <a href="goCart.html" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>&nbspGiỏ Hàng</a>
                
                <%
                } else {
                %>
                <a href="goDangNhap.html" class="btn btn-primary"><span class="glyphicon glyphicon-user"></span>&nbspĐăng Nhập</a>
                <a href="goDangKi.html" class="btn btn-primary"><span class="glyphicon glyphicon-lock"></span>&nbspĐăng kí</a>
                <a href="goCart.html" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>&nbspGiỏ Hàng</a>

                <%
                    }
                %>

                



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
        <li><a href="trangchu.html" style="font-size:16px;"><span class="glyphicon glyphicon-home"></span> TRANG CHỦ</a></li>

        <c:forEach var="item" items="${listCategory}">
            <li><a href="goProduct.html?categoryID=${item.categoryId}">${item.categoryName}</a></li>
            </c:forEach>

    </ul>
    <div class="header-bottom">


        <div class="hd2">

            <p style="font-style:italic;color:#587BF9;float:left;margin-top:6px;">Chào mừng bạn đến với OoShop</p>
            <div class="search" style="float:right;margin-top:6px;">
                <form action="goDetailSearch.html?productName=${productName}" method="get">
                    <input type="text" name="productName" id="productName" />
                    <button type="submit" class="btn btn-info btn-sm">Tìm kiếm</button>
                </form>
            </div>
            <!--            <div class="search" style="float:right;margin-top:6px;">
                            <form>
                                <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                                            this.value = '';
                                        }" >
                                <input type="submit" class="btn btn-info btn-sm" > </li>
                            </form>
                        </div>-->
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
<script type='text/javascript'>window._sbzq || function (e) {
        e._sbzq = [];
        var t = e._sbzq;
        t.push(["_setAccount", 50509]);
        var n = e.location.protocol == "https:" ? "https:" : "http:";
        var r = document.createElement("script");
        r.type = "text/javascript";
        r.async = true;
        r.src = n + "//static.subiz.com/public/js/loader.js";
        var i = document.getElementsByTagName("script")[0];
        i.parentNode.insertBefore(r, i)
    }(window);</script>



</body>
</html>