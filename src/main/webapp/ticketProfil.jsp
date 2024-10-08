<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Ticket</title>
<link rel="stylesheet" href="insertTicket.css">
</head>

	 <style>
        .ticket-details {
            border: 1px solid #ccc;
            padding: 10px;
            width: 350px;
            background-color: #fff;
            color: #000;
            margin: 20px auto;
            border-radius: 10px;
        }

        .ticket-details label,
        .ticket-details input,
        .ticket-details textarea {
            display: block;
            margin-bottom: 10px;
            width: 100%;
        }

        .ticket-details textarea {
            height: 100px;
        }

        .ticket-details input[type="text"],
        .ticket-details input[type="email"],
        .ticket-details textarea {
            border: 1px solid #ccc;
            padding: 5px;
            font-size: 16px;
            border-radius: 5px;
        }

        .ticket-details input[type="text"]:read-only,
        .ticket-details input[type="email"]:read-only,
        .ticket-details textarea:read-only {
            background-color: #f2f2f2;
            border: none;
        }

        .btn-submit {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>

<body>

<h1>Ticket details</h1>
    
    
        <div class="ticket-details">
        <form action="updateTicket" method="post">

            <label for="ticketID">Ticket ID: </label>
            <input type="text" id="ticketID" name="ticketID" value="${ticketID}" readonly>

            <label for="firstName">First Name: </label>
            <input type="text" id="firstName" name="firstname" value="${firstName}" readonly>

            <label for="lastName">Last Name: </label>
            <input type="text" id="lastName" name="lastname" value="${lastName}" readonly>

            <label for="email">Email: </label>
            <input type="email" id="email" name="email" value="${email}" readonly>

            <label for="facultySchool">Faculty/School: </label>
            <input type="text" id="facultySchool" name="facultyschool" value="${facultySchool}" readonly>

            <label for="contactNumber">Contact Number: </label>
            <input type="text" id="contactNumber" name="contactnumber" value="${contactNumber}" readonly>

            <label for="inquiryType">Request Inquiry Type: </label>
            <input type="text" id="inquiryType" name="inquiryType" value="${inquiryType}" readonly>

            <label for="inquirySubject">Inquiry Subject: </label>
            <input type="text" id="inquirySubject" name="inquirysubject" value="${inquirySubject}" readonly>

            <label for="message">Message: </label>
            <textarea id="message" name="message" rows="4" cols="50" readonly>${message}</textarea>

        </form>
    </div>



    <c:url value="updateTicket.jsp" var="ticketUpdate"> <!-- creating url -->
        <c:param name="id" value="${id}" />
        <c:param name="ticketID" value="${ticketID}" />    <!-- taking data as parameters to updateTicket.jsp-->
        <c:param name="firstName" value="${firstName}" />
        <c:param name="lastName" value="${lastName}" />
        <c:param name="email" value="${email}" />
        <c:param name="facultySchool" value="${facultySchool}" />
        <c:param name="contactNumber" value="${contactNumber}" />
        <c:param name="inquiryType" value="${inquiryType}" />
        <c:param name="inquirySubject" value="${inquirySubject}" />
        <c:param name="message" value="${message}" />
    </c:url>

    <a href="${ticketUpdate}">
        <input type="button" name="update" value="Update ticket">
    </a><br><br>

    <c:url value="deleteTicket.jsp" var="ticketdelete"> <!-- creating url -->
        <c:param name="id" value="${id}" />
        <c:param name="ticketID" value="${ticketID}" />       <!-- taking data as parameters to deleteTicket.jsp-->
        <c:param name="firstName" value="${firstName}" />
        <c:param name="lastName" value="${lastName}" />
        <c:param name="email" value="${email}" />
        <c:param name="facultySchool" value="${facultySchool}" />
        <c:param name="contactNumber" value="${contactNumber}" />
        <c:param name="inquiryType" value="${inquiryType}" />
        <c:param name="inquirySubject" value="${inquirySubject}" />
        <c:param name="message" value="${message}" />
    </c:url>

    <a href="${ticketdelete}">
        <input type="button" name="delete" value="Delete Ticket">
    </a><br><br>
    
    <a href="ticketProfil.jsp">
		<input type="button" value="Go to home">
	</a>
	
	
	
</body>
</html>
