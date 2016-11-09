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
import model.*;

/**
 *
 * @author EndlessLove
 */
@Controller
@RequestMapping(value = "/")
public class SaleOffController {
    
    @RequestMapping(value = "/goManagerKM", method = RequestMethod.GET)
    String goManagerKM(ModelMap mm) {
        
         ProductDAO pdao=new ProductDAO();
          CategoryDAO cdao=new CategoryDAO();
          mm.put("listCategory", cdao.getAllcategory());
          mm.put("listProduct", pdao.getProductRandom());
        return "manager/manager_saleOff";
    }
}
