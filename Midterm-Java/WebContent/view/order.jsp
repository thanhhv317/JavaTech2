<%@page import="java.io.PrintWriter"%>
<%@page import="com.java.model.Order"%>
<%@page import="java.util.ArrayList"%>
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

  <div class="row">
    <div class="container">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb d-flex justify-content-end">
        	<li class="breadcrumb-item active">
        		<div class="btn-group" role="group">
      				<select class="form-control" id="opFilter">
      						<option value='0'>Tất cả</option>
					 		<option value='1'>Chưa xác nhận</option>
	            			<option value="2">Đã tiếp nhận</option>
	            			<option value="3">Hủy bỏ</option>
	            			<option value="4">Đã giao hàng</option>
        			</select>
        		</div>
       		</li>
           	<li class="breadcrumb-item active">
	            <div class="btn-group" role="group">
	            	<form method="post" action="${pageContext.request.contextPath}/SearchOrder">
	              		<input type="text" name="orderID">
	              	<button id="btnSearch" class="btn btn-outline-danger">Tìm kiếm</button>
	             </form>
            	</div>
          </li>
        </ol>
      </nav>
    </div>
  </div>

  <!-- content -->
<!-- Modal -->
<div class="modal fade  bd-example-modal-lg" id="modalCategory" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Chi tiết đơn hàng</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="detail">
      	<table class="table table-striped">
			  <thead>
			    <tr>
			      <th scope="col">#</th>
			      <th scope="col">Hình ảnh</th>
			      <th scope="col">Sản phẩm</th>
			      <th scope="col">Số lượng</th>
			      <th scope="col">Đơn giá</th>
			    </tr>
			  </thead>
			  <tbody id="listOrderDetail">
			    <tr>
			      <th scope="row">2</th>
			      <td>
			      	<img src="https://via.placeholder.com/150x150" style="max-width:180px" class="img-fluid img-thumbnail" alt="...">
			      </td>
			      <td>Jacob</td>
			      <td>Thornton</td>
			      <td>fat</td>
			    </tr>
			  </tbody>
			</table>
		<!-- 
			Show modal
		 -->
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
            <th scope="col">Tên người mua</th>
            <th scope="col">Địa chỉ</th>
            <th scope="col">Số điện thoại</th>
            <th scope="col">Tổng tiền</th>
            <th scope="col">Trạng thái</th>
            <th scope="col">Chức năng</th>
          </tr>
        </thead>
        <tbody id="listOrder">
	    <tr>
    	<% ArrayList<Order> arrOrder =(ArrayList<Order>)request.getAttribute("data");
    	for(int i=0;i<arrOrder.size();++i){
			 Order order = arrOrder.get(i);
		 %>
	    	
            <th scope="row"><%= order.orderID %></th>
            <td><%= order.name %></td>
            <td><%= order.address %></td>
            <td><%= order.phone %></td>
            <td><%= order.total %> VND</td>
            <td>
            	<select class="form-control" id="status-<%= order.orderID %>" onchange="changeStatus(<%= order.orderID %>)">
	            		
            			<option value="1" <% if(order.status == 1){ %> selected <% }%>>Chưa xác nhận</option>
            		
            			<option value="2" <% if(order.status == 2){ %> selected <% }%>>Đã tiếp nhận</option>
            		
            			<option value="3" <% if(order.status == 3){ %> selected <% }%> >Hủy bỏ</option>
            		
            			<option value="4" <% if(order.status == 4){ %> selected <% }%>>Đã giao hàng</option>
            		
			  	</select>
            </td>
            <td>
              <div class="btn-group">
                <button id="" type="button" class="btn btn-secondary show" onclick="viewOrder(<%= order.orderID %>)" data-toggle="modal" data-target="#modalCategory"><i class="far fa-eye"></i></button>&nbsp;
                <button id="" type="button" class="btn btn-secondary delete" onclick="deleteOrder(<%= order.orderID %>)"><i class="fas fa-trash"></i></button>&nbsp;
              	</div>
            </td>
          </tr>
          <%}%>
          
        </tbody>
      </table>
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
  <!-- sweet alert -->
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>	
  <script src="${pageContext.request.contextPath}/js/dashboard.js"></script>
	<script>
	$("#opFilter").change(function(){
		let status = document.getElementById(this.id).value;
		
		$.ajax({
			  url: "FilterOrder", 
			  type: "POST",
			  data:{
				  status: status,
			  },
			  success: function(result){
			    $("#listOrder").html(result);
			  }
		  });
	});
	function changeStatus(id){
		let status = $('#status-'+id).children(':selected').val();
		$.ajax({
			  url: "ChangeStatus", 
			  type: "POST",
			  data:{
				  orderID: id,
				  status: status
			  },
			  success: function(data){
			    if (data == 1) {
			    	Swal.fire('Success!','Changed item.','success');
			    } else {
			    	Swal.fire('Warning!','ERROR.','warning');
			    }
			  }
		  });
	}
	function deleteOrder (id) {
		Swal.fire({
			  title: 'Are you sure?',
			  text: "You won't be able to revert this!",
			  type: 'warning',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: 'Yes, delete it!'
			}).then((result) => {
			  if (result.value) {
				  $.ajax({
					  url: "DeleteOrder", 
					  type: "POST",
					  data:{
						  orderID: id
					  },
					  success: function(data){
					    	Swal.fire('Success!','Deleted item.','success').then(() => {
					    		location.reload();
					    	});
					    	
					  }
				  });
			  }
			})
		
		
	}
	function viewOrder(id) {
		$.ajax({
			  url: "OrderDetail", 
			  type: "POST",
			  data:{
				  orderID: id
			  },
			  success: function(data){
			    	$("#listOrderDetail").html(data);
			    	console.log(data);
			  }
		  });
	}
	</script>
</body>
</html>