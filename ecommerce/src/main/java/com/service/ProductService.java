package com.service;

import java.util.List;

import com.model.Product;

public interface ProductService 
{
	public void addProduct(Product p);
	public Product findProductById(int pid);
	public List<Product> listProducts();
	List<Product> getProductByCategory(String category);
}
