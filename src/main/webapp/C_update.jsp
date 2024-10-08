<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color:#b7d3df;
            margin: 0;
            padding: 0;
        
        }
        h1{
        text-align: center;
        margin-top:120px;
        margin-bottom:50px;

        }

        form {
            width: 80%;
            max-width: 500px;
            margin: 0 auto;
            background-color: #faf9f6;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        label {
            display: block;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="date"] {
            width: 480px;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color:#9dc183; 
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin-top: 10px;
            border-radius: 15px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color:#8f9779;
        }
    </style>
</head>
<body>

<% String Name = request.getParameter("name"); %>
<% String Email = request.getParameter("email"); %>
<% String Feedback = request.getParameter("feedback"); %>
<h1> Update Feedback</h1>

	<form action="C_updateservlet" method="GET" onsubmit="return validateForm()">
        <label for="name">Name:</label>
        <input type="text" name="name" value="<%= Name %>" readonly><br>

        <label for="email">Email:</label>
        <input type="text" name="email" id="emailField" value="<%= Email %>"><br>

        <label for="feedback">Feedback:</label>
        <input type="text" name="feedback" value="<%= Feedback %>"><br>

        <input type="submit" name="submit" value="Submit"><br>
    </form>

<script>
        function validateForm() {
            var nameInput = document.querySelector('input[name="name"]');
            var emailInput = document.getElementById("emailField");
            var feedbackInput = document.querySelector('input[name="feedback"]');

            // Email validation with a regular expression
            var emailPattern = /^\S+@\S+\.\S+$/;
            if (!emailPattern.test(emailInput.value)) {
                alert("Please enter a valid email address.");
                return false; // Prevent the form from being submitted
            }

            // Check if all fields are filled
            if (nameInput.value.trim() === '' || emailInput.value.trim() === '' || feedbackInput.value.trim() === '') {
                alert("Please fill in all fields in the form.");
                return false; // Prevent the form from being submitted
            }

            return true; 
        }
    </script>

</body>
</html>