package com.java.controller.orderdetail;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.OrderDetail;

@WebServlet("/OrderDetail")
public class Index extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("orderID"));
		
		
		
		OrderDetail o = new OrderDetail();
		ArrayList<OrderDetail> arrOrderDetail =  o.getListOrderDetail(id);
		
		req.setAttribute("data", arrOrderDetail);
		req.getRequestDispatcher("/view/order-detail.jsp").forward(req, resp);
	}
	
}
