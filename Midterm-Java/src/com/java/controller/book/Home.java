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
import javax.servlet.http.HttpSession;

import com.java.model.BookModel;
import com.java.model.CategoryModel;
import com.java.model.ConnectDB;
import com.java.model.PublisherModel;

@WebServlet("/Dashboard")
public class Home extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ConnectDB conn=new ConnectDB();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		if (session.getAttribute("name") == null) {
			resp.sendRedirect(req.getContextPath()+"/Login");
		}
		else if(Integer.parseInt(session.getAttribute("level").toString())==1){
			resp.sendRedirect(req.getContextPath());
        }
		else {
			String sql1="select b.BookID, c.CategoryName, p.PublisherName, b.BookName, b.Author, " + 
					"b.Price, b.Image, b.Description, b.Quantity, b.CreateDate, u.Name, b.Status from books b " + 
					"join categories c on b.CategoryID=c.CategoryID " + 
					"join publishers p on b.PublisherID= p.PublisherID " + 
					"join users u on b.CreateBy=u.UserID";
			String sql2="Select * from categories";
			
			ArrayList<BookModel> arrBook = new ArrayList<BookModel>();
			ArrayList<CategoryModel> arrCate=new ArrayList<CategoryModel>();
			ResultSet rs = conn.getData(sql1);
			ResultSet rs2=conn.getData(sql2);
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
							book.quantity=rs.getInt(9);
							book.createDate=rs.getDate(10);
							book.createBy=rs.getString(11);
							book.status=rs.getBoolean(12);
							arrBook.add(book);
						}
						
						while(rs2.next()) {
							CategoryModel cate=new CategoryModel();
							cate.categoryID=rs2.getInt(1);
							cate.name=rs2.getString(2);
							cate.quantity=rs2.getInt(3);
							cate.status=rs2.getBoolean(4);
							arrCate.add(cate);
							
						}
						
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			req.setAttribute("sql", sql1);	
			req.setAttribute("data", arrBook);
			req.setAttribute("category", arrCate);
			req.getRequestDispatcher("view/dashboard.jsp").forward(req, resp);
		}
		
	}

}
