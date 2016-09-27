/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.CategoryDAO;
import java.util.ArrayList;
import model.Category;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author EndlessLove
 */
public class CategoryService {
    
    @Autowired
    CategoryDAO categoryDAO;
    
    //lay danh sach danh muc san pham
    public ArrayList<Category> getAllCategory() {
        return categoryDAO.getAllcategory();
    }
    
    
    
}
