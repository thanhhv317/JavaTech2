package com.java.controller.publisher;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.ConnectDB;

@WebServlet("/AddPublisher")
public class AddPublisher extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		String pubName = req.getParameter("pubName");
		String pubAddress = req.getParameter("pubAddress");
		String pubPhone = req.getParameter("pubPhone");
		String pubEmail = req.getParameter("pubEmail");
		
		ConnectDB conn = new ConnectDB();
		String sql = String.format("INSERT INTO publishers VALUES (null, '%s', '%s', '%s', '%s')", pubName, pubAddress, pubPhone, pubEmail);
		
		boolean check = conn.updateData(sql);
		if(check) {
			resp.sendRedirect(req.getContextPath()+"/Publisher");
		}
		else {
			resp.sendRedirect(req.getContextPath()+"/view/Error.jsp");
		}
	}
}
