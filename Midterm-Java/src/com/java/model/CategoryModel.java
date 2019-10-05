package com.java.model;

public class CategoryModel {
	public int categoryID;
	public String name;
	public int quantity;
	public boolean status;
	
	public String output() {
		return this.categoryID + "&" + this.name + "&" + this.quantity + "&" + this.status;
	}
}
