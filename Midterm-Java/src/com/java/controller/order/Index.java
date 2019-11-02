package com.java.controller.order;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.model.ConnectDB;
import com.java.model.FeedbackModel;
import com.java.model.Order;

@WebServlet("/Order")
public class Index extends HttpServlet {

	ConnectDB conn = new ConnectDB();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = req.getSession();
		if (session.getAttribute("name") == null) {
			resp.sendRedirect(req.getContextPath()+"/Login");
		}
		else if(Integer.parseInt(session.getAttribute("level").toString())==1){
			resp.sendRedirect(req.getContextPath());
        }
		else {
			String sql="Select * from orders";
			ArrayList<Order> arrOrder = new ArrayList<Order>();
			ResultSet rs = conn.getData(sql);
				try {
						
						while(rs.next()){
							Order ord = new Order();
							ord.orderID = rs.getInt(1);
							ord.name = rs.getString(2);
							ord.phone = rs.getString(3);
							ord.address = rs.getString(4);
							ord.note = rs.getString(5);
							ord.total = Integer.parseInt(rs.getString(6));
							ord.createDate = rs.getString(7);
							ord.status = Integer.parseInt(rs.getString(8));
							arrOrder.add(ord);
							
						}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		req.setAttribute("data", arrOrder);
		req.getRequestDispatcher("view/order.jsp").forward(req, resp);
		}
	}
}
