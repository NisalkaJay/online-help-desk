<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="CSS/Admin_Login_Style.css">

<title>Admin Login</title>

</head>

<body>

	<div class="login-container">
        <form class="login-form" id="AdminLoginForm">
            <h1>Admin Login</h1>
            <label for="username">Username</label>
            <input type="text" id="username" name="username"  placeholder="Enter your Username" required>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter your Password" required>
            <button type="button" name="submit" value="Login" onclick="ValidateAdminLogin()" >Login</button>
        </form>
        
         <p id="loginMessage"></p>
   		 <script src="js/Admin_Login_JS.js"></script>
    
    </div>

</body>

</html>