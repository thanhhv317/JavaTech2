package com.java.model;

import java.sql.ResultSet;
import java.util.ArrayList;

public class OrderDetail {
	public int orderDetailID;
	public int orderID;
	public String bookName;
	public int price;
	public int quantity;
	public String image;
	

	public ArrayList<OrderDetail> getListOrderDetail(int orderID){
		ConnectDB conn=new ConnectDB();
		ArrayList<OrderDetail> list=new ArrayList<OrderDetail>();
		String sql="select o.OrderDetailID, o.OrderID, b.BookName, o.Price, o.Quatity, b.Image from orderdetail o" + 
				" join books b" + 
				" on b.bookID =o.bookID" + 
				" where o.orderID ="+orderID;
		ResultSet rs=conn.getData(sql);
		try {
			while(rs.next()){
				OrderDetail o=new OrderDetail();
				o.orderDetailID=rs.getInt(1);
				o.orderID=rs.getInt(2);
				o.bookName=rs.getString(3);
				o.price=rs.getInt(4);
				o.quantity=rs.getInt(5);
				o.image = rs.getString(6);
				list.add(o);
			}
		}catch(Exception e) {
			
		}
		return list;
	}
}
