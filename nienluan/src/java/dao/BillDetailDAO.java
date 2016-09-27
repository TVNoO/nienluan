/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.BillDetail;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author EndlessLove
 */
public class BillDetailDAO {
    // them hoa don moi
    public boolean insertBillDetail(BillDetail bd) {
        try {
            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            Transaction transaction = session.beginTransaction();
            session.save(bd);
            transaction.commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public static void main(String[] args) {
        BillDetail b = new BillDetail(1,1,1,12000,1);
        BillDetailDAO bd = new BillDetailDAO();
        
        if(bd.insertBillDetail(b)){
            System.out.println("Thanh cong");
        } else System.out.println("That bai");
    }
}
