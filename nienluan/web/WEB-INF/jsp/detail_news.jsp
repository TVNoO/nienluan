<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tin tức</title>	
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
                <hr>
                <div class="row">

                    <div class="col-lg-8">
                        <h4 style="color:grey;font-weight:bold;">${news.topic}</h4>
                        <h3 style="color:grey;font-weight:bold;">${news.title}</h3>
                        <!-- Noi dung tin tuc -->
                        <div>
                            ${news.content}

                        </div>

                        <div>
                            <br>
                            <div class="fb-comments" data-href="http://localhost:8080/nienluan/detail.jsp" data-width="700" data-numposts="5"></div>
                        </div>	

                    </div>

                    <!-- Liệt kê các sản phẩm nổi bật -->
                    <div class="col-lg-4">
                        <h4>Nổi bật trong tuần</h4>
                        <hr />
                        <div class="row">
                            <div class="col-xs-6 col-sm-3 col-md-6">

                                <div class="pitem">
                                    <a href="/shop/new/quan-kaki-nam-no-style-a01-0012606?c=Xanh Đen">
                                        <img class="img-responsive" src="https://cdn2.yame.vn/pimg/quan-kaki-nam-no-style-a01-0012606/6c575321-904e-5100-9ec5-001261881ad4.jpg?w=170&h=238&c=true&ntf=true" alt="Quần Kaki Nam No Style A01" />
                                    </a>                                


                                    <p class="price">225,000</p>
                                </div>
                            </div>

                            <div class="col-xs-6 col-sm-3 col-md-6">
                                <div class="pitem">
                                    <a href="/shop/new/ao-khoac-nam-no-style-e01-0011959?c=Đỏ Đ&#244;">
                                        <img class="img-responsive" src="https://cdn2.yame.vn/pimg/ao-khoac-nam-no-style-e01-0011959/08d5e7ea-3a2e-9f01-fd3f-0011fde227d9.jpg?w=170&h=238&c=true&ntf=true" alt="&#193;o Kho&#225;c Nam No Style E01" />
                                    </a>                                


                                    <p class="price">385,000</p>
                                </div>
                            </div>

                            <div class="col-xs-6 col-sm-3 col-md-6">
                                <div class="pitem">
                                    <a href="/shop/new/ao-khoac-nam-no-style-e01-0011959?c=Đỏ Đ&#244;">
                                        <img class="img-responsive" src="https://cdn2.yame.vn/pimg/ao-khoac-nam-no-style-e01-0011959/08d5e7ea-3a2e-9f01-fd3f-0011fde227d9.jpg?w=170&h=238&c=true&ntf=true" alt="&#193;o Kho&#225;c Nam No Style E01" />
                                    </a>                                


                                    <p class="price">385,000</p>
                                </div>
                            </div>
                            <!-- Liệt kê các sản phẩm nổi bật -->


                        </div>
                    </div>
                </div>

            </div>
        </div>

    <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>










