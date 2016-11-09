<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop</title>	
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                
                <c:forEach var="item" items="${listNews}">
                <div class="row">
                    <div class="col-md-5">
                        <a href="#">
                            <img class="img-responsive" src="<c:url value="/resources/images/${item.image}" />" alt="">
                    </a>
                </div>
                <div class="col-md-4">
                    <h3>${item.topic}</h3>
                    <h4>${item.title}</h4>
                    <a class="btn btn-primary" href="goNewsDetail.html?id=${item.id}">Xem Bài <span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>
                    <br>
                </c:forEach>

        </div>

        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>