<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.java.model.CategoryModel"%>
<%@ include file="includes/header.jsp" %>
<%@page import="java.util.ArrayList"%>
<%@page import="com.java.model.client.BookModel"%>
<!-- header-area-end -->
<!-- breadcrumbs-area-start -->
<div class="breadcrumbs-area mb-70">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="breadcrumbs-menu">
          <ul>
            <li><a href="#">Trang Chủ</a></li>
            <li><a href="#" class="active">Sản Phẩm</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- breadcrumbs-area-end -->
<!-- shop-main-area-start -->
<div class="shop-main-area mb-70">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
        <div class="shop-left">
          <div class="section-title-5 mb-30">
            <h2>Lựa chọn</h2>
          </div>
          <div class="left-title mb-20">
            <h4>Danh mục</h4>
          </div>
          <div class="left-menu mb-30">
            <ul>
            	<%
				 	for(int i=0;i<arrCate.size();++i){
				 		CategoryModel cate= arrCate.get(i);
					%>
						<li><a href="Product?category=<%= cate.categoryID %>"> <%= cate.name %></a></li>	
					
       			<%} %>
            </ul>
          </div>
          
          
          <div class="banner-area mb-30">
            <div class="banner-img-2">
              <a href="#"><img src="${pageContext.request.contextPath}/root/img/banner/31.jpg" alt="banner" /></a>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
        <div class="category-image mb-30">
          <a href="#"><img src="${pageContext.request.contextPath}/root/img/banner/32.jpg" alt="banner" /></a>
        </div>
        <div class="section-title-5 mb-30">
          <h2>Book</h2>
        </div>
        <div class="toolbar mb-30">
          <div class="shop-tab">
            <div class="tab-3">
              <ul>
                <li class="active"><a href="#th" data-toggle="tab"><i class="fa fa-th-large"></i>Grid</a></li>
                <li><a href="#list" data-toggle="tab"><i class="fa fa-bars"></i>List</a></li>
              </ul>
            </div>
          </div>
          
        </div>
        <!-- tab-area-start -->
        <div class="tab-content">
          <div class="tab-pane active" id="th">
              <div class="row">
              <% ArrayList<BookModel> arrBook =(ArrayList<BookModel>)request.getAttribute("data");
             for(int i=0;i<arrBook.size();++i){
               BookModel book = arrBook.get(i);
              %>
                  <div class="col-lg-3 col-md-4 col-sm-6">
                      <!-- single-product-start -->
                                <div class="product-wrapper mb-40">
                                    <div class="product-img">
                                        <a href="#">
                                            <img style="height:210px;" src="${pageContext.request.contextPath}/images/<%= book.image %>" width="100px" alt="book" class="primary" />
                                        </a>
                                        <div class="quick-view">
                                            <a class="action-view btnDetail" href="#" data-id="<%= book.bookID %>" data-target="#productModal" data-toggle="modal" title="Quick View">
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
                                    <div class="product-details text-center ">
                                        <div class="product-rating">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            </ul>
                                        </div>
                                        <h4 style="height: 50px;"><a href="#"><%= book.bookName %></a></h4>
                                        <div class="product-price">
                                            <ul>
                                                <li><%= book.price %> VND</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-link">
                                        <div class="product-button">
                                            <a title="Add to cart" style="cursor:pointer" onclick="addToCart(<%= book.bookID %>, '<%= book.bookName %>', <%= book.price %>, '${pageContext.request.contextPath}/images/<%= book.image %>', 1);" ><i class="fa fa-shopping-cart"></i>Add to cart</a>
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
                  <%}%>
              </div>
          </div>
          <div class="tab-pane fade" id="list">
            <!-- single-shop-start -->
            <% 
             for(int i=0;i<arrBook.size();++i){
               BookModel book = arrBook.get(i);
              %>
              	
             <div class="single-shop mb-30">
              <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                  <div class="product-wrapper-2">
                    <div class="product-img">
                      <a href="#">
                        <img src="${pageContext.request.contextPath}/images/<%= book.image %>" alt="book" class="primary" />
                      </a>
                    </div>	
                  </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                  <div class="product-wrapper-content">
                    <div class="product-details">
                      <div class="product-rating">
                        <ul>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                        </ul>
                      </div>
                      <h4><a href="#"><%= book.bookName %></a></h4>
                      <div class="product-price">
                        <ul>
                          <li><%= book.price %></li>
                          <li class="old-price"></li>
                        </ul>
                      </div>
                      
                      <p>
                      <%
                      
                      if (book.description.length()>150){
      					out.print(book.description.substring(0,150)+"...");
      				}
      				else{
      					out.print(book.description);
      				}
                      %>
                      </p>
                    </div>
                    <div class="product-link">
                      <div class="product-button">
                        <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                      </div>
                      <div class="add-to-link">
                                                <ul>
                                                    <li><a style="cursor:pointer" class="btnDetail" data-id=<%= book.bookID %> data-target="#productModal" data-toggle="modal" title="Details"><i class="fa fa-external-link"></i></a></li>
                                                </ul>
                       </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
              <%} %>
           
            <!-- single-shop-end -->
          </div>
        </div>
        <!-- tab-area-end -->
        <!-- pagination-area-start -->
        <div class="pagination-area mt-50">
         
          <div class="page-number">
            <ul>
             <%
             	String cate=(String)request.getAttribute("cate");
             	String url=request.getContextPath()+"/Product?";
             	if (cate!=null){
             		url+="category="+cate+"&";
             	}
          		int total=(int)request.getAttribute("total");
          		int take=12;
          		int numOfPage=total/take;
          		if (numOfPage==0){
          			url+="page=1";
          			out.print("<li><a href="+url+" class='active'>1</a></li>");
          		}
          		else{
          			if (total%take!=0) numOfPage+=1;
          			int p=(int)request.getAttribute("selectedPage");
          			for (int i=1;i<=numOfPage;++i){
          				String link=url+"page="+i;
          				if (p==i){
          					out.println("<li><a href="+link+" class='active'>"+i+"</a></li>");
          				}
          				else{
          					out.println("<li><a href="+link+">"+i+"</a></li>");
          				}
          			}
          		}
          	%>
            </ul>
          </div>
          
        </div>
        <!-- pagination-area-end -->
      </div>
    </div>
  </div>
</div>
<!-- shop-main-area-end -->

<!-- footer-area-start -->

<%@ include file="includes/footer.jsp" %>

