<%@ include file="includes/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.java.model.BookViewHomeClient"%>
<div class="banner-area banner-res-large ptb-35">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
				<div class="single-banner">
					<div class="banner-img">
						<a href="#"><img src="${pageContext.request.contextPath}/root/img/banner/1.png" alt="banner" /></a>
					</div>
					<div class="banner-text">
						<h4>Free shipping item</h4>
						<p>For all orders over $500</p>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
				<div class="single-banner">
					<div class="banner-img">
						<a href="#"><img src="${pageContext.request.contextPath}/root/img/banner/2.png" alt="banner" /></a>
					</div>
					<div class="banner-text">
						<h4>Money back guarantee</h4>
						<p>100% money back guarante</p>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 hidden-sm col-xs-12">
				<div class="single-banner">
					<div class="banner-img">
						<a href="#"><img src="${pageContext.request.contextPath}/root/img/banner/3.png" alt="banner" /></a>
					</div>
					<div class="banner-text">
						<h4>Cash on delivery</h4>
						<p>Lorem ipsum dolor consecte</p>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
				<div class="single-banner mrg-none-xs">
					<div class="banner-img">
						<a href="#"><img src="${pageContext.request.contextPath}/root/img/banner/4.png" alt="banner" /></a>
					</div>
					<div class="banner-text">
						<h4>Help & Support</h4>
						<p>Call us : + 0123.4567.89</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- banner-area-end -->
<!-- slider-area-start -->
<div class="slider-area">
	<div class="slider-active owl-carousel">
		<div class="single-slider pt-125 pb-130 bg-img" style="background-image:url(${pageContext.request.contextPath}/root/img/slider/1.jpg);">
		    <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <div class="slider-content slider-animated-1 text-center">
                            <h1>Huge Sale</h1>
                            <h2>koparion</h2>
                            <h3>Now starting at Â£99.00</h3>
                            <a href="#">Shop now</a>
                        </div>
                    </div>
                </div>
		    </div>
		</div>
		<div class="single-slider slider-h1-2 pt-215 pb-100 bg-img" style="background-image:url(${pageContext.request.contextPath}/root/img/slider/2.jpg);">
		    <div class="container">
		        <div class="slider-content slider-content-2 slider-animated-1">
                    <h1>We can help get your</h1>
                    <h2>Books in Order</h2>
                    <h3>and Accessories</h3>
                    <a href="#">Contact Us Today!</a>
                </div>
		    </div>
		</div>
	</div>
</div>
<!-- slider-area-end -->
<!-- product-area-start -->
<div class="product-area pt-95 xs-mb">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title text-center mb-50">
					<h2>Top Thịnh Hành</h2>
					<p>Những sản phẩm giá tốt nhất. <br /> ----------------------------- </p>
				</div>
			</div>
			<div class="col-lg-12">
				<!-- tab-menu-start -->
				<div class="tab-menu mb-40 text-center">
					
				</div>
				<!-- tab-menu-end -->
			</div>
		</div>
		<!-- tab-area-start -->
		<div class="tab-content">
			<div class="tab-pane active" id="Audiobooks">
                <div class="tab-active owl-carousel">
					<% 
						ArrayList<BookViewHomeClient> arrBook =(ArrayList<BookViewHomeClient>)request.getAttribute("topPopular");
		             	for(int i=0; i<arrBook.size() ;++i){
		               	BookViewHomeClient book = arrBook.get(i);
		            %>
		            	<!-- single-product-start -->
	                    <div class="product-wrapper">
	                        <div class="product-img">
	                            <a href="#">
	                                <img src="${pageContext.request.contextPath}/images/<%=book.Image %>" style="width:212px; height:272px;" alt="book" class="primary" />
	                            </a>
	                            <div class="quick-view">
	                                <a class="action-view btnDetail" href="#" data-id="<%=book.BookID %>" data-target="#productModal" data-toggle="modal" title="Quick View">
	                                    <i class="fa fa-search-plus"></i>
	                                </a>
	                            </div>
	                            <div class="product-flag">
	                                <ul>
	                                    <li><span class="sale">new</span></li>
	                                    <li><span class="discount-percentage">-5%</span></li>
	                                </ul>
	                            </div>
	                        </div>
	                        <div class="product-details text-center">
	                            <div class="product-rating">
	                                <ul>
	                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
	                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
	                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
	                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
	                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
	                                </ul>
	                            </div>
	                            <h4><a href="#"><%=book.BookName %></a></h4>
	                            <div class="product-price">
	                                <ul>
	                                    <li><%=book.Price%> VND</li>
	                                </ul>
	                            </div>
	                        </div>
	                        <div class="product-link">
	                            <div class="product-button">
	                                <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
	                            </div>
	                            <div class="add-to-link">
	                                <ul>
	                                    <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
	                                </ul>
	                            </div>
	                        </div>	
	                    </div>
	                    <!-- single-product-end -->
		            
		            <%}%>
                </div>
			</div>
		</div>
		<!-- tab-area-end -->
	</div>
