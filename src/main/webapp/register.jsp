<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="CSS/register.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    
<title>Register</title>
</head>
<body>   

<script>
    function validateForm() {

        var email = document.getElementsByName("email")[0].value;
        var contact = document.getElementsByName("contact")[0].value;


        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            alert("Please enter a valid email address.");
            return false;
        }

        if (contact.length !== 10) {
            alert("Please enter a 10-digit contact number.");
            return false;
        }

        return true; 
    }
</script>

 
	
    <div class="container">
        <header>Registration</header>

        <form action="register" method="post" onsubmit="return validateForm()">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Personal Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Name</label>
                            <input type="text" placeholder="Enter your name" name="name" required>
                        </div>

                        <div class="input-field">
                            <label>Date of Birth</label>
                            <input type="date" placeholder="Enter birth date" name="DOB" required>
                        </div>
                        
                        <div class="input-field">
                            <label>Address</label>
                            <input type="text" placeholder="Enter your current address" name="address" required>
                        </div>

                        <div class="input-field">
                            <label>Email</label>
                            <input type="text" placeholder="Enter your email" name="email" required>
                        </div>

                        <div class="input-field">
                            <label>Mobile Number</label>
                            <input type="text" placeholder="Enter mobile number" name="contact" required >
                        </div>

                        <div class="input-field">
                            <label>Gender</label>
                            <select name="gender" required>
                                <option disabled selected>Select gender</option>
                                <option>Male</option>
                                <option>Female</option>
                                <option>Prefer not to say</option>
                            </select>
                        </div>
                        
                    </div>
                </div>

                <div class="details ID">
                    <span class="title">University Identity Details</span>

                    <div class="fields">
                    
                    	  <div class="input-field">
   						 <label>Faculty</label>
    					<select name="faculty" required>
        				<option disabled selected>Select Faculty</option>
        				<option>Computer</option>
        				<option>Management</option>
        				<option>Business</option>
    					</select>
						</div>

                        <div class="input-field">
                            <label>Username</label>
                            <input type="text" placeholder="Enter a username" name="username" required>
                        </div>
                        
                        <div class="input-field">
                            <label>Password</label>
                            <input type="password" placeholder="Enter a password" name="password" required>
                        </div>
                 
                    </div>

                    <button type="submit" class="nextBtn"  name="submit">
                        <span class="btnText">Register</span>
                        <i class="uil uil-navigator"></i>
                    </button>
                </div> 
            </div>
            
        </form>
    </div>

    
</body>
</html>

    



<!-- 

<form action="register"  method="post">

<input type="text" name="name" placeholder="fullname" class="box" required>
        
        <input type="text" name="username" placeholder="username" class="box" required>
        
        <input type="email" name="email" placeholder="enter email" class="box" required>
        
        <input type="password" name="password" placeholder="enter password" class="box" required>
        
        <input type="password" name="cpassword" placeholder="confirm password" class="box" required>
        
        <input type="text" name="contact" placeholder="enter contact" class="box" required>
        
        <input type="file" name="image" class="box" accept="image/jpg, image/jpeg, image/png">
        
        <input type="submit" name="submit" value="register now" class="btn">
 </form> -->






















