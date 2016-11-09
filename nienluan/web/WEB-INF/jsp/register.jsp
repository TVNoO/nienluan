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

            <div class="container" style="margin-right: 10px;">
            ${msg}
            <div class="row">
                <h2 style="font-weight: bold"><span class="glyphicon glyphicon-lock"></span>&nbspĐĂNG KÍ</h2>
                <br>
                <form action="register.html" role="form" method="post" name="formRegister" id="signupForm">
                    <div class="form-group">
                        <label>Tên người dùng *</label>
                        <input type="text" name="userName" id="userName" class="form-control" placeholder="Tên người dùng">
                    </div>
                    <div class="form-group">
                        <label>Email *</label>
                        <input type="email" name="userEmail" id="userEmail" class="form-control" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <label>Mật Khẩu *</label>
                        <input type="password" name="userPass" id="userPass" class="form-control" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label>Nhập lại Mật Khẩu *</label>
                        <input type="password" name="reUserPass" id="reUserPass" class="form-control" placeholder="Re-Password">
                    </div>
                    <div>
                        <label>Bạn có tài khoản ? <a href="${pageContext.request.contextPath}/home/login">Đăng nhập</a></label>
                    </div>
                    <button type="submit" class="btn btn-primary">Đăng Kí</button>
                </form>
            </div>
            <br>
        </div>


        <jsp:include page="footer.jsp"></jsp:include>


        <script type="text/javascript">
           

            $(document).ready(function () {
                $("#signupForm").validate({
                    rules: {
                        userName: {
                            required: true,
                            minlength: 2
                        },
                        userPass: {
                            required: true,
                            minlength: 6
                        },
                        reUserPass: {
                            required: true,
                            equalTo: "#userPass"
                        },
                        userEmail: {
                            required: true,
                            email: true
                        }

                    },
                    messages: {
                        userName: {
                            required: "Bạn chưa nhập vào tên",
                            minlength: "Tên đăng nhập phải có ít nhất 2 ký tự"
                        },
                        userPass: {
                            required: "Bạn chưa nhập mật khẩu",
                            minlength: "Mật khẩu phải có ít nhất 6 ký tự"
                        },
                        reUserPass: {
                            required: "Bạn chưa nhập mật khẩu",
                            equalTo: "Mật khẩu không trùng khớp với mật khẩu đã nhập"
                        },
                        userEmail: "Email không hợp lệ"

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