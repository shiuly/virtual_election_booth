/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Dao;

import com.exam.Candidate;
import com.exam.NewHibernateUtil;
import com.exam.Result;
import com.exam.Voter;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author shiuly
 */
public class ResultDao {

    public void doSave(Result re) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.save(re);
        ses.getTransaction().commit();
        ses.close();
    }

    
    public List<Result> isVoted(int nid) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("from Result where nid=:a");
        q.setInteger("a", nid);
        List<Result> list = new ArrayList<>();
        list = q.list();
        return list;
    }

     public List<Result> showAllResult() {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        List<Result> listresult = new ArrayList<>();
        Query q = ses.createQuery("from Result");
        listresult = q.list();
        ses.close();
        return listresult;
    }

    public List<Result> showResultBnp() {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        List<Result> listresult = new ArrayList<>();
        Query q = ses.createQuery("from Result where party=:a");
        q.setString("a", "BNP ");
        listresult = q.list();
        System.out.println("++++++++++++++++++++"+ listresult.size());
        ses.close();
        return listresult;
    }

    public List<Result> showResultAwami() {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        List<Result> listresult = new ArrayList<>();
        Query q = ses.createQuery("from Result where party=:a");
        q.setString("a", "Awami ");
        listresult = q.list();
        ses.close();
        return listresult;
    }
    
    public List<Result> showResultJp() {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        List<Result> listresult = new ArrayList<>();
        Query q = ses.createQuery("from Result where party=:a");
        q.setString("a", "Jatiya ");
        listresult = q.list();
        ses.close();
        return listresult;
    }


    public List<Result> countResult(String party) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        Query q = ses.createQuery("select count(Awami) Result where party=:a");
        //q.setString("a", party);

        List<Result> list = new ArrayList<>();
        list = q.list();

        return list;

    }

}
