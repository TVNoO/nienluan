<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop</title>	
        <script src="<c:url value="/resources/js/jquery.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery.validate.js"/>" type="text/javascript"></script>
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
                                    <b style="color:grey;">Quản Lí Sản Phẩm</b>
                                </h1>

                            </div>

                        </div>
                        <!-- /.row -->
                        <h2>${msg}</h2>

                    <h3 style="font-weight: bold;">Thêm Sản Phẩm</h3>



                    <div class="col-md-6">
                    <form action="addProduct.html" method="GET" name="formAddProduct" id="formAddProduct">
                        <div class="form-group">
                            <label>Loại sản phẩm *</label>

                            <!--                                    <input type="text" name="categoryId" id="categoryId" class="form-control" placeholder="Loại sản phẩm">-->
                            <select name="categoryId" id="category" class="form-control">
                                <c:forEach var="item" items="${listCategory}">
                                    <option id="categoryId" value="${item.categoryId}">${item.categoryName}</option>
                                </c:forEach>
                            </select>



                            <script>
                                $(document).ready(function ()
                                {
                                    $("#category").change(function ()
                                    {
                                        var categoryId = $('#category :selected').val();
                                        //alert(categoryId);
                                        return categoryId;
                                    });
                                });
                            </script>


                        </div>
                        <div class="form-group">
                            <label>Tên sản phẩm *</label>
                            <input type="text" name="productName" id="productName" class="form-control" placeholder="Tên sản phẩm">
                        </div>
                        <div class="form-group">
                            <label>Giá *</label>
                            <input type="text" name="productPrice" id="productPrice" class="form-control" placeholder="Giá sản phẩm">
                        </div>
                        <div class="form-group">
                            <label>Số lượng *</label>
                            <input type="text" name="quantity" id="quantity" class="form-control" placeholder="Số lượng">
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
            </div>



        </div>




















        <script type="text/javascript">


            $(document).ready(function () {
                $("#formAddProduct").validate({
                    rules: {
                        productId: {
                            required: true
                        },
                        productName: {
                            required: true
                        },
                        productPrice: {
                            required: true
                        },
                        quantity: {
                            required: true
                        },
                        productDescription: {
                            required: true
                        }
                    },
                    messages: {
                        productId: {
                            required: "Bạn chưa nhập mã sản phẩm"
                        },
                        productName: {
                            required: "Bạn chưa nhập tên sản phẩm"
                        },
                        productPrice: {
                            required: "Bạn chưa nhập giá sản phẩm"
                        },
                        quantity: "Bạn chưa nhập số lượng sản phẩm",
                        productDescription: "Bạn chưa nhập mô tả"

                    },
                    errorElement: "em",
                    errorPlacement: function (error, element) {
                        // Add the `help-block` class to the error element
                        error.addClass("help-block");

                        if (element.prop("type") === "checkbox") {
                            error.insertAfter(element.parent("label"));
                        } else {
                            error.insertAfter(element);
                        }
                    },
                    highlight: function (element, errorClass, validClass) {
                        $(element).parents(".col-sm-5, .col-sm-6").addClass("has-error").removeClass("has-success");
                    },
                    unhighlight: function (element, errorClass, validClass) {
                        $(element).parents(".col-sm-5, .col-sm-6").addClass("has-success").removeClass("has-error");
                    }
                });
            });
        </script>


    </body>
</html>