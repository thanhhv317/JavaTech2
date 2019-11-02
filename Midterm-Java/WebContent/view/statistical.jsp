<%@page import="com.java.model.Statistical"%>
<%@page import="com.java.model.CategoryModel"%>
<%@page import="com.java.model.BookModel"%>
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
      <li>
        <a href="${pageContext.request.contextPath}/Statistical"><i class="fa fa-chart-line"></i> Thống kê</a>
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
        		<h1>Thống kê</h1>
       		</li>
           	
        </ol>
      </nav>
    </div>
  </div>

  <!-- content -->

  <div class="container">
    <div class="row">
      
    	<div id="chartContainer" style="height: 300px; width: 100%;"></div>
    	<hr/>
    	<br/>
    	
    	<div id="chartContainer2" style="height: 300px; width: 100%;"></div>
    	
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
	window.onload = function() {

		var chart = new CanvasJS.Chart("chartContainer", {
			animationEnabled: true,
			theme: "light2", // "light1", "light2", "dark1", "dark2"
			title:{
				text: "Số lượng sách theo thể loại"
			},
			axisY: {
				title: "Số lượng( quyển)"
			},
			data: [{        
				type: "column",  
				showInLegend: true, 
				legendMarkerColor: "grey",
				legendText: "quyển = cuốn sách",
				dataPoints: [   
					<%ArrayList<CategoryModel> arrCate =(ArrayList<CategoryModel>)request.getAttribute("data");
				 	for(int i=0;i<arrCate.size();++i){
				 		CategoryModel cate = arrCate.get(i);
					%>
					{ y: <%= cate.quantity %>, label: "<%= cate.name %>" },
					
					
					<%}%>
				]
			}]
		});
		
		// order in a date
		var chart2 = new CanvasJS.Chart("chartContainer2", {
			animationEnabled: true,  
			theme: "light1",
			title:{
				text: "Thống kê số đơn đặt hàng theo từng tháng"
			},
			axisY: {
				title: "Số lượng",
				valueFormatString: "#0",
				suffix: "đơn",
				stripLines: [{
					value: 2,
					label: "Trung bình"
				}]
			},
			data: [{
				yValueFormatString: "#,### đơn hàng",
				xValueFormatString: "YYYY",
				type: "spline",
				dataPoints: [
					<%ArrayList<Statistical> arrsta =(ArrayList<Statistical>)request.getAttribute("sta");
				 	for(int i=0;i<arrsta.size();++i){
				 		Statistical sta = arrsta.get(i);
				 		for(int j=1;j<=12;++j){
					%>
					
					{x: new Date(2019, <%= j %>,1 ), y: <%= (j == sta.month) ? sta.total : 0 %>},
					
					<%}}%>
				]
			}]
		});
		chart.render();

		
		chart2.render();

		}
	</script>
	 <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>