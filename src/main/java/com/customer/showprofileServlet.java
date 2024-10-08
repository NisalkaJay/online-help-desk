package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/showprofileServlet")
public class showprofileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	HttpSession session = request.getSession();
        String username = (String)session.getAttribute("loggedInUser");

        if (username != null)
        {
			/* System.out.println("Username retrieved from session: " + username); */
            try {
                List<Customer> cusDetails = customerDBUtil.getCustomerDetailsByUsername(username);
				/* System.out.println("Customer Details: " + cusDetails); */
                request.setAttribute("cusDetails", cusDetails);
                request.getRequestDispatcher("profile.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
                
            }
        } else {
           
            response.sendRedirect("login.jsp"); 
        }
    }
}
