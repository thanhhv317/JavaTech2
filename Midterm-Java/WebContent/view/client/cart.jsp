<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ include file="includes/header.jsp" %>
	
	<div class="breadcrumbs-area mb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumbs-menu">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#" class="active">cart</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumbs-area-end -->
	<!-- entry-header-area-start -->
	<div class="entry-header-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="entry-header-title">
						<h2>Cart</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- entry-header-area-end -->
	<!-- cart-main-area-start -->
	<div class="cart-main-area mb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<form>
						<div class="table-content table-responsive">
							<table>
								<thead>
									<tr>
										<th class="product-thumbnail">Image</th>
										<th class="product-name">Product</th>
										<th class="product-price">Price</th>
										<th class="product-quantity">Quantity</th>
										<th class="product-subtotal">Total</th>
										<th class="product-remove">Remove</th>
									</tr>
								</thead>
								<tbody class="append-product">
									
								</tbody>
							</table>
						</div>
					</form>
				</div>
			</div>
			<div class="row">
                <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
                    <div class="buttons-cart mb-30">
                        <ul>
                            <li><a style="cursor:pointer;" class="btn-clear-cart">Xóa giỏ hàng</a></li>
                            <li><a href="Product">Tiếp tục mua sắm</a></li>
                        </ul>
                    </div>
                   
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="cart_totals">
                        <h2>Tổng Chi Phí</h2>
                        <table>
                            <tbody>
                                <tr class="cart-subtotal">
                                    <th>Số lượng</th>
                                    <td>
                                        <span class="amount total-quantity-all-product">0</span>
                                    </td>
                                </tr>
                                 
                                <tr class="shipping">
                                    <th>Shipping</th>
                                    <td>
                                        <ul id="shipping_method">
                                            
                                            <li>
                                                <input type="radio" checked>
                                                <label> Free Shipping </label>
                                            </li>
                                        </ul>
                                        <a href="">Tổng cộng</a>
                                    </td>
                                </tr>
                               
                                <tr class="order-total">
                                    <th>Total</th>
                                    <td>
                                        <strong>
                                            <span class="amount total-price-all-product">0 VND</span>
                                        </strong>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="wc-proceed-to-checkout">
                            <a href="Checkout">Tiến hành thanh toán</a>
                        </div>
                    </div>
                </div>
            </div>
		</div>
	</div>
	
	<%@ include file="includes/footer.jsp" %>
	