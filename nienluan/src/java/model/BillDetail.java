/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author EndlessLove
 */
@Entity(name = "billdetail")
public class BillDetail {
    
    @Id
    private long billDetailID;
    private long billID;
    private long productID;
    private double priceProduct;
    private int quantity;

    public BillDetail() {
    }

    public BillDetail(long billDetailID, long billID, long productID, double priceProduct, int quantity) {
        this.billDetailID = billDetailID;
        this.billID = billID;
        this.productID = productID;
        this.priceProduct = priceProduct;
        this.quantity = quantity;
    }
    
    
    
    
    
}
