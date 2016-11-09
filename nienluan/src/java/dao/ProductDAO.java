/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.hibernate.sql.JoinType;

/**
 *
 * @author EndlessLove
 */
public class ProductDAO {

    private final SessionFactory sf = HibernateUtil.getSessionFactory();

    // Lay ngau nhien 20 san pham
    public List<Product> getProductRandom() {

        List<Product> list = new ArrayList<Product>();
        try {
            sf.getCurrentSession().beginTransaction();
            list = sf.getCurrentSession().createCriteria(Product.class).list();
            sf.getCurrentSession().close();
            return list;
        } catch (Exception e) {
            sf.getCurrentSession().getTransaction().rollback();
            return null;
        }

//        Transaction transaction = session.beginTransaction();
//        Query query = (Query) session.createQuery("from product order by rand()");
//        query.setMaxResults(20);
//        ArrayList<Product> list = (ArrayList<Product>) query.list();
//        transaction.commit();
//        session.close();
    }

    //Lay thong tin san pham
    public Product getProduct(long productId) {
        Product product = new Product();
        try {
            sf.getCurrentSession().beginTransaction();
            product = (Product) sf.getCurrentSession().get(Product.class, productId);
            sf.getCurrentSession().close();
            return product;
        } catch (Exception e) {
            sf.getCurrentSession().getTransaction().rollback();
            System.out.println(e.getMessage());
            return null;
        }
    }

    public Product getProduct1(String productName) {
        Product product = new Product();
        try {
            sf.getCurrentSession().beginTransaction();
            Criteria criteria = sf.getCurrentSession().createCriteria(Product.class);
            criteria.add(Restrictions.eq("productName", productName));
            product = (Product) criteria.uniqueResult();
            sf.getCurrentSession().close();
            return product;
        } catch (Exception e) {
            sf.getCurrentSession().getTransaction().rollback();
            System.out.println(e.getMessage());
            return null;
        }
    }

    public List<Product> getProductByCategoryId(long categoryId) {

        Category category = new Category(categoryId);
        List<Product> list = new ArrayList<Product>();
        try {
            sf.getCurrentSession().beginTransaction();
            Criteria criteria
                    = sf.getCurrentSession().createCriteria(Product.class);
            criteria.add(Restrictions.eq("category", category));
            list = criteria.list();
            sf.getCurrentSession().close();
            return list;
        } catch (Exception e) {
            sf.getCurrentSession().getTransaction().rollback();
            System.out.println(e.getMessage());
            return null;
        }

    }
// Them san pham moi

    public boolean insertProduct(Product product) {
        try {
            sf.getCurrentSession().beginTransaction();
            sf.getCurrentSession().saveOrUpdate(product);
            sf.getCurrentSession().getTransaction().commit();
            sf.getCurrentSession().close();
            return true;
        } catch (Exception e) {
            e.getMessage();
            return false;
        }
//    
    }

    //Tim kiem san pham theo ten
    public List<String> search(String productName) {
        try {
            if (!sf.getCurrentSession().getTransaction().isActive()) {
                sf.getCurrentSession().getTransaction().begin();
                Query query = sf.getCurrentSession().createQuery("select productName form product where productName like :productName");
                query.setString("productName", productName + "%");
                sf.getCurrentSession().close();
                return query.list();
            }
        } catch (Exception e) {
            return null;
        }
        return null;
    }

    // Lay productId theo productName
    public long getProductId(String productName) {
        long pID;
        sf.getCurrentSession().getTransaction().begin();
        Query query = sf.getCurrentSession().createQuery("select productId from Product where productName like :productName");
        query.setParameter("productName", productName);
        pID = (Long) query.uniqueResult();
        return pID;
    }

    //Xoa san pham
    public boolean deleteProduct(Product product) {
        boolean check;
        try {
            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            Transaction transaction = session.beginTransaction();
            session.delete(product);
            transaction.commit();
            session.close();
            check = true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            check = false;
        }
        return check;
    }

    //Cap nhat thong tin san pham
    public boolean updateProduct(Product product) {
        boolean check;
        try {
            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            Transaction transaction = session.beginTransaction();
            session.update(product);
            transaction.commit();
            session.close();
            check = true;
        } catch (Exception e) {
            check = false;
        }
        return check;
    }

    public boolean updateProduct1(long productId, float discount) {
        boolean check = false;
        try {
            String hql = "UPDATE Product set discount = :discount "
                    + "WHERE productID = :productID";
            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            Transaction transaction = session.beginTransaction();
            Query query = session.createQuery(hql);
            query.setParameter("discount", discount);
            query.setParameter("productID", productId);

            int result = query.executeUpdate();

            if (result == 0) {
                check = false;
            } else {
                check = true;
            }
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

        return check;
    }
    
 

    public static void main(String[] args) {
        ProductDAO pdao = new ProductDAO();
        Product p = new Product();
        p = pdao.getProduct(11);
        p.setDiscount(5);

        if (pdao.updateProduct(p)) {
            System.out.println("Ok");
        } else {
            System.out.println("No");
        }
    }

}
