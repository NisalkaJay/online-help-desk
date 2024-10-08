<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update was Successful</title>
<link rel="stylesheet" href="insertTicket.css">

</head>
<style>
.receipt-box {
    background-color: #fff;
    border: 1px solid #ccc;
    padding: 20px;
    width: 50%;
    margin: 0 auto;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.receipt-box form label, .receipt-box form input, .receipt-box form textarea, .receipt-box form select {
    display: block;
    margin-bottom: 10px;
}
</style>
<body>
	<h1>Update was Successful</h1><br><br>
	
<%
String ticketID = request.getParameter("ticketID");
String firstName = request.getParameter("firstname");
String lastName = request.getParameter("lastname");
String email = request.getParameter("email");
String facultySchool = request.getParameter("facultyschool");
String contactNumber = request.getParameter("contactnumber");
String inquiryType = (String)request.getParameter("inquiryType");
String inquirySubject = request.getParameter("inquirySubject");
String message = request.getParameter("message");
%>

	<h1 align="center" margin-down="5px">Update Ticket</h1>
	
	<div class="receipt-box">
    <form>
    	
    	 
        <label for="ticketID">Student ID:</label>
        <input type="text" id="ticketID" name="ticketID" value="<%= ticketID %>" readonly/> <br><br>

        <label for="first_name">First Name:</label>
        <input type="text" id="first_name" name="firstname" value="<%= firstName %>" readonly/> <br><br>

        <label for="last_name">Last Name:</label>
        <input type="text" id="last_name" name="lastname" value="<%= lastName %>" readonly/> <br><br>

        <label for="email">Email:</label>
        <input type="text" id="email" name="email" value="<%= email %>" readonly/><br><br>

        <label for="faculty_school">Faculty/School:</label>
        <input type="text" id="faculty_school" name="facultyschool" value="<%= facultySchool %>" readonly/><br><br>

        <label for="contact_number">Contact Number:</label>
	    <input type="text" id="contact_number" name="contactnumber" value="<%= contactNumber %>" readonly/><br><br>
		
		
        <label for="inquiryType">Request Inquiry Type:</label>
        <select id="inquiryType" name="inquiryType" value="<%= inquiryType %>" disabled>
            <option value="General" <c:if test='${inquiryType == "General"}'>selected</c:if>>General</option>
            <option value="Admissions" <c:if test='${inquiryType == "Admissions"}'>selected</c:if>>Admissions</option>
            <option value="Financial Aid" <c:if test='${inquiryType == "Financial Aid"}'>selected</c:if>>Financial Aid</option>
        </select><br><br> 
        <label for="inquiry_subject">Inquiry Subject:</label>
        <input type="text" id="inquiry_subject" name="inquirysubject" value="<%= inquirySubject %>"readonly /><br><br>

        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="4" cols="50" readonly><%= message %></textarea><br><br>
	
		
    </form>
    </div>
<a href="homepage.jsp">
        <input type="button" name="submit" value="Home"><br><br> 
         </a>
<form action="#" method="post">
    <input type="hidden" name="ticketID" value="<%= request.getParameter("ticketID") %>">
    Ticket ID: <%= request.getParameter("ticketID") %>
</form>

</body>
</html>