package com.model;

import java.io.Serializable;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;


	@Entity
	public class Product implements Serializable {
		/**
		 * 
		 */
		private static final long serialVersionUID = -1118083133428636647L;
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		@Column
		private int pID;
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
		@Column
	    private String productManufacturer;
		
		@Column
		private String imgname;
		
		public String getImgname() {
			return imgname;
		}
		public void setImgname(String imgname) {
			this.imgname = imgname;
		}
		@Transient
		private MultipartFile productImage;
		
		
		public MultipartFile getProductImage() {
			return productImage;
		}
		public void setProductImage(MultipartFile productImage) {
			this.productImage = productImage;
		}
		public int getpID() {
			return pID;
		}
		public void setpID(int pID) {
			this.pID = pID;
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
		public void setInputNull()
		{
			this.productName="";
			this.productCategory="";
			this.productDescription="";
			this.productPrice=0.0;
			this.productCondition="";
			this.productStatus="";

			this.productManufacturer="";
			
		}
		
		
	}

