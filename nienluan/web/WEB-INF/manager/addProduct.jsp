<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop</title>	
    </head>
    <body>

    <c:forEach var="item" items="${listCategory}">
        <li><a href="">${item.categoryName}</a></li>
    </c:forEach>


    <jsp:include page="/WEB-INF/manager/header.jsp"></jsp:include>

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
                            <a href="${pageContext.request.contextPath}/home/addProduct">Thêm sản phẩm</a>
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
                            THÊM 
                        </h1>
                        <ol class="breadcrumb">
                            <li class="active">
                                <i class="fa fa-dashboard"></i> Quản lí
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                

                <div class="container" style="margin-right: 10px;">
                    <div class="col-lg-6">
                        <div class="row">
                            <h2 style="font-weight: bold"><span class="glyphicon glyphicon-lock"></span>&nbspNhập Thông Tin Sản Phẩm</h2>
                            <br>
                            <form action="register" method="GET" name="formRegister" id="formRegister">
                                <div class="form-group">
                                    <label>Loại sản phẩm *</label>
                                    <select class="form-control">
                                        <c:forEach var="item" items="${listCategory}">
                                            <option name="categoryID" id="categoryID" value="${item.categoryID}">${item.categoryName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Mã sản phẩm *</label>
                                    <input type="email" name="productID" id="productID" class="form-control" placeholder="Mã sản phẩm">
                                </div>
                                <div class="form-group">
                                    <label>Tên sản phẩm *</label>
                                    <input type="text" name="productName" id="productName" class="form-control" placeholder="Tên sản phẩm">
                                </div>
                                <div class="form-group">
                                    <label>Giá *</label>
                                    <input type="password" name="productPrice" id="productPrice" class="form-control" placeholder="Giá sản phẩm">
                                </div>
                                <div class="form-group">
                                    <label>Số lượng *</label>
                                    <input type="password" name="quantity" id="quantity" class="form-control" placeholder="Số lượng">
                                </div>
                                <div class="form-group">
                                    <label>Chọn ảnh</label>
                                    <input type="file" name="productImage" id="productImage">
                                </div>
                                <div class="form-group">
                                    <label>Mô tả sản phẩm</label>
                                    <textarea class="form-control" rows="3" name="productDescription" id="productDescription"></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">Thêm</button>
                            </form>
                        </div>
                    </div>
                    <br>
                </div>
            </div>
        </div>

    </div>

    <jsp:include page="/WEB-INF/manager/footer.jsp"></jsp:include>



</body>
</html>