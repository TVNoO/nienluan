/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.Feedback;
import model.HibernateUtil;
import model.Orders;
import model.Survey;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author EndlessLove
 */
public class FeedbackDAO {

    private final SessionFactory sf = HibernateUtil.getSessionFactory();

    /**
     *
     * Author: NgoanTV Function: boolean saveFeedback(Feedback feedback) save
     * feedback
     *
     */
    public boolean saveFeedback(Feedback feedback) {
        try {
            sf.getCurrentSession().beginTransaction();
            sf.getCurrentSession().saveOrUpdate(feedback);
            sf.getCurrentSession().getTransaction().commit();
            sf.getCurrentSession().close();
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }

    }

    /**
     * 
     *  Author: NgoanTV
     *  Function: Feedback getFeedback(String no) 
     *  get feedback
     * 
     */
    public Feedback getFeedback(String no) {
        Feedback feedback = new Feedback();
        int id = Integer.parseInt(no);
        try {
            sf.getCurrentSession().beginTransaction();
            feedback = (Feedback) sf.getCurrentSession().get(Feedback.class, id);
            sf.getCurrentSession().close();
            return feedback;
        } catch (Exception e) {
            sf.getCurrentSession().getTransaction().rollback();
            System.out.println(e.getMessage());
            return null;
        }
    }

    /**
     * 
     *  Author: NgoanTV
     *  Function: boolean deleteFeedback(Feedback feedback) 
     *  delete feedback
     * 
     */
    public boolean deleteFeedback(Feedback feedback) {
        boolean check;
        try {
            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            Transaction transaction = session.beginTransaction();
            session.delete(feedback);
            transaction.commit();

            check = true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            check = false;
        }
        return check;
    }

    /**
     * 
     *  Author: NgoanTV
     *  Function: List<Feedback> getAllFeedback() 
     *  getAllFeedback
     * 
     */
    public List<Feedback> getAllFeedback() {
        List<Feedback> list = new ArrayList<Feedback>();
        try {
            sf.getCurrentSession().beginTransaction();
            list = sf.getCurrentSession().createCriteria(Feedback.class).list();
            sf.getCurrentSession().close();
            return list;
        } catch (Exception e) {
            sf.getCurrentSession().getTransaction().rollback();
            return null;
        }

    }

    /**
     * 
     *  Author: NgoanTV
     *  Function: boolean saveSurvey(Survey survey) 
     *  save Survey 
     * 
     */
    public boolean saveSurvey(Survey survey) {
        try {
            sf.getCurrentSession().beginTransaction();
            sf.getCurrentSession().saveOrUpdate(survey);
            sf.getCurrentSession().getTransaction().commit();
            sf.getCurrentSession().close();
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }

    }

    /**
     * 
     *  Author: NgoanTV
     *  Function: List<Long> countSurvey()
     *  count survey
     * 
     */
    public List<Long> countSurvey() {
        List<Long> list = new ArrayList<Long>();
        List<String> hql = new ArrayList<String>();
        try {
            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            Transaction transaction = session.beginTransaction();
            hql.add("SELECT COUNT(*) FROM Survey where level = 'RT'");
            hql.add("SELECT COUNT(*) FROM Survey where level = 'T'");
            hql.add("SELECT COUNT(*) FROM Survey where level = 'BT'");
            hql.add("SELECT COUNT(*) FROM Survey where level = 'X'");
            hql.add("SELECT COUNT(*) FROM Survey where level = 'RX'");
            for (int i = 0; i <= 4; i++) {
                Query query = session.createQuery(hql.get(i));
                long count = (Long) query.uniqueResult();
                list.add(count);
            }

            transaction.commit();
            //session.close();

            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }

}
