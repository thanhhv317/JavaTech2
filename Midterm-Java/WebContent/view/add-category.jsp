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
        <a href="${pageContext.request.contextPath}/Dashboard"><i class="fas fa-book"></i> Sản Phẩm</a>
      </li>

      <li>
        <a href="${pageContext.request.contextPath}/Category"><i class="fa fa-fw fa-database"></i> Danh mục</a>
      </li>
      <li>
        <a href="${pageContext.request.contextPath}/Publisher"><i class="fa fa-fw fa-user"></i> Nhà sản xuất</a>
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
                  <img src="${pageContext.request.contextPath}/images/login.png" width="50px" height="50px" class="rounded-circle" alt="nguoi-dung">
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
           <h2>Thêm danh mục</h2>
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
            <label>Tên danh mục</label>
            <input type="text" class="form-control" name="categoryName">
          </div>
          <div class="form-group">
            <label>Số lượng</label>
            <input type="text" class="form-control" name="quantity">
          </div>
          <div class="form-group">
          <label>Trạng thái</label>
          <select class="form-control" name="opStatus">
            <option value="1">Enable</option>
            <option value="0">Disable</option>
          </select>
        </div>
      </div>
      <br>
      <div class="container mt-2 mb-4">
        <button type="button" id="btnSave" class="btn btn-success"><i class="fas fa-save"></i> Save</button> 
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
  <script>
	$("#btnSave").click(function(){
		let cateName=$('[name="categoryName"]').val();
		let quantity=$('[name="quantity"]').val();
		let status=$('[name="opStatus"]').val();
		
		$.ajax({
		  url: "${pageContext.request.contextPath}/Category", 
		  type: "POST",
		  data:{
			  categoryName:cateName,
			  quantity:quantity,
			  status:status,
			  action: "add"
		  },
		  success: function(result){
			 if (result=="success"){
				 window.location="${pageContext.request.contextPath}/Category";
			 }
			 else{
				 window.location="${pageContext.request.contextPath}/view/Error.jsp";
			 }
		  }
		  
	  });
	})
	</script>
</body>
</html>