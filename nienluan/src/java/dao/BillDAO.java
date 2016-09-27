/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.Timestamp;
import java.util.Date;
import model.Bill;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;
/**
 *
 * @author EndlessLove
 */
public class BillDAO {
    // them hoa don moi
    public boolean insertBill(Bill bill) {
        try {
            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            Transaction transaction = session.beginTransaction();
            session.save(bill);
            transaction.commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public static void main(String[] args) {
        Bill b = new Bill(1,1,"Ca mau",10,"tt",new Timestamp(new Date().getTime()));
        BillDAO bd = new BillDAO();
        
        if(bd.insertBill(b)){
            System.out.println("Thanh cong");
        } else System.out.println("That bai");
    }
}
