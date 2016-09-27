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

        <div id="wrapper">
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href="index.html"><i class="fa fa-fw fa-dashboard"></i> QUẢN LÍ</a>
                    </li>
                    <li>
                        <a href="charts.html"><i class="fa fa-fw fa-bar-chart-o"></i> Quản lí người dùng</a>
                    </li>

                    <li>
                        <a href="forms.html"><i class="fa fa-fw fa-edit"></i> Quản lí hóa đơn</a>
                    </li>

                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Quản lí sản phẩm <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="${pageContext.request.contextPath}/home/index">Xem sản phẩm</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/manager/addProduct">Thêm sản phẩm</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div id="page-wrapper">

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                THÔNG TIN SẢN PHẨM 
                            </h1>
                            <ol class="breadcrumb">
                                <li class="active">
                                    <i class="fa fa-dashboard"></i> Quản lí
                                </li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.row -->

                    <h2>Thông Tin Sản Phẩm</h2>
                    <div class="col-lg-2">
                        
                            <div class="form-group">
                                <label>Loại</label>

                                <select class="form-control">
                                    <c:forEach var="item" items="${listCategory}">
                                        <option value="${item.categoryID}">${item.categoryName}</option>
                                    </c:forEach>
                                </select>

                            </div>
                        
                    </div>
                    <div class="col-lg-12">

                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Giá</th>
                                        <th>Số lượng</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="i" items="${listProduct}">
                                    <tr>
                                        
                                        <td>${i.productID}</td>
                                        <td>${i.productName}</td>
                                        <td>${i.productPrice}</td>
                                        <td>${i.quantity}</td>
                                        
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- jQuery -->
        <script src="js/jquery.js"></script>
        <script src="js/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </body>
</html>