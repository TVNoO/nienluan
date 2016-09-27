<%-- 
    Document   : banner
    Created on : Sep 08, 2016, 9:46:43 AM
    Author     : EndlessLove
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        
        <script src="<c:url value="/resources/js/bootstrap.js"/>" type="text/javascript"></script>
        
    </head>
    <body>
        <!-- Banner -->
        <div class="container">

            <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="<c:url value="/resources/images/1.jpg" />" alt="Flower" width="1200">
                        <div class="carousel-caption">
                            <h2> BLUE EXCHANGE</h2>
                            <p>Khẳng định đẳng cấp ...</p>
                        </div>
                    </div>

                    <div class="item">

                        <img src="<c:url value="/resources/images/1.jpg" />" alt="Flower" width="1200">
                        <div class="carousel-caption">
                            <h2> BLUE EXCHANGE</h2>
                            <p>Khẳng định đẳng cấp ...</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="<c:url value="/resources/images/1.jpg" />" alt="Flower" width="1200">
                        <div class="carousel-caption">
                            <h2> BLUE EXCHANGE</h2>
                            <p>Khẳng định đẳng cấp ...</p>
                        </div>
                    </div>
                </div>
                <a class="left carousel-control" href="#myCarousel"  data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel"  data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div> 

        </div>
        <!-- Banner-->

    </body>
</html>