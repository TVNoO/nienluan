/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import model.Category;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;



/**
 *
 * @author EndlessLove
 */
public class CategoryDAO {
    
    public ArrayList<Category> getAllcategory(){
     Session session = HibernateUtil.getSessionFactory().getCurrentSession();
     Transaction transaction = session.beginTransaction();
     Query query = (Query) session.createQuery("from category");
     ArrayList<Category> list = (ArrayList<Category>) query.list();
     transaction.commit();
     return list;
    }
    
    public static void main(String[] args) {
        System.out.println(new CategoryDAO().getAllcategory().size());
    }
}



