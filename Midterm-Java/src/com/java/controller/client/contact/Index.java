package com.java.controller.client.contact;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.common.ProductCategory;
import com.java.model.CategoryModel;
import com.java.model.ConnectDB;
import com.java.model.Contact;


@WebServlet("/Contact")
public class Index extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<CategoryModel> array = new ArrayList<CategoryModel>();
		ProductCategory p = new ProductCategory();
		array = p.GetListCate();
		req.setAttribute("category", array);
		req.getRequestDispatcher("view/client/contact.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		PrintWriter p = resp.getWriter();
		
		Contact contact = new Contact();
		
		contact.name = req.getParameter("name");
		contact.email = req.getParameter("email");
		contact.subject = req.getParameter("subject");
		contact.message = req.getParameter("message");
		
		ConnectDB conn = new ConnectDB();
		
		boolean check = conn.updateData(contact.add());
		if(check) {
			p.println("<script>alert('da gui');</script>");
		}
		else {
			p.println("<script>alert('Loi');</script>");
		}
		
		
		
	}

}
