/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Dao;

import com.exam.Admin;
import com.exam.Candidate;
import com.exam.NewHibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author shiuly
 */
public class CandidateDao {

    public void doSave(Candidate can) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.save(can);
        ses.getTransaction().commit();
        ses.close();
    }

    public List<Candidate> showAll() {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();

        List<Candidate> list = new ArrayList<>();
        Query q = ses.createQuery("from Candidate");
        list = q.list();
        ses.close();
        return list;

    }

    public void doDelete(Candidate can) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.delete(can);
        ses.getTransaction().commit();
        ses.close();
    }

    public List<Candidate> validCandiodate(String location) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("from Candidate where location=:a");
        q.setString("a", location);
        List<Candidate> list = new ArrayList<>();
        list = q.list();
        return list;
    }

}
