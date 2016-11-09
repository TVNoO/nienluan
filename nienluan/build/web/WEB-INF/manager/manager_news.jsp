<%-- 
    Document   : manager_news
    Created on : Oct 8, 2016, 1:27:06 PM
    Author     : EndlessLove
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lí tin tức</title>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>


            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="page-wrapper">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-lg-12">
                                <ol class="breadcrumb">
                                    <li class="active">
                                        <i class="fa fa-dashboard"></i> Quản lí
                                    </li>
                                </ol>
                                <h1 class="page-header">
                                    <b style="color:grey;">Quản Lí Tin Tức</b>
                                </h1>

                            </div>

                        </div>
                        <!-- /.row -->

                        <div class="col-md-2">

                            <div class="form-group">
                            </div>

                        </div>



                        <div  class="col-lg-12">
                            <h3 style=" color: #0000CC;font-weight: bold;">Các Bài Viết Đã Đăng</h3>
                            <div  class="table-responsive">
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>Chủ đề</th>
                                            <th>Tiêu đề</th>
                                            <th>Ngày viết</th>
                                            <th>Sửa</th>
                                            <th>Xóa</th>
                                        </tr>
                                    </thead>
                                    <c:forEach var="item" items="${listNews}">
                                    <tbody>
                                    <tr>
                                        <td>${item.topic}</td>
                                        <td>${item.title}</td>
                                        <td>${item.dateNews}</td>
                                        <td><a href="updateNews.html?id=${item.id}">Sửa</a></td>
                                        <td><a href="deleteNews.html?id=${item.id}">Xóa</a></td>
                                    </tr>
                                    </tbody>
                                    </c:forEach>
                            </table>
                        </div>
                                        
                    </div>
                    <h2>${msg}</h2>



                    <div class="center">
                        <h3 style=" color: #0000CC;padding-left: 19px;font-weight: bold;">Đăng Tin</h3>



                        <div class="col-md-6">
                            <form action="addNews.html" method="GET" name="formAddNews" id="formAddProduct">


                                <div class="form-group">
                                    <label>Chủ đề *</label>
                                    <input type="text" name="topic" id="topic" class="form-control" placeholder="Giá sản phẩm">
                                </div>
                                <div class="form-group">
                                    <label>Tiêu đề *</label>
                                    <input type="text" name="title" id="title" class="form-control" placeholder="Tên sản phẩm">
                                </div>
                                <div class="form-group">
                                    <label>Chọn ảnh</label>
                                    <input type="file" name="image" id="image">
                                </div>
                                <div class="form-group">
                                    <label>Nội dung: </label>
                                    <textarea class="form-textarea" name="content" id="content"></textarea>
                                    <script type="text/javascript" language="javascript">
                                        CKEDITOR.replace('content', {width: '700px', height: '300px'});
                                    </script>
                                </div>
                                <button type="submit" class="btn btn-primary">Đăng Bài</button>
                            </form>
                        </div>

                    </div>
                </div>

            </div>

        </div>
    </body>
</html>
