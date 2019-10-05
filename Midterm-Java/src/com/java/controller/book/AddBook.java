package com.java.controller.book;

import java.io.IOException;
import java.util.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.CategoryModel;
import com.java.model.ConnectDB;
import com.java.model.PublisherModel;

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
		String sql = "Select CategoryID, CategoryName from categories";
		ResultSet rsCate = conn.getData(sql);
		ArrayList<CategoryModel> arrCate =  new ArrayList<CategoryModel>();
		try {
			while(rsCate.next()) {
				CategoryModel cateMod = new CategoryModel();
				cateMod.categoryID = Integer.parseInt(rsCate.getString(1));
				cateMod.name = rsCate.getString(2);
				arrCate.add(cateMod);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.setAttribute("dataCate", arrCate);
		
		sql = "Select PublisherID, PublisherName from publishers";
		ResultSet rsPub = conn.getData(sql);
		ArrayList<PublisherModel> arrPub =  new ArrayList<PublisherModel>();
		try {
			while(rsPub.next()) {
				PublisherModel pub = new PublisherModel();
				pub.publisherID =  Integer.parseInt(rsPub.getString(1));
				pub.publisherName = rsPub.getString(2);
				arrPub.add(pub);
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
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		ConnectDB conn = new ConnectDB();
		String name = req.getParameter("nameBook");
		String opBook = req.getParameter("opBook");
		String opNXB = req.getParameter("opNXB");
		int quantityBook = Integer.parseInt(req.getParameter("quantityBook"));
		int priceBook = Integer.parseInt(req.getParameter("priceBook"));
		String descriptionBook = req.getParameter("descriptionBook");
		try {
			Date date = new SimpleDateFormat("dd/MM/yyyy").parse(req.getParameter("createDate"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		String imgInp = req.getParameter("imgInp");
		req.setAttribute("data", imgInp);
		
		req.getRequestDispatcher("view/test.jsp").forward(req, resp);
	}

}
