package com.dina;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateTicketServlet")
public class UpdateTicketServlet extends HttpServlet {
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

        try {
            isTrue = dinaDBUtil.updateTicket(ticketID, firstName, lastName, email, facultySchool, contactNumber, requestInquiryType, inquirySubject, message);

            if (isTrue == true) {
                RequestDispatcher dis = request.getRequestDispatcher("updateSuccess.jsp"); // setting attribute to HttpServletRequest object to pass values like user input and collecting data from request
                dis.forward(request, response);
            } else {
            	
                RequestDispatcher dis2 = request.getRequestDispatcher("updateUnSuccess.jsp");
                dis2.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            RequestDispatcher errorDis = request.getRequestDispatcher("error.jsp");
            errorDis.forward(request, response);
        }
    }
}
