<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Update</title>

<link rel="stylesheet" href="CSS/Update_FAQ_Style.css">
<link rel="stylesheet" href="CSS/Admin_Dashboard_Style.css">

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
               Update FAQ
            </div>

            <%
            String question = request.getParameter("question");
            String answer = request.getParameter("answer");
            %>
            
            <form action="FAQ_Update_Servlet" method="post">
               <div class="form-row">
                  <div class="input-data">
                     <input type="text" name="question" value="<%= question %>" readonly required>
                     <div class="underline"></div>
                     <label for="">Question</label>
                  </div>
               </div>
               <div class="form-row">
                  <div class="input-data">
                     <input type="text" name="answer" value="<%= answer %>" required>
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
                        <input type="submit" name="submit" value="Update FAQ">
                     </div>
                  </div>
                </div>
                </div>
                
            </form>
            </div>

</body>
</html>