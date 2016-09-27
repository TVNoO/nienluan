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
import org.hibernate.Transaction;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import util.HibernateUtil;

/**
 *
 * @author EndlessLove
 */
public class UserDAO {

    //Dang ky
    public boolean insertUser(Users user) {
        try {
            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            Transaction transaction = session.beginTransaction();
            session.save(user);
            transaction.commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean checkEmail(String email) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        Query query = session.createQuery("from users where userEmail = :userEmail");
        query.setString("userEmail", email);
        Users user = (Users) query.uniqueResult();
        transaction.commit();
        return user != null;
    }

    //Dang nhap
    public Users login(String userEmail, String userPass) {
        try {
            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            Transaction transaction = session.beginTransaction();
            Query query = session.createQuery("from users where userEmail = :userEmail and userPass = :userPass");
            query.setString("userEmail", userEmail);
            query.setString("userPass", userPass);
            Users user = (Users) query.uniqueResult();
            transaction.commit();
            return user;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public static void main(String[] args) {
        UserDAO ud = new UserDAO();
        Users u = new Users("tvn", "tvn94@gmail.com", "123456", false);
        
        
        if (ud.insertUser(u)) {
            //System.out.println(users.getUserEmail() + "   " + users.getUserPass());
            System.out.println("Da Ton tai");
        } else {
            System.out.println("OK");    
        }
    }
}
