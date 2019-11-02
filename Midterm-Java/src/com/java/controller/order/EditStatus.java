package com.java.controller.order;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.ConnectDB;

@WebServlet("/ChangeStatus")
public class EditStatus extends HttpServlet {
	
	ConnectDB conn=new ConnectDB();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int orderID = Integer.parseInt(req.getParameter("orderID"));
		int status  = Integer.parseInt(req.getParameter("status"));
		
		String sql = "update orders set status=" + status+" where orderID=" + orderID;
		
		Boolean check = conn.updateData(sql);
		
		if (check) {
			resp.getWriter().print("1");
		} else {
			resp.getWriter().print("0");
		}
	}
}
