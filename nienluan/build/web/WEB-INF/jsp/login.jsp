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
            <h1>${um}</h1>
            <h4>${msg}</h4>
            <div class="row">
                <h2 style="font-weight: bold"><span class="glyphicon glyphicon-user"></span>&nbspĐĂNG NHẬP</h2>
                <br>
                
                <form action="index.html"  name="formLogin" commandName="user" id="formLogin" method="post">
                    <div class="form-group">
                        <label>Email *</label>
                        <input type="email" name="userEmail" path="userEmail" id="userEmail" class="form-control" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <label>Mật Khẩu *</label>
                        <input type="password" name="userPass" path="userPass" id="userPass"  class="form-control" placeholder="Password">
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox" name="remember" value="true"> Ghi Nhớ</label> 
                    </div>
                    <div>
                        <label>Chưa có tài khoản ? <a href="${pageContext.request.contextPath}/home/register">Đăng kí</a></label>
                    </div>
                    <button type="submit" class="btn btn-primary">Đăng Nhập</button>
                </form>
                    
                
            </div>
            <br>
        </div>


    <jsp:include page="footer.jsp"></jsp:include>
    
    
    <script type="text/javascript">
           
            $(document).ready(function () {
                $("#formLogin").validate({
                    rules: {
                       
                        userPass: {
                            required: true,
                            minlength: 6
                        },
                       
                        userEmail: {
                            required: true,
                            email: true
                        }

                    },
                    messages: {
                       
                        userPass: {
                            required: "Bạn chưa nhập mật khẩu",
                            minlength: "Mật khẩu phải có ít nhất 6 ký tự"
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