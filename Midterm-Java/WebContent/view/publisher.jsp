<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList"%>
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
        <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fas fa-book"></i> Sản Phẩm</a>
        <ul class="collapse list-unstyled" id="homeSubmenu">
          <li>
            <a href="#">Sản Phẩm 1</a>
          </li>
          <li>
            <a href="#">Sản Phẩm 2</a>
          </li>
        </ul>
      </li>

      <li>
        <a href="#"><i class="fa fa-fw fa-database"></i> Danh mục</a>
      </li>
      <li>
        <a href="#"><i class="fa fa-fw fa-user"></i> Nhà sản xuất</a>
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
                  <img src="https://via.placeholder.com/150x150" class="rounded-circle" alt="nguoi-dung">
                </div>
                <div class="btn-group mt-2 m-1 d-flex justify-content-center" role="group">
                  <button class="btn btn-success" title="log-out"><i class="fas fa-sign-out-alt"></i></button>
                  <button class="btn btn-primary" title="information"><i class="fas fa-address-card"></i></button>
                </div>
              </div>
            </div>
          </li>
           
        </ul>
      </div>
    </nav>
  <!-- end navbar -->

  <!-- end modal product detail -->
  <div class="row">
    <div class="container">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb d-flex justify-content-end">
           <li class="breadcrumb-item active">
            <div class="btn-group" role="group">
            <form action="${pageContext.request.contextPath}/SearchPublisher" method="POST">
            	<input type="text" name="pubName">
              <button type="submit" class="btn btn-outline-danger" id="btnSearchPub">Tìm kiếm</button>
            </form>
            </div>
          </li>
          <li class="breadcrumb-item active">
            <div class="btn-group" role="group">
              <a href="${pageContext.request.contextPath}/view/add-publisher.jsp" class="btn btn-outline-success"><i class="fas fa-plus"></i> Thêm mới</a>
              <button type="button" class="btn btn-outline-primary">Thống kê</button>
            </div>
          </li>
        </ol>
      </nav>
    </div>
  </div>

  <!-- content -->
  <div class="container">
    <div class="row">
      
    	<div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
		    <div class="modal-dialog modal-xl">
		      <div class="modal-content">
		        <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Thông tin nhà sản xuất</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div id="detailPublisher"></div>
		      </div>
		    </div>
		  </div>

      <table class="table">
        <thead class="thead-light">
          <tr>
            <th scope="col">#</th>
            <th scope="col">Tên</th>
            <th scope="col">Địa chỉ</th>
            <th scope="col">Điện thoại</th>
            <th scope="col">Email</th>
            <th scope="col">Chức năng</th>
          </tr>
        </thead>
        <tbody>
        	<% ArrayList<PublisherModel> arrPub =(ArrayList<PublisherModel>)request.getAttribute("data");
	 for(int i=0;i<arrPub.size();++i){
	 	PublisherModel pub = arrPub.get(i);
	 %>
	 	<tr>
            <th scope="row"><%= i+1 %></th>
            <td><%= pub.publisherName %></td>
            <td><%= pub.address %></td>
            <td><%= pub.phone %></td>
            <td><%= pub.email %></td>
            <td>
              <div class="btn-group">
                <button type="button" onClick="Detail(<%=pub.publisherID %>)" class="btn btn-secondary" data-toggle="modal" data-target=".bd-example-modal-xl"><i class="fas fa-edit"></i></button>&nbsp;
                <button type="button" id="btnDelete" onClick="Delete(<%=pub.publisherID %>)" class="btn btn-secondary"><i class="fas fa-trash"></i></button>
              </div>
            </td>
        </tr>
	 <%}%>
        
          
         
          
          
        </tbody>
      </table>

    <!-- pagination -->
    <div class="container d-flex justify-content-center">
      <nav aria-label="Page navigation example">
        <ul class="pagination">
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
            </a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
              <span aria-hidden="true">&raquo;</span>
            </a>
          </li>
        </ul>
      </nav>
      </div>
<!-- end pagination -->

    </div>
  </div>


  <!-- end content -->

  </div>
</div>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/dashboard.js"></script>
  <script>
  	
 		function Delete(id){
			$.post('${pageContext.request.contextPath}/DeletePublisher', {
	               pubID: id
	           },function(data){
	        	   location.reload();
	           });
         }

  		function Detail(id){
  			$.get('${pageContext.request.contextPath}/EditPublisher',{
  				pubID: id
  			},function(data){
  				document.getElementById("detailPublisher").innerHTML = data;
  			});
  		}
  		
  		function Save(id){	
  			var pub = new Object();
  				pub.Id = id;
  				pub.Name = $("#pubName").val();
  				pub.Address = $("#pubAddress").val();
  				pub.Phone = $("#pubPhone").val();
  				pub.Email = $("#pubEmail").val();
  			$.post('${pageContext.request.contextPath}/EditPublisher',{
  				Id: pub.Id,
  				Name: pub.Name,
  				Address: pub.Address,
  				Phone: pub.Phone,
				Email: pub.Email  				
  			},function(data){
  				location.reload();
  			});
  		}
  		
  </script>
</body>
</html>
