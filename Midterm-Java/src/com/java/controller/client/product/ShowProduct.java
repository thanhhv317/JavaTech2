package com.java.controller.client.product;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.common.ProductCategory;
import com.java.model.CategoryModel;
import com.java.model.ConnectDB;
import com.java.model.client.BookModel;

@WebServlet("/Product")
public class ShowProduct extends HttpServlet {

	/**
	 * 
	 */
	ConnectDB conn=new ConnectDB();
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// get category
		String category = req.getParameter("category");
		ArrayList<CategoryModel> array = new ArrayList<CategoryModel>();
		ProductCategory p = new ProductCategory();
		array = p.GetListCate();
		req.setAttribute("category", array);
		
		//Handle get data
		String sql="";
		String sqlCount="";
		int take=12;
		int page=1; //Default is page=1
		
		try {
			page=Integer.parseInt(req.getParameter("page"));
		}catch(Exception e) {
			
		}
		
		int fromPosition=(page-1)*take;
		String limit = "limit "+fromPosition+", "+take; //example limit 0,16 
		if(category==null) {
			sql="select b.BookID, c.CategoryName, p.PublisherName, b.BookName, b.Author, b.Price, b.Image, b.Description from books b "
					+ "join categories c on b.CategoryID=c.CategoryID "
					+ "join publishers p on b.PublisherID= p.PublisherID where b.Status=1 and b.Quantity>0 "
					+ "order by b.BookID DESC "+limit;
			sqlCount="Select count(*) from books";
		}
		else {
			sql="select b.BookID, c.CategoryName, p.PublisherName, b.BookName, b.Author, b.Price, b.Image, b.Description from books b "
				+ "join categories c on b.CategoryID=c.CategoryID "
				+ "join publishers p on b.PublisherID= p.PublisherID where b.CategoryID="+category+" and b.Status=1 and b.Quantity>0 "
				+ "order by b.BookID DESC "+limit;
			sqlCount="Select count(*) from books where CategoryID="+category;
			req.setAttribute("cate", category);
		}
		
		ArrayList<BookModel> arrBook = new ArrayList<BookModel>();
		ResultSet rs = conn.getData(sql);
		ResultSet rsCount=conn.getData(sqlCount);
		int totalBook=0;
		try {
			while(rs.next()){
				BookModel book = new BookModel();
				book.bookID = rs.getInt(1);
				book.categoryName=rs.getString(2);
				book.publisherName=rs.getString(3);
				book.bookName=rs.getString(4);
				book.author=rs.getString(5);
				book.price=rs.getInt(6);
				book.image=rs.getString(7);
				book.description=rs.getString(8);
				arrBook.add(book);
			}
			while(rsCount.next()) {
				totalBook=rsCount.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.setAttribute("data", arrBook);
		req.setAttribute("total", totalBook);
		req.setAttribute("selectedPage", page);
		req.getRequestDispatcher("view/client/shop.jsp").forward(req, resp);
	}
}
