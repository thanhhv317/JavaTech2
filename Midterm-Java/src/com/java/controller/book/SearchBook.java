package com.java.controller.book;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.BookModel;
import com.java.model.ConnectDB;

@WebServlet("/SearchBook")
public class SearchBook extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ConnectDB conn = new ConnectDB();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		String name=req.getParameter("name");
		String sql="select b.BookID, c.CategoryName, p.PublisherName, b.BookName, b.Author, " + 
				"b.Price, b.Image, b.Description, b.Quantity, b.CreateDate, u.Name, b.Status from books b " + 
				"join categories c on b.CategoryID=c.CategoryID " + 
				"join publishers p on b.PublisherID= p.PublisherID " + 
				"join users u on b.CreateBy=u.UserID "+
				"where b.BookName like '%"+name+"%'";
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
						book.quantity=rs.getInt(9);
						book.createDate=rs.getDate(10);
						book.createBy=rs.getString(11);
						book.status=rs.getBoolean(12);
						arrBook.add(book);	
					}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			resp.getWriter().println(searchResult(arrBook));
	}
	public String searchResult(ArrayList<BookModel> arrBook) {
		String res="";
		for (int i=0;i<arrBook.size();++i) {
			BookModel book = arrBook.get(i);
			 DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
             String strDate = dateFormat.format(book.createDate);  
			res+=String.format("<tr>\r\n" + 
					"            <th scope=\"row\">%d</th>\r\n" + 
					"            <td><a class=\"view-product\" data-toggle=\"modal\" data-target=\".bd-example-modal-xl\">%s</a></td>\r\n" + 
					"            <td>\r\n"+
					"              <img src=\"%s\" alt=\"do-re-mon\" class=\"img-thumbnail product-img\">\r\n" + 
					"            </td>\r\n" + 
					"            <td>%s</td>\r\n" + 
					"            <td>%s</td>\r\n" + 
					"            <td>%s</td>\r\n" + 
					"            <td>%d</td>\r\n" + 
					"            <td>%d</td>\r\n" + 
					"            <td>%s</td>\r\n" + 
					"            <td>%s</td>\r\n" + 
					"            <td>Active</td>\r\n"+
					"            <td>\r\n" + 
					"              <div class=\"btn-group\">\r\n" + 
					"                <button type=\"button\" class=\"btn btn-secondary\"><i class=\"fas fa-edit\"></i></button>&nbsp;\r\n" + 
					"                <button type=\"button\" onclick=\"deleteItem(%d)\" class=\"btn btn-secondary\"><i class=\"fas fa-trash\"></i></button>\r\n" + 
					"              </div>\r\n" + 
					"            </td>\r\n" + 
					"          </tr>", 
					i+1, book.bookName, book.image, book.publisherName,book.categoryName, book.author, book.price, book.quantity,strDate, book.createBy, book.bookID);
	}
		return res;
	}
}
