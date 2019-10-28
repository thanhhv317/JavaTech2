<%@page import="java.util.ArrayList"%>
<%@page import="com.java.model.FeedbackModel"%>
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
        <a href="${pageContext.request.contextPath}/Feedback"><i class="fa fa-fw fa-user"></i> Phản hồi</a>
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
            <form method="post">
              <input type="text" name="email">
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
<div class="modal fade" id="modalCategory" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Thông tin phản hồi</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="detail">
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
            <th scope="col">Tên</th>
            <th scope="col">Email</th>
            <th scope="col">Tiêu đề</th>
            <th scope="col">Nội dung</th>
            <th scope="col"></th>
          </tr>
        </thead>
        <tbody id="category">
         
          
       <% ArrayList<FeedbackModel> arrFB =(ArrayList<FeedbackModel>)request.getAttribute("data");
	 for(int i=0;i<arrFB.size();++i){
	 	FeedbackModel fb = arrFB.get(i);
	 %>
	    <tr>
            <th scope="row"><%= i+1 %></th>
            <td><%= fb.name %></td>
            <td><%= fb.email %></td>
            <td>
            <%
				if (fb.subject.length()>30){
					out.print(fb.subject.substring(0,30)+"...");
				}
				else{
					out.print(fb.subject);
				}
            %>
            </td>
            <td>
            <%
            	if (fb.message.length()>50){
            		out.print(fb.message.substring(0,50)+"...");
            	}
            	else{
            		out.print(fb.message);
            	}
            %>
            </td>
            <td>
              <div class="btn-group">
                <button id="<%= fb.id %>" type="button" class="btn btn-secondary show"data-toggle="modal" data-target="#modalCategory"><i class="far fa-eye"></i></button>&nbsp;
                <button id="<%= fb.id %>" type="button" class="btn btn-secondary delete"><i class="fas fa-trash"></i></button>
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
  <script src="${pageContext.request.contextPath}/js/dashboard.js"></script>
	<script>
		$(".delete").click(function(){
			$.ajax({
				  url: "${pageContext.request.contextPath}/DeleteFeedback", 
				  type: "POST",
				  data:{
					  id: this.id,
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
		$(".show").click(function(){
			$.ajax({
				  url: "${pageContext.request.contextPath}/DetailFeedback", 
				  type: "POST",
				  data:{
					  id: this.id,
				  },
				  success: function(result){
					  $("#detail").html(result);
				  }
			  });
		});
	</script>
</body>
</html>