<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<title>Feedback</title>
<meta charset="ISO-8859-1">
<style>
		
		
        body {
      		font-family: Arial, sans-serif;
  			background-color:#b7d3df;
        }

        h1 {
            text-align: center;
        }
        strong{
        
        color:#000000;
        text-align:left;
        margin-left:50px;
        
        }
        .container {
           	background-color: #faf9f6;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            margin: 20px;
            margin-top: 50px;
            margin-left:390px;
            width:500px;
        }

        .details {
            margin: 10px 0;
        }

        .btn-container {
            text-align: center;
         
        }
        .btn_h{
        	width:400px;
        	background-color:#3a9bdc; 
        	margin-left:50px;
        }
        .btn_h:hover{
        	background-color:#1c2951;
        }
        .btn_f{
        	height:50px;
        	width:400px;
        	background-color:#00b4ab;
        	margin-left:50px; 
        }
        .btn_f:hover{
        	background-color:#016064; 
        }
        .btn_up{
        	width:190px;
			background-color:#9dc183;
			margin-left:50px;      
        }
        .btn_up:hover{
        	background-color:#8f9779;
        }
        .btn_del{
        	width:190px;
        	background-color:#ff4747;
        }
		.btn_del:hover{
			background-color:#710c04;
		}
        button {
           
            color: #fff;
            border: none;
            border-radius: 15px;
            padding: 10px 20px;
            margin: 5px;
            cursor: pointer;
         
        }
        input[type="text"],
        input[type="date"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin-top: 10px;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;


</style>
<title></title>
</head>
<body >
	<div class="centered">
		<div class="container">	
			<div class="details">
			<a href="feedbackinsert.jsp"><button class=btn_f>Add Feedback</button></a>
			
			</div>
		</div>
	</div>
			
	<div class="centered">
		<div class="container">	
			<div class="details">
						
			<c:set var="name" value="${Name}"/>
			<c:set var="email" value="${Email}"/>
			<c:set var="feedback" value="${Feedback}"/>

			<p><strong>Name :</strong> ${Name}</p>
			<p><strong>Email:</strong> ${Email}</p>
			<p><strong>Feedback:</strong> ${Feedback}</p> <br><br>
			
			
			<c:url value="C_update.jsp" var="update">
	
		<c:param name="name" value="${Name}"/>
		<c:param name="email" value="${Email}"/>
		<c:param name="feedback" value="${Feedback}"/>
		
	</c:url>
	
	<c:url value="C_delete.jsp" var="delete">
	
		<c:param name="name" value="${Name}"/>
		<c:param name="email" value="${Email}"/>
		<c:param name="feedback" value="${Feedback}"/>
		
	</c:url>	
			<a href="${update}"><button class=btn_up>Update</button></a>
			<a href="${delete}"><button class=btn_del>Delete</button></a><br><br>
			<a href="homepage.jsp"><button class=btn_h>Home</button></a>
			</div>
		</div>
	</div>	

	

		
</body>
</html>