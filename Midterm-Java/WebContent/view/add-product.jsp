<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.java.model.PublisherModel" %>
<%@page import="com.java.model.CategoryModel" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- font-awesome -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.css">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- css style -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dashboard.css">

    <title>Admin</title>
  </head>
<body>

<div class="wrapper">

  <!-- sidebar  -->
  <nav id="sidebar">
    <div class="box-sidebar">
    <div class="sidebar-header">
      <h3>Dashboard</h3>
    </div>

    <ul class="list-unstyled components">
       <li>
        <a href="${pageContext.request.contextPath}/Dashboard"><i class="fas fa-book"></i> Sản Phẩm</a>
      </li>

      <li>
        <a href="${pageContext.request.contextPath}/Category"><i class="fa fa-fw fa-database"></i> Danh mục</a>
      </li>
      <li>
        <a href="${pageContext.request.contextPath}/Publisher"><i class="fa fa-fw fa-user"></i> Nhà sản xuất</a>
      </li>
      <li>
        <a href="${pageContext.request.contextPath}/Feedback"><i class="fa fa-fw fa-comment-dots"></i> Phản hồi</a>
      </li>
      <li>
        <a href="${pageContext.request.contextPath}/Order"><i class="far fa-money-bill-alt"></i> Đơn đặt hàng</a>
      </li>
    </ul>
  </div>
  </nav>
  <!-- end sidebar -->

  <div class="container">
  <!-- navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">

      <button type="button" id="sidebarCollapse" class="btn btn-info">
      <i class="fa fa-home"></i><span> Menu</span>
      </button>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
          
          <li class="nav-item">
            <div class="btn-group dropleft">
              <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <% 
	                if(session.getAttribute("name") != null){
	                	out.print(session.getAttribute("name"));
	                }
	                else{
	                	response.sendRedirect(request.getContextPath()+"/Login");
	                }
                %>
              </button>
              <div class="dropdown-menu">
                <div class="text-center">
                  <img src="images/login.png" width="50px" height="50px" class="rounded-circle" alt="nguoi-dung">
                </div>
                <div class="btn-group mt-2 m-1 d-flex justify-content-center" role="group">
                  <a href="${pageContext.request.contextPath}/Login" class="btn btn-success" title="log-out"><i class="fas fa-sign-out-alt"></i></a>
                </div>
              </div>
            </div>
          </li>
           
        </ul>
      </div>
    </nav>
  <!-- end navbar -->

  <div class="row">
    <div class="container">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
           <li class="breadcrumb-item active">
           <h2>Thêm sản phẩm</h2>
          </li>
        </ol>
      </nav>
    </div>
  </div>

  <!-- content -->
  <div class="container">
      <form action="${pageContext.request.contextPath}/AddBook" method="POST" enctype="multipart/form-data">
    <div class="row">
      
      <div class="col-6">
          <div class="form-group">
            <label>Tên sản phẩm</label>
            <input type="text" class="form-control" name="nameBook"/>
          </div>
          <div class="form-group">
            <label>Danh mục</label>
            <select class="form-control" name="opBook">
            	<%	ArrayList<CategoryModel> arrCate = (ArrayList<CategoryModel>)request.getAttribute("dataCate"); 
            		for(int i=0; i<arrCate.size(); ++i){
            			CategoryModel cate = arrCate.get(i);
            		%>
            			<option value="<%= cate.categoryID %>"><%=arrCate.get(i).name %></option>
            		<%}
            	%>
            </select>
          </div>
           <div class="form-group">
            <label>Nhà xuất bản</label>
            <select class="form-control" name="opNXB">
              	<% ArrayList<PublisherModel> arrPub = (ArrayList<PublisherModel>)request.getAttribute("dataPub"); 
            		for(int i=0; i<arrPub.size(); ++i){
            			PublisherModel pub = arrPub.get(i);
            		%>
            			<option value="<%= pub.publisherID %>"><%= pub.publisherName %></option>
            		<%}
            	%>
            </select>
          </div>
          <div class="form-group">
            <label>Số lượng</label>
            <input type="text" class="form-control" name="quantityBook" />
          </div>
          <div class="form-group">
            <label>Giá</label>
            <input type="text" class="form-control" name="priceBook" />
          </div>
          <div class="form-group">
            <label>Mô tả</label>
            <textarea class="form-control" rows="3" name="descriptionBook"></textarea>
          </div>
      </div>

      <div class="col-6">
        <div class="form-group">
          <label>Ngày nhập</label>
          <input type="date" class="form-control" name="createDate">
        </div>
        <div class="form-group">
            <label>Tác giả</label>
            <input type="text" class="form-control" name="authBook" />
        </div>
        <div class="form-group">
          <label>Trạng thái</label>
          <select class="form-control" name="opStatus">
            <option value="1">Enable</option>
            <option value="0">Disable</option>
          </select>
        </div>
        <div class="form-group">
          <label>Hình ảnh</label>
          <input class="form-control" type="file" name="photo" id="imgInp"/>
          <img id="blah" class="image-thumbnail mt-2" />
        </div>
        
      </div>

      <br>
      <div class="container mt-2 mb-4">
        <button class="btn btn-success" id="saveBook"><i class="fas fa-save"></i> Save</button> 
      </div>
    </div>
    </form>

  </div>
  <!-- end content -->

  </div>
</div>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

  <!-- jquery preview -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

  <script src="${pageContext.request.contextPath}/js/dashboard.js"></script>
</body>
</html>