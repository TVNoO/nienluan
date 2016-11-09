<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thanh Toán</title>	
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



                    <form action="checkOut.html" method="GET">
                        <div class="form-group">
                            <label>Email *</label>
                            <input type="email" name="email" id="email" class="form-control" value="${sessionScope.userEmail}" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label>Người Nhận *</label>
                            <input type="text" name="userName" id="userName" class="form-control" value="" placeholder="Người nhận">
                        </div>
                        <div class="form-group">
                            <label>Địa Chỉ *</label>
                            <textarea class="form-control" rows="3" name="address" id="address" placeholder="Vui lòng nhập chính xác, đầy đủ thông tin"></textarea>
                        </div> 	
                        <div class="form-group">
                            <label>Số Điện Thoại *</label>
                            <input class="form-control" rows="3" name="phone" id="phone" placeholder="Số điện thoại">
                        </div> 	
<!--                        <div class="form-group">
                            <label>Hình thức thanh toán*</label>
                            <select id="payment" name="payment" class="form-control">
                                <option value="Bank transfer"> Thẻ ngân hàng</option>
                                <option value="Live"> Trực tiếp</option>
                                
                            </select>    
                        </div> 			
                        <div id="ht" class="form-group">
                            <label>Chọn Ngân Hàng*</label>
                            <select name="payment" class="form-control">
                                <option value=""> AgriBank</option>
                                <option value=""> ABC Bank</option>
                                <option value=""> Đông Á Bank</option>
                            </select>    
                        </div >
                        <div id="mt" class="form-group">
                            <label>Mã Thẻ*</label>
                            <input type="text" name="" id="" class="form-control" placeholder="Mã thẻ">
                        </div> 	-->
                        <button type="submit" class="btn btn-primary">Thanh Toán</button>
                    </form>


                </div>
<!--                <script>
                    $(document).ready(function () {

                        $("#payment").change(function ()
                        {
                            if ($('#payment :selected').val() == "Live") {
                                $("#ht").hide();
                                $("#mt").hide();
                            } else {
                                $("#ht").show();
                                $("#mt").show();
                            }
                        });

                        $("#hide").click(function () {
                            $("#ht").hide();
                        });
                        $("#show").click(function () {
                            $("div").show();
                        });
                    });
                </script>-->
                <%--/////////////////////////////////////////////--%>


                <div class="col-md-4">
                    Thông Tin Đơn Hàng

                    <div>
                        <div class="summary-subtotal row">
                            <span>Mặt Hàng: </span>
                            <span>${product.productName}</span>
                        </div>
                    </div>

                    <div>
                        <div class="summary-subtotal row">
                            <span>Số Lượng: </span>
                            <span style="width: 10px;"><input type="text"></span>

                        </div>
                    </div>

                    <div>
                        <div class="summary-subtotal row">
                            <span>Số tiền:</span>
                            <span>${product.productPrice}</span>
                        </div>
                    </div>

                    <div class="summary-total table border-grey-top mtm ptm">
                        <div class="row">
                            <span>Thành tiền</span>
                            <span>(Đã bao gồm VAT):  139.000 VND</span>

                        </div>
                    </div>

                    <div>

                        <input type="hidden" id="totalAmountCartItems" value="1" />


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