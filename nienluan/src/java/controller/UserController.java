/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UserDAO;
import static javafx.scene.paint.Color.color;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Users;
import org.apache.catalina.connector.Request;
import org.apache.catalina.connector.Response;
import org.apache.tomcat.jni.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import service.CategoryService;

/**
 *
 * @author EndlessLove
 */
@Controller

public class UserController {

    @Autowired
    CategoryService categoryService;

    @Autowired
    UserDAO userDAO;

    @RequestMapping(value = "/home/login", method = RequestMethod.GET)
    public String login(ModelMap mm) {
        mm.put("listCategory", categoryService.getAllCategory());
        return "pages/login";
    }

    @RequestMapping(value = "/home/register", method = RequestMethod.GET)
    public String register(ModelMap mm) {
        mm.put("listCategory", categoryService.getAllCategory());
        return "pages/register";
    }

    // Dang ki
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public @ResponseBody
    String doRegister(HttpServletRequest request, ModelMap mm) {

        String userName = String.valueOf(request.getParameter("userName"));
        String userEmail = String.valueOf(request.getParameter("userEmail"));
        String userPass = String.valueOf(request.getParameter("userPass"));
        String reUserPass = String.valueOf(request.getParameter("reUserPass"));

        UserDAO userDAO = new UserDAO();
        Users user = new Users(userName, userEmail, userPass, false);

        if (!userDAO.checkEmail(userEmail) && userPass.equals(reUserPass)) {
            if (userDAO.insertUser(user)) {
                mm.put("msg", "thanh cong");
                return "pages/login";
            } else {
                mm.put("msg", "thatbai");
                return "pages/register";
            }
        }
        return "login";
    }

    // Dang nhap
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(HttpServletRequest request, ModelMap mm) {

        String userEmail = String.valueOf(request.getParameter("userEmail"));
        String userPass = String.valueOf(request.getParameter("userPass"));

        Users users = userDAO.login(userEmail, userPass);
        if (users != null) {
            HttpSession session = request.getSession();
            session.setAttribute("users", users);
            return "pages/index";
        } else {
            mm.put("msg", "Bạn đã nhập sai email hoặc mặc khẩu!");
            return "pages/login";
        }
    }

}
