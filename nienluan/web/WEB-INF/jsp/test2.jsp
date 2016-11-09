<%-- 
    Document   : test
    Created on : Sep 29, 2016, 6:02:08 AM
    Author     : EndlessLove
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>test cart</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        
        <div class="container">
            <form method="post" action="update.html">
             <table cellpadding="2" callspacing="2" border="1">
                    <tr>
                        <th>Option</th>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity<input type="submit" value="Update"/></th>
                        <th>Sub Total</th>
                    </tr>
                <c:set var="s" value="0"></c:set>
                <c:forEach var="it" items="${sessionScope.cart}">
                    <c:set var="s" value="${s + it.product.productPrice * it.quantity}"></c:set>
                    <tr>
                        <td><a href="deleteProductFromCart.html?productId=${it.product.productId}">Delete</a></th>
                        <td>${it.product.productId}</td>
                        <td>${it.product.productName}</td>
                        <td>${it.product.productPrice}</td>
                        <td><input type="text" name="quantity" value="${it.quantity}" style="width: 60px"/></td>
                        <td>${it.product.productPrice * it.quantity}</td>
                    </tr>
                </c:forEach>
                    <tr>
                        <td colspan="5" align="right">Sum</td>
                        <td>${s}</td>
                    </tr>
            </table>
                    </form>
            <a href="trangchu.html">Trang chu</a>
            <a href="goCheckOut.html">Checkout</a>
            
            
                
        </div>
    </body>
</html>

