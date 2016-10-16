package com.dao;

import java.util.List;

import com.model.Product;


public interface ProductDAO 
{
	public void addProduct(Product p);
	public Product findProductById(int pid);
	public void deleteProduct(int pid);
	public List<Product> listProducts();
	List<Product> getProductByCategory(String category);
}
