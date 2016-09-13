package com.dao;

import java.util.List;

import com.model.Product;


public interface ProductDAO 
{
	public void addProduct(Product p);
	public Product getProductById(int id);
	public List<Product> listProducts();
}