</div>
<!-- product-area-end -->
<!-- banner-area-start -->
<div class="banner-area-5 mtb-95">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="banner-img-2">
					<a href="#"><img src="${pageContext.request.contextPath}/root/img/banner/5.jpg" alt="banner" /></a>
					<div class="banner-text">
						<h3>G. Meyer Books & Spiritual Traveler Press</h3>
						<h2>Sale up to 30% off</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- banner-area-end -->
<!-- bestseller-area-start -->
<div class="bestseller-area pb-100">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
				<div class="bestseller-content">
					<h1>Author best selling</h1>
					<h2>J. K. <br />Rowling</h2>
					<p class="categories">categories:<a href="#">Books</a> , <a href="#">Audiobooks</a></p>
					<p>Vestibulum porttitor iaculis gravida. Praesent vestibulum varius placerat. Cras tempor congue neque, id aliquam orci finibus sit amet. Fusce at facilisis arcu. Donec aliquet nulla id turpis semper, a bibendum metus vulputate. Suspendisse potenti. </p>
					<div class="social-author">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="banner-img-2">
					<a href="#"><img src="${pageContext.request.contextPath}/root/img/banner/6.jpg" alt="banner" /></a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<div class="bestseller-active owl-carousel">
					<% 
						ArrayList<BookViewHomeClient> arrBook2 =(ArrayList<BookViewHomeClient>)request.getAttribute("topAuthor");
		             	for(int i=0; i<arrBook2.size() ;i+=2){
		               	BookViewHomeClient book = arrBook2.get(i);
		               	BookViewHomeClient book2 = arrBook2.get(i+1);
		            %>
		            	<div class="bestseller-total">
						<div class="single-bestseller mb-25">
							<div class="bestseller-img">
								<a href="#"><img src="${pageContext.request.contextPath}/images/<%=book.Image %>" style="height:170px; ww" alt="book" /></a>
								<div class="product-flag">
                                    <ul>
                                        <li><span class="sale">new</span></li>
                                    </ul>
                                </div>
							</div>
							<div class="bestseller-text text-center">
								<h3> <a href="#"><%=book.BookName %></a></h3>
								<div class="price">
									<ul>
										<li><span class="new-price"><%=book.Price %>VND</span></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="single-bestseller">
							<div class="bestseller-img">
								<a href="#"><img src="${pageContext.request.contextPath}/images/<%=book2.Image %>" alt="book" /></a>
								<div class="product-flag">
                                    <ul>
                                        <li><span class="sale">new</span></li>
                                    </ul>
                                </div>
							</div>
							<div class="bestseller-text text-center">
								<h3> <a href="#"><%=book2.BookName %></a></h3>
								<div class="price">
									<ul>
										<li><span class="new-price"><%=book2.Price %>VND</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				
		            	
		            <%}%>
					
					</div>
			</div>
		</div>
	</div>
