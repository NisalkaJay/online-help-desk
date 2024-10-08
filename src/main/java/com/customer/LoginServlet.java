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




@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
		List<Customer>cusDetails = customerDBUtil.validate(username, password);
		
		if (!cusDetails.isEmpty()) {
			
            HttpSession session = request.getSession(); 
            session.setAttribute("loggedInUser", username); 
        }
		
		
		
		request.setAttribute("cusDetails",cusDetails);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
		
		dis.forward(request, response);
		
	}

}
