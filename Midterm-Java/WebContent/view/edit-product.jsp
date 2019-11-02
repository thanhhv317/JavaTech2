<%@page import="com.java.model.Book"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.java.model.CategoryModel"%>
<%@page import="com.java.model.PublisherModel"%>
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

  <!-- modal view product detail -->
  <div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Thông tin sản phẩm</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
      </div>
    </div>
  </div>
  <!-- end modal product detail -->
  <div class="row">
    <div class="container">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
           <li class="breadcrumb-item active">
           <h2>Chi tiết sản phẩm</h2>
          </li>
        </ol>
      </nav>
    </div>
  </div>

  <!-- content -->
  <div class="container">
      <form enctype="multipart/form-data" method="post">
    <div class="row">
      
      <div class="col-6">
          <div class="form-group">
            <label>Tên sản phẩm</label>
            <% Book book = (Book)request.getAttribute("data"); %>
            <input type="text" name="bookName" class="form-control" value="<%= book.bookName %>" placeholder="khéo ăn khéo nói sẽ có được thiên hạ">
          </div>
          <div class="form-group">
            <label>Danh mục</label>
            <select class="form-control" name="categoryID">
         		<%ArrayList<CategoryModel> arrCate =(ArrayList<CategoryModel>)request.getAttribute("category");
				 	for(int i=0;i<arrCate.size();++i){
				 		CategoryModel cate= arrCate.get(i);
					%>
					
					  <option <% out.print((book.categoryID==cate.categoryID)?"selected":""); %> value="<%= cate.categoryID %>"><%=cate.name %></option>
        			<%} %>
            </select>
          </div>
           <div class="form-group">
            <label>Nhà xuất bản</label>
            <select class="form-control" name="publisherID">
              <%ArrayList<PublisherModel> arrPub =(ArrayList<PublisherModel>)request.getAttribute("publisher");
				 	for(int i=0;i<arrPub.size();++i){
				 		PublisherModel pub= arrPub.get(i);
					%>
					  <option <% out.print((book.publisherID==pub.publisherID)?"selected":""); %> value="<%= pub.publisherID %>"><%=pub.publisherName %></option>
					
        			<%} %>
            </select>
          </div>
          <div class="form-group">
            <label>Số lượng</label>
            <input type="text" value="<%= book.quantity %>" name="quantity" class="form-control" placeholder="500">
          </div>
          <div class="form-group">
            <label>Giá</label>
            <input type="text" value="<%= book.price %>" class="form-control" name="price" placeholder="37000">
          </div>
          <div class="form-group">
            <label>Mô tả</label>
            <textarea class="form-control" rows="3" name="description"><%= book.description %></textarea>
          </div>
      </div>

      <div class="col-6">
      	<div class="form-group">
            <label>Tác giả</label>
            <input type="text" name="author" class="form-control" value="<%= book.author %>" placeholder="Tác giả"">
          </div>
          
        <div class="form-group">
          <label>Ngày nhập</label>
          <input type="date" value="<%= book.createDate %>" name="createDate" class="form-control">
        </div>
        <div class="form-group">
          <label>Trạng thái</label>
          <select class="form-control" name="status">
            <option value="1" <% out.print((book.status)?"selected":""); %>>Enable</option>
            <option value="0" <% out.print((!book.status)?"selected":""); %>>Disable</option>
          </select>
        </div>
        <div class="form-group">
          <label>Hình ảnh</label>
          <input class="form-control" name="image" type="file" id="imgInp" />
          <img id="blah" src="images/<%= book.image %>" class="image-thumbnail mt-2" />
        </div>
      </div>

      <br>
      <div class="container mt-2 mb-4">
        <button class="btn btn-success"><i class="fas fa-save"></i> Save</button> 
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