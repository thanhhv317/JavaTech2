package com.java.controller.client.home;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.BookViewHomeClient;
import com.java.model.CategoryModel;
import com.java.model.ConnectDB;
import com.java.common.*;

@WebServlet("")
public class Home extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<CategoryModel> array = new ArrayList<CategoryModel>();
		ProductCategory p = new ProductCategory();
		array = p.GetListCate();
		req.setAttribute("category", array);
		req.setAttribute("topPopular", RandomProduct(6));
		req.setAttribute("topAuthor", RandomProduct(6));
		req.setAttribute("BookListNew", GetListBookDESC());
		req.getRequestDispatcher("view/client/home.jsp").forward(req, resp);
	}
	
	public ArrayList<BookViewHomeClient> RandomProduct(int count) {
		
		ArrayList<BookViewHomeClient> BookListRandom = new ArrayList<BookViewHomeClient>();
		
		ArrayList<BookViewHomeClient> List = GetAllBook();
		Random rand = new Random();
		
		for(int i=0; i < count; ++i) {
			int n = rand.nextInt(List.size());
			BookListRandom.add(List.get(n));
		}
		
		return BookListRandom;
		
	}
	
	public ArrayList<BookViewHomeClient> GetListBookDESC(){
		ConnectDB conn = new ConnectDB();
		String sql = "Select * from books where Status = 1 orderby bookId DESC limit 12";

		ResultSet rs = conn.getData(sql);
		ArrayList<BookViewHomeClient> Books = new ArrayList<BookViewHomeClient>();
		
		try {
			while(rs.next()){
				BookViewHomeClient book = new BookViewHomeClient();
				book.BookID = rs.getInt(1);
				book.BookName = rs.getString(4);
				book.Image = rs.getString(7);
				book.Price = rs.getInt(6);
				Books.add(book);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return Books;
	}
	
	public ArrayList<BookViewHomeClient> GetAllBook(){
		ConnectDB conn = new ConnectDB();
		String sql = "Select * from books where Status = 1";

		ResultSet rs = conn.getData(sql);
		ArrayList<BookViewHomeClient> Books = new ArrayList<BookViewHomeClient>();
		
		try {
			while(rs.next()){
				BookViewHomeClient book = new BookViewHomeClient();
				book.BookID = rs.getInt(1);
				book.BookName = rs.getString(4);
				book.Image = rs.getString(7);
				book.Price = rs.getInt(6);
				Books.add(book);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return Books;
	}
	
}

