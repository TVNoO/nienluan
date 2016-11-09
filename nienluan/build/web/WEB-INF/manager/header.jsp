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
        <title>Trang chu</title>
        <script src="<c:url value="/resources/js/jquery-2.2.4.min.js"/>" type="text/javascript"></script>
        <link href="<c:url value="/resources/css/bootstrap-theme.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap-theme.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap-theme.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/etalage.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/styleA.css" />" rel="stylesheet">

        <script src="<c:url value="/resources/js/bootstrap.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery.validate.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/ckeditor/ckeditor.js"/>" type="text/javascript"></script>




    </head>

    <body>

        <div id="header">
            
                
                    <nav class="navbar navbar-inverse navbar-fixed-top">

                        <!-- Nav -->
                        <div class="navbar-header">
                            <a class="navbar-brand" href="admin.html"><p style="color:white;font-weight:bold;"> OoShop</p></a>
                        </div>
                        <!-- Nav collapse -->
                        

                            <div class="navbar-right">
                                
                                <ul style="padding-top: 10px;">
                                <a href="${pageContext.request.contextPath}/trangchu.html"><b style="padding-right: 30px;color:white;font-weight:bold;"> Shop</b></a>
                                <span style="color: white; font-weight: bold;">Chào: ${sessionScope.userEmail}&nbsp&nbsp&nbsp&nbsp&nbsp</span>
                                <a href="${pageContext.request.contextPath}/logout.html"><b style="padding-right: 30px;color:white;font-weight:bold;"> Đăng xuất</b></a>

                                </ul>
                        


                        </div>

                        <!-- /.navbar-collapse -->
                    </nav>
                </div>
            

        <!-- jQuery -->
        <script src="js/jquery.js"></script>
        <script src="js/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </body>
</html>