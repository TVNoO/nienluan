/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Timestamp;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author EndlessLove
 */
@Entity(name = "bill")
public class Bill {
    
    @Id
    private long billID;
    private long userID;
    private String address;
    private double total;
    private String payment;
    private Timestamp date;

    public Bill() {
    }

    public Bill(long billID, long userID, String address, double total, String payment, Timestamp date) {
        this.billID = billID;
        this.userID = userID;
        this.address = address;
        this.total = total;
        this.payment = payment;
        this.date = date;
    }

    public long getBillID() {
        return billID;
    }

    public long getUserID() {
        return userID;
    }

    public String getAddress() {
        return address;
    }

    public double getTotal() {
        return total;
    }

    public void setBillID(long billID) {
        this.billID = billID;
    }

    public void setUserID(long userID) {
        this.userID = userID;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public String getPayment() {
        return payment;
    }

    public Timestamp getDate() {
        return date;
    }
    
    
    
    
}
