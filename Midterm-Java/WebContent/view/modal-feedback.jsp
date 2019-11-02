<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@page import="com.java.model.FeedbackModel"%>
<% FeedbackModel fb=(FeedbackModel)request.getAttribute("data"); %>
<div class="form-group">
    		<b >Tên người gửi: </b>
			<%=fb.name%>
 		 </div>
 		  <div class="form-group">
    		<b>Email người gửi: </b>
		  	<%= fb.email %>
 		 </div>
 		  	<div class="form-group">
    		<b>Tiêu đề: </b>
		    <%= fb.subject %>
 		 </div>
 		  	<div class="form-group">
    		<b>Nội dung: </b></br>
    		<div style="overflow-y: scroll; height: 200px;	">
		   	<%= fb.message %>
		   	</div>
</div>