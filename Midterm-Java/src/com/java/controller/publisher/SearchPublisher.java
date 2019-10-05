package com.java.controller.publisher;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.ConnectDB;
import com.java.model.PublisherModel;
import com.sun.org.apache.xml.internal.serialize.Printer;

@WebServlet("/SearchPublisher")
public class SearchPublisher extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		String s = req.getParameter("pubName");
		ConnectDB conn = new ConnectDB();
		
		ArrayList<PublisherModel> arrPub = new ArrayList<PublisherModel>();
		ResultSet rs = conn.getData("SELECT * FROM publishers where PublisherName like N'%"+ s +"%'");
			try {
					
					while(rs.next()){
						PublisherModel pub = new PublisherModel();
						pub.publisherID = rs.getInt(1);
						pub.publisherName = rs.getString(2);
						pub.address = rs.getString(3);
						pub.phone = rs.getString(4);
						pub.email = rs.getString(5);
						arrPub.add(pub);
						
					}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		req.setAttribute("s", s);
		req.setAttribute("data", arrPub);
//		PrintWriter p = resp.getWriter();
		req.getRequestDispatcher("view/publisher.jsp").forward(req, resp);	
	}
}
