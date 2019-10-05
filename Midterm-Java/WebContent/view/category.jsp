<%@page import="java.util.ArrayList"%>
<%@page import="com.java.model.CategoryModel"%>
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
        <ol class="breadcrumb d-flex justify-content-end">
           <li class="breadcrumb-item active">
            <div class="btn-group" role="group">
              <input type="text" name="categoryName">
              <button type="button" id="btnSearch" class="btn btn-outline-danger">Tìm kiếm</button>
            </div>
          </li>
          <li class="breadcrumb-item active">
            <div class="btn-group" role="group">
              <a href="${pageContext.request.contextPath}/view/add-product.jsp" class="btn btn-outline-success"><i class="fas fa-plus"></i> Thêm mới</a>
              <button type="button" class="btn btn-outline-primary">Thống kê</button>
            </div>
          </li>
        </ol>
      </nav>
    </div>
  </div>

  <!-- content -->
<!-- Modal -->
<div class="modal fade" id="modalCategory" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Chi tiết danh mục</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="form-group">
    		<label >Tên danh mục</label>
		    <input class="form-control" id="categoryName">
 		 </div>
 		  <div class="form-group">
    		<label>Số lượng sản phẩm</label>
		    <input type="number" class="form-control" id="categoryQuantity">
 		 </div>
 		 <div class="custom-control custom-switch">
			  <input type="checkbox" class="custom-control-input" id="categoryStatus">
			  <label class="custom-control-label" for="categoryStatus">Trạng thái hiện thị</label>
		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary saveChange">Save changes</button>
      </div>
    </div>
  </div>
</div>
  <div class="container">
    <div class="row">
      
    

      <table class="table">
        <thead class="thead-light">
          <tr>
            <th scope="col">#</th>
            <th scope="col">Tên danh mục</th>
            <th scope="col">Trạng thái</th>
            <th scope="col">Số lượng sản phẩm</th>
            <th scope="col">Chức năng</th>
          </tr>
        </thead>
        <tbody id="category">
         
          
       <% ArrayList<CategoryModel> arrCate =(ArrayList<CategoryModel>)request.getAttribute("data");
	 for(int i=0;i<arrCate.size();++i){
	 	CategoryModel cate = arrCate.get(i);
	 %>
	    <tr>
            <th scope="row"><%= i+1 %></th>
            <td><%= cate.name %></td>
            <td>
            	<div class="custom-control custom-switch">
				  <input type="checkbox" class="custom-control-input active" <% out.print((cate.status)? "checked": ""); %> id="<%= cate.categoryID %>">
				  <label class="custom-control-label" for="<%= cate.categoryID %>"></label>
				</div>
            </td>
            <td><%= cate.quantity %></td>
            <td>
              <div class="btn-group">
                <button id="<%= cate.categoryID %>" type="button" class="btn btn-secondary editProduct"data-toggle="modal" data-target="#modalCategory"><i class="fas fa-edit"></i></button>&nbsp;
                <button id="<%= cate.categoryID %>" type="button" class="btn btn-secondary delete"><i class="fas fa-trash"></i></button>
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
	$(".editProduct").click(function(){
		alert(this.id);
		  $.ajax({
			  url: "${pageContext.request.contextPath}/Category", 
			  type: "GET",
			  data:{
				  id: this.id,
				  action: "edit"
			  },
			  success: function(result){
			    var res = result.split("&");
			    $('#categoryName').val(res[1]);
			    $('#categoryQuantity').val(res[2]);
			    $('.saveChange').attr("id",res[0]);
			    if (res[3]==="true") {
			    	$('#categoryStatus').attr("checked","");
				    $('#categoryStatus').addClass("active");
			    }
			    else {
			    	$('#categoryStatus').removeAttr("checked","");
			    	$('#categoryStatus').removeClass("active");
			    }
			  }
		  });
		  
	});
	
	$(".saveChange").click(function(){
		// chỗ này xử lý nút save change đúng ko ukm
		if ($('#categoryStatus').prop('checked')) status=1;
		else status=0;
		$.ajax({
			  url: "${pageContext.request.contextPath}/Category", 
			  type: "POST",
			  data:{
				  id: this.id,
				  name:  $('#categoryName').val(),
				  quantity:  $('#categoryQuantity').val(),
				  status: status, 
				  action: "edit"
			  },
			  success: function(result){
				  //$('#modalCategory').modal('hide');
				  console.log(result);
				  location.reload();
			   	/*if (result == "true") {
			   		alert("thanh cong roi ae oi");
			   	} else {
			   		alert("Sai roi ae oi");// ko có nghe	
			   	
			
			   	}*/
			  }
		  });
	});
	
	$(".delete").click(function(){
		alert(this.id);
		$.ajax({
			  url: "${pageContext.request.contextPath}/Category", 
			  type: "POST",
			  data:{
				  id: this.id,
				  action: "delete"
			  },
			  success: function(result){
				  
				  if (result=="success"){
					  location.reload();
				  }
				  else{
					
				  	alert("Xóa thất bại. Vui lòng thử lại");
				  }
			  }
		  });
	});
	$("#btnSearch").click(function(){
		let cateName=$('[name="categoryName"]').val();
	$.ajax({
		  url: "${pageContext.request.contextPath}/Category", 
		  type: "POST",
		  data:{
			  name:cateName,
			  action: "search"
		  },
		  success: function(result){
			 $("#category").html(result);
		  }
	  });
});
	function deleteItem(id){
		$.ajax({
			  url: "${pageContext.request.contextPath}/Category", 
			  type: "POST",
			  data:{
				  id: id,
				  action: "delete"
			  },
			  success: function(result){
				  
				  if (result=="success"){
					  location.reload();
				  }
				  else{
					
				  	alert("Xóa thất bại. Vui lòng thử lại");
				  }
			  }
		  });
	}
	function editItem(id){
		  $.ajax({
			  url: "${pageContext.request.contextPath}/Category", 
			  type: "GET",
			  data:{
				  id: id,
				  action: "edit"
			  },
			  success: function(result){
			    var res = result.split("&");
			    $('#categoryName').val(res[1]);
			    $('#categoryQuantity').val(res[2]);
			    $('.saveChange').attr("id",res[0]);
			    if (res[3]==="true") {
			    	$('#categoryStatus').attr("checked","");
				    $('#categoryStatus').addClass("active");
			    }
			    else {
			    	$('#categoryStatus').removeAttr("checked","");
			    	$('#categoryStatus').removeClass("active");
			    }
			  }
		  });
	}

	</script>
</body>
</html>