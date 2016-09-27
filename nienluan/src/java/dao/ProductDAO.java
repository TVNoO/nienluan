/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import model.Category;
import model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author EndlessLove
 */
public class ProductDAO {

    // Lay san pham theo loai 
    public ArrayList<Product> getAllProductByCategory(long categoryID) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        Query query = (Query) session.createQuery("from product where categoryID = :categoryID");
        query.setLong("categoryID", categoryID);
        ArrayList<Product> list = (ArrayList<Product>) query.list();
        transaction.commit();
        return list;
    }

    // Lay ngau nhien 20 san pham
    public ArrayList<Product> getProductRandom() {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        Query query = (Query) session.createQuery("from product order by rand()");
        query.setMaxResults(20);
        ArrayList<Product> list = (ArrayList<Product>) query.list();
        transaction.commit();
        return list;
    }

    //Lay thong tin san pham
    public ArrayList<Product> getProduct(long productID) {

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        Query query = (Query) session.createQuery("from product where productID = :productID").setParameter("productID", productID);

        ArrayList<Product> product = (ArrayList<Product>) query.list();

        transaction.commit();
        return product;
    }

    // Them san pham moi
    public boolean insertProduct(Product product) {
        try {
            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            Transaction transaction = session.beginTransaction();
            session.save(product);
            transaction.commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    //Xoa san pham
    public boolean deleteProduct(Product product) {
        boolean check;
        try {
            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            Transaction transaction = session.beginTransaction();
            session.delete(product);
            transaction.commit();
            check = true;
        } catch (Exception e) {
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
            check = true;
        } catch (Exception e) {
            check = false;
        }
        return check;
    }

    //Tim kiem san pham
    public Product searchProduct(long productID) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        String hql = "from product where productID= :productID";
        Query query = session.createQuery(hql);
        query.setLong("productID", productID);
        Product product = (Product) query.uniqueResult();
        transaction.commit();
        return product;
    }

    public static void main(String[] args) {
        ProductDAO pd = new ProductDAO();
        //Product p = new Product(13,new Category(8,"NÓN"),"Nón kết trẻ em","nk.jpg",12000,"Dành cho trẻ em ",20);
        Product p1 = pd.searchProduct(13);
        p1.setQuantity(30);
        p1.setProductDescription("Chất liệu đẹp, tốt");
        //Product p = new Product();
        //System.out.println(p1.getQuantity() + "   " + p1.getProductDescription());
        if(pd.updateProduct(p1)){
            System.out.println("Thanh cong");
        }
        else{
            System.out.println("That bai");
        }
        
       /*
        if (p1 != null) {
            System.out.println("Dang cap nhat : " + p1.getProductDescription());
            pd.updateProduct(p1);
            
            System.out.println("Sai khi cap nhat : " + p1.getProductDescription());
            System.out.println("cập nhật thong tin san pham thành công");
        } else {
            pd.insertProduct(p);
            System.out.println("thêm san pham thành công");
        }*/
    }
}
