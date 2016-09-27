/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDAO;
import javax.servlet.http.HttpServletRequest;
import model.Category;
import model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import service.CategoryService;
import service.ProductService;

/**
 *
 * @author EndlessLove
 */
@Controller
@RequestMapping(value = "/manager")
public class ManagerProduct {

    @Autowired
    ProductService productDAO;

    @Autowired
    CategoryService categoryDAO;
    
    @RequestMapping(value = "/addProduct")
    public String addProduct(ModelMap mm){
        mm.put("listCategory", categoryDAO.getAllCategory());
        return "manager/addProduct";
    }
    
    @RequestMapping(value = "/addProduct",method = RequestMethod.POST)
    public String addInventory(HttpServletRequest request,ModelMap mm){ 
        //Lay gia tri tu form
        long categoryID = Long.parseLong(request.getParameter("categoryID"));
        long productID = Long.parseLong(request.getParameter("productID"));
        String productName = String.valueOf(request.getParameter("productName"));
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String productDescription = String.valueOf(request.getParameter("productDescription"));
        String productImage = String.valueOf(request.getParameter("productImage"));
        
        ProductDAO productDAO =new ProductDAO();
        Product product = new Product(productID,new Category(categoryID,"BLUE"),productName,productImage,productPrice,productDescription,quantity);
        productDAO.insertProduct(product);
        return "manager/index";
    }

}
