<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="insertTicket.css">

<%-- <script type="text/javascript">
    	function redirectToUpdateTicket() {
        	// Get the values from request attributes
        	var ticketID = '<%= request.getAttribute("ticketID") %>';
        	var firstName = '<%= request.getAttribute("firstName") %>';
        	var lastName = '<%= request.getAttribute("lastName") %>';
        	var email = '<%= request.getAttribute("email") %>';
        	var facultySchool = '<%= request.getAttribute("facultySchool") %>';
        	var contactNumber = '<%= request.getAttribute("contactNumber") %>';
        	var requestInquiryType = '<%= request.getAttribute("requestInquiryType") %>';
        	var inquirySubject = '<%= request.getAttribute("inquirySubject") %>';
        	var message = '<%= request.getAttribute("message") %>';

        	// Redirect to updateTicket.jsp
        	window.location = "updateTicket.jsp" +
            	"?ticketID=" + ticketID +
            	"&firstName=" + firstName +
            	"&lastName=" + lastName +
            	"&email=" + email +
            	"&facultySchool=" + facultySchool +
            	"&contactNumber=" + contactNumber +
            	"&inquiryType=" + requestInquiryType +
            	"&inquirySubject=" + inquirySubject +
            	"&message=" + message;
    	}
	</script> --%>
</head>
<body>
	<h1>Unsuccess</h1><br><br>
	
<%-- 	<p>Ticket ID: <%= request.getAttribute("ticketID") %></p>
    <p>First Name: <%= request.getAttribute("firstName") %></p>
    <p>Last Name: <%= request.getAttribute("lastName") %></p>
    <p>Email: <%= request.getAttribute("email") %></p>
    <p>Faculty/School: <%= request.getAttribute("facultySchool") %></p>
    <p>Contact Number: <%= request.getAttribute("contactNumber") %></p>
    <p>Request Inquiry Type: <%= request.getAttribute("requestInquiryType") %></p>
    <p>Inquiry Subject: <%= request.getAttribute("inquirySubject") %></p>
    <p>Message: <%= request.getAttribute("message") %></p> --%>
</body>
</html>