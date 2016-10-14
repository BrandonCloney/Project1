package com.model;

import java.io.Serializable;

public class CartItem implements Serializable 
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Product product;
	
	private int quantity;
	
	private double totalprice;

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}

	public static long getSerialversionuid() 
	{
		return serialVersionUID;
	}
	
	
}
