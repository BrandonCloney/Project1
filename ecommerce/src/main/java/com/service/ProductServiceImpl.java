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

	public Product getProductById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Product> listProducts() {
		// TODO Auto-generated method stub
		return null;
	}

}
