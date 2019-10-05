package com.java.controller;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.model.ConnectDB;
import com.java.model.User;

@WebServlet("/Login")
public class Login extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ConnectDB conn = new ConnectDB();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("view/login.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username = req.getParameter("username");
		String password = encrypt_MD5(req.getParameter("password"));
		String sql=String.format("Select * from users where UserName='%s' and Password='%s'", username, password);		
		ResultSet rs = conn.getData(sql);
			try {
					
					while(rs.next()){
						User u = new User();
						u.userID= rs.getInt(1);
						u.name=rs.getString(2);
						u.userName=rs.getString(3);
						u.passWord=rs.getString(4);
						u.address=rs.getString(5);
						u.phone=rs.getString(6);
						u.email=rs.getString(7);
						HttpSession session = req.getSession();
						session.setAttribute("name", u.name);
						resp.sendRedirect(req.getContextPath()+"/Dashboard");
						return;
					}
				
					resp.sendRedirect(req.getContextPath()+"/view/login.jsp?error=1");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		//resp.sendRedirect(req.getContextPath()+"/view/login.jsp?error=1");
	}
    private String encrypt_MD5(String text) {
        MessageDigest md;
		try {
			md = MessageDigest.getInstance("MD5");
			 byte[] hashInBytes = md.digest(text.getBytes(StandardCharsets.UTF_8));
		        StringBuilder sb = new StringBuilder();
		        for (byte b : hashInBytes) {
		            sb.append(String.format("%02x", b));
		        }
		        return sb.toString();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
       
    }
}
