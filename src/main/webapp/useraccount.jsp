
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="CSS/useraccountcss.css">
<title>profile</title>
</head>
<body>


	<c:forEach var="cus" items="${cusDetails}">

	 <div class="profile-container">
	 <form>
	 
	<c:set var="username" value="${cus.username}"/>
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="contact" value="${cus.phone}"/>
	<c:set var="dob" value="${cus.dob}"/>
	<c:set var="password" value="${cus.password}"/>
	<c:set var="faculty" value="${cus.faculty}"/>
	<c:set var="gender" value="${cus.gender}"/>
	<c:set var="address" value="${cus.address}"/>
	
	
	 
        <div class="profile-header">
            <img class="profile-picture" src="background.jpg" alt="Profile Picture">
            
            <p class="profile-username">${cus.username}</p>
        </div>
           <div class="form-group">
                <label for="firstName">Username</label>
                <input type="text" id="username" name="username" value="${cus.username}" readonly>
            </div>
           <div class="form-group">
                <label for="firstName">user ID</label>
                <input type="text" id="firstName" name="cusid" value="${cus.id}" readonly>
            </div>
 		  <div class="form-group">
                <label for="firstName">Name</label>
                <input type="text" id="firstName" name="name" value="${cus.name}" readonly >
            </div>       
            <div class="form-group">
                <label for="lastName">Date of Birth</label>
                <input type="text" id="lastName" name="dob" value="${cus.dob}" readonly>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" id="email" name="email" value="${cus.email}" readonly>
            </div>
            <div class="form-group">
                <label for="contact">Contact</label>
                <input type="text" id="contact" name="contact" value="${cus.phone}" readonly>
            </div>
            <div class="form-group">
                <label for="Address">Address</label>
                <input type="text" id="address" name="address" value="${cus.phone}" readonly>
            </div>
            <div class="form-group">
                <label for="Gender">Gender</label>
                <input type="text" id="Gender" name="gender" value="${cus.gender}" readonly>
            </div>
            <div class="form-group">
                <label for="Password">Password</label>
                <input type="Password" id="Password" name="password" value="${cus.password}" readonly>
            </div>
            <div class="form-group">
                <label for="Faculty">Faculty</label>
                <input type="text" id="Faculty" name="faculty" value="${cus.faculty}" readonly>
            </div>
           
            
            <c:url value="updateprofile.jsp" var="profileupdate">
            
            <c:param name="username" value="${username}"/>
            <c:param name="dob" value="${dob}"/>
            <c:param name="id" value="${id}"/>
            <c:param name="email" value="${email}"/>
            <c:param name="name" value="${name}"/>
            <c:param name="contact" value="${contact}"/>
            <c:param name="faculty" value="${faculty}"/>
            <c:param name="password" value="${password}"/>
            <c:param name="gender" value="${gender}"/>
            <c:param name="address" value="${address}"/>
            </c:url>
            
            <a href="${profileupdate}">
                <input type="button" class="btn save-button" value="Edit profile">
                </a>
                
            <c:url value="deleteaccount.jsp" var="cusdelete">
            
            <c:param name="username" value="${username}"/>
            <c:param name="dob" value="${dob}"/>
            <c:param name="id" value="${id}"/>
            <c:param name="email" value="${email}"/>
            <c:param name="name" value="${name}"/>
            <c:param name="contact" value="${contact}"/>
            <c:param name="faculty" value="${faculty}"/>
            <c:param name="password" value="${password}"/>
            <c:param name="gender" value="${gender}"/>
            <c:param name="address" value="${address}"/>
            
            </c:url>
                <a href="${cusdelete}">
                <input type="button" class="btn save-button" value="Delete account" name="delete">
                </a>
                
                <a href="homepage.jsp">
                <input type="button" class="btn save-button" value="Home">
            </a>
            
            <form action="LogoutServlet" method="post">
    <input type="submit" value="Logout" class="btn save-button">
</form>
            
            
            

       </form>
    </div> 
   
    
     </c:forEach>
     
    </body>
</html>
