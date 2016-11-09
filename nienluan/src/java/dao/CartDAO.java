/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Code;
import model.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author EndlessLove
 */
public class CartDAO {
    private final SessionFactory sf = HibernateUtil.getSessionFactory();
    
    public Code getCode(String codeS) {
        Code code = new Code();
        try {
            sf.getCurrentSession().beginTransaction();
            Criteria criteria = sf.getCurrentSession().createCriteria(Code.class);
            criteria.add(Restrictions.eq("code", codeS));
            code = (Code) criteria.uniqueResult();
            sf.getCurrentSession().close();
            return code;
        } catch (Exception e) {
            sf.getCurrentSession().getTransaction().rollback();
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    public static void main(String[] args) {
        Code c = new Code();
        CartDAO cd = new CartDAO();
        
        c = cd.getCode("KHM"); 
        if( c != null){
            System.out.println(c.getRate());
        }
    }
}
