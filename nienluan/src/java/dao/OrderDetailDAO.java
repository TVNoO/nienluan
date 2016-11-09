/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.HibernateUtil;
import model.Orderdetail;
import org.hibernate.SessionFactory;

/**
 *
 * @author EndlessLove
 */
public class OrderDetailDAO {
    private final SessionFactory sf = HibernateUtil.getSessionFactory();
    
    public boolean saveOrderDetail(Orderdetail orderdettail) {
        try {
            sf.getCurrentSession().beginTransaction();
            sf.getCurrentSession().saveOrUpdate(orderdettail);
            sf.getCurrentSession().getTransaction().commit();
            sf.getCurrentSession().close();
            return true;
        } catch (Exception e) {
            e.getMessage();
            return false;
        }
//    
    }
}
