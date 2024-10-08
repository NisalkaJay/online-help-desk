<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form>
    
        <c:forEach var="ticket" items="${ticketDetails}">

           
            <label for="ticketID">Ticket ID: </label>
            <input type="text" id="ticketID" name="ticketID" value="${ticket.ticketID}" readonly><br><br>

            <label for="firstName">First Name: </label>
            <input type="text" id="firstName" name="firstname" value="${ticket.firstName}" readonly><br><br>

            <label for="lastName">Last Name: </label>
            <input type="text" id="lastName" name="lastname" value="${ticket.lastName}" readonly><br><br>

            <label for="email">Email: </label>
            <input type="email" id="email" name="email" value="${ticket.email}" readonly><br><br>

            <label for="facultySchool">Faculty/School: </label>
            <input type="text" id="facultySchool" name="facultyschool" value="${ticket.facultySchool}" readonly><br><br>

            <label for="contactNumber">Contact Number: </label>
            <input type="text" id="contactNumber" name="contactnumber" value="${ticket.contactNumber}" readonly><br><br>

            <label for="inquiryType">Request Inquiry Type: </label>
            <input type="text" id="inquiryType" name="inquiryType" value="${ticket.inquiryType}" readonly><br><br>

            <label for="inquirySubject">Inquiry Subject: </label>
            <input type="text" id="inquirySubject" name="inquirysubject" value="${ticket.inquirySubject}" readonly><br><br>

            <label for="message">Message: </label>
            <textarea id="message" name="message" rows="4" cols="50" readonly>${ticket.message}</textarea><br><br>
            
        </c:forEach>
    </form>
	
</body>
</html>