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
									<input type="text" id="cusName" placeholder="">
									<p style="color:red" id="errorName"></p>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="checkout-form-list">
									<label>Số điện thoại<span class="required">*</span></label>										
									<input type="text" id="cusPhone" placeholder="">
									<p style="color:red" id="errorPhone"></p>
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="checkout-form-list">
									<label>Địa chỉ</label>
									<input type="text" id="cusAddress" placeholder="">
									<p style="color:red" id="errorAddress"></p>
								</div>
							</div>			
						</div>
						<div class="different-address">
							
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
								<input type="button" id="btnOrder" value="Đặt hàng">
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
	<%@ include file="includes/footer.jsp" %>
<script>
//group data for orderDetail
	function groupCart() {
	    var result = [];
	    let max = localStorage.length;
	    for (let i = 0; i < max; ++i) {
	        var key = localStorage.key(i);
	        if (key.charAt(0) == 'c' && key.charAt(1) == 'a') {
	            result.push(localStorage.getItem(key));
	        }
	    }
	    return result;
	}
	function validate(cusName,cusPhone,cusAddress){
		let isNoError=true;
		if (cusName.length==0){
			isNoError=false;
			$("#errorName").text("Họ tên không được để trống");
		}
		else{
			$("#errorName").text("");
		}
		if (cusPhone.length==0){
			isNoError=false;
			$("#errorPhone").text("Số điện thoại không được để trống");
			
		}
		else{
			
			let pattern=/0[3789][0-9]{8}/;
			if (pattern.test(cusPhone)){
				$("#errorPhone").text("");
			}
			else{
				isNoError=false;
				$("#errorPhone").text("Số điện thoại không hợp lệ");
			}
		}
		if (cusAddress.length==0){
			isNoError=false;
			$("#errorAddress").text("Địa chỉ không được để trống");
		}
		else{
			$("#errorAddress").text("");
		}
		return isNoError;
	}
	
	$("#btnOrder").click(function(){
		let cart=groupCart();
		if (cart.length>0){
			let cusName=$("#cusName").val();
			let cusPhone=$("#cusPhone").val();
			let cusAddress=$("#cusAddress").val();
			let note=$("#checkout-mess").val();
			cart = "["+cart+"]";
			if(validate(cusName,cusPhone,cusAddress)){
				$.ajax({
			        url : "${pageContext.request.contextPath}/Checkout",
			        type : "post",
			        data : {
			        	 name:cusName,
			        	 phone:cusPhone,
			        	 address:cusAddress,
			        	 note:note,
			        	 total:getTotalPrice(),
			             cart:cart
			        },
			        success : function (result){
			            handleResult(result);
			        }
			    });
			}
		}
		else{
			Swal.fire({
				type:'error',
				title:"Không thể đặt hàng",
				text:"Giỏ hàng của bạn đang trống"
			})
		}
	});
	function handleResult(result){
		if(result.indexOf("error")!=-1){
			result=result.substring(6);
			Swal.fire({
				  type: 'error',
				  title: 'Đã xảy ra lỗi',
				  text: result
				})
		}
		else if(result!=0){
			Swal.fire(
					  'Đặt hàng thành công!',
					  'Mã đơn hàng của bạn là '+result+". Xin vui lòng ghi lại mã đơn hàng",
					  'success'
					).then(()=>{
						localStorage.clear();
						window.location.href = "${pageContext.request.contextPath}/";
					});
		}
	}
</script>