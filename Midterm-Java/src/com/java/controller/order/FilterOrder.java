package com.java.controller.order;

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
import com.java.model.Order;

@WebServlet("/FilterOrder")
public class FilterOrder extends HttpServlet {
	
	ConnectDB conn=new ConnectDB();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		String status = req.getParameter("status");
		
		String sql = "";
		if (!status.equals("0")){
			sql = "select * from orders where status=" + status;
		}
		else {
			sql = "select * from orders";
		}
		ArrayList<Order> arrOrder = new ArrayList<Order>();
		ResultSet rs = conn.getData(sql);
			try {
					
					while(rs.next()){
						Order ord = new Order();
						ord.orderID = rs.getInt(1);
						ord.name = rs.getString(2);
						ord.phone = rs.getString(3);
						ord.address = rs.getString(4);
						ord.note = rs.getString(5);
						ord.total = Integer.parseInt(rs.getString(6));
						ord.createDate = rs.getString(7);
						ord.status = Integer.parseInt(rs.getString(8));
						arrOrder.add(ord);
					}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		resp.getWriter().println(searchResult(arrOrder));
	}
	

	public String searchResult(ArrayList<Order> arrOrder) {
		String res="";
		for (int i=0;i<arrOrder.size();++i) {
			Order order = arrOrder.get(i);
//			 DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
//             String strDate = dateFormat.format(order.createDate);  
			String status="<select class='form-control' id='status-"+order.orderID+"' onchange='changeStatus("+order.orderID+")'>\r\n"+
					"<option value='1'"+ ((order.status==1)?"selected":"") +" >Chưa xác nhận</option>\r\n"+
					"<option value='2'" +((order.status == 2)?"selected":"") +">Đã xác nhận</option>\r\n"+
					"<option value='3'"+ ((order.status == 3)?"selected":"")+" >Đã hủy</option>\r\n"+
					"<option value='4'"+ ((order.status == 4)?"selected":"")+" >Đã giao hàng</option>\r\n"+
							"</select>";
			String button="                <button type=\"button\" class=\"btn btn-secondary\"  onclick=\"viewOrder("+order.orderID+")\" data-toggle=\"modal\" data-target=\"#modalCategory\"><i class=\"fas fa-eye\"></i></button>&nbsp;\r\n"+
					"                <button type=\"button\" onclick=\"deleteOrder("+order.orderID+")\" class=\"btn btn-secondary\"><i class=\"fas fa-trash\"></i></button>\r\n";
			res+=String.format("<tr>\r\n" + 
					"            <th scope=\"row\">%d</th>\r\n" + 
					"            <td>%s</td>\r\n" + 
					"            <td>%s</td>\r\n" + 
					"            <td>%s</td>\r\n" + 
					"            <td>%d</td>\r\n" + 
					"            <td>%s</td>\r\n" + 
					"            <td>\r\n" + 
					"              <div class=\"btn-group\">\r\n" + 
					button+
					"              </div>\r\n" + 
					"            </td>\r\n" + 
					"          </tr>", 
					i+1, order.name, order.address, order.phone, order.total, status);
	}
		return res;
	}
}
