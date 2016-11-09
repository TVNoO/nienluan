/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import model.HibernateUtil;
import model.News;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


/**
 *
 * @author EndlessLove
 */
public class NewsDAO {
    
    private final SessionFactory sf = HibernateUtil.getSessionFactory();
    
    public News getNews(int id) {
        News news = new News();
        try {
            sf.getCurrentSession().beginTransaction();
            news = (News) sf.getCurrentSession().get(News.class, id);
            sf.getCurrentSession().close();
            return news;
        } catch (Exception e) {
            sf.getCurrentSession().getTransaction().rollback();
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    
    
    public List<News> getAllNews(){
        List<News> list = new ArrayList<News>();
        try {
            sf.getCurrentSession().beginTransaction();
            list = sf.getCurrentSession().createCriteria(News.class).list();
            sf.getCurrentSession().close();
            return list;
        } catch (Exception e) {
            sf.getCurrentSession().getTransaction().rollback();
            return null;
        }

    }
    public boolean insertNews(News news) {
        try {
            sf.getCurrentSession().beginTransaction();
            sf.getCurrentSession().saveOrUpdate(news);
            sf.getCurrentSession().getTransaction().commit();
            sf.getCurrentSession().close();
            return true;
        } catch (Exception e) {
            e.getMessage();
            return false;
        }
//    
    }
    
    public boolean deleteNews(News news) {
        boolean check;
        try {
            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            Transaction transaction = session.beginTransaction();
            session.delete(news);
            transaction.commit();
            session.close();
            check = true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            check = false;
        }
        return check;
    }
    
    public static void main(String[] args) {
        News n = new News();
        NewsDAO nd = new NewsDAO();
        
        n = nd.getNews(1);
        nd.deleteNews(n);
        
        
    }
}
