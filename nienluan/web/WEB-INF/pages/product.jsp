<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product</title>	
    </head>
    <body>


        <jsp:include page="header.jsp"></jsp:include>

            <!-- Content -->
            <div class="container">
                <br>
            
                <h3 class="future">SẢN PHẨM</h3>
                <br>

            <c:forEach var="item" items="${listProduct}">
            <div class="col-md-3 md-col">
                <div class="col-md">
                    <a href="${pageContext.request.contextPath}/product/detailproduct?productID=${item.productID}"><img src="<c:url value="${item.productImage}" />" alt=""></a>	
                    <div class="top-content">
                        <h5><a href="single.html">${item.productName}</a></h5>

                        <a href="single.html" class="btn btn-primary navbar-btn">+ GIỎ HÀNG</a>
                        <p class="dollar"><span class="in-dollar">Đ</span><span>${item.productPrice}</span></p>
                        <div class="clearfix"></div>

                    </div>							
                </div>
            </div>
            </c:forEach>

        </div>
        <!-- Content -->

        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>