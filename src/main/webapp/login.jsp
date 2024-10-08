<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login Page in HTML with CSS Code Example</title>
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

<link rel="stylesheet" href="CSS/loginstyle.css">

</head>
<body>

	<div class="box-form">
		<div class="left">
			<div class="overlay">
				<h1>student help desk</h1>
				<p>University of Manchester</p>
				<span>
					<p>login with social media</p> <a href="#"><i
						class="fa fa-facebook" aria-hidden="true"></i></a> <a href="#"><i
						class="fa fa-twitter" aria-hidden="true"></i> Login with Twitter</a>
				</span>
			</div>
		</div>


		<div class="right">
			<form action="LoginServlet" method="post">
				<h5>Login</h5>
				<p>
					Don't have an account? <a href="register.jsp">Create Your
						Account</a> it takes less than a minute<br><br>
						
						<a href="Admin_Login.jsp">Admin Login</a>
				</p>
				<div class="inputs">
					<input type="text" placeholder="user name" name="username">
					<br> <input type="password" placeholder="password"
						name="password"> <br>
				</div>
				<input type="submit" value="Submit">
			</form>

			<br> <br>

			<div class="remember-me--forget-password">

				<label> <input type="checkbox" name="item" checked /> <span
					class="text-checkbox">Remember me</span>
				</label>
				<p>forget password?</p>
			</div>



		</div>

	</div>


</body>
</html>
