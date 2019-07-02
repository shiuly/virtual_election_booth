/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Dao;

import com.exam.Admin;
import com.exam.NewHibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author shiuly
 */
public class AdminDao {

    public void doSave(Admin a) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.save(a);
        ses.getTransaction().commit();
        ses.close();
    }

    public List<Admin> checker(String name, String pass) {

        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Admin where adminname='" + name + "' and password='" + pass + "'");
        List<Admin> li = new ArrayList<>();
        li = q.list();
        if (li.size() > 0) {
            return li;
        } else {
            return null;
        }
    }
    
     public List<Admin> showAll() {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();

        List<Admin> list = new ArrayList<>();
        Query q = ses.createQuery("from Admin");
        list = q.list();
        ses.close();
        return list;

    }
}