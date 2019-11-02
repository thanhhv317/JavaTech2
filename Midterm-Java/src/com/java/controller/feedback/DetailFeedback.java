package com.java.controller.feedback;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.ConnectDB;
import com.java.model.FeedbackModel;

@WebServlet("/DetailFeedback")
public class DetailFeedback extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ConnectDB conn=new ConnectDB();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		String sql="Select * from feedback where ID="+id;
		FeedbackModel fb = new FeedbackModel();
		ResultSet rs = conn.getData(sql);
		try {
				
				while(rs.next()){
					fb.id = rs.getInt(1);
					fb.name = rs.getString(2);
					fb.email = rs.getString(3);
					fb.subject = rs.getString(4);
					fb.message = rs.getString(5);
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.setAttribute("data", fb);
		req.getRequestDispatcher("view/modal-feedback.jsp").forward(req, resp);
	}
}
