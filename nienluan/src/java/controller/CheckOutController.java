/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CategoryDAO;
import dao.OrderDAO;
import dao.OrderDetailDAO;
import dao.ProductDAO;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import model.Item;
import model.Orderdetail;
import model.OrderdetailId;
import model.Orders;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import tools.SendMail;

/**
 *
 * @author EndlessLove
 */
@Controller
@RequestMapping(value = "/")
public class CheckOutController {

    @RequestMapping(value = "/goCheckOut", method = RequestMethod.GET)
    String goCart(ModelMap mm, HttpServletRequest request, HttpSession session) {

//        CategoryDAO cdao = new CategoryDAO();
//        mm.put("listCategory", cdao.getAllcategory());
        if (session.getAttribute("cart") == null || session.getAttribute("userEmail") == null) {
            return "jsp/login";
        } else {
            return "jsp/checkout";
        }

    }

    @RequestMapping(value = "/checkOut", method = RequestMethod.GET)
    String checkOut(ModelMap mm, HttpServletRequest request, HttpSession session) {

        OrderDAO odao = new OrderDAO();
        OrderDetailDAO oddao = new OrderDetailDAO();
        
        List<Item> cart = (ArrayList<Item>) session.getAttribute("cart");

        // Add order
        String userName = String.valueOf(request.getParameter("userName"));
        String email = String.valueOf(request.getParameter("email"));
        String phone = String.valueOf(request.getParameter("phone"));
        String address = String.valueOf(request.getParameter("address"));

        Orders order = new Orders(new Timestamp(new Date().getTime()), userName, email, phone, address);

        odao.saveOrder(order);

        // Add orderDetail
        for(int i = 0; i < cart.size(); i++) {
            Orderdetail orderdetail = new Orderdetail();
            
            orderdetail.setId(new OrderdetailId(cart.get(i).getProduct().getProductId(),order.getId()));
            orderdetail.setPrice(cart.get(i).getProduct().getProductPrice());
            orderdetail.setQuantity(cart.get(i).getQuantity());
            
            oddao.saveOrderDetail(orderdetail);
            
        }
        session.removeAttribute("cart");

        SendMail sm = new SendMail();
        sm.sendMail(email,"Thông Tin Đặt Hàng","Bạn đã đặt hàng thành công");
        return "jsp/test";

    }

}
