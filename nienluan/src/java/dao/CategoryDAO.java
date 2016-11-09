/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.HibernateUtil;
import org.hibernate.SessionFactory;



/**
 *
 * @author EndlessLove
 */
public class CategoryDAO {
    private  final SessionFactory sf = HibernateUtil.getSessionFactory();
    public List<Category> getAllcategory(){
     List<Category> list=new ArrayList<Category>();
          try {
                sf.getCurrentSession().beginTransaction();
                list=sf.getCurrentSession().createCriteria(Category.class).list();
                sf.getCurrentSession().close();
                return list;
            } 
          catch (Exception e) {
              //sf.getCurrentSession().getTransaction().rollback();
              return null;
           }
    }
    
    public static void main(String[] args) {
        System.out.println(new CategoryDAO().getAllcategory().size());
    }
}



