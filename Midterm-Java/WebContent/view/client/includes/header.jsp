<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.java.model.CategoryModel"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Koparion – Book Shop Bootstrap 4 Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/root/img/favicon.png">

<!-- all css here -->
<!-- bootstrap v3.3.6 css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/root/css/bootstrap.min.css">
<!-- animate css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/root/css/animate.css">
<!-- meanmenu css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/root/css/meanmenu.min.css">
<!-- owl.carousel css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/root/css/owl.carousel.css">
<!-- font-awesome css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/root/css/font-awesome.min.css">
<!-- flexslider.css-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/root/css/flexslider.css">
<!-- chosen.min.css-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/root/css/chosen.min.css">
<!-- style css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/root/style.css">
<!-- responsive css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/root/css/responsive.css">
<!-- modernizr css -->
<script src="${pageContext.request.contextPath}/root/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Add your site or application content here -->
<!-- header-area-start -->
<header>
<!-- header-top-area-start -->
<div class="header-top-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="account-area">
					<ul>
						<li><h4>Welcome to My Shop</h4></li>
					</ul>
				</div>
			</div>
			
		</div>
	</div>
</div>
<!-- header-top-area-end -->
<!-- header-mid-area-start -->
<div class="header-mid-area ptb-40">
	<div class="container">
		<div class="row">
			<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
				<div class="logo-area text-center logo-xs-mrg">
					<a href="index.html"><img src="${pageContext.request.contextPath}/root/img/logo/logo.png" alt="logo" /></a>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
				<div class="my-cart">
					<ul>
						<li><a href="Cart"><i class="fa fa-shopping-cart"></i>Giỏ Hàng Của Tui</a>
							<span class="quantity-product">0</span>
							<div class="mini-cart-sub">
								<div class="cart-totals">
									<h5>Tổng cộng <span class="product-total-price">0</span></h5>
								</div>
								<div class="cart-bottom">
									<a class="view-cart" href="Cart">Xem giỏ hàng</a>
									<a href="Checkout">Thanh Toán</a>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- header-mid-area-end -->
<!-- main-menu-area-start -->
<div class="main-menu-area hidden-sm hidden-xs sticky-header-1" id="header-sticky">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="menu-area">
					<nav>
						<ul>
							<%
								String[] str = request.getRequestURI().split("/");
								String tmp = null;
								//get url page
								tmp = str[str.length-1];
								String op = "", op2 = "", op3 = "", op4 = "";
								
								
								if(tmp.equals("home.jsp")) op = "active";
								else if(tmp.equals("shop.jsp")) op2 = "active";
								else if(tmp.equals("cart.jsp")) op3 = "active";
								else if(tmp.equals("contact.jsp")) op4 = "active";
								
							%>
							
							<li class ="<%=op %>"><a href="${pageContext.request.contextPath}">Trang Chủ</a></li>
							<li class ="<%=op2 %>"><a href="Product">Sản Phẩm<i class="fa fa-angle-down"></i></a>
								<div class="sub-menu sub-menu-2">
									<ul>
										<%ArrayList<CategoryModel> arrCate =(ArrayList<CategoryModel>)request.getAttribute("category");
										 	for(int i=0;i<arrCate.size();++i){
										 		CategoryModel cate= arrCate.get(i);
											%>
												<li><a href="Product?category=<%= cate.categoryID %>"> <%= cate.name %></a></li>	
											
					        			<%} %>
										
									</ul>
								</div>
							</li>
							<li class ="<%=op3 %>"><a href="Cart">Giỏ Hàng</a></li>
							<li class ="<%=op4 %>"><a href="Contact">Liên Hệ</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main-menu-area-end -->
<!-- mobile-menu-area-start -->
<div class="mobile-menu-area hidden-md hidden-lg">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="mobile-menu">
					<nav id="mobile-menu-active">
						<ul id="nav">
							<li><a href="${pageContext.request.contextPath}">Trang Chủ</a>
							</li>
							<li><a href="product-details.asp">Sản Phẩm</a>
							</li>
							<li><a href="Cart">Giỏ Hàng</a></li>
							<li><a href="Contact">Liên Hệ</a></li>
							<!-- Neu nhu la admin thi se xuat hien cai tab quan ly nay bam vao thi se nhay qua
							trang dashboard -->
							<li><a href="Dashboard">Quản Lý</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- mobile-menu-area-end -->
</header>