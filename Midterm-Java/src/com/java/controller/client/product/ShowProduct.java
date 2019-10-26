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
		// TODO Auto-generated method stub
		String category = req.getParameter("category");
		String sql="select b.BookID, c.CategoryName, p.PublisherName, b.BookName, b.Author, b.Price, b.Image, b.Description from books b "
				+ "join categories c on b.CategoryID=c.CategoryID "
				+ "join publishers p on b.PublisherID= p.PublisherID where b.CategoryID="+category+" and b.Status=1 and b.Quantity>0";
		ArrayList<BookModel> arrBook = new ArrayList<BookModel>();
		ResultSet rs = conn.getData(sql);
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
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.setAttribute("data", arrBook);
		req.getRequestDispatcher("view/client/shop.jsp").forward(req, resp);
	}
}
