<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Feedback</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color:#b7d3df;
            text-align: center;
            margin:0;
            padding:0;
        }

        .container {
            background-color: #faf9f6;
            border: 1px solid #ccc;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            text-align: center;
             margin-top:120px;
             margin-bottom:50px;
        }

        form {
            text-align: left;
        }

        label {
            display: block;
            margin-top: 0px;
        }

        input[type="text"],
        input[type="date"] {
            width: 480px;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color:#00b4ab;
            color: #fff;
            border: none;
            border-radius: 15px;
            padding: 10px 20px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color:#016064; 
       
        }
    </style>
</head>
<body>

  	<h1>Add Feedback</h1>
    <div class="container">
     
         <form action="Customerinsert" method="GET" onsubmit="return validateForm()">
        <label for="name">Name</label>
        <input type="text" name="name" id="name" required>

        <label for="email">Email</label>
        <input type="text" name="email" id="email" required>

        <label for="feedback">Feedback</label>
        <input type="text" name="feedback" id="feedback" required>

        <input type="submit" name="submit" value="Submit">
    </form>
    </div>
    
    <script>
        function validateForm() {
            var nameInput = document.getElementById("name");
            var emailInput = document.getElementById("email");
            var feedbackInput = document.getElementById("feedback");

            if (!nameInput.value.trim() && !emailInput.value.trim() && !feedbackInput.value.trim()) {
                alert("Please fill in at least one field in the form.");
                return false; // Prevent the form from being submitted
            }

            // Email validation with a regular expression
            var emailPattern = /^\S+@\S+\.\S+$/;
            if (!emailPattern.test(emailInput.value)) {
                alert("Please enter a valid email address.");
                return false; // Prevent the form from being submitted
            }

            return true;
        }
    </script>
</body>
</html>

