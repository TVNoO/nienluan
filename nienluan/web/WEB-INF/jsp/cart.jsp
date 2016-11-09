<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giỏ Hàng</title>	
    </head>
    <body>



        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
                <br>
                <h3 class="future">GIỎ HÀNG CỦA TÔI</h3>
                <br>


            <%--/////////////////////////////////////////////--%>

            <div class="row">
                <div class="col-md-8">


                    <div class="table-responsive">
                        <form method="post" action="update.html">
                            <table class="table-bordered" style="">

                                <thead>

                                    <tr style="font-weight: bold; background: #00B2EE;">

                                        <td align="center">Hình Ảnh</td>
                                        <td align="center">Tên Sản Phẩm</td>
                                        <td align="center">Giá</td>
                                        <td align="center">Số lượng</td>
                                        <td align="center">Thành Tiền</td>
                                        <td align="center"><input class="btn btn-info btn-sm"type="submit" value="Cập Nhật"/></td>
                                    </tr>
                                </thead>



                                <tbody>
                                    <c:set var="s" value="0"></c:set>
                                    <c:forEach var="it" items="${sessionScope.cart}">
                                        <c:set var="s" value="${s + (it.product.productPrice - it.product.productPrice * it.product.discount / 100) * it.quantity}"></c:set>
                                            <tr>

                                                <td><a href="goDetail.html"><img style="width: 120px; height: 140px;" src="<c:url value="${it.product.productImage}" />" alt=""></a></td>
                                            <td>
                                                <div>${it.product.productName}</div>

                                            </td>
                                            <td>
                                                <span>${it.product.productPrice - it.product.productPrice * it.product.discount / 100}</span><br/>

                                                <span>${it.product.discount}% GIẢM GIÁ</span>
                                            </td>
                                            <td>
                                                <div>

                                                    <input type="text" name="quantity" value="${it.quantity}" style="width: 70px; border: 2px solid #00B2EE;"/>

                                                </div>

                                            </td>
                                            <td align="center">${(it.product.productPrice - it.product.productPrice * it.product.discount / 100) * it.quantity}</td>

                                            <td align="center"><a href="deleteProductFromCart.html?productId=${it.product.productId}">Xóa</a></td>

                                        </tr>
                                    </c:forEach>
                                    <tr>

                                    </tr>
                                </tbody>

                            </table>
                        </form>
                    </div>

                </div>

                <%--/////////////////////////////////////////////--%>


                <div class="col-md-4" style="font-weight: bold; ">
                    <span style="padding-left: 40px;">Thông Tin Đơn Hàng</span>
                    <br><br>

                    <div class="row" style="padding-bottom: 7px;">
                        <span>Tổng Tiền: </span>
                        <span style="font-weight: normal; padding-left: 60px; padding-bottom: 20px;">${s} </span>
                        <span style="font-weight: bold;">VNĐ</span>
                    </div> 
                    
                    <div class="row" style="padding-bottom: 7px;">
                        <form method="post" action="code.html">
                        <span style="padding-right: 40px;">Mã Giảm Giá: </span>
                        <span><input type="text" name="code" value="${msg}" style=" height: 29px;width: 100px;"/></span>
                        <input class="btn btn-info btn-sm" type="submit" value="Áp Dụng"/>
                        </form>
                    </div>
                    
                    <div class="row">
                        <span>Số Tiền Phải Trả: </span>
                        <span style="font-weight: normal; padding-left: 20px;">${s - (s * code.rate/100)}</span>
                        <span style="font-weight: bold;">VNĐ</span>
                    </div>

                    <br>
                    <div class="row">
                        <a href="goCheckOut.html">Tiến Hành Thanh Toán</a>
                    </div>

                </div>
            </div>


            <%--/////////////////////////////////////////////--%>

            <br><br><hr>
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table>
                            <thead>
                                <tr>
                                    <th><strong>Khi nào tôi nhận được hàng?</strong></th>
                                    <th></th>
                                    <th><strong>Những hình thức thanh toán nào?</strong></th>
                                    <th></th>
                                    <th><strong>Quyền lợi người dùng</strong></th>

                                </tr>
                            </thead>
                            </tbody>
                            <tr>
                                <td>
                                    <div>Thời gian giao hàng dự kiến là thời gian được tính từ lúc đơn hàng được tạo đến lúc giao đến địa chỉ của quý khách.</br> Thời gian này bao gồm thời gian duyệt đơn hàng, thực hiện đơn hàng, cộng với thời gian giao hàng sau khi chuyển đơn hàng qua đơn hàng vận chuyển.</div>
                                </td>
                                <td>&nbsp&nbsp&nbsp</td>

                                <td>
                                    <div>
                                        Nhằm mang đến trải nghiệm mua sắm tuyệt vời nhất cho khách hàng, OoShop cung cấp nhiều hình thức thanh toán đa dạng sau: Thanh toán khi nhận hàng; Thanh toán qua thẻ tín dụng, thẻ ghi nợ; Thanh toán qua cổng Smartlink/ 123PAY; Thanh toán trả góp qua thẻ tín dụng.
                                    </div>
                                </td>

                                <td>&nbsp&nbsp&nbsp&nbsp&nbsp</td>
                                <td>

                                    <div>
                                        OoShop cam kết tất cả sản phẩm bán ra là mới 100%, chính hãng, không hư hỏng kỹ thuật hay vật lý.</br>
                                        Trong trường hợp sản phẩm không đáp ứng được 1 trong các điều kiện trên, quý khách có thể hoàn trả sản phẩm trong vòng 7 ngày để được hoàn tiền 100%.
                                    </div>
                                </td>
                            </tr>
                            </body>

                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div



    <jsp:include page="footer.jsp"></jsp:include>


</body>
</html>