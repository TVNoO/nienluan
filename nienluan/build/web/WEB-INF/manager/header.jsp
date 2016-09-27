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
        <link href="<c:url value="/resources/css/stylecss1.css" />" rel="stylesheet">

        <script src="<c:url value="/resources/js/bootstrap.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery.etalage.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery.flexisel.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/npm.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/responsiveslides.min.js"/>" type="text/javascript"></script>

    </head>
    <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">

        <!-- Nav -->
        <div class="navbar-header">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/manager/index""><p style="color:white;font-weight:bold;"> OoShop</p></a>
        </div>
        <!-- Nav collapse -->
        <div class="collapse navbar-collapse" id="menu">

            <div class="nav navbar-right top-nav">


                <a href="${pageContext.request.contextPath}/manager/index"><b style="padding-right: 30px;color:white;font-weight:bold;"> Admin</b></a>
                <a href="${pageContext.request.contextPath}/home/login"><b style="padding-right: 30px;color:white;font-weight:bold;"> Đăng xuất</b></a>


            </div>
        </div>

        <!-- /.navbar-collapse -->
    </nav>


    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <script src="js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>
</html>