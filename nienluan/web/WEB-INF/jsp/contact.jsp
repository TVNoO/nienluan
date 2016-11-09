<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop</title>	
    </head>
    <body>



        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">

                <div class="col-md-5">
                    <h2 style="color:red">${msg}</h2>
                    <h2 style="color: grey;font-weight: bold;">OoShop Xin Hân Hạnh Được Hỗ Trợ Quý Khách</h2>
                    <form action="sendFeedback.html" role="form" method="post" name="contactForm" id="contactForm">
                        <div class="form-group">
                            <label>Họ tên *</label>
                            <input type="text" name="name" id="name" class="form-control" placeholder="Nhập đầy đủ họ tên">
                        </div>
                        <div class="form-group">
                            <label>Email *</label>
                            <input type="email" name="email" id="email" class="form-control" placeholder="Email">
                        </div>

                        <div class="form-group">
                            <label>Tiêu đề *</label>
                            <input type="text" name="title" id="title" class="form-control" placeholder="Tiêu đề">
                        </div>
                        <div class="form-group">
                            <label>Nội dung *</label>
                            <textarea  name="content" id="content" class="form-control" placeholder="Xin quý khách vui lòng mô tả chi tiết"></textarea>
                        </div>

                        <button type="submit" class="btn btn-primary">Gửi Liên Hệ</button>
                    </form>

                </div>

                <div class="col-md-7">

                    <h3>Thông Tin Liên Hệ Khác</h3>

                    <div class="content">
                        <p>Tổng đài tư vấn, hỗ trợ khách hàng (7h30 đến 22h): <span class="tel">1800.1060 </span>hoặc <span class="tel">(08) 38.102.102</span></p>
                        <p>Tổng đài khiếu nại: <span class="tel">1800.1062</span></p>
                        <p>Email: <a href="mailto:ootvn95@gmail.com">ootvn95@gmail.com</a></p>
                    </div>
                    <div class="with-map clearfix">
                        <div class="company-address-wrapper">
                            <div>Cửa Hàng Thời Trang OoShop</div>
                            <div class="company-address">
                                <p>Địa chỉ: Phòng 18 - số 3B/1 Hẻm 51, Đường 3/2, Ninh kiều, TP Cần Thơ</p>
                                <p>Điện thoại: <span>0969 540 250</span></p>
                                <p>Fax: <span>000 000 000</span></p>
                            </div>
                        </div>
                        <div class="map-wrapper">
                            <iframe src="https://www.google.com/maps/d/embed?mid=1pwg1RRU8BVx6JFah8wvJ1TrjxAQ&hl=vi" width="250" height="250"></iframe>
                        </div>
                    </div>

                </div>
            </div>

        <jsp:include page="footer.jsp"></jsp:include>


         <script type="text/javascript">
           

            $(document).ready(function () {
                $("#contactForm").validate({
                    rules: {
                        name: {
                            required: true
                        },
                        title: {
                            required: true
                        },
                        content: {
                            required: true
                        },
                        email: {
                            required: true,
                            email: true
                        }

                    },
                    messages: {
                        name: {
                            required: "Bạn chưa nhập vào tên"
                        },
                        title: {
                            required: "Bạn chưa nhập tiêu đề kìa :)"
                        },
                        content: {
                            required: "Bạn chưa nhập nội dung luôn ^^"
                        },
                        email: "Email không hợp lệ rồi bạn"

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