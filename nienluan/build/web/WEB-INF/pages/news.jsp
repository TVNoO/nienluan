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
           
                <div class="row">
                    <div class="col-md-5">
                        <a href="#">
                            <img class="img-responsive" src="<c:url value="/resources/images/1.jpg" />" alt="">
                    </a>
                </div>
                <div class="col-md-4">
                    <h3>Thời Trang</h3>
                    <h4>Xu hướng thời trang năm 2016</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>
                    <a class="btn btn-primary" href="#">Xem Bài <span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>

            <br>

            <div class="row">
                <div class="col-md-5">
                    <a href="#">
                        <img class="img-responsive" src="<c:url value="/resources/images/1.jpg" />" alt="">
                    </a>
                </div>
                <div class="col-md-4">
                    <h3>Thời Trang</h3>
                    <h4>Xu hướng thời trang năm 2016</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>
                    <a class="btn btn-primary" href="#">Xem Bài <span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>

            <br>

            <div class="row">
                <div class="col-md-5">
                    <a href="#">
                        <img class="img-responsive" src="<c:url value="/resources/images/2.jpg" />" alt="">
                    </a>
                </div>
                <div class="col-md-4">
                    <h3>Thời Trang</h3>
                    <h4>Xu hướng thời trang năm 2016</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>
                    <a class="btn btn-primary" href="#">Xem Bài <span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>


        </div>

        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>