/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

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
public class ProductController {
    
    @Autowired
    ProductService productService;
    
    @Autowired
    CategoryService categoryService;
    
    @RequestMapping(value = "/list")
    public String getListProductByCategory(ModelMap mm, @RequestParam long categoryID){
        mm.put("listProduct", productService.getAllProductByCategory(categoryID));
        mm.put("listCategory", categoryService.getAllCategory());
        return "pages/product";
    }
    
    
    
}
