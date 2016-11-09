/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.bind.annotation.RenderMapping;
import dao.*;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Transient;
import model.*;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author EndlessLove
 */
@Controller
@RequestMapping(value = "/")
public class ProductController {

    @RequestMapping(value = "/goProduct", method = RequestMethod.GET)
    public String GoProduct(ModelMap mm, HttpServletRequest request) {
        CategoryDAO cdao = new CategoryDAO();
        ProductDAO pdao = new ProductDAO();
        Long id = Long.parseLong(request.getParameter("categoryID"));
        List<Product> list = (List<Product>) pdao.getProductByCategoryId(id);
        mm.put("listCategory", cdao.getAllcategory());
        mm.put("listProduct", list);
        return "jsp/product";
    }

    @RequestMapping(value = "/goDetailSearch", method = RequestMethod.GET)
    public String goDetailSearch(ModelMap mm, HttpServletRequest request) {

        CategoryDAO cdao = new CategoryDAO();
        ProductDAO pdao = new ProductDAO();

        String productName = String.valueOf(request.getParameter("productName"));

        mm.put("product", pdao.getProduct1(productName));
        mm.put("listCategory", cdao.getAllcategory());

        return "jsp/detail";
    }

    @RequestMapping(value = "/goDetail", method = RequestMethod.GET)
    public String goDetail(ModelMap mm, HttpServletRequest request) {

        CategoryDAO cdao = new CategoryDAO();
        ProductDAO pdao = new ProductDAO();

        Long productId = Long.parseLong(request.getParameter("productId"));
        mm.put("product", pdao.getProduct(productId));
        mm.put("listCategory", cdao.getAllcategory());

        return "jsp/detail";
    }
// Chuyen den trang them san pham: addproduct.jsp

    @RequestMapping(value = "/goAddProduct", method = RequestMethod.GET)
    public String goAddProduct(ModelMap mm, HttpServletRequest request) {
        CategoryDAO cdao = new CategoryDAO();

        mm.put("listCategory", cdao.getAllcategory());

        return "manager/addProduct";
    }

    @RequestMapping(value = "/addProduct", method = RequestMethod.GET)
    public String addProduct(ModelMap mm, HttpServletRequest request) {

        CategoryDAO cdao = new CategoryDAO();
        ProductDAO pdao = new ProductDAO();

        long categoryId = Long.parseLong(request.getParameter("categoryId"));
        String productName = String.valueOf(request.getParameter("productName"));
        String productImage = String.valueOf(request.getParameter("productImage"));
        long productPrice = Long.parseLong(request.getParameter("productPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String productDescription = String.valueOf(request.getParameter("productDescription"));

        Category category = new Category(categoryId);

        Product p = new Product(category, productDescription, "/resources/images/" + productImage, productName, productPrice, quantity,0);

        if (pdao.insertProduct(p)) {
            mm.put("msg", "Thêm mặt hàng thành công !");
            mm.put("listCategory", cdao.getAllcategory());
            return "manager/addProduct";
        } else {
            mm.put("listCategory", cdao.getAllcategory());
            mm.put("msg", "Thêm mặt hàng thất bai !");
            return "manager/addProduct";
        }

    }

    @RequestMapping(value = "/deleteProduct", method = RequestMethod.GET)
    public String deleteProduct(ModelMap mm, HttpServletRequest request) {

        CategoryDAO cdao = new CategoryDAO();
        ProductDAO pdao = new ProductDAO();

        long productId = Long.parseLong(request.getParameter("productId"));

        Product p = pdao.getProduct(productId);

        if (pdao.deleteProduct(p)) {
            mm.put("msg", "Xóa mặt hàng thành công !");
            mm.put("listCategory", cdao.getAllcategory());
            return "manager/index";
        } else {
            mm.put("listCategory", cdao.getAllcategory());
            mm.put("msg", "Xóa mặt hàng thành công !");
            return "manager/index";
        }
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(ModelMap mm, HttpServletRequest request) {

        ProductDAO pdao = new ProductDAO();
        CategoryDAO cdao = new CategoryDAO();
        String action = String.valueOf(request.getParameter("action"));
        if (action.equalsIgnoreCase("Xóa")) {
            try {
                if (request.getParameter("productId") != null) {
                    for (String productID : request.getParameterValues("productId")) {
                        Long productId = Long.parseLong(productID);
                        Product p = pdao.getProduct(productId);
                        
                        pdao.deleteProduct(p);
                    }
                    mm.put("msg", "Xóa mặt hàng thành công !");
                    mm.put("listCategory", cdao.getAllcategory());

                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            try {
                float discount = Float.parseFloat(request.getParameter("discount"));
                if (request.getParameter("productId") != null) {
                    for (String productID : request.getParameterValues("productId")) {
                        Long productId = Long.parseLong(productID);
                        
                        Product p = pdao.getProduct(productId);
                        p.setDiscount(discount);
                                
                        pdao.updateProduct(p);
                    }
                    mm.put("msg", "Cập nhật giảm gía thành công !");
                    mm.put("listCategory", cdao.getAllcategory());

                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        

        return "manager/index";
    }

    @RequestMapping(value = "/goUpdateProduct", method = RequestMethod.GET)
    public String goUpdateProduct(ModelMap mm, HttpServletRequest request) {
        CategoryDAO cdao = new CategoryDAO();
        ProductDAO pdao = new ProductDAO();
        Long productId = Long.parseLong(request.getParameter("productId"));
        mm.put("productId", productId);
        mm.put("listCategory", cdao.getAllcategory());
        mm.put("product", pdao.getProduct(productId));
        return "manager/updateProduct";
    }

    @RequestMapping(value = "/updateProduct", method = RequestMethod.GET)
    public String updateProduct(ModelMap mm, HttpServletRequest request) {

        CategoryDAO cdao = new CategoryDAO();
        ProductDAO pdao = new ProductDAO();

        long categoryId = Long.parseLong(request.getParameter("categoryId"));
        long productId = Long.parseLong(request.getParameter("productId"));
        String productName = String.valueOf(request.getParameter("productName"));
        String productImage = String.valueOf(request.getParameter("productImage"));
        long productPrice = Long.parseLong(request.getParameter("productPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String productDescription = String.valueOf(request.getParameter("productDescription"));

        Category category = new Category(categoryId);
        Product p = new Product(category, productDescription, "/resources/images/" + productImage, productName, productPrice, quantity,0);

        if (pdao.updateProduct(p)) {
            mm.put("msg", "Cập nhật thành công !");
            mm.put("listCategory", cdao.getAllcategory());
            return "manager/addProduct";
        } else {
            mm.put("msg", "Cập nhật thành công !");
            mm.put("listCategory", cdao.getAllcategory());
            return "manager/addProduct";
        }
    }

    // Xu li ajax hien thi san pham theo loai
    @RequestMapping(value = "/choice", method = RequestMethod.POST)
    public @ResponseBody
    String choiceCategory(ModelMap mm, HttpServletRequest request, @RequestParam String ch) throws JsonProcessingException {

        ObjectMapper mapper = new ObjectMapper();
        ProductDAO pdao = new ProductDAO();
        List<Product> list = new ArrayList<Product>();
        list = (List<Product>) pdao.getProductByCategoryId(Long.parseLong(ch));
        String json = mapper.writeValueAsString(list);
        return json;
    }

    // Hien thi san pham theo ten tren khung tim kiem : autocomplete
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    @ResponseBody
    public List<String> findAll(HttpServletRequest request) {
        ProductDAO pdao = new ProductDAO();
        return pdao.search(request.getParameter("term"));
    }

}
