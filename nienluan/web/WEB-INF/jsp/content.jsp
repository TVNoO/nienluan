<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

    <body>
        <!-- Content -->
        <div class="container">
            <br>
            <h3 class="future">SẢN PHẨM NỔI BẬT</h3>
            <br>

            <c:forEach var="item" items="${listProduct}">
                <div class="col-md-3 md-col">
                    <div class="col-md">
                        <a href="goDetail.html?productId=${item.productId}"><img src="<c:url value="${item.productImage}" />" alt=""></a>
                        <div class="top-content">
                            
                            <h5><a href="goDetail.html?productId=${item.productId}">${item.productName}</a>
                                <span style="font-weight: bold;float: right;color: red">&nbsp-&nbsp${item.discount}%</span>
                                <p style="float: right; text-decoration: line-through;">
                                    <span>${item.productPrice}</span><span>&nbspĐ&nbsp</span></p>
                                
                            </h5>
                            
                            <a type="submit" href="addToCart.html?productId=${item.productId}" class="btn btn-primary navbar-btn">+ GIỎ HÀNG</a>

                            <p class="dollar"><span style="font-weight: bold" >${item.productPrice - item.productPrice * item.discount /100}</span><span>Đ</span></p>
                            <div class="clearfix"></div>

                        </div>							
                    </div>
                </div>
            </c:forEach>

        </div>
        <!-- Content -->

    </body>
</html>