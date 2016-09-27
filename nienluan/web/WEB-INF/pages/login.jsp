<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop</title>	
    </head>
    <body>

    <c:forEach var="item" items="${listCategory}">
        <li><a href="">${item.categoryName}</a></li>
    </c:forEach>

    <jsp:include page="header.jsp"></jsp:include>

        <div class="container" style="margin-right: 10px;">
            
            <div class="row">
                <h2 style="font-weight: bold"><span class="glyphicon glyphicon-user"></span>&nbspĐĂNG NHẬP</h2>
                <br>
                ${msg}
                <form action="login" name= "formLogin" id="formLogin" method="get">
                    <div class="form-group">
                        <label>Email *</label>
                        <input type="email" name="userEmail" id="userEmail" class="form-control" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <label>Mật Khẩu *</label>
                        <input type="password" name="userPass" id="userPass"  class="form-control" placeholder="Password">
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox"> Ghi Nhớ</label> 
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

</body>
</html>