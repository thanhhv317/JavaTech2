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
import javax.servlet.http.HttpSession;

import com.java.model.ConnectDB;
import com.java.model.PublisherModel;

@WebServlet("/Publisher")
public class Publisher extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ConnectDB conn = new ConnectDB();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		if(session.getAttribute("name") == null){
			resp.sendRedirect(req.getContextPath()+"/Login");
        }
		else {
			String sql=String.format("Select * from publishers");
			ArrayList<PublisherModel> arrPub = new ArrayList<PublisherModel>();
			ResultSet rs = conn.getData(sql);
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
				
			req.setAttribute("data", arrPub);
			req.getRequestDispatcher("view/publisher.jsp").forward(req, resp);	
		}
		
		
	}
	
	
	
}
