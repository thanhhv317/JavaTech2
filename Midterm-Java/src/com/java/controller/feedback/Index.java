package com.java.controller.feedback;

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

@WebServlet("/Feedback")
public class Index extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ConnectDB conn=new ConnectDB();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		if (session.getAttribute("name") == null) {
			resp.sendRedirect(req.getContextPath()+"/Login");
		}
		else if(Integer.parseInt(session.getAttribute("level").toString())==1){
			resp.sendRedirect(req.getContextPath());
        }
		else {
			String sql="Select * from feedback";
			ArrayList<FeedbackModel> arrFB = new ArrayList<FeedbackModel>();
			ResultSet rs = conn.getData(sql);
				try {
						
						while(rs.next()){
							FeedbackModel fb = new FeedbackModel();
							fb.id = rs.getInt(1);
							fb.name = rs.getString(2);
							fb.email = rs.getString(3);
							fb.subject = rs.getString(4);
							fb.message = rs.getString(5);
							arrFB.add(fb);
							
						}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			req.setAttribute("data", arrFB);
			req.getRequestDispatcher("view/feedback.jsp").forward(req, resp);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String sql="Select * from feedback where Email like '%"+email+"%'";
		ArrayList<FeedbackModel> arrFB = new ArrayList<FeedbackModel>();
		ResultSet rs = conn.getData(sql);
			try {
					
					while(rs.next()){
						FeedbackModel fb = new FeedbackModel();
						fb.id = rs.getInt(1);
						fb.name = rs.getString(2);
						fb.email = rs.getString(3);
						fb.subject = rs.getString(4);
						fb.message = rs.getString(5);
						arrFB.add(fb);
						
					}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		req.setAttribute("data", arrFB);
		req.getRequestDispatcher("view/feedback.jsp").forward(req, resp);
	}
}

