<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Feedback</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color:#b7d3df;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            margin-top:120px;
    	    margin-bottom:50px;
            
        }

        form {
        	margin-top:300px;
            max-width: 500px;
            margin: 0 auto;
            background-color: #faf9f6;
            padding: 20px;
            border: 1px solid #ccc;
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
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: #ff4747;
            color: #fff;
            border: none;
            border-radius: 15px;
            padding: 10px 15px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #710c04;
        }
    </style>
</head>
<body>

        <% String Name = request.getParameter("name"); %>
        <% String Email = request.getParameter("email"); %>
        <% String Feedback = request.getParameter("feedback"); %>



    <h1>Delete Feedback</h1>
    <form action="C_deleteservlet" method="Get">


        <label for="name">Name:</label>
        <input type="text" name="name" value="<%= Name %>" readonly>

        <label for="email">Email:</label>
        <input type="text" name="email" value="<%= Email %>" readonly>

        <label for="phone">Phone number:</label>
        <input type="text" name="feedback" value="<%= Feedback %>" readonly>


        <input type="submit" name="submit" value="Delete">
    </form>
</body>
</html>
