<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Chăm sóc khách hàng</title>
</head>
<body>
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title></title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.message1').fadeOut('slow', function(c){
	  		$('.message1').remove();
		});
	});	  
});
</script>				
</head>
<body>
  <!--header-->
  <jsp:include page="header.jsp"></jsp:include>
   <!--header-->

		<div class="container">
			<div class="contact">
			<h2 class=" contact-in">Chăm sóc khách hàng</h2>
				
				<div class="col-md-6 contact-top">
					<h3>Thông tin</h3>
					<div class="map">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.122723562923!2d106.8044371152558!3d10.878269360279095!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174d8a5f4e477e9%3A0x29d5aeb365cee20b!2sKTX%20Khu%20A%20%C4%90HQG%20TP.HCM!5e0!3m2!1svi!2s!4v1623316787766!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
					</div>
					
					
					<ul class="social ">
					<li><span><i > </i>Developer: SYN-Team</span></li>
						<li><span><i > </i>Khu Phố 6, Đông Hòa, Dĩ An, Bình Dương</span></li>
						<li><span><i class="down"> </i>+(84) 976 198 271</span></li>
						<li><a><i class="mes"> </i>SYNShop@gmail.com</a></li>
					</ul>
				</div>
				<div class="col-md-6 contact-top">
					<h3>Ban muốn làm việc với tôi?</h3>
						<div>
							<span>Tên của bạn </span>		
							<input type="text" value="" >						
						</div>
						<div>
							<span>Email của bạn </span>		
							<input type="text" value="" >						
						</div>
						<div>
							<span>Vấn đề</span>		
							<input type="text" value="" >	
						</div>
						<div>
							<span>Tin nhắn của bạn</span>		
							<textarea> </textarea>	
						</div>
						<input type="submit" value="Gửi" >	
				</div>
			<div class="clearfix"> </div>
		</div>
	</div>
		<!---->
	
<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- footer -->
</body>
</html>
</body>
</html>