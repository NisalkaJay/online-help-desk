<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<link rel="stylesheet" href="CSS/Success_Style.css">
<link rel="stylesheet" href="CSS/Admin_Dashboard_Style.css">

<title>Success</title>

</head>

<body>
	
		<div id="sidebar">
        <ul>
            <li><a href="Admin_Dashboard.jsp">Dashboard</a></li>
            <li><a href="#">Users</a></li>
            <li><a href="#">Tickets</a></li>
            <li><a href="Create_FAQ.jsp">FAQs</a></li>
            <li><a href="#">Manage</a></li>
            <li><a href="#">Feedbacks</a></li>
            <li><a href="#">Security</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="Admin_Login.jsp">Logout</a></li>
        </ul>
   		</div>
   		
	    <div id="content">
	        <h1></h1>
	    </div>
	    
    	<script src="js/Admin_Dashboard_JS.js"></script>
	
	
	<table>

        <tr>
            <th scope="col">Question</th>
            <th scope="col">Answer</th>
            <th scope="col">Action</th>
        </tr>

        <tr>

		    <c:set var="question" value="${question}"/>
		    <c:set var="answer" value="${answer}"/>

            <td> ${question} </td>
            <td> ${answer} </td>

            <td class="action-buttons">

                <c:url value="Update_FAQ.jsp" var="faqupdate">
	
		            <c:param name="question" value="${question}"/>
		            <c:param name="answer" value="${answer}"/>
		
	            </c:url>

                <a href="${faqupdate}"><button class="update-button" name="update">Update</button></a>


                <c:url value="Delete_FAQ.jsp" var="faqdelete">
	
		            <c:param name="question" value="${question}"/>
		            <c:param name="answer" value="${answer}"/>
		
	            </c:url>

                <a href="${faqdelete}"><button class="delete-button" name="delete">Delete</button></a>


				<a href="Create_FAQ.jsp"><button class="goback-button" name="goback">GoBack</button></a>
				
            </td>

       	 </tr>

    </table>
    
</body>

</html>