package com.dina;

import java.io.IOException;





import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/InsertTicketServelet")
public class InsertTicketSevelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ticketID = request.getParameter("ticketID"); // retrieving data as parameter and setting it to a string variable
		String firstName = request.getParameter("firstname");
	    String lastName = request.getParameter("lastname");
	    String email = request.getParameter("email");
	    String facultySchool = request.getParameter("facultyschool");
	    String contactNumber = request.getParameter("contactnumber");
	    String requestInquiryType = request.getParameter("inquiryType");
	    String inquirySubject = request.getParameter("inquirysubject");
	    String message = request.getParameter("message");
	    
	    boolean isTrue;
	    
	    isTrue = dinaDBUtil.insertTicket(ticketID,  firstName,  lastName,  email,
				 facultySchool,  contactNumber,  requestInquiryType,  inquirySubject,
				 message);
	    
	    HttpSession session = request.getSession(); //creating HttpSession object associated with the users current session
        session.setAttribute("ticketID", ticketID); // stores attribute in users session
	     	  
	    	  request.setAttribute("ticketID",ticketID); // setting attribute to HttpServletRequest object to pass values like user input and collecting data from request
			  request.setAttribute("firstName",firstName); 
			  request.setAttribute("lastName", lastName);
			  request.setAttribute("email", email); 
			  request.setAttribute("facultySchool",facultySchool); 
			  request.setAttribute("contactNumber", contactNumber);
			  request.setAttribute("inquiryType", requestInquiryType);
			  request.setAttribute("inquirySubject", inquirySubject);
			  request.setAttribute("message", message);
			 
			  if(isTrue == true) {
	    	RequestDispatcher dis = request.getRequestDispatcher("ticketProfil.jsp"); // forwards HttpServletRequest and HttpServletResponse to ticketProfil.jsp
	    	dis.forward(request, response);
	    }else {
	    	RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp"); //dis2 and dis for clear separation and reliability
	    	dis2.forward(request, response);
	    }
		
	}

}