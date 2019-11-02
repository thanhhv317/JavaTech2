package com.java.controller.client.checkout;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

import com.java.common.ProductCategory;
import com.java.model.CategoryModel;
import com.java.model.client.OrderModel;

import jdk.nashorn.internal.parser.JSONParser;

@WebServlet("/Checkout")
public class Index extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<CategoryModel> array = new ArrayList<CategoryModel>();
		ProductCategory p = new ProductCategory();
		array = p.GetListCate();
		req.setAttribute("category", array);
		req.getRequestDispatcher("view/client/checkout.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		PrintWriter out=resp.getWriter();
		String json=req.getParameter("cart");
		String name=req.getParameter("name");
		String address=req.getParameter("address");
		String phone=req.getParameter("phone");
		String note=req.getParameter("note");
		int total=Integer.parseInt(req.getParameter("total"));
		OrderModel model=new OrderModel(name, phone, address, note, total, json);
		String res=model.checkQuantity();
		if (res=="") {
			out.print(model.handleOrder());
		}
		else {
			out.print("error:"+res);
		}
		
	}
		
	
}
