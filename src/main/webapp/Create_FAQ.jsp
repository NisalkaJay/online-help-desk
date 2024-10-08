<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<link rel="stylesheet" href="CSS/Create_FAQ_Style.css"> 
<link rel="stylesheet" href="CSS/Admin_Dashboard_Style.css">

<title>Create FAQ</title>

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


<div class="container">
    <div class="text">
       Create FAQ
    </div>
    <form action="FAQ_Insert_Servlet" method="post">
       <div class="form-row">
          <div class="input-data">
             <input type="text" name="question" required>
             <div class="underline"></div>
             <label for="">Question</label>
          </div>
       </div>
       <div class="form-row">
          <div class="input-data">
             <input type="text" name="answer" required>
             <div class="underline"></div>
             <label for="">Answer</label>
          </div>
       </div>
       <div class="form-row">
       <div class="input-data area">
          <br/>
          <div class="underline"></div>
          <br />
          <div class="form-row submit-btn">
             <div class="input-data">
                <div class="inner"></div>
                <input type="submit" name="submit" value="create faq">
             </div>
          </div>
        </div>
        </div>
        
    </form>
    </div>


</body>
</html>