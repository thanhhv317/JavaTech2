package com.java.common;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.java.model.CategoryModel;
import com.java.model.ConnectDB;

public class ProductCategory {

	public ProductCategory() {
		
	}
	
	ConnectDB conn = new ConnectDB();

	public ArrayList<CategoryModel> GetListCate(){
		String sql = "Select CategoryID, CategoryName from categories";
		ResultSet rs = conn.getData(sql);
		ArrayList<CategoryModel> listCate = new ArrayList<CategoryModel>();
		try {
			while(rs.next()){
				CategoryModel cate = new CategoryModel();
				cate.categoryID = rs.getInt(1);
				cate.name = rs.getString(2);
				listCate.add(cate);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listCate;
	}
}
