<%@page import="model.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        
        <!-- phong to anh trong trang detail -->
    <script>
        jQuery(document).ready(function ($) {

            $('#etalage').etalage({
                thumb_image_width: 300,
                thumb_image_height: 400,
                source_image_width: 600,
                source_image_height: 900,
                show_hint: true,
                click_callback: function (image_anchor, instance_id) {
                    alert('Callback example:\nYou clicked on an image with the anchor: "' + image_anchor + '"\n(in Etalage instance: "' + instance_id + '")');
                }
            });

        });
    </script>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <!---->
            <div class="container">
                
                <div class="single">
                    <div class="col-md-9 top-in-single">
                        <div class="col-md-5 single-top">	
						<ul id="etalage">
							<li>
								<a href="#">
                                                                    <img class="etalage_thumb_image img-responsive" src="<c:url value="/resources/images/ak.jpg" />" alt="">
                                                                    <img class="etalage_source_image img-responsive" src="<c:url value="/resources/images/ak.jpg" />" alt="">
								</a>
							</li>
							<li>
								<img class="etalage_thumb_image img-responsive" src="<c:url value="/resources/images/ak.jpg" />" alt="">
                                                                    <img class="etalage_source_image img-responsive" src="<c:url value="/resources/images/ak.jpg" />" alt="">
							</li>
							<li>
								<img class="etalage_thumb_image img-responsive" src="<c:url value="/resources/images/ak.jpg" />" alt="">
                                                                    <img class="etalage_source_image img-responsive" src="<c:url value="/resources/images/ak.jpg" />" alt="">
							</li>
						    
						</ul>

					</div>	
                    <div class="col-md-7 single-top-in">

                        <h4>${product.productName}</h4>
                        <div class="para-grid">
                            <a href="" class="btn btn-primary navbar-btn">+ GIỎ HÀNG</a>
                            <p class="dollar"><span class="in-dollar">Đ</span><span>${product.productPrice}</span></p>					
                            <div class="clearfix"></div>
                        </div>
                        <h4 style="color:red;">Còn ${product.quantity} sản phẩm </h4>
                        <div class="chitiet">
                            <h6>Chọn chi tiết :</h6>
                            <ul>
                                <li>Color:
                                    <select>
                                        <option>Đen</option>
                                        <option>Trắng</option>
                                        <option>Đỏ</option>
                                        <option>Xanh dương</option>
                                    </select></li>
                                <li>Size:<select>
                                        <option>XL</option>
                                        <option>L</option>
                                        <option>M</option>
                                        <option>S</option>
                                    </select></li>
                                <li>Quality:<select>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select></li>
                            </ul>
                        </div>
                        <p>${product.productDescription}</p>



                    </div>
                    <div class="clearfix"> </div>
                    <div class="container">
                        <div class="col-md-3 md-col">
                            <div class="col-md">
                                <a href="single.html"><img src="<c:url value="${product.productImage}" />" alt=""></a>

                                <div class="top-content">
                                    <h5><a href="single.html">Astral Cruise</a></h5>
                                    <a href="single.html" class="btn btn-primary navbar-btn">+ GIỎ HÀNG</a>
                                    <p class="dollar"><span class="in-dollar">Đ</span><span>99 000</span></p>
                                    <div class="clearfix"></div>

                                </div>							
                            </div>
                        </div>			
                        <div class="col-md-3 md-col">
                            <div class="col-md">
                                <a href="single.html"><img src="<c:url value="/resources/images/ak.jpg" />" alt=""></a>	
                                <div class="top-content">
                                    <h5><a href="single.html">Astral Cruise</a></h5>
                                    <a href="single.html" class="btn btn-primary navbar-btn">+ GIỎ HÀNG</a>
                                    <p class="dollar"><span class="in-dollar">Đ</span><span>99 000</span></p>
                                    <div class="clearfix"></div>

                                </div>							
                            </div>
                        </div>
                        <div class="col-md-3 md-col">
                            <div class="col-md">
                                <a href="single.html"><img src="<c:url value="/resources/images/ak.jpg" />" alt=""></a>	
                                <div class="top-content">
                                    <h5><a href="single.html">Astral Cruise</a></h5>
                                    <a href="single.html" class="btn btn-primary navbar-btn">+ GIỎ HÀNG</a>
                                    <p class="dollar"><span class="in-dollar">Đ</span><span>99 000</span></p>
                                    <div class="clearfix"></div>

                                </div>							
                            </div>
                        </div>
                    </div>			

                    <div class="clearfix"></div>
                    <div>
                        <br>
                        <div class="fb-comments" data-href="http://localhost:8080/nienluan/detail.jsp" data-width="860" data-numposts="5"></div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="single-bottom">

                    </div>
                    <div class="single-bottom">
                        <h4>Thương Hiệu Khác</h4>
                        <ul>
                            <li><a href="#"><i> </i>Blue</a></li>
                            <li><a href="#"><i> </i>Adidas</a></li>
                            <li><a href="#"><i> </i> Pandoi</a></li>

                        </ul>
                    </div>
                    <div class="single-bottom">
                        <h4>Sản Phẩm Cùng Loại</h4>
                        <div class="product">
                            <img class="img-responsive fashion" src="<c:url value="/resources/images/ak.jpg" />" alt="">
                            <div class="grid-product">
                                <a href="#" class="elit">Consectetuer adipiscing elit</a>
                                <span class="price price-in"><p style="color:blue;font-weight:bold;">99 000 Đ</p></span>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="product">
                            <img class="img-responsive fashion" src="<c:url value="/resources/images/ak.jpg" />" alt="">
                            <div class="grid-product">
                                <a href="#" class="elit">Consectetuer adipiscing elit</a>
                                <span class="price price-in"><p style="color:blue;font-weight:bold;">99 000 Đ</p></span>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="product">
                            <img class="img-responsive fashion" src="<c:url value="/resources/images/ak.jpg" />" alt="">
                            <div class="grid-product">
                                <a href="#" class="elit">Consectetuer adipiscing elit</a>
                                <span class="price price-in"><p style="color:blue;font-weight:bold;">99 000 Đ</p></span>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <!---->	

        <jsp:include page="footer.jsp"></jsp:include>

        <script type="text/javascript">
            $(document).ready(function () {
                /*
                 var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
                 };
                 */

                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>



    </body>
</html>