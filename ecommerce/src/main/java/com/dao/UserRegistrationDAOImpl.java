package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.UserRegistration;
@Repository

public class UserRegistrationDAOImpl implements UserRegistrationDAO 
{
	@Autowired
	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	public void addUserRegistration(UserRegistration u) 
	{
		Session session = this.sessionFactory.openSession();
		Transaction tx = null;

		try {

		  tx=session.beginTransaction();

		  session.save(u);
		  tx.commit();

		} catch (RuntimeException e) {
		  tx.rollback();
		  throw e;
		}

    }


	public UserRegistration getUserRegistrationById(int id) 
	{
		return null;
	}

	public List<UserRegistration> listUsers() 
	{
		
		return null;
	}

	

}
