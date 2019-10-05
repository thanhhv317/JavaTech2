package com.java.controller;

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

import com.java.model.CategoryModel;
import com.java.model.ConnectDB;
import com.java.model.User;
import com.sun.corba.se.impl.orbutil.ObjectWriter;
import com.sun.org.apache.xml.internal.serialize.Printer;
//
@WebServlet("/Category")

public class Category extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ConnectDB conn = new ConnectDB();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		if (session.getAttribute("name") == null) {
			resp.sendRedirect(req.getContextPath()+"/Login");
		}
		else {
			resp.setContentType("text/html;charset=UTF-8");
			req.setCharacterEncoding("utf-8");
			String tmp = req.getParameter("action");
			if("edit".equals(tmp)) {
				String id = req.getParameter("id");
				String sql=String.format("Select * from categories where categoryID="+id);
				
				
				CategoryModel cate = new CategoryModel();
				ResultSet rs = conn.getData(sql);
					try {
						while(rs.next()){
							cate.categoryID = rs.getInt(1);
							cate.name = rs.getString(2);
							cate.quantity = rs.getInt(3);
							cate.status = rs.getBoolean(4);					
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					PrintWriter out = resp.getWriter();
					out.print(cate.output());
			}
			else {
				String sql=String.format("Select * from categories");
				ArrayList<CategoryModel> arrCate = new ArrayList<CategoryModel>();
				ResultSet rs = conn.getData(sql);
					try {
							
							while(rs.next()){
								CategoryModel cate = new CategoryModel();
								cate.categoryID = rs.getInt(1);
								cate.name = rs.getString(2);
								cate.quantity = rs.getInt(3);
								cate.status = rs.getBoolean(4);
								arrCate.add(cate);
								
							}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				req.setAttribute("data", arrCate);
				req.getRequestDispatcher("view/category.jsp").forward(req, resp);
	        }
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		String action = req.getParameter("action");
		
		switch(action) {
			case "delete":{
				String id = req.getParameter("id");
				String sql = String.format("Delete from categories where CategoryID=%s", id);
				boolean result = conn.updateData(sql);
				PrintWriter out = resp.getWriter();
		
				if (result) {
					out.print("success");
				}
				else {
					out.print("fail");
				}
				break;
			}
			case "edit":{
				String id = req.getParameter("id");
				String name = req.getParameter("name");
				
				String quantity = req.getParameter("quantity");
				String status = req.getParameter("status");
				String data ="CategoryName="+ "'" + name + "'" + "," +"Quantity=" + quantity + "," +"Status=" + status;
				
				String sql=String.format("UPDATE categories SET %s WHERE categoryID =%s" , data, id);
				boolean result = conn.updateData(sql);
				PrintWriter out = resp.getWriter();
				if (result) {
					out.print("success");
				}
				else {
					out.print("fail");
				}
				break;
			}
			case "search":{
				String name = req.getParameter("name");
				String sql="Select * from Categories where CategoryName like '%"+name+"%'";
				ArrayList<CategoryModel> arrCate = new ArrayList<CategoryModel>();
				ResultSet rs = conn.getData(sql);
					try {
						while(rs.next()){
							CategoryModel cate = new CategoryModel();
							cate.categoryID = rs.getInt(1);
							cate.name = rs.getString(2);
							cate.quantity = rs.getInt(3);
							cate.status = rs.getBoolean(4);								
							arrCate.add(cate);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				resp.getWriter().println(searchResult(arrCate));
				break;
			}
		}
		
	}
	public String searchResult(ArrayList<CategoryModel> arrCate) {
		String res="";
		 for(int i=0;i<arrCate.size();++i){
		 	CategoryModel cate = arrCate.get(i);
		 	res+=String.format("<tr>" + 
		 			"	            <th scope='row'>%d</th>" + 
		 			"	            <td>%s</td>" + 
		 			"	            <td>" + 
		 			"	            	<div class='custom-control custom-switch'>" + 
		 			"					  <input type='checkbox' class='custom-control-input active' %s  id='%d'>" + 
		 			"					  <label class='custom-control-label' for='%d'></label>" + 
		 			"					</div>" + 
		 			"	            </td>" + 
		 			"	            <td>%d</td>" + 
		 			"	            <td>" + 
		 			"	              <div class='btn-group'>" + 
		 			"	                <button id='%d' type='button' onclick='editItem(%d)' class='btn btn-secondary editProduct' data-toggle='modal' data-target='#modalCategory'><i class='fas fa-edit'></i></button>&nbsp" + 
		 			"	                <button id='%d' type='button' onclick='deleteItem(%d)' class='btn btn-secondary delete'><i class='fas fa-trash'></i></button>" + 
		 			"	              </div>" + 
		 			"	            </td>" + 
		 			"	          </tr>"  ,i+1,cate.name, (cate.status)?"checked":"", cate.categoryID, cate.categoryID, cate.quantity, cate.categoryID, cate.categoryID, cate.categoryID, cate.categoryID);
		    
		 }
		 return res;
	
	}
}
