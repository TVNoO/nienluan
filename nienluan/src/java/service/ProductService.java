/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.ProductDAO;
import java.util.ArrayList;
import model.Product;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author EndlessLove
 */
public class ProductService {
    
    @Autowired
    ProductDAO productDAO;
    
    // lay dan sach san pham theo loai san pham
    public ArrayList<Product> getAllProductByCategory(long categoryID) {
        return productDAO.getAllProductByCategory(categoryID);
    }
    
    // lay dan sach san pham ngau nhien
    public ArrayList<Product> getProductRandom() {
        return productDAO.getProductRandom();
    }
    
    public ArrayList<Product> getProduct(long productID) {
        return productDAO.getProduct(productID);
    }
}
