/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.CategoryService;
import service.ProductService;

/**
 *
 * @author EndlessLove
 */
@Controller
@RequestMapping(value = "/product")
public class DetailProductController {
    
    @Autowired
    ProductService productService;
    
    @Autowired
    ProductService productDAO;
    
    @Autowired
    CategoryService categoryService;
    
    @RequestMapping(value = "/detailproduct")
    public String getProduct(ModelMap mm, @RequestParam long productID){
        mm.put("listCategory", categoryService.getAllCategory());
        mm.put("product", productService.getProduct(productID));
        return "pages/detail";
    }
    
    
}
