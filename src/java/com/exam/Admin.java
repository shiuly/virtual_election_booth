package com.exam;
// Generated Jun 28, 2019 3:18:34 AM by Hibernate Tools 4.3.1



/**
 * Admin generated by hbm2java
 */
public class Admin  implements java.io.Serializable {


     private Integer aid;
     private String adminname;
     private String password;

    public Admin() {
    }

    public Admin(String adminname, String password) {
       this.adminname = adminname;
       this.password = password;
    }
   
    public Integer getAid() {
        return this.aid;
    }
    
    public void setAid(Integer aid) {
        this.aid = aid;
    }
    public String getAdminname() {
        return this.adminname;
    }
    
    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }




}


