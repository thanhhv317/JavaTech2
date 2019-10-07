package com.java.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectDB {
	Statement stsm;
	Connection conn=null;
	public ConnectDB()  {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/qlybansach","root","Kydapzai1997!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	public ResultSet getData(String sql) {
		stsm = null;
		try {
			stsm = conn.createStatement();
			return stsm.executeQuery(sql);	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean updateData(String sql) {
		stsm = null;
		try {
			stsm = conn.createStatement();
			return stsm.executeUpdate(sql)>0?true:false;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
