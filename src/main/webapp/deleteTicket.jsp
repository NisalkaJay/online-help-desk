<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Ticket</title>
<link rel="stylesheet" href="insertTicket.css">
</head>
<body>

<%
String ticketID = request.getParameter("ticketID");  // getting parameters and setting em to a string variable using jstl from a java page
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String email = request.getParameter("email");
String facultySchool = request.getParameter("facultySchool");
String contactNumber = request.getParameter("contactNumber");
String inquiryType = (String)request.getParameter("inquiryType");
String inquirySubject = request.getParameter("inquirySubject");
String message = request.getParameter("message");
%>

	<h1 align="center" margin-down="5px" >Ticket Deletion</h1>
	
    <form action="deleteTicketServlet" method="post">
                
        <label for="ticketID">Ticket ID:</label>
        <input type="text" id="ticketID" name="ticketID" value="<%= ticketID %>" readonly /> <br><br>

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
        <input type="text" id="inquiry_subject" name="inquirysubject" value="<%= inquirySubject %>" readonly/><br><br>

        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="4" cols="50" readonly><%= message %></textarea><br><br>
		<a href="deleteTicketServlet">
        <input type="submit" name="submit" value="Delete Ticket">
        </a>
    </form>
</body>
</html>