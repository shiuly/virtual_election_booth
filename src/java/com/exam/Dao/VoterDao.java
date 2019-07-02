/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Dao;

import com.exam.Admin;
import com.exam.Candidate;
import com.exam.NewHibernateUtil;
import com.exam.Voter;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author USER
 */
public class VoterDao {

    public void doSave(Voter v) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.save(v);
        ses.getTransaction().commit();
        ses.close();
    }

    public List<Voter> showAll() {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();

        List<Voter> list = new ArrayList<>();
        Query q = ses.createQuery("from Voter");
        list = q.list();
        ses.close();

        return list;

    }

    public void doDelete(Voter V) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.delete(V);
        ses.getTransaction().commit();
        ses.close();
    }

    public void doUpdate(Voter V) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.getTransaction().begin();
        s.update(V);
        s.getTransaction().commit();
        s.close();
    }

    public List<Voter> doSearch(Voter V) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();

        List<Voter> list = new ArrayList<>();
        Query q = ses.createQuery("from Voter where  fullname='" + V.getFullname() + "'");

        list = q.list();
        ses.close();
        return list;

    }

    public List<Voter> checker(String name, int nid) {

        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Voter where fullname='" + name + "' and nid=" + nid + "");
        List<Voter> li = new ArrayList<>();
        li = q.list();
        if (li.size() > 0) {
            return li;
        } else {
            return null;
        }
    }
}
