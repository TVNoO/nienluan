/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import javax.servlet.http.HttpSession;
import model.Users;
import org.apache.tomcat.jni.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author EndlessLove
 */
public class UserDAO {

    private final SessionFactory sf = HibernateUtil.getSessionFactory();

    //Dang ky

    public boolean insertUser(Users user) {
        try {
            sf.getCurrentSession().beginTransaction();
            sf.getCurrentSession().saveOrUpdate(user);
            sf.getCurrentSession().getTransaction().commit();
            sf.getCurrentSession().close();
            return true;
        } catch (Exception e) {
            e.getMessage();
            return false;
        }
//    
    }

    //Lay thong tin user

    public Users getUsers(String userEmail, String userPass) {
        Users user = new Users();
        try {
            sf.getCurrentSession().beginTransaction();
            Criteria criteria = sf.getCurrentSession().createCriteria(Users.class);
            Criterion email = Restrictions.eq("userEmail", userEmail);
            Criterion pass = Restrictions.eq("userPass", userPass);
            LogicalExpression andExp = Restrictions.and(email, pass);
            criteria.add(andExp);
            user = (Users) criteria.uniqueResult();
            sf.getCurrentSession().close();
            return user;
        } catch (Exception e) {
            sf.getCurrentSession().getTransaction().rollback();
            System.out.println(e.getMessage());
            return null;
        }

    }

    public static void main(String[] args) {
        UserDAO ud = new UserDAO();
        if (ud.getUsers("tvn91@gmail.com", "123456") != null) {
            System.out.println("Thanh cong");
        } else {
            System.out.println("That bai");
        }
    }

//    public boolean checkEmail(String email) {
//        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
//        Transaction transaction = session.beginTransaction();
//        Query query = session.createQuery("from users where userEmail = :userEmail");
//        query.setString("userEmail", email);
//        Users user = (Users) query.uniqueResult();
//        transaction.commit();
//        return user != null;
//    }
//
//    //Dang nhap
//    public Users login(String userEmail, String userPass) {
//        try {
//            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
//            Transaction transaction = session.beginTransaction();
//            Query query = session.createQuery("from users where userEmail = :userEmail and userPass = :userPass");
//            query.setString("userEmail", userEmail);
//            query.setString("userPass", userPass);
//            Users user = (Users) query.uniqueResult();
//            transaction.commit();
//            return user;
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return null;
//    }
//
////    public static void main(String[] args) {
////        UserDAO ud = new UserDAO();
////        Users u = new Users("tvn91", "tvn91@gmail.com", "123456", false);
////        
////        /*if(ud.login("tvn91@gmail.com","12345") != null){
////            System.out.println("Thnah cong");
////        }else System.out.println("That bai");*/
////
//////        if (!ud.checkEmail("tvn91@gmail.com")) {
//////            if (ud.insertUser(u)) {
//////                //System.out.println(users.getUserEmail() + "   " + users.getUserPass());
//////                System.out.println("Da Thanh cong");
//////            } else {
//////                System.out.println("That bai");
//////            }
//////        }
////    }
}
