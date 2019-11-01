package com.java.model.client;

public class OrderDetailModel {
	public int bookID;
	public int price;
	public int quantity;
	public OrderDetailModel(int bookID, int price, int quantity) {
		this.bookID=bookID;
		this.price=price;
		this.quantity=quantity;
	}
}
