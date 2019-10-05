package com.java.controller.book;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.ConnectDB;

@WebServlet("/DeleteBook")
public class DeleteBook extends HttpServlet {
	/**
	 * 
	 */
	ConnectDB conn = new ConnectDB();
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id= req.getParameter("id");
		String sql="Delete from books where BookID="+id;
		boolean res=conn.updateData(sql);
		PrintWriter p= resp.getWriter();
		if (res) {
			p.print("success");
		}
		else {
			p.print("fail");
		}
	}
}
