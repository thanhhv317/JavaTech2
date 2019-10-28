	<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
	<%@ include file="includes/header.jsp" %>
<div class="breadcrumbs-area mb-20">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumbs-menu">
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#" class="active">checkout</a></li>
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
					<h2>Checkout</h2>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- entry-header-area-end -->
<!-- coupon-area-area-start -->
<div class="coupon-area mb-30">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="coupon-accordion">
					<h3>Bạn chưa đăng nhập!<span id="showlogin"> Click vào đây để đăng nhập và mua hàng</span></h3>
					<div class="coupon-content" id="checkout-login">
						<div class="coupon-info">
							<p class="coupon-text">Đăng nhập để mua hàng 1 cách nhanh chóng.</p>
							<form action="#">
								<p class="form-row-first">
									<label>Tài khoản <span class="required">*</span></label>
									<input type="text">
								</p>
								<p class="form-row-last">
									<label>Mật khẩu  <span class="required">*</span></label>
									<input type="text">
								</p>
								<p class="form-row">					
									<input type="submit" value="Login">
									<label>
										<input type="checkbox">
										 Ghi nhớ đăng nhập
									</label>
								</p>
								<p class="lost-password">
									<a href="#">Bạn chưa có tài khoản?</a>
								</p>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- coupon-area-area-end -->
<!-- checkout-area-start -->
<div class="checkout-area mb-30">
	<div class="container">
		<div class="row">
			<form action="#">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="checkbox-form">						
						<h3>Chi tiết hóa đơn</h3>
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
								<div class="checkout-form-list">
									<label>Họ và tên<span class="required">*</span></label>										
									<input type="text" placeholder="">
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="checkout-form-list">
									<label>Số điện thoại<span class="required">*</span></label>										
									<input type="text" placeholder="">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="checkout-form-list">
									<label>Địa chỉ</label>
									<input type="text" placeholder="">
								</div>
							</div>			
						</div>
						<div class="different-address">
								<div class="ship-different-title">
									<h3>
										<label>Gửi tới địa chỉ khác?</label>
										<input type="checkbox" id="ship-box">
									</h3>
								</div>
							<div class="row" id="ship-box-info" style="display: none;">
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
								<div class="checkout-form-list">
									<label>Họ và tên<span class="required">*</span></label>										
									<input type="text" placeholder="">
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="checkout-form-list">
									<label>Số điện thoại<span class="required">*</span></label>										
									<input type="text" placeholder="">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="checkout-form-list">
									<label>Địa chỉ</label>
									<input type="text" placeholder="">
								</div>
							</div>									
							</div>
							<div class="order-notes">
								<div class="checkout-form-list">
									<label>Ghi chú cho hóa đơn</label>
									<textarea placeholder="Ví dụ: cho nhiều hành nha bác tài ơiiiiiiiii " rows="10" cols="30" id="checkout-mess"></textarea>
								</div>									
							</div>
						</div>													
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="your-order">
						<h3>Hóa đơn của bạn</h3>
						<div class="your-order-table table-responsive">
							<table>
								<thead>
									<tr>
										<th class="product-name">Sản phẩm</th>
										<th class="product-total">Thành tiền</th>
									</tr>							
								</thead>
								<tbody class="append-order-table">
									<!-- <tr class="cart_item">
										<td class="product-name">
											Vestibulum suscipit <strong class="product-quantity"> Ã 1</strong>
										</td>
										<td class="product-total">
											<span class="amount">Â£165.00</span>
										</td>
									</tr>
									<tr class="cart_item">
										<td class="product-name">
											Vestibulum suscipit	<strong class="product-quantity"> Ã 1</strong>
										</td>
										<td class="product-total">
											<span class="amount">Â£50.00</span>
										</td>
									</tr>  -->
								</tbody>
								 <tfoot class="append-order-footer">
									<!-- <tr class="cart-subtotal">
										<th>Cart Subtotal</th>
										<td><span class="amount">Â£215.00</span></td>
									</tr>
									<tr class="shipping">
										<th>Shipping</th>
										<td>
											<ul>
												<li>
													<input type="radio">
													<label>
														Flat Rate: <span class="amount">Â£7.00</span>
													</label>
												</li>
												<li>
													<input type="radio">
													<label>Free Shipping:</label>
												</li>
												<li></li>
											</ul>
										</td>
									</tr>
									<tr class="order-total">
										<th>Order Total</th>
										<td><strong><span class="amount">Â£215.00</span></strong>
										</td>
									</tr>	 -->							
								</tfoot>  
							</table>
						</div>
						<div class="payment-method">
							<div class="payment-accordion">
								<div class="collapses-group">
									<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="headingThree">
												<h4 class="panel-title">
													<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
													 PayPal <img src="${pageContext.request.contextPath}/root/img/2.png" alt="payment" />
													</a>
												</h4>
											</div>
											<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
											  <div class="panel-body">
													<p>Pay via PayPal; you can pay with your credit card if you donât have a PayPal account.</p>
											  </div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="order-button-payment">
								<input type="button" value="Đặt hàng">
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
	<%@ include file="includes/footer.jsp" %>