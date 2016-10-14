package com.model;

import java.io.Serializable;
import java.util.List;

public class Cart implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5082742002075925336L;
	
	private List<CartItem> cartItems;
	
	private double grandTotal;
	
	private int cartCount=0;

	public List<CartItem> getCartItems() {
		return cartItems;
	}

	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}

	public double getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}

	public int getCartCount() {
		return cartCount;
	}

	public void setCartCount(int cartCount) {
		this.cartCount = cartCount;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public void calcGrandTotal()
	{
		double tot=0;
		
		for(int i=0;i<cartItems.size();i++)
		{
			tot+=cartItems.get(i).getTotalprice();
		}
		this.grandTotal=tot;
		
	}

}
