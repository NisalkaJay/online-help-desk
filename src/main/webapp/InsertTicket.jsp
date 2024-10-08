<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Creating a Ticket</title>
<!-- <link rel="stylesheet" href="insertTicket.css"> -->

<style type="text/css">
body {
    background-color: rgb(128, 128, 128);
}
 .form-container {
        max-width: 600px;
        margin: auto;
        padding: 20px;
        border: 1px solid #ccc;
        background-color: #f9f9f9;
        border-radius: 10px;
        box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        box
        
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        font-weight: bold;
    }

    .form-group input, 
    .form-group select, 
    .form-group textarea {
        width: calc(100% - 20px);
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    .form-group select {
        width: 100%;
    }

    .form-group textarea {
        height: 150px;
        resize: none;
    }

    .form-group button {
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }

    .form-group button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body >
	
	
	 <div class="form-container">
	 <h1>Create Ticket</h1><br>
	 
	<form action="InsertTicketServelet" method="post">
		<label for="ticketID">Student ID:</label>
        <input type="text" id="ticketID" name="ticketID" ><br><br>

        <label for="first_name">First Name:</label>
        <input type="text" id="first_name" name="firstname" ><br><br>

        <label for="last_name">Last Name:</label>
        <input type="text" id="last_name" name="lastname" ><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" ><br><br>

        <label for="faculty_school">Faculty/School:</label>
        <input type="text" id="faculty_school" name="facultyschool" ><br><br>

        <label for="contact_number">Contact Number:</label>
        <input type="text" id="contact_number" name="contactnumber" ><br><br>

        <label for="request_inquiry_type">Request Inquiry Type:</label>
        <select id="inquiryType" name="inquiryType" >
            <option value="General">General</option>
            <option value="Admissions">Admissions</option>
            <option value="Financial Aid">Financial Aid</option>
        </select><br><br>

        <label for="inquiry_subject">Inquiry Subject:</label>
        <input type="text" id="inquiry_subject" name="inquirysubject" ><br><br>

        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="4" cols="50" ></textarea><br><br>

        <input type="submit" value="Insert Ticket">
	</form>
	</div>
	
</body>
</html>