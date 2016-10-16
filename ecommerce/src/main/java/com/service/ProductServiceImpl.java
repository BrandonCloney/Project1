package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductDAOImpl;
import com.model.Product;
@Service
public class ProductServiceImpl implements ProductService 
{
	@Autowired
	ProductDAOImpl newprod;
	public void addProduct(Product p) 
	{
		newprod.addProduct(p);
	}

	
	public List<Product> listProducts() 
	{
	
		return (newprod.listProducts());
		
	}

	public List<Product> getProductByCategory(String category) 
	{
		
		return (newprod.getProductByCategory(category));
	}

	public Product findProductById(int pid) 
	{
		return (newprod.findProductById(pid));
		
	}


	public void deleteProduct(int pid) {
		
		newprod.deleteProduct(pid);
		
	}


}
