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
import org.springframework.web.bind.annotation.RequestMethod;


/**
 *
 * @author EndlessLove
 */
import dao.*;
import model.*;

@Controller
@RequestMapping(value = "/")
public class HomepageController {
    
    //@Autowired
   // CategoryService categoryService;
    
    //@Autowired
    //ProductService productService;
    
    @RequestMapping(value = "/trangchu",method = RequestMethod.GET)
    public String index(ModelMap mm){
          ProductDAO pdao=new ProductDAO();
          CategoryDAO cdao=new CategoryDAO();
          mm.put("listCategory", cdao.getAllcategory());
          mm.put("listProduct", pdao.getProductRandom());
          return "jsp/index";
    }
    
    @RequestMapping(value = "/admin",method = RequestMethod.GET)
    public String admin(ModelMap mm){
          ProductDAO pdao=new ProductDAO();
          CategoryDAO cdao=new CategoryDAO();
          mm.put("listCategory", cdao.getAllcategory());
          mm.put("listProduct", pdao.getProductRandom());
          return "manager/index";
    }
    
}
