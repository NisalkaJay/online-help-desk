
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>home</title>
<link rel="stylesheet" type="text/css" href="CSS/footerCss.css">
<link rel="stylesheet" type="text/css" href="CSS/headerCSS.css">
</head>
<body>
	<div class="container">


		<form action="showprofileServlet" method="GET">
			<div class="profile-button">
				<input type="submit" value="Profile">
			</div>
		</form>




		<p class="lead">How can we help you today?</p>
		<textarea id="question" name="question" rows="4" cols="50"></textarea>

		<div class="header-bar">
			<ul class="slider-menu">
				<li>Home</li>
				<li><a href="knowledgeBase.jsp">Knowledgebase</a></li>
				<li><a href="C_success.jsp">Feedback</a></li>
				<li><a href="FAQ_display_User.jsp">FAQs</a></li>
				<li><a href="services.jsp">Services</a></li>
				<li><a href="InsertTicket.jsp">Raise a ticket</a></li>
				<li><a href="login.jsp">Login</a></li>
			</ul>
		</div>
	</div>
	<div class="welcome-note">
		<img src="images/logo1.jpg" class="logo logo-left" alt="Logo 1">
		<img src="images/logo2.jpg" class="logo logo-right" alt="Logo 2">
		<h2 class="un2">Welcome to the University of Manchester Student
			Support Desk!</h2>
		<p class="un2">We're here to assist you with any inquiries or
			issues you may have. Please feel free to reach out to us.</p>
	</div>


	<footer class="footer-section">
	<div class="container">
		<!-- Contact Information Section -->
		<div class="footer-cta pt-5 pb-5">
			<div class="row">
				<!-- Location -->
				<div class="col-xl-4 col-md-4 mb-30">
					<div class="single-cta">
						<i class="fas fa-map-marker-alt"></i>
						<div class="cta-text">
							<h4>Find us</h4>
							<span>University of Manchester, Oxford Road, Manchester,
								M13 9PL</span>
						</div>
					</div>
				</div>
				<!-- Phone Number -->
				<div class="col-xl-4 col-md-4 mb-30">
					<div class="single-cta">
						<i class="fas fa-phone"></i>
						<div class="cta-text">
							<h4>Call us</h4>
							<span>+44 (0)161 306 6000</span>
						</div>
					</div>
				</div>
				<!-- Email Address -->
				<div class="col-xl-4 col-md-4 mb-30">
					<div class="single-cta">
						<i class="far fa-envelope-open"></i>
						<div class="cta-text">
							<h4>Mail us</h4>
							<span>helpdesk@manchester</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-social-icon">
			<a href="PrivacyCookies.jsp">Privacy and cookies</a> 
			<a href="Terms.jsp">Terms</a> 
		</div>
	</div>

	</footer>
</html>