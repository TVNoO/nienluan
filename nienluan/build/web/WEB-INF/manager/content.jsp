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


    <body>

        <div id="page-wrapper">
            <div class="container-fluid">

                <!-- Page Heading -->
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

                <h3 style="font-weight: bold;">Thông Tin Sản Phẩm</h3>

                

                <div class="row">
                    <div class="col-md-2">

                        <div class="form-group">
                            <label>Loại</label>

                            <select id="choice" class="form-control">
                                <c:forEach var="item" items="${listCategory}">
                                    <option  value="${item.categoryId}">${item.categoryName}</option>
                                </c:forEach>
                            </select>

                            <script>
                                $("select option").on('click', function () {

                                    $.ajax({
                                        type: "post",
                                        url: "choice.html",
                                        data: {
                                            ch: $(this).val()
                                        },
                                        success: function (kq) {

                                            var ob = $.parseJSON(kq);
                                            var html = "";
                                            for (var i = 0; i <= ob.length; i++) {

                                                html += ' <tr>';
                                                html += ' <td>' + ob[i].productId + '</td>';
                                                html += ' <td>' + ob[i].productName + '</td>';
                                                html += ' <td>' + ob[i].productPrice + '</td>';
                                                html += ' <td>' + ob[i].quantity + '</td>';
                                                html += ' <td>' + ob[i].discount + '</td>';
                                                html += ' <td><a href="goUpdateProduct.html?productId=' + ob[i].productId + '">Sửa</a> </td>';
//                                                html += ' <td><a href="deleteProduct.html?productId=' + ob[i].productId + '">Xóa</a> </td>';
                                                html += ' <td><input type="checkbox" class="chk" value="' + ob[i].productId + '"name="productId" /></td>';
                                                html += ' </tr>';

                                                $('#bangP').html(html);
                                            }


                                        }
                                    });
                                });</script>
                        </div>
                        
                        <script type="text/javascript">
                            $(document).ready(function(){
                                $('#checkboxAll').click(function(){
                                    if($(this).is(":checked"))
                                        $('.chk').prop('checked', true);
                                    else 
                                        $('.chk').prop('checked', false);
                                });
                            });
                            
                        </script>
                        
                    </div>

                    <div class="col-md-2">
                        <p style="padding-top: 15px;"></p>
                        <a href="goAddProduct.html" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span>&nbspThêm Mới</a>
                    </div>

                    <div class="col-md-4" class="search">
                        <p style="padding-top: 15px;"></p>
                        <form>
                            <input style="height: 34px; width: 200px;" type="text" placeholder="Nhập thông tin sản phẩm" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }" >
                            <input type="submit" class="btn btn-primary" value="Tìm" > </li>
                        </form>
                    </div>

                    <div class="col-md-3">
                        <p style="padding-top: 25px;"></p>
                        <a style="font-weight: bold;" href="goManagerKM.html"><span class="glyphicon glyphicon-usd"></span>&nbspQuản lí khuyến mãi</a>
                    </div>


                    <div  class="col-lg-12">
                        
                        <form action="delete.html" method="post">
                            Giảm: &nbsp<input type="text" name="discount" />
                        <div  class="table-responsive">
                            <table  class="table table-bordered table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Giá</th>
                                        <th>Số lượng</th>
                                        <th>Rate</th>
                                        <th>Sửa</th>
                                        <th width="150px"><input type="checkbox" id="checkboxAll"/>&nbsp&nbsp
                                            <input type="submit" class="btn btn-primary btn-sm" name="action" value="Xóa" onclick="return confirm('Bạn muốn xóa ?')" />
                                            <input type="submit" class="btn btn-primary btn-sm" name="action" value="KM" onclick="return confirm('Xác nhận !')" /></th>
                                            
                                    </tr>
                                </thead>
                                <tbody id ="bangP"></tbody>
                            </table>
                        </div>
                        </form>
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