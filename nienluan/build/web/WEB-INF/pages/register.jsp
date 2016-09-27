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
            
            <div class="row">
                <h2 style="font-weight: bold"><span class="glyphicon glyphicon-lock"></span>&nbspĐĂNG KÍ</h2>
                <br>
                <form action="register" method="GET" name="formRegister" id="formRegister">
                    <div class="form-group">
                        <label>Tên người dùng *</label>
                        <input type="text" path="userName" class="form-control" placeholder="Tên người dùng">
                    </div>
                    <div class="form-group">
                        <label>Email *</label>
                        <input type="email" path="userEmail" class="form-control" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <label>Mật Khẩu *</label>
                        <input type="password" path="userPass" class="form-control" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label>Nhập lại Mật Khẩu *</label>
                        <input type="password" path="reUserPassword" class="form-control" placeholder="Re-Password">
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

</body>
</html>