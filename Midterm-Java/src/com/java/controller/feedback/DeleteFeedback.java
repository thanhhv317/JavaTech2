package com.java.controller.feedback;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.ConnectDB;

@WebServlet("/DeleteFeedback")
public class DeleteFeedback extends HttpServlet {

	/**
	 * 
	 */
	ConnectDB conn=new ConnectDB();
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		String sql="Delete from feedback where ID="+id;
		if (conn.updateData(sql)) {
			resp.getWriter().print("success");
		}
		else {
			resp.getWriter().print("fail");
		}
	}

}
