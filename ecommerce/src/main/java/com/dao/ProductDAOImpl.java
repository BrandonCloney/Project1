package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Product;
@Repository
public class ProductDAOImpl implements ProductDAO 
{
@Autowired
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() 
	{
	return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) 
	{
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	public void addProduct(Product p) 
	{
		Session session = this.sessionFactory.openSession();
		Transaction tx = null;

		try {

		  tx=session.beginTransaction();

		  session.save(p);
		  tx.commit();

		} catch (RuntimeException f) {
		  tx.rollback();
		  throw f;
		}

	}

	public Product getProductById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Product> listProducts() {
		// TODO Auto-generated method stub
		return null;
	}

}
