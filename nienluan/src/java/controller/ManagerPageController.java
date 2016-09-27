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
@RequestMapping(value = "/manager")
public class ManagerPageController {
    
    @Autowired
    ProductService productDAO;
    
    @Autowired
    CategoryService categoryDAO;
    
    @RequestMapping(value = "/index")
    public String index(ModelMap mm){
        mm.put("listProduct", productDAO.getAllProductByCategory(6));
        mm.put("listCategory", categoryDAO.getAllCategory());
        return "manager/index";
    }
}
