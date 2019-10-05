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

@WebServlet("/EditPublisher")
public class EditPublisher extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ConnectDB conn = new ConnectDB();
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		String id = req.getParameter("pubID");
		// từ từ bình tĩnh
		String sql=String.format("Select * from publishers where PublisherID=%s", id);
		ArrayList<String> arr = new ArrayList<String>();
		ResultSet rs = conn.getData(sql);
		String s ="<div class=\"modal-body\">"+ 
				"<table class=\"table\">\r\n" + 
				"<thead class=\"thead-light\">\r\n" + 
				"<tr>\r\n" + 
				"<th scope=\"col\">Tên</th>\r\n" + 
				"<th scope=\"col\">Địa chỉ</th>\r\n" + 
				"<th scope=\"col\">Điện thoại</th>\r\n" + 
				"<th scope=\"col\">Email</th>\r\n" + 
				"</tr>\r\n" + 
				"</thead>\r\n" + 
				"<tbody>";
		try {
				while(rs.next()){
					String k = String.format("<tr>\r\n" + 
							"            <td><input id=\"pubName\" value=\"%s\"/></td>\r\n" + 
							"            <td><input id=\"pubAddress\" value=\"%s\"/></td>\r\n" + 
							"            <td><input id=\"pubPhone\" value=\"%s\"/></td>\r\n" + 
							"            <td><input id=\"pubEmail\" value=\"%s\"/></td>\r\n" + 
							"        </tr>", rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(1), rs.getString(1));
					s+=k;
					s+=	"</tbody></table></div>"+
						"<div class=\"modal-footer\">\r\n" + 
						"<button type=\"button\" class=\"btn btn-primary\" onClick=Save("+rs.getString(1)+") id=\"EditPublisher\" data-dismiss=\"modal\">Save Change</button>\r\n" + 
						"<button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\r\n" + 
						"</div>";
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		PrintWriter p = resp.getWriter();
		p.println(s);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		String Id = req.getParameter("Id");
		String Name = req.getParameter("Name");
		String Address = req.getParameter("Address");
		String Phone = req.getParameter("Phone");
		String Email = req.getParameter("Email");
		
		ConnectDB conn =  new ConnectDB();
		String sql = String.format("Update publishers Set PublisherName='%s', Address='%s', Phone='%s', Email='%s' Where PublisherID=%s",Name, Address, Phone, Email, Id);
		
		PrintWriter p = resp.getWriter();
		
		boolean check = conn.updateData(sql);
		if(check) {
			p.println("true");
		}
		else {
			p.println("false");
			
		}
	}
}
