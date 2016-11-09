/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author EndlessLove
 */
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.bind.annotation.RenderMapping;
import dao.*;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.*;
import org.springframework.http.HttpRequest;
import org.springframework.web.bind.annotation.ModelAttribute;
import tools.MD5;

/**
 *
 * @author EndlessLove
 */
@Controller
@RequestMapping(value = "/")
public class UserController {

    @RequestMapping(value = "/goDangKi", method = RequestMethod.GET)
    String goDK(ModelMap mm) {

        CategoryDAO cdao = new CategoryDAO();
        mm.put("listCategory", cdao.getAllcategory());

        return "jsp/register";
    }

    @RequestMapping(value = "/goDangNhap", method = RequestMethod.GET)
    String goDN(ModelMap mm) {

        CategoryDAO cdao = new CategoryDAO();
        mm.put("listCategory", cdao.getAllcategory());

        return "jsp/login";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    String goRegister(HttpServletRequest request, ModelMap mm) {

        String userName = String.valueOf(request.getParameter("userName"));
        String userEmail = String.valueOf(request.getParameter("userEmail"));
        String userPass = String.valueOf(request.getParameter("userPass"));

        userPass = MD5.encryption(userPass);
        UserDAO udao = new UserDAO();
        Users users = new Users(userName, userEmail, userPass, 0);

        if (udao.insertUser(users)) {
            mm.put("msg", "Tạo tài khoản thành công ! Hãy đăng nhập");
            CategoryDAO cdao = new CategoryDAO();
            mm.put("listCategory", cdao.getAllcategory());
            return "jsp/login";
        } else {
            CategoryDAO cdao = new CategoryDAO();
            mm.put("listCategory", cdao.getAllcategory());
            mm.put("msg", "jsp/Tài khoản đã tồn tại !");
        }
        return null;
    }

//    @RequestMapping(value = "/login", method = RequestMethod.POST)
//    String login(HttpServletRequest request, ModelMap mm, HttpSession session) {
//
//        String userEmail = String.valueOf(request.getParameter("userEmail"));
//        String userPass = String.valueOf(request.getParameter("userPass"));
//
//        UserDAO udao = new UserDAO();
//        Users users = udao.getUsers(userEmail, userPass);
//        if (users != null) {
//            if (userEmail.equals("admin@gmail.com")) {
//                ProductDAO pdao = new ProductDAO();
//                CategoryDAO cdao = new CategoryDAO();
//                mm.put("listCategory", cdao.getAllcategory());
//                mm.put("listProduct", pdao.getProductRandom());
//                return "manager/index";
//            } else {
//                mm.put("um", userEmail);
//                CategoryDAO cdao = new CategoryDAO();
//                ProductDAO pdao = new ProductDAO();
//                
//                session.setAttribute("userEmail", userEmail);
//                
//                mm.put("listCategory", cdao.getAllcategory());
//                mm.put("listProduct", pdao.getProductRandom());
//                return "jsp/index";
//            }
//        } else {
//            mm.put("ms", "Dang nhap that bai!");
//            mm.put("um", "Sai Email hoặc mật khẩu");
//            CategoryDAO cdao = new CategoryDAO();
//            ProductDAO pdao = new ProductDAO();
//            mm.put("listCategory", cdao.getAllcategory());
//            mm.put("listProduct", pdao.getProductRandom());
//            return "jsp/login";
//        }
//
//    }
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    String login(ModelMap mm, HttpSession session, HttpServletRequest request) {
        Users user = checkCookie(request);
        if (user == null) {
            mm.put("user", new Users());
            CategoryDAO cdao = new CategoryDAO();
            mm.put("listCategory", cdao.getAllcategory());
            return "jsp/login";
        } else {
            return "jsp/index";
//            UserDAO udao = new UserDAO();
//            Users u = udao.getUsers(user.getUserEmail(), user.getUserPass());
//            if (u != null) {
//                session.setAttribute("userEmail", user.getUserEmail());
//                return "jsp/index";
//            } else {
//                mm.put("um", "Sai Email hoặc mật khẩu");
//                return "jsp/login";
//            }
        }

    }

    @RequestMapping(value = "/index", method = RequestMethod.POST)
    String login(@ModelAttribute(value = "user") Users user, ModelMap mm,
            HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
        CategoryDAO cdao = new CategoryDAO();
        UserDAO udao = new UserDAO();
        Users u = udao.getUsers(user.getUserEmail(), user.getUserPass());
        if (u != null) {
            Cookie ckUserEmail = new Cookie("userEmail", user.getUserEmail());
            ckUserEmail.setMaxAge(3600);
            response.addCookie(ckUserEmail);
            Cookie ckUserPass = new Cookie("userPass", user.getUserPass());
            ckUserPass.setMaxAge(3600);
            response.addCookie(ckUserPass);
            session.setMaxInactiveInterval(3600);
            session.setAttribute("userEmail", user.getUserEmail());
            if (user.getUserEmail().equals("admin@gmail.com")) {
                mm.put("listCategory", cdao.getAllcategory());
                response.sendRedirect("admin.html");
            } else {
                mm.put("listCategory", cdao.getAllcategory());
                response.sendRedirect("trangchu.html");
            }
//            if (request.getParameter("remember") != null) {
//                Cookie ckUserEmail = new Cookie("userEmail", user.getUserEmail());
//                ckUserEmail.setMaxAge(3600);
//                response.addCookie(ckUserEmail);
//                Cookie ckUserPass = new Cookie("userPass", user.getUserPass());
//                ckUserPass.setMaxAge(3600);
//                response.addCookie(ckUserPass);
//            }

        } else {
            mm.put("listCategory", cdao.getAllcategory());
            mm.put("um", "Sai Email hoặc mật khẩu");
            return "jsp/login";
        }
        return null;
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response, ModelMap mm) {

        session.removeAttribute("userEmail");

        for (Cookie ck : request.getCookies()) {
            if (ck.getName().equalsIgnoreCase("userEmail")) {
                ck.setMaxAge(0);
                response.addCookie(ck);
            }
            if (ck.getName().equalsIgnoreCase("userPass")) {
                ck.setMaxAge(0);
                response.addCookie(ck);
            }
        }
        CategoryDAO cdao = new CategoryDAO();
        mm.put("listCategory", cdao.getAllcategory());
        return "jsp/login";
    }

    public Users checkCookie(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        Users user = null;
        String userEmail = "", userPass = "";
        for (Cookie ck : cookies) {
            if (ck.getName().equalsIgnoreCase(userEmail)) {
                userEmail = ck.getValue();
            }
            if (ck.getName().equalsIgnoreCase(userPass)) {
                userPass = ck.getValue();
            }
        }
        if (!userEmail.isEmpty() && !userPass.isEmpty()) {
            user = new Users(userEmail, userPass);
        }

        return user;
    }
}
