<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@page import="com.java.model.OrderDetail"%>
<%@page import="java.util.ArrayList"%>
<%
ArrayList<OrderDetail> arrOrderDetail =(ArrayList<OrderDetail>)request.getAttribute("data");
for(int i=0;i<arrOrderDetail.size();++i){
	 OrderDetail o = arrOrderDetail.get(i); 
%>
			<tr>
			      <th scope="row"><%= i+1 %></th>
			      <td>
			      	<img src="${pageContext.request.contextPath}/images/<%= o.image %>" style="width:80px; height: 10S0px;" class="img-fluid img-thumbnail" alt="...">
			      </td>
			      <td><%= o.bookName %></td>
			      <td><%= o.quantity %></td>
			      <td><%= o.price %></td>
			</tr>
<%}%>

xin chao vinamilk