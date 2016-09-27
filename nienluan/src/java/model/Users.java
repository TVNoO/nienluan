/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;



/**
 *
 * @author EndlessLove
 */
@Entity(name = "users")
public class Users implements Serializable{
    
    @Id
    private long userID;
    private String userName;
    private String userEmail;
    private String userPass;
    private boolean userRole;

    public Users() {
    }
    
    public Users(long userID, String userName, String userEmail, String userPass, boolean userRole) {
        this.userID = userID;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPass = userPass;
        this.userRole = userRole;
    }
    
    public Users(String userName, String userEmail, String userPass, boolean userRole) {
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPass = userPass;
        this.userRole = userRole;
    }
    
    public long getUserID() {
        return userID;
    }

    public String getUserName() {
        return userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public String getUserPass() {
        return userPass;
    }

    public boolean isUserRole() {
        return userRole;
    }

    public void setUserID(long userID) {
        this.userID = userID;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }

    public void setUserRole(boolean userRole) {
        this.userRole = userRole;
    }
    
    
    
}
