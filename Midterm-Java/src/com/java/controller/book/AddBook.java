package com.java.controller.book;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.ConnectDB;

@WebServlet("/AddBook")
public class AddBook extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		ConnectDB conn = new ConnectDB();
		String sql = "Select CategoryName from categories";
		ResultSet rsCate = conn.getData(sql);
		ArrayList<String> arrCate =  new ArrayList<String>();
		try {
			while(rsCate.next()) {
				arrCate.add(rsCate.getString(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.setAttribute("dataCate", arrCate);
		
		sql = "Select PublisherName from publishers";
		ResultSet rsPub = conn.getData(sql);
		ArrayList<String> arrPub =  new ArrayList<String>();
		try {
			while(rsPub.next()) {
				arrPub.add(rsPub.getString(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.setAttribute("dataPub", arrPub);
		
		req.getRequestDispatcher("view/add-product.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

}
