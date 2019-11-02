package com.java.controller.order;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.ConnectDB;

@WebServlet("/DeleteOrder")
public class DeleteOrder extends HttpServlet {
	
	ConnectDB conn=new ConnectDB();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int orderID = Integer.parseInt(req.getParameter("orderID"));
		
		String sql = "Delete from orders where orderID="+orderID;
		String sql2 = "DELETE FROM orderdetail WHERE OrderID="+orderID;
		resp.getWriter().print(sql2);
		
		//xoa bang giu khoa ngoai truoc
		
		//Them lai so luong vao book
		String sql3="Select BookID, quatity from orderdetail where orderID="+orderID;
		ResultSet rs=conn.getData(sql3);
		try {
			while(rs.next()) {
				int bookId= rs.getInt(1);
				int quantity=rs.getInt(2);
				String sqlAddQuantity=String.format("Update books set quantity=quantity+%d where BookID=%d",quantity, bookId);
				conn.updateData(sqlAddQuantity);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		conn.updateData(sql2);
		Boolean check = conn.updateData(sql);
		
		if (check) {
			resp.getWriter().print("1");
		} else {
			resp.getWriter().print("0");
		}
	}
}
