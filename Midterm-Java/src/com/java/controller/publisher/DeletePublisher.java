package com.java.controller.publisher;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.ConnectDB;

@WebServlet("/DeletePublisher")
public class DeletePublisher extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("pubID");
		ConnectDB conn = new ConnectDB();
		String sql = String.format("delete from publishers where PublisherID=%s",id);
		PrintWriter p = resp.getWriter();
		conn.updateData(sql);
	}
}
