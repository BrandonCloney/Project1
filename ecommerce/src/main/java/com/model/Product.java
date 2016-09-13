package com.model;

import javax.persistence.*;

	@Entity
	public class Product {
		@Id
	    @GeneratedValue(strategy=GenerationType.AUTO)
	    private long productId;
		@Column
	    private String productName;
		@Column
	    private String productCategory;
		@Column
	    private String productDescription;
		@Column
	    private double productPrice;
		@Column
	    private String productCondition;
		@Column
	    private String productStatus;
		@Column
	    private int unitsInStock;
		public long getProductId() {
			return productId;
		}
		public void setProductId(long productId) {
			this.productId = productId;
		}
		public String getProductName() {
			return productName;
		}
		public void setProductName(String productName) {
			this.productName = productName;
		}
		public String getProductCategory() {
			return productCategory;
		}
		public void setProductCategory(String productCategory) {
			this.productCategory = productCategory;
		}
		public String getProductDescription() {
			return productDescription;
		}
		public void setProductDescription(String productDescription) {
			this.productDescription = productDescription;
		}
		public double getProductPrice() {
			return productPrice;
		}
		public void setProductPrice(double productPrice) {
			this.productPrice = productPrice;
		}
		public String getProductCondition() {
			return productCondition;
		}
		public void setProductCondition(String productCondition) {
			this.productCondition = productCondition;
		}
		public String getProductStatus() {
			return productStatus;
		}
		public void setProductStatus(String productStatus) {
			this.productStatus = productStatus;
		}
		public int getUnitsInStock() {
			return unitsInStock;
		}
		public void setUnitsInStock(int unitsInStock) {
			this.unitsInStock = unitsInStock;
		}
		public String getProductManufacturer() {
			return productManufacturer;
		}
		public void setProductManufacturer(String productManufacturer) {
			this.productManufacturer = productManufacturer;
		}
		@Column
	    private String productManufacturer;
		
	}

