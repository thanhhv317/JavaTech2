package com.java.controller.client.product;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.ConnectDB;
import com.java.model.client.BookModel;

@WebServlet("/SingleProduct")
public class SingleProduct extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ConnectDB conn=new ConnectDB();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("bookID");
		String sql="select b.BookID, c.CategoryName, p.PublisherName, b.BookName, b.Author, b.Price, b.Image, b.Description from books b "
				+ "join categories c on b.CategoryID=c.CategoryID "
				+ "join publishers p on b.PublisherID= p.PublisherID where b.BookID="+id;
		
		ResultSet rs = conn.getData(sql);
		BookModel book=new BookModel();
		try {
			while(rs.next()){
				book.bookID = rs.getInt(1);
				book.categoryName=rs.getString(2);
				book.publisherName=rs.getString(3);
				book.bookName=rs.getString(4);
				book.author=rs.getString(5);
				book.price=rs.getInt(6);
				book.image=rs.getString(7);
				book.description=rs.getString(8);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		PrintWriter print=resp.getWriter();
//		print.println(id);
		req.setAttribute("book", book);
		req.getRequestDispatcher("view/client/single-product.jsp").forward(req, resp);
	}
}