</div>
<!-- bestseller-area-end -->
<!-- new-book-area-start -->
<div class="new-book-area pb-100">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title bt text-center pt-100 mb-30 section-title-res">
					<h2>Sách mới nhất</h2>
				</div>
			</div>
		</div>
		<div class="tab-active owl-carousel">
			<% 
				arrBook =(ArrayList<BookViewHomeClient>)request.getAttribute("BookListNew");
             	for(int i=0; i<arrBook.size() ;i+=2){
               	BookViewHomeClient book = arrBook.get(i);
               	BookViewHomeClient book2 = arrBook.get(i+1);
            %>
            	<div class="tab-total">
	                <!-- single-product-start -->
	                <div class="product-wrapper mb-40">
	                    <div class="product-img">
	                        <a href="#">
	                            <img src="${pageContext.request.contextPath}/images/<%=book.Image %>" style="width:212px; height:272px;" alt="book" class="primary" />
	                        </a>
	                        <div class="quick-view">
	                            <a class="action-view btnDetail" href="#" data-id="<%=book.BookID %>" data-target="#productModal" data-toggle="modal" title="Quick View">
	                                <i class="fa fa-search-plus"></i>
	                            </a>
	                        </div>
	                        <div class="product-flag">
	                            <ul>
	                                <li><span class="sale">new</span> </li>
	                                <li><span class="discount-percentage">-5%</span></li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="product-details text-center">
	                        <div class="product-rating">
	                            <ul>
	                                <li><a href="#"><i class="fa fa-star"></i></a></li>
	                                <li><a href="#"><i class="fa fa-star"></i></a></li>
	                                <li><a href="#"><i class="fa fa-star"></i></a></li>
	                                <li><a href="#"><i class="fa fa-star"></i></a></li>
	                                <li><a href="#"><i class="fa fa-star"></i></a></li>
	                            </ul>
	                        </div>
	                        <h4><a href="#"><%=book.BookName %></a></h4>
	                        <div class="product-price">
	                            <ul>
	                                <li><%=book.Price %>VND</li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="product-link">
	                        <div class="product-button">
	                            <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
	                        </div>
	                        <div class="add-to-link">
	                            <ul>
	                                <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
	                            </ul>
	                        </div>
	                    </div>	
	                </div>
	                <!-- single-product-end -->
	                <!-- single-product-start -->
	                <div class="product-wrapper">
	                    <div class="product-img">
	                        <a href="#">
	                            <img src="${pageContext.request.contextPath}/images/<%=book2.Image %>"  style="width:212px; height:272px;" alt="book" class="primary" />
	                        </a>
	                        <div class="quick-view">
	                            <a class="action-view bntDetail" href="#" data-target="#productModal" data-id="<%=book2.BookID %>" data-toggle="modal" title="Quick View">
	                                <i class="fa fa-search-plus"></i>
	                            </a>
	                        </div>
	                        <div class="product-flag">
	                            <ul>
	                                <li><span class="sale">new</span> <br></li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="product-details text-center">
	                        <div class="product-rating">
	                            <ul>
	                                <li><a href="#"><i class="fa fa-star"></i></a></li>
	                                <li><a href="#"><i class="fa fa-star"></i></a></li>
	                                <li><a href="#"><i class="fa fa-star"></i></a></li>
	                                <li><a href="#"><i class="fa fa-star"></i></a></li>
	                                <li><a href="#"><i class="fa fa-star"></i></a></li>
	                            </ul>
	                        </div>
	                        <h4><a href="#"><%=book2.BookName %></a></h4>
	                        <div class="product-price">
	                            <ul>
	                                <li><%=book2.Price %>VND</li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="product-link">
	                        <div class="product-button">
	                            <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
	                        </div>
	                        <div class="add-to-link">
	                            <ul>
	                                <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
	                            </ul>
	                        </div>
	                    </div>	
	                </div>
	                <!-- single-product-end -->
	            </div>
            <%} %>
        </div>
	</div>
</div>
<!-- new-book-area-start -->
<!-- banner-static-area-start -->
<div class="banner-static-area bg ptb-100">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="banner-shadow-hover xs-mb">
					<a href="#"><img src="${pageContext.request.contextPath}/root/img/banner/8.jpg" alt="banner" /></a>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="banner-shadow-hover">
					<a href="#"><img src="${pageContext.request.contextPath}/root/img/banner/9.jpg" alt="banner" /></a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- banner-static-area-end -->

<!-- testimonial-area-start -->
<div class="testimonial-area ptb-100 bg">
	<div class="container">
		<div class="row">
			<div class="testimonial-active owl-carousel">
				<div class="col-lg-12">
					<div class="single-testimonial text-center">
						<div class="testimonial-img">
							<a href="#"><i class="fa fa-quote-right"></i></a>
						</div>
						<div class="testimonial-text">
							<p>I'm so happy with all of the themes, great support, could not wish for more. These people are <br /> geniuses ! Kudo's from the Netherlands !</p>
							<a href="#">Sandy Wilcke/user</a>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="single-testimonial text-center">
						<div class="testimonial-img">
							<a href="#"><i class="fa fa-quote-right"></i></a>
						</div>
						<div class="testimonial-text">
							<p>All Perfect !! I have three sites with magento , this theme is the best !! Excellent support ,<br /> advice theme installation package , sorry for English, are Italian but I had no problem !! Thank you !</p>
							<a href="#">Sandy Wilcke/user</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- testimonial-area-end -->
<!-- social-group-area-start -->
<div class="social-group-area ptb-60">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="section-title-3">
					<h3>Latest Tweets</h3>
				</div>
				<div class="twitter-content">
					<div class="twitter-icon">
						<a href="#"><i class="fa fa-twitter"></i></a>
					</div>
					<div class="twitter-text">
						<p>
							Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum notare quam 
						</p>
						<a href="#">posthemes</a>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="section-title-3">
					<h3>Stay Connected</h3>
				</div>
				<div class="link-follow">
					<ul>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-youtube"></i></a></li>
						<li><a href="#"><i class="fa fa-flickr"></i></a></li>
						<li class="hidden-sm"><a href="#"><i class="fa fa-vimeo"></i></a></li>
						<li class="hidden-sm"><a href="#"><i class="fa fa-instagram"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="includes/footer.jsp" %>