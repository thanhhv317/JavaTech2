<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
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
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="account-area text-right">
					<ul>
						<li><a href="register.html">My Account</a></li>
						<li><a href="checkout.html">Checkout</a></li>
						<li><a href="/Login">Sign in</a></li>
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
			<div class="col-lg-3 col-md-3 col-sm-5 col-xs-12">
				<div class="header-search">
					<form action="#">
						<input type="text" placeholder="Search entire store here..." />
						<a href="#"><i class="fa fa-search"></i></a>
					</form>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-4 col-xs-12">
				<div class="logo-area text-center logo-xs-mrg">
					<a href="index.html"><img src="${pageContext.request.contextPath}/root/img/logo/logo.png" alt="logo" /></a>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
				<div class="my-cart">
					<ul>
						<li><a href="#"><i class="fa fa-shopping-cart"></i>My Cart</a>
							<span>1</span>
							<div class="mini-cart-sub">
								<div class="cart-product">
									<div class="single-cart">
										<div class="cart-img">
											<a href="#"><img src="${pageContext.request.contextPath}/root/img/product/3.jpg" alt="book" /></a>
										</div>
										<div class="cart-info">
											<h5><a href="#">Chaz Kangeroo Hoodie</a></h5>
											<p>1 x £52.00</p>
										</div>
										<div class="cart-icon">
                                            <a href="#"><i class="fa fa-remove"></i></a>
                                        </div>
									</div>
								</div>
								<div class="cart-totals">
									<h5>Total <span>12.00</span></h5>
								</div>
								<div class="cart-bottom">
									<a class="view-cart" href="cart.html">view cart</a>
									<a href="checkout.html">Check out</a>
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
							<li class="active"><a href="index.html">Home</a></li>
							<li><a href="">Book<i class="fa fa-angle-down"></i></a>
								<div class="sub-menu sub-menu-2">
									<ul>
										<li><a href="#">thanh dai ca</a></li>	
										<li><a href="#">Son cung la dai ca</a></li>
									</ul>
								</div>
							</li>
							<li><a href="index.html">Cart</a></li>
							<li><a href="index.html">Contact</a></li>
							<!-- Neu nhu la admin thi se xuat hien cai tab quan ly nay bam vao thi se nhay qua
							trang dashboard -->
							<li><a href="index.html">Manage</a></li>
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
							<li><a href="index.html">Home</a>
							</li>
							<li><a href="product-details.html">Book</a>
								<ul>
									<li><a href="shop.html">Tops & Tees</a></li>
									<li><a href="shop.html">Polo Short Sleeve</a></li>
									<li><a href="shop.html">Graphic T-Shirts</a></li>
									<li><a href="shop.html">Jackets & Coats</a></li>
								</ul>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- mobile-menu-area-end -->
</header>