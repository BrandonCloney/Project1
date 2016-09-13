package com.service;

import java.util.List;

import com.model.Product;

public interface ProductService 
{
	public void addProduct(Product p);
	public Product getProductById(int id);
	public List<Product> listProducts();
}
