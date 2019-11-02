package com.java.controller.statistical;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.BookModel;
import com.java.model.CategoryModel;
import com.java.model.ConnectDB;
import com.java.model.Statistical;

@WebServlet("/Statistical")
public class Index extends HttpServlet{
	
	ConnectDB conn = new ConnectDB();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String sql1="select * from categories";
		String sql="select MONTH(CreateDate) as 'month',count(*) as 'total' from orders group by MONTH(CreateDate)";
		
		ArrayList<Statistical> arrSta = new ArrayList<Statistical>();
		ArrayList<CategoryModel> arrCate=new ArrayList<CategoryModel>();
		ResultSet rs = conn.getData(sql);
		ResultSet rs2 = conn.getData(sql1);
			try {
				while(rs2.next()) {
					CategoryModel cate=new CategoryModel();
					cate.categoryID=rs2.getInt(1);
					cate.name=rs2.getString(2);
					cate.quantity=rs2.getInt(3);
					cate.status=rs2.getBoolean(4);
					arrCate.add(cate);
				}
				
				while(rs.next()) {
					Statistical sta = new Statistical();
					sta.month = rs.getInt(1);
					sta.total = rs.getInt(2);
					arrSta.add(sta);
				}
					
					
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		req.setAttribute("data", arrCate);
		req.setAttribute("sta", arrSta);
		req.getRequestDispatcher("view/statistical.jsp").forward(req, resp);
	}
}
