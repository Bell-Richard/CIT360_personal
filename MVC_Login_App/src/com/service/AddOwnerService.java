package com.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
 
import com.hibernate.bean.HibernateUtil;
import com.login.model.Owner;
import com.login.model.User;
public class AddOwnerService {
     
public boolean addOwner(Owner owner){
	 Session session = HibernateUtil.getSessionFactory().openSession();
     if(isUserExists(owner)) return false;
       
     Transaction tx = null;
     try {
         tx = session.getTransaction();
         tx.begin();
         session.saveOrUpdate(owner);       
         tx.commit();
     } catch (Exception e) {
         if (tx != null) {
             tx.rollback();
         }
         e.printStackTrace();
     } finally {
         session.close();
     } 
     return true;
}
 
public boolean isUserExists(Owner owner){
	 Session session = HibernateUtil.getSessionFactory().openSession();
     boolean result = false;
     Transaction tx = null;
     try{
         tx = session.getTransaction();
         tx.begin();
         Query query = session.createQuery("from Owner where firstName='"+owner.getFirstName()+"'");
         Owner u = (Owner)query.uniqueResult();
         tx.commit();
         if(u!=null) result = true;
     }catch(Exception ex){
         if(tx!=null){
             tx.rollback();
         }
     }finally{
         session.close();
     }
     return result;
	}

public List<Owner> getListOfOwners(){
    List<Owner> list = new ArrayList<Owner>();
    Session session = HibernateUtil.getSessionFactory().openSession();
    Transaction tx = null;       
    try {
        tx = session.getTransaction();
        tx.begin();
        list = session.createQuery("from Owner").list();                       
        tx.commit();
    } catch (Exception e) {
        if (tx != null) {
            tx.rollback();
        }
        e.printStackTrace();
    } finally {
        session.close();
    }
    return list;
}

}