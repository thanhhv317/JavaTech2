package com.java.model.client;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

import com.java.model.ConnectDB;

public class OrderModel {
	public int orderID;
	public String name;
	public String phone;
	public String address;
	public String note;
	public int total;
	public String createDate;
	public boolean status;
	public ArrayList<OrderDetailModel> cart;
	
	ConnectDB conn;
	public OrderModel(String name, String phone, String address, String note, int total, String json) {
		this.name=name;
		this.phone=phone;
		this.address=address;
		this.note=note;
		this.total=total;
		this.cart=getCart(json);
		conn=new ConnectDB();
	}
	
	public ArrayList<OrderDetailModel> getCart(String json){
		ArrayList<OrderDetailModel> cart=new ArrayList<OrderDetailModel>();
		
		Object o=JSONValue.parse(json);
		JSONArray array=(JSONArray) o;
		for (int i=0;i<array.size();++i) {
			JSONObject ob=(JSONObject) array.get(i);
			int id=Integer.parseInt(ob.get("id").toString());
			int price=Integer.parseInt(ob.get("price").toString());
			int quantity=Integer.parseInt(ob.get("quantity").toString());
			cart.add(new OrderDetailModel(id,price,quantity));
		}
		return cart;
	}
	public String checkQuantity() {
		String res="";
		for (int i=0;i<this.cart.size();++i) {
			OrderDetailModel d= this.cart.get(i);
			String sql="Select BookName,Quantity from books where BookID="+d.bookID;
			ResultSet rs=conn.getData(sql);
			int quantity=0;
			String name="";
			try {
				while(rs.next()){
					name=rs.getString(1);
					quantity=rs.getInt(2);
				}
				if (quantity-d.quantity<0) res+=name+" chỉ còn "+quantity+" cuốn, ";
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (!res.equals("")) res=res.substring(0,res.length()-2);
		return res;
	}
	
	public int handleOrder() {
		this.orderID=createOrder();
		boolean res=createOrderDetail();
		if (res) {
			return this.orderID;
		}
		return 0;
	}
	public int createOrder() {
		//Get current Time
		Date d=new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		this.createDate=formatter.format(d);
		
		String sql=String.format("Insert into orders(OrderID, Name, Phone, Address, Note, Total, CreateDate, Status) values"
								+ "(null,'%s','%s','%s','%s',%d,'%s',%d)"
								, this.name,this.phone,this.address,this.note,this.total,this.createDate,1);
		return conn.createDataReturnLastID(sql);
	}
	
	public boolean createOrderDetail() {
		boolean isSuccess=true;
		for (int i=0;i<this.cart.size();++i) {
			OrderDetailModel detail=this.cart.get(i);
			String sql=String.format("Insert into orderdetail(OrderDetailID, OrderID, BookID, Price, Quatity) values"
									+ "(null, %d, %d, %d, %d)"
									,this.orderID, detail.bookID, detail.price, detail.quantity);
			isSuccess=conn.updateData(sql);
			if (isSuccess) {
				sql=String.format("Update books set quantity=quantity-%d where BookID=%d",detail.quantity, detail.bookID);
				conn.updateData(sql);
			}
		}
		return isSuccess;
	}
	
}
