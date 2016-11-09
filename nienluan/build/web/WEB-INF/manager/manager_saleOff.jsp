<%-- 
    Document   : admin
    Created on : Sep 23, 2016, 9:51:33 AM
    Author     : EndlessLove
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lí Khuyến Mãi</title>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>


            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

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
                            <input type="submit" class="btn btn-primary" value="Tìm" >
                        </form>
                    </div>

                    <div class="col-md-3">
                        <p style="padding-top: 25px;"></p>
                        <a style="font-weight: bold;" href="goManagerKM.html"><span class="glyphicon glyphicon-usd"></span>&nbspQuản lí khuyến mãi</a>
                    </div>


                    <div  class="col-lg-12">
                        
                        <form action="delete.html" method="post">
                        <div  class="table-responsive">
                            <table  class="table table-bordered table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th width="100px"><input type="checkbox" id="checkboxAll"/>&nbsp&nbsp
                                            <input type="submit" class="btn btn-primary btn-sm" value="Xóa" onclick="return confirm('Bạn muốn xóa ?')" /></th>
                                            
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




        </div>

</html>
