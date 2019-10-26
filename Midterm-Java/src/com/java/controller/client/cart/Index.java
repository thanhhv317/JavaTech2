package com.java.controller.client.cart;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.common.ProductCategory;
import com.java.model.CategoryModel;


@WebServlet("/Cart")
public class Index extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<CategoryModel> array = new ArrayList<CategoryModel>();
		ProductCategory p = new ProductCategory();
		array = p.GetListCate();
		req.setAttribute("category", array);
		req.getRequestDispatcher("view/client/cart.jsp").forward(req, resp);
	}
}
