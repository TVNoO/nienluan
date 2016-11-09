package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_url_value_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_url_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_url_value_nobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\r\n");
      out.write("    \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Website bán hàng di động</title>\r\n");
      out.write("        <script src=\"");
      if (_jspx_meth_c_url_0(_jspx_page_context))
        return;
      out.write("\"></script>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      if (_jspx_meth_c_url_1(_jspx_page_context))
        return;
      out.write("\">\r\n");
      out.write("        <script src=\"");
      if (_jspx_meth_c_url_2(_jspx_page_context))
        return;
      out.write("\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <style>\r\n");
      out.write("                .carousel-inner > .item > img,\r\n");
      out.write("                .carousel-inner > .item > a > img { \r\n");
      out.write("                    margin: auto;\r\n");
      out.write("                    height: 350px;\r\n");
      out.write("                }\r\n");
      out.write("                .gly{\r\n");
      out.write("                    color:white;\r\n");
      out.write("                    font-size:15px;\r\n");
      out.write("                }\r\n");
      out.write("                .gly1{\r\n");
      out.write("                    color:white;\r\n");
      out.write("                    font-size:15px;\r\n");
      out.write("                }\r\n");
      out.write("                .gly2{\r\n");
      out.write("                    color:white;\r\n");
      out.write("                    font-size:15px;\r\n");
      out.write("                }\r\n");
      out.write("                .gly2{\r\n");
      out.write("                    color:black;\r\n");
      out.write("                    font-size:15px;\r\n");
      out.write("                }\r\n");
      out.write("            </style>\r\n");
      out.write("\r\n");
      out.write("        </head>\r\n");
      out.write("\r\n");
      out.write("        <body id=\"myStore\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <!--Them thanh dieu huong:-->\r\n");
      out.write("                <nav class=\"navbar navbar-fixed-top navbar-dark bg-primary\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"container-fluid\">\r\n");
      out.write("                        <div class=\"navbar-header\">\r\n");
      out.write("                            <!--  -->\r\n");
      out.write("                            <ul class=\" nav navbar-nav\">\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <a  class=\"navbar-brand gly\" href=\"#myStore\"><span class=\"glyphicon glyphicon-shopping-cart\"></span>  Trang chủ</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <a class=\"navbar-brand gly\" href=\"#myStore\"><span class=\"glyphicon glyphicon-pencil\"></span>  Giới thiệu</a>\r\n");
      out.write("\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li class=\"dropdown\">\r\n");
      out.write("\r\n");
      out.write("                                    <a href=\"#\" class=\"navbar-brand gly\" data-toggle=\"dropdown\"><span class=\"glyphicon glyphicon-gift\"> Sản phẩm</span></a>\r\n");
      out.write("                                    <!-- Tao menu: -->\r\n");
      out.write("                                    <ul class=\"dropdown-menu\">\r\n");
      out.write("                                        <li><a href=\"#\" class=\"gly\"><span class=\"glyphicon glyphicon-phone\"></span> Phone</a></li>\r\n");
      out.write("                                        <li><a href=\"#\" class=\"gly\"><span class=\"glyphicon glyphicon-camera\"></span> Camera</a></li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("\r\n");
      out.write("                                </li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                            <form class=\"navbar-form navbar-right\" role=\"search\">\r\n");
      out.write("                                <div class=\"form-group\" id=\"them\">\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" placeholder=\"Search..\">\r\n");
      out.write("\r\n");
      out.write("                                    <button class=\"btn btn-default\" type=\"button\">\r\n");
      out.write("                                        <span class=\"glyphicon glyphicon-search\"></span>\r\n");
      out.write("                                    </button>\r\n");
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>\r\n");
      out.write("\r\n");
      out.write("                            <!-- Man hinh dang nhap -->\r\n");
      out.write("                            <ul class=\"navbar-nav navbar-right\" id=\"them\">\r\n");
      out.write("                                <a href=\"#\" id=\"dk\" class=\"navbar-brand gly1\" data-toggle=\"modal\" data-target=\"#sign\" style=\"padding-left:250px;\"><span class=\"glyphicon glyphicon-user\"> Đăng ký</span></a>\r\n");
      out.write("                                <a href=\"#\" id=\"dn\" class=\"navbar-brand gly1\" data-toggle=\"modal\"  data-target=\"#myModal\" ><span class=\"glyphicon glyphicon-log-in\"> Đăng nhập</span></a> \r\n");
      out.write("                            </ul>\r\n");
      out.write("\r\n");
      out.write("                            <ul class=\"navbar-nav navbar-right\" id=\"them\">\r\n");
      out.write("\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"row\"><br></div>\r\n");
      out.write("            <!--Them vao hop thoai dang nhap:-->\r\n");
      out.write("            <div class=\"modal fade\" id=\"myModal\" role=\"dialog\">\r\n");
      out.write("                <!--Than Modal:-->\r\n");
      out.write("                <div class=\"modal-dialog\">\r\n");
      out.write("                    <!--Modal content:-->\r\n");
      out.write("                    <div class=\"modal-content\">\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"modal-header\" style=\"padding:20px 30px; text-align: center;background-color:#33F9FF\">\r\n");
      out.write("                            <button type=\"button\" class=\"close\"  data-dismiss=\"modal\" >&times;</button>\r\n");
      out.write("                            <h3><span class=\"glyphicon glyphicon-lock\"></span> Đăng Nhập</h3>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"modal-body\" style=\"padding:20px 30px;\">\r\n");
      out.write("                            <form action=\"store/goDN.html\" role=\"form\" action=\"\" method=\"post\" id=\"myForm\" >\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("\r\n");
      out.write("                                    <label><span class=\"glyphicon glyphicon-user\"></span> Người dùng</label>\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" placeholder=\"Nhập tên người dùng\" id=\"user\" name=\"user\" required/>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <label><span class=\"glyphicon glyphicon-eye-open\"></span> Mật khẩu</label>\r\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" placeholder=\"Nhập mật khẩu\" id=\"pass\" name=\"password\" required/>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"checkbox\">\r\n");
      out.write("                                    <label> <input type=\"checkbox\"> Ghi nhớ tôi</label>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <button class=\"btn btn-success btn-block\" type=\"button\" onclick=\"testThu();\" data-dismiss=\"modal\"><span class=\"glyphicon glyphicon-off\"></span> Đăng nhập</button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>\r\n");
      out.write("                            <script type=\"text/javascript\">\r\n");
      out.write("//                              $('#myForm').validator();\r\n");
      out.write("                            </script>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"modal-footer\" style=\"margin-left:12px;\">\r\n");
      out.write("                            <button type=\"button\" class=\"btn btn-danger pull-left\" data-dismiss=\"modal\"> <span class=\"glyphicon glyphicon-remove\"></span> Hủy bỏ</button>\r\n");
      out.write("                            <p>Bạn chưa phải là thành viên? <a href=\"#\" data-toggle=\"modal\" data-target=\"#sign\">Đăng ký</a></p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!--Màn hình đăng ký-->\r\n");
      out.write("\r\n");
      out.write("            <div class=\"modal fade\" id=\"sign\" role=\"dialog\">\r\n");
      out.write("                <!--Than Modal:-->\r\n");
      out.write("                <div class=\"modal-dialog\">\r\n");
      out.write("                    <!--Modal content:-->\r\n");
      out.write("                    <div class=\"modal-content\">\r\n");
      out.write("                        <div class=\"modal-header\" style=\"height:50px;background-color:#33F9FF\">\r\n");
      out.write("                            <button type=\"button\" class=\"close\"  data-dismiss=\"modal\" >&times;</button>\r\n");
      out.write("                            <b style=\"font-size:20px\"><span class=\"glyphicon glyphicon-pencil\"></span> Đăng ký thành viên</b>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"modal-body\" style=\"padding:10px 40px;\">\r\n");
      out.write("                            <form action=\"store/goDK.html\" role=\"form\" action=\"\" method=\"post\" id=\"formDK\">\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("                                    <div class=\"form-group\">\r\n");
      out.write("                                        <label class=\"control-label col-md-4\">Tên đăng nhập</label>\r\n");
      out.write("                                        <div class=\"col-md-8\">\r\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" placeholder=\"Nhập tên người dùng\" id=\"user\" name=\"user\" required/>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("                                    <div class=\"form-group\">\r\n");
      out.write("                                        <label class=\"control-label col-md-4\"> Mật khẩu</label>\r\n");
      out.write("                                        <div class=\"col-md-8\">\r\n");
      out.write("                                            <input type=\"password\" class=\"form-control\" placeholder=\"Nhập mật khẩu\" id=\"password\" name=\"password\" required/>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("                                    <div class=\"form-group\">\r\n");
      out.write("                                        <label class=\"control-label col-md-4\"> Nhập lại mật khẩu</label>\r\n");
      out.write("                                        <div class=\"col-md-8\">\r\n");
      out.write("                                            <input type=\"password\" class=\"form-control\"  id=\"repassword\" placeholder=\"Nhập lại mật khẩu\" name=\"repassword\" required/>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("                                    <div class=\"form-group\">\r\n");
      out.write("                                        <label class=\"control-label col-md-4\"> Tên khách hàng</label>\r\n");
      out.write("                                        <div class=\"col-md-8\">\r\n");
      out.write("                                            <input type=\"text\" class=\"form-control\"  id=\"name\" placeholder=\"Tên khách hàng\" name=\"name\" required/>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("                                    <div class=\"form-group\">\r\n");
      out.write("                                        <label class=\"control-label col-md-4\"> Số điện thoại</label>\r\n");
      out.write("                                        <div class=\"col-md-8\">\r\n");
      out.write("                                            <input type=\"number\" class=\"form-control\"  id=\"phone\" placeholder=\"Số điện thoại\" name=\"phone\"  maxlength=\"10\" required/>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("                                    <div class=\"form-group\">\r\n");
      out.write("                                        <label class=\"control-label col-md-4\"> Địa chỉ</label>\r\n");
      out.write("                                        <div class=\"col-md-8\">\r\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" id=\"address\" placeholder=\"Địa chỉ\" name=\"address\" required/>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("                                    <div class=\"col-md-4\"></div>\r\n");
      out.write("                                    <div class=\"col-md-8\">\r\n");
      out.write("                                        <div class=\"checkbox\">\r\n");
      out.write("                                            <label> <input type=\"checkbox\" value=\"nam\" id=\"name\" name=\"gt\">Nam</label>\r\n");
      out.write("                                            <label> <input type=\"checkbox\" value=\"nữ\" id=\"name\" name=\"gt\">Nữ</label>\r\n");
      out.write("                                        </div> \r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"modal-footer\" style=\"margin-left:12px;\">\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"row\">\r\n");
      out.write("                                        <div class=\"col-md-4\"></div>\r\n");
      out.write("                                        <div class=\"col-md-8\">\r\n");
      out.write("                                            <button type=\"submit\" class=\"btn btn-success  pull-left\" onclick=\"return confirm('Bạn chắc muốn đăng ký ?')\"> <span class=\"glyphicon glyphicon-ok-sign\"></span> Đăng ký</button>\r\n");
      out.write("\r\n");
      out.write("                                        </div>\r\n");
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>\r\n");
      out.write("                            <script type=\"text/javascript\">\r\n");
      out.write("//                              $('#myForm').validator();\r\n");
      out.write("                            </script>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!--Them vao carousel-->\r\n");
      out.write("            <div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\" data-interval=\"3000\">\r\n");
      out.write("                <!-- Indicators -->\r\n");
      out.write("                <ol class=\"carousel-indicators\">\r\n");
      out.write("                    <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\r\n");
      out.write("                    <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\r\n");
      out.write("                    <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\r\n");
      out.write("                    <li data-target=\"#myCarousel\" data-slide-to=\"3\"></li>\r\n");
      out.write("                </ol>\r\n");
      out.write("\r\n");
      out.write("                <!-- Wrapper for slides -->\r\n");
      out.write("                <div class=\"carousel-inner\" role=\"listbox\">\r\n");
      out.write("                    <div class=\"item active\">\r\n");
      out.write("                        <img src=\"");
      if (_jspx_meth_c_url_3(_jspx_page_context))
        return;
      out.write("\" alt=\"Flowers\">\r\n");
      out.write("                        <div class=\"carousel-caption\">\r\n");
      out.write("                            <h3>Samsung galaxy</h3>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"item\">\r\n");
      out.write("                        <img src=\"");
      if (_jspx_meth_c_url_4(_jspx_page_context))
        return;
      out.write("\" alt=\"Flowers\">\r\n");
      out.write("                        <div class=\"carousel-caption\">\r\n");
      out.write("                            <h3>Sonny Xperia</h3>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"item\">\r\n");
      out.write("                        <img src=\"");
      if (_jspx_meth_c_url_5(_jspx_page_context))
        return;
      out.write("\" alt=\"Flowers\">\r\n");
      out.write("                        <div class=\"carousel-caption\">\r\n");
      out.write("                            <h3>Nokia lumia</h3>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"item\">\r\n");
      out.write("                        <img src=\"");
      if (_jspx_meth_c_url_6(_jspx_page_context))
        return;
      out.write("\" alt=\"Flowers\">\r\n");
      out.write("                        <div class=\"carousel-caption\">\r\n");
      out.write("                            <h3>Oppo</h3>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <a class=\"left carousel-control\" href=\"#myCarousel\"  data-slide=\"prev\">\r\n");
      out.write("                    <span class=\"glyphicon glyphicon-chevron-left\" aria-hidden=\"true\"></span>\r\n");
      out.write("                    <span class=\"sr-only\">Previous</span>\r\n");
      out.write("                </a>\r\n");
      out.write("                <a class=\"right carousel-control\" href=\"#myCarousel\"  data-slide=\"next\">\r\n");
      out.write("                    <span class=\"glyphicon glyphicon-chevron-right\" aria-hidden=\"true\"></span>\r\n");
      out.write("                    <span class=\"sr-only\">Next</span>\r\n");
      out.write("                </a>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- Ngan cach cac thanh phan: -->\r\n");
      out.write("            <div>\r\n");
      out.write("                <br>\r\n");
      out.write("                <hr>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <button class=\"btn btn-success\" id=\"sp\" onclick=\"return  confirm('Bạn muốn thêm mặt hàng ?')\">+ Thêm mặt hàng</button>\r\n");
      out.write("            <div><br></div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"row\" id=\"add\">\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!--Them mat hang:-->\r\n");
      out.write("            <script>\r\n");
      out.write("\r\n");
      out.write("                var i = 0;\r\n");
      out.write("                $(document).ready(function () {\r\n");
      out.write("\r\n");
      out.write("                    $(\"#sp\").click(function () {\r\n");
      out.write("                        i = i + 1;\r\n");
      out.write("                        var html = '';\r\n");
      out.write("                        html += '<div class=\"col-sm-4\" id=\"sp' + i + '\">';\r\n");
      out.write("                        html += '<div class=\"panel panel-success\">';\r\n");
      out.write("                        html += '<div class=\"panel-heading\"><b>Nokia lumia 620 rẻ mà chất</b><div class=\"pull-right\"><a onclick=\"xoaa(\\'sp' + i + '\\')\">xoa</a></div></div>';\r\n");
      out.write("                        html += '<div class=\"panel-body\" style=\"height:250\">';\r\n");
      out.write("                    html += '<img src=\"");
      if (_jspx_meth_c_url_7(_jspx_page_context))
        return;
      out.write("\" class=\"img-responsive\">';\r\n");
      out.write("                        html += '</div>';\r\n");
      out.write("                        html += '<div class=\"panel-footer\">';\r\n");
      out.write("                        html += '<a href=\"#\"> <span class=\"glyphicon glyphicon-shopping-cart\"> <b style=\"color:blue;font-size:20px;\"> Mua hàng ngay!</b> </span></a>';\r\n");
      out.write("                        html += '</div>';\r\n");
      out.write("                        html += '</div>';\r\n");
      out.write("                        html += '</div>';\r\n");
      out.write("                        $('#add').append(html);\r\n");
      out.write("\r\n");
      out.write("                    });\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                });\r\n");
      out.write("\r\n");
      out.write("                function xoaa(id) {\r\n");
      out.write("                    // alert(\"sdf\");\r\n");
      out.write("                    $('#' + id).fadeOut();\r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                function testThu() {\r\n");
      out.write("                    var user = $('#user').val();\r\n");
      out.write("                    var pass = $('#pass').val();\r\n");
      out.write("                    //Su dung Ajax lay gia tri ve:\r\n");
      out.write("                    $.ajax({\r\n");
      out.write("                        type: \"post\",\r\n");
      out.write("                        url: \"store/goDN.html\",\r\n");
      out.write("                        data: {\r\n");
      out.write("                            user: user,\r\n");
      out.write("                            pass: pass\r\n");
      out.write("                        },\r\n");
      out.write("                        success: function (kq) {\r\n");
      out.write("                            location.reload();\r\n");
      out.write("                            if (kq === \"1\") {\r\n");
      out.write("                                alert(\"Bạn đã đăng nhập thành công!\");\r\n");
      out.write("    //                                var addThem='';\r\n");
      out.write("    //                                addThem+=' <a href=\"#\" id=\"dn\" class=\"navbar-brand gly3\" >Thoát</a> ';\r\n");
      out.write("                                $('#them').append(addThem);\r\n");
      out.write("                                $(\"#dk\").prop(\"disabled\", true);\r\n");
      out.write("                                $(\"#dn\").prop(\"disabled\", true);\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                            } else {\r\n");
      out.write("                                alert(\"Đăng nhập thất bại!\");\r\n");
      out.write("                            }\r\n");
      out.write("                        }\r\n");
      out.write("                    });\r\n");
      out.write("\r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("        </script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_url_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_0 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_0.setPageContext(_jspx_page_context);
    _jspx_th_c_url_0.setParent(null);
    _jspx_th_c_url_0.setValue("/resources/js/jquery-2.2.4.min.js");
    int _jspx_eval_c_url_0 = _jspx_th_c_url_0.doStartTag();
    if (_jspx_th_c_url_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_0);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_0);
    return false;
  }

  private boolean _jspx_meth_c_url_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_1 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_1.setPageContext(_jspx_page_context);
    _jspx_th_c_url_1.setParent(null);
    _jspx_th_c_url_1.setValue("/resources/css/bootstrap.min.css");
    int _jspx_eval_c_url_1 = _jspx_th_c_url_1.doStartTag();
    if (_jspx_th_c_url_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_1);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_1);
    return false;
  }

  private boolean _jspx_meth_c_url_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_2 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_2.setPageContext(_jspx_page_context);
    _jspx_th_c_url_2.setParent(null);
    _jspx_th_c_url_2.setValue("/resources/js/bootstrap.min.js");
    int _jspx_eval_c_url_2 = _jspx_th_c_url_2.doStartTag();
    if (_jspx_th_c_url_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_2);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_2);
    return false;
  }

  private boolean _jspx_meth_c_url_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_3 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_3.setPageContext(_jspx_page_context);
    _jspx_th_c_url_3.setParent(null);
    _jspx_th_c_url_3.setValue("img/samsung.jpg");
    int _jspx_eval_c_url_3 = _jspx_th_c_url_3.doStartTag();
    if (_jspx_th_c_url_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_3);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_3);
    return false;
  }

  private boolean _jspx_meth_c_url_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_4 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_4.setPageContext(_jspx_page_context);
    _jspx_th_c_url_4.setParent(null);
    _jspx_th_c_url_4.setValue("img/sony.jpg");
    int _jspx_eval_c_url_4 = _jspx_th_c_url_4.doStartTag();
    if (_jspx_th_c_url_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_4);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_4);
    return false;
  }

  private boolean _jspx_meth_c_url_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_5 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_5.setPageContext(_jspx_page_context);
    _jspx_th_c_url_5.setParent(null);
    _jspx_th_c_url_5.setValue("img/lumia.jpg");
    int _jspx_eval_c_url_5 = _jspx_th_c_url_5.doStartTag();
    if (_jspx_th_c_url_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_5);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_5);
    return false;
  }

  private boolean _jspx_meth_c_url_6(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_6 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_6.setPageContext(_jspx_page_context);
    _jspx_th_c_url_6.setParent(null);
    _jspx_th_c_url_6.setValue("img/oppor5.jpg");
    int _jspx_eval_c_url_6 = _jspx_th_c_url_6.doStartTag();
    if (_jspx_th_c_url_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_6);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_6);
    return false;
  }

  private boolean _jspx_meth_c_url_7(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_7 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_7.setPageContext(_jspx_page_context);
    _jspx_th_c_url_7.setParent(null);
    _jspx_th_c_url_7.setValue("img/lumia620.png");
    int _jspx_eval_c_url_7 = _jspx_th_c_url_7.doStartTag();
    if (_jspx_th_c_url_7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_7);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_7);
    return false;
  }
}
