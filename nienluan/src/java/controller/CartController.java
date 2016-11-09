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
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.*;
import org.springframework.web.bind.annotation.PathVariable;

/**
 *
 * @author EndlessLove
 */
@Controller
@RequestMapping(value = "/")
public class CartController {

    @RequestMapping(value = "/goCart", method = RequestMethod.GET)
    String goCart(ModelMap mm) {

        CategoryDAO cdao = new CategoryDAO();
        mm.put("listCategory", cdao.getAllcategory());

        return "jsp/cart";
    }

    private ProductDAO pdao = new ProductDAO();

    @RequestMapping(value = "addToCart", method = RequestMethod.GET)
    public void addToCart(ModelMap mm, HttpSession session, HttpServletRequest request, HttpServletResponse response) {

        CategoryDAO cdao = new CategoryDAO();

        Long productId = Long.parseLong(request.getParameter("productId"));

        if (session.getAttribute("cart") == null) {
            List<Item> cart = new ArrayList<Item>();
            cart.add(new Item(this.pdao.getProduct(productId), 1));
            session.setAttribute("cart", cart);
        } else {
            List<Item> cart = (List<Item>) session.getAttribute("cart");
            int index = isExiting(productId, session);
            if (index == -1) {
                cart.add(new Item(this.pdao.getProduct(productId), 1));
            } else {
                int quantity = cart.get(index).getQuantity() + 1;
                cart.get(index).setQuantity(quantity);
            }

            session.setAttribute("cart", cart);
        }
        try {
            response.sendRedirect("goCart.html");
        } catch (IOException ex) {
            Logger.getLogger(CartController.class.getName()).log(Level.SEVERE, null, ex);
        }
        mm.put("listCategory", cdao.getAllcategory());

    }

	
	
	
    @RequestMapping(value = "deleteProductFromCart", method = RequestMethod.GET)
    public void deleteProductFromCart(ModelMap mm, HttpSession session, HttpServletRequest request, HttpServletResponse response) {

        CategoryDAO cdao = new CategoryDAO();

        List<Item> cart = (List<Item>) session.getAttribute("cart");

        Long productId = Long.parseLong(request.getParameter("productId"));
        int index = isExiting(productId, session);
        cart.remove(index);
        session.setAttribute("cart", cart);
        try {
            response.sendRedirect("goCart.html");
        } catch (IOException ex) {
            Logger.getLogger(CartController.class.getName()).log(Level.SEVERE, null, ex);
        }
        mm.put("listCategory", cdao.getAllcategory());
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public void update(ModelMap mm, HttpSession session, HttpServletRequest request, HttpServletResponse response) {

        CategoryDAO cdao = new CategoryDAO();

        List<Item> cart = (List<Item>) session.getAttribute("cart");

        String[] quantity = request.getParameterValues("quantity");
        for (int i = 0; i < cart.size(); i++) {
            cart.get(i).setQuantity(Integer.parseInt(quantity[i]));
        }
        session.setAttribute("cart", cart);
        try {
            response.sendRedirect("goCart.html");
        } catch (IOException ex) {
            Logger.getLogger(CartController.class.getName()).log(Level.SEVERE, null, ex);
        }
        mm.put("listCategory", cdao.getAllcategory());
    }

    private int isExiting(long productId, HttpSession session) {
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getProduct().getProductId() == productId) {
                return i;
            }
        }

        return -1;

    }

    @RequestMapping(value = "code", method = RequestMethod.POST)
    public String codeSale(ModelMap mm, HttpServletRequest request, HttpServletResponse response) throws IOException {

        CartDAO cartDao = new CartDAO();
        CategoryDAO cdao = new CategoryDAO();

        String code = String.valueOf(request.getParameter("code"));
        Code c = cartDao.getCode(code);
        if (c != null) {
            mm.put("code", c);
            mm.put("msg", code);
            mm.put("listCategory", cdao.getAllcategory());
            return "jsp/cart";

        } else {
            response.sendRedirect("goCart.html");
            mm.put("listCategory", cdao.getAllcategory());
        }
        return null;
    }

}
