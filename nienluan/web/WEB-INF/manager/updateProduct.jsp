<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop</title>	
    </head>
    <body>

    <jsp:include page="/WEB-INF/manager/header.jsp"></jsp:include>

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
                                    <b style="color:grey;">Quản Lí Sản Phẩm</b>
                                </h1>

                            </div>

                        </div>
                        <!-- /.row -->
                        <h2>${msg}</h2>

                    <h3 style="font-weight: bold;">Cập Nhật Thông Tin Sản Phẩm</h3>


                    

                    <div class="col-lg-6">
                        <div class="row">
                            <h3>${msg}</h3>
                            <h2 style="font-weight: bold"><span class="glyphicon glyphicon-lock"></span>&nbspCập Nhật Thông Tin Sản Phẩm</h2>
                            <br>
                            <form action="updateProduct.html" method="GET" name="formRegister" id="formRegister">
                                <div class="form-group">
                                    <label>Loại sản phẩm *</label>
                                        <input type="text" name="categoryId" id="categoryId" 
                                                class="form-control" value="${product.getCategory().getCategoryId()}">
                                </div>
                                <div class="form-group">
                                    <label>Mã sản phẩm *</label>
                                    <input type="text" name="productId" id="productId" class="form-control" value="${product.getProductId()}">
                                </div>
                                <div class="form-group">
                                    <label>Tên sản phẩm *</label>
                                    <input type="text" name="productName" id="productName" class="form-control" value="${product.getProductName()}">
                                </div>
                                <div class="form-group">
                                    <label>Giá *</label>
                                    <input type="text" name="productPrice" id="productPrice" class="form-control" value="${product.getProductPrice()}">
                                </div>
                                <div class="form-group">
                                    <label>Số lượng *</label>
                                    <input type="text" name="quantity" id="quantity" class="form-control" value="${product.getQuantity()}">
                                </div>
                                <div class="form-group">
                                    <label>Chọn ảnh</label>
                                    <input type="file" name="productImage" id="productImage">
                                </div>
                                <div class="form-group">
                                    <label>Mô tả sản phẩm</label>
                                    <textarea class="form-control" rows="3"
                                              name="productDescription" id="productDescription"></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">Cập Nhật</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    <jsp:include page="/WEB-INF/manager/footer.jsp"></jsp:include>



</body>
</html>