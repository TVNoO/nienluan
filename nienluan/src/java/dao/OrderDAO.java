/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Timestamp;
import java.util.Date;
import model.HibernateUtil;
import model.Orders;
import org.hibernate.SessionFactory;

/**
 *
 * @author EndlessLove
 */
public class OrderDAO {
    
    private final SessionFactory sf = HibernateUtil.getSessionFactory();
    
    public boolean saveOrder(Orders order) {
        try {
            sf.getCurrentSession().beginTransaction();
            sf.getCurrentSession().saveOrUpdate(order);
            sf.getCurrentSession().getTransaction().commit();
            sf.getCurrentSession().close();
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }

    }
    
    public static void main(String[] args) {
        Orders order = new Orders(new Timestamp(new Date().getTime()), "tvn", "tvn@gmail.com", "0909090909", "can tho");
        OrderDAO dao = new OrderDAO();
        
        if(dao.saveOrder(order)){
            System.out.println("sucess");
        } else {
            System.out.println("failed");
        }
    }
}
