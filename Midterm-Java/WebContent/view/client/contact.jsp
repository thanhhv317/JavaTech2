	<%@ include file="includes/header.jsp" %>
<div class="breadcrumbs-area mb-70">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumbs-menu">
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#" class="active">contact</a></li>
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
					<h3>Contact info</h3>
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
					<h3><i class="fa fa-envelope-o"></i>Leave a Feedback</h3>
                    <form id="contact-form" action="mail.php" method="post">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="single-form-3">
                                    <input name="name" type="text" placeholder="Name">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="single-form-3">
                                    <input name="email" type="email" placeholder="Email">
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="single-form-3">
                                    <input name="subject" type="text" placeholder="Subject">
                                </div>
                            </div>
                            <div class="col-lg-12">
                                 <div class="single-form-3">
                                    <textarea name="message" placeholder="Message"></textarea>
                                    <button class="submit" type="submit">SEND FEEDBACK</button>
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