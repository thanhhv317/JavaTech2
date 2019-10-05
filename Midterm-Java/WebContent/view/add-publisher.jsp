<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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

    <title>Add New Publisher</title>
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
            <a href="dashboard.html">Sản Phẩm 1</a>
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
	                else{
	                	response.sendRedirect(request.getContextPath()+"/Login");
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
           <h2>Thêm nhà xuất bản</h2>
          </li>
        </ol>
      </nav>
    </div>
  </div>

  <!-- content -->
  <div class="container">
      <form action="${pageContext.request.contextPath}/AddPublisher" method="POST">
    <div class="row">
      
      <div class="col-6">
          <div class="form-group">
            <label>Tên nhà xuất bản</label>
            <input type="text" class="form-control" name="pubName">
          </div>
          <div class="form-group">
            <label>Địa chỉ</label>
            <input type="text" class="form-control" name="pubAddress">
          </div>
          
      </div>
      <div class="col-6">
      	<div class="form-group">
            <label>Số điện thoại</label>
            <input type="text" class="form-control" name="pubPhone">
          </div>
          <div class="form-group">
            <label>Email</label>
            <input type="text" class="form-control" name="pubEmail">
          </div>
      </div>
      <br>
      <div class="container mt-2 mb-4">
        <button type="submit" class="btn btn-success"><i class="fas fa-save"></i> Save</button> 
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