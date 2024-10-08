<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="CSS/FAQ_display_User.css">
<link rel="stylesheet" type="text/css" href="CSS/header.css">
<link rel="stylesheet" type="text/css" href="CSS/footer.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FAQs</title>

</head>
<body>

<div class="container">


		<div class="header-bar">
			<ul class="slider-menu">
				<li><a href="homepage.jsp">Home</a></li>
				<li><a href="knowledgeBase.jsp">Knowledgebase</a></li>
				<li><a href="C_success.jsp">Feedback</a></li>
				<li><a href="FAQ_display_User.jsp">FAQs</a></li>
				<li>Services</li>
				<li><a href="InsertTicket.jsp">Raise a ticket</a></li>
				<li><a href="login.jsp">Login</a></li>
			</ul>
		</div>
	</div>
	<div class="welcome-note">
		<img src="images/logo1.jpg" class="logo logo-left" alt="Logo 1">
		<img src="images/logo2.jpg" class="logo logo-right" alt="Logo 2">
		
	</div>



    <h1>Frequently Asked Questions</h1>

    <div class="faq">
        <div class="question">Q: How do I reset my password?</div>
        <div class="answer">A: To reset your password, go to the login page and click on the "Forgot Password" link. Follow the instructions provided to reset your password.</div>
    </div>

    <div class="faq">
        <div class="question">Q: I'm having trouble logging in. What should I do?</div>
        <div class="answer">A: Please make sure you're using the correct username and password. If you're still having trouble, try resetting your password or contact our support team for further assistance.</div>
    </div>

    <div class="faq">
        <div class="question">Q: How can I update my account information?</div>
        <div class="answer">A:  Log in to your account, go to the "Settings" or "Account" section, and you'll find options to update your information like email address, contact number, and more.</div>
    </div>

    <div class="faq">
        <div class="question">Q: Is there a mobile app available?</div>
        <div class="answer">A: Currently, we do not have a mobile app available, but our website is mobile-friendly.</div>
    </div>
    
    <div class="faq">
        <div class="question">Q: I've forgotten my username. How can I retrieve it?</div>
        <div class="answer">A:  You can retrieve your username by clicking on the "Forgot Username" link on the login page. Follow the instructions provided to retrieve your username.</div>
    </div>

    <div class="faq">
        <div class="question">Q: How do I use this website?</div>
        <div class="answer">A: To use this website, simply navigate to the desired page and follow the instructions provided.</div>
    </div>

    <div class="faq">
        <div class="question">Q: Can I contact customer support?</div>
        <div class="answer">A: Yes, you can contact our customer support team at universityofmanchester@gmail.com.</div>
    </div>

    <div class="faq">
        <div class="question">Q: Can I change my address associated with the account?</div>
        <div class="answer">A: Yes, you can change your email address. Go to the "Settings" or "Account" section after logging in and find the option to update your email address.</div>
    </div>
    
    <div class="faq">
        <div class="question">Q: How to change my username?</div>
        <div class="answer">A:  You can retrieve your username by clicking on the "Forgot Username" link on the login page. Follow the instructions provided to retrieve your username.</div>
    </div>

    <div class="faq">
        <div class="question">Q: How do I contact support?</div>
        <div class="answer">A: To use this website, simply navigate to the desired page and follow the instructions provided.</div>
    </div>

    <div class="faq">
        <div class="question">Q: Can I change my contact number?</div>
        <div class="answer">A: Yes, you can contact our customer support team at universityofmanchester@gmail.com.</div>
    </div>

    <div class="faq">
        <div class="question">Q: How to reset my account?</div>
        <div class="answer">A: Yes, you can change your email address. Go to the "Settings" or "Account" section after logging in and find the option to update your email address.</div>
    </div>

    <script>
        document.querySelectorAll('.question').forEach(function(item) {
            item.addEventListener('click', function() {
                var answer = this.nextElementSibling;
                answer.style.display = (answer.style.display === 'none') ? 'block' : 'none';
            });
        });
    </script>
    
    
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
		<!-- <div class="footer-social-icon">
			<a href="page1.jsp">Page 1</a> <a href="page2.jsp">Page 2</a> <a
				href="page3.jsp">Page 3</a>
		</div> -->
	</div>

	</footer>

	
</body>
</html>