<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

	<%@ include file="includes/header.jsp" %>
<div class="breadcrumbs-area mb-70">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumbs-menu">
					<ul>
						<li><a href="#">Trang chủ</a></li>
						<li><a href="#" class="active">Liên hệ</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- breadcrumbs-area-end -->
<!-- googleMap-area-start -->
<div class="map-area mb-70">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div id="googleMap1">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.7153934169305!2d106.66567001411633!3d10.756403862505884!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752efb1b8338b5%3A0x32b5b554b23b845b!2zMjQwIEFuIETGsMahbmcgVsawxqFuZywgUGjGsOG7nW5nIDksIFF14bqtbiA1LCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1571891378275!5m2!1svi!2s" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe></div>
			</div>
		</div>
	</div>
</div>
<!-- googleMap-end -->
<!-- contact-area-start -->
<div class="contact-area mb-70">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="contact-info">
					<h3>Thông tin liên hệ</h3>
					<ul>
						<li>
							<i class="fa fa-map-marker"></i>
							<span>Address: </span>
							240 An Duong Vuong F9 D5 Tp HCM VietName							
						</li>
						<li>
							<i class="fa fa-envelope"></i>
							<span>Phone: </span>
							(800) 0123 4567 890 
						</li>
						<li>
							<i class="fa fa-mobile"></i>
							<span>Email: </span>
							<a href="#">sieunhangaooneplus@gmail.com</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="contact-form">
					<h3><i class="fa fa-envelope-o"></i>Gửi 1 phản hồi</h3>
                    <form id="contact-form" action="#" method="post">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="single-form-3">
                                    <input name="name" type="text" placeholder="Name" required>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="single-form-3">
                                    <input name="email" type="email" placeholder="Email" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="single-form-3">
                                    <input name="subject" type="text" placeholder="Subject" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                 <div class="single-form-3">
                                    <textarea name="message" placeholder="Message" required></textarea>
                                    <button class="submit" type="button" id="sendFeedback">SEND FEEDBACK</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <p class="form-messege"></p>
				</div>	
			</div>
		</div>
	</div>
</div>

	<%@ include file="includes/footer.jsp" %>
<script>
	$("#sendFeedback").click(function(){
		var name    = $("input[name='name']").val();
		var email   = $("input[name='email']").val();
		var subject = $("input[name='subject']").val();
		var message = $("textarea[name='message']").val();
		
		if (!checkNull(name, email, subject, message)) {
			$.ajax({
				url: "Contact",
				type: "POST",
				data: {
					name : name,
					email: email,
					subject: subject,
					message: message
				},
				success: function(data){
					Swal.fire(
					  'Thành công!',
					  'Phản hồi của bạn đã được gửi thành công!',
					  'success'
					);
					$("input[name='name']").val("");
					$("input[name='email']").val("");
					$("input[name='subject']").val("");
					$("textarea[name='message']").val("");
				},
				error: function(msg){
					Swal.fire({
					  title: 'Đã xảy ra lỗi vui lòng thử lại sau',
					  animation: false,
					  customClass: {
					    popup: 'animated tada'
					  }
					});
				}
			})
		} else {
			Swal.fire({
			  title: 'Vui lòng nhập đầy đủ thông tin',
			  animation: false,
			  customClass: {
			    popup: 'animated tada'
			  }
			})
		}
	});
	
	function checkNull(a, b, c, d){
		if (!a || !b || !c || !d) return true;
		return false;
	}
	
</script>