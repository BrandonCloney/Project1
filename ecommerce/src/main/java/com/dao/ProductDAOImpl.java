package com.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
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

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Transactional
	public List<Product> listProducts() 
	{
		
		List<Product> productList=null;
		Session session =this.sessionFactory.openSession();
		Transaction tx = null;

		try {

		  tx=session.beginTransaction();

		  productList =(List<Product>)session.createQuery("from Product").list();
		  tx.commit();

		} catch (RuntimeException f) {
		  tx.rollback();
		  throw f;
		}
		return productList;
	}

	@SuppressWarnings({ "deprecation", "unchecked" })
	@Transactional
	public List<Product> getProductByCategory(String category) 
	{
		List<Product> jersey=null;
		Session session=this.sessionFactory.openSession();
		Transaction tx=null;
		try {

			  tx=session.beginTransaction();
			  String hql="from Product where productCategory ="+"'"+category+"'";
			  jersey =(List<Product>)session.createQuery(hql).list();
			  
			  tx.commit();

			} catch (RuntimeException f) {
			  tx.rollback();
			  throw f;
			}
		return jersey;
	}

	
	
	@SuppressWarnings("deprecation")
	@Transactional
	public Product findProductById(int pid) 
	{
		Session session=this.sessionFactory.openSession();
		Transaction tx=null;
		Product p=null;
		try
		{
			tx=session.beginTransaction();
			String hql="from Product where pID = :id";
			@SuppressWarnings("rawtypes")
			Query query=session.createQuery(hql);
			query.setInteger("id", pid);
			
			p=(Product) query.uniqueResult();
			tx.commit();
		}
		catch(HibernateException e)
		{
		
		
		e.printStackTrace();
		}
		
		finally{
			
			session.close();
			}
		
		return p;
	
	}

	@Transactional
	public void deleteProduct(int pid) {
		Session session=this.sessionFactory.openSession();
		Transaction tx=null;
		Product prod=findProductById(pid);
		
	
		try
		{
			tx=session.beginTransaction();
			session.delete(prod);
			tx.commit();
			
			
		}
		
		catch(HibernateException e)
		{
			if(tx!=null)
			{
				tx.rollback();
			}
			
			e.printStackTrace();
		}
		
		finally
		{
			session.close();
		}
		
	}

	
}
