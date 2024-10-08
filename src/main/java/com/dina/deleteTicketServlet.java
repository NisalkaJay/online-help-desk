package com.dina;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteTicketServlet")
public class deleteTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ticketID = request.getParameter("ticketID"); // retrieving data as parameter and setting it to a string variable
    	boolean isTrue;
    	 	
    	try {
            isTrue = dinaDBUtil.deleteTicket(ticketID);

            if (isTrue) {
                RequestDispatcher dis = request.getRequestDispatcher("deleteSuccess.jsp");  // setting attribute to HttpServletRequest object to pass values like user input and collecting data from request
                dis.forward(request, response);
            } else {
                RequestDispatcher dis2 = request.getRequestDispatcher("deleteUnSuccess.jsp");
                dis2.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            RequestDispatcher errorDis = request.getRequestDispatcher("error.jsp");
            errorDis.forward(request, response);
        }
		
	}

}
