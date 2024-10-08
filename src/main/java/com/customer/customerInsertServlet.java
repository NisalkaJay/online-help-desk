package com.customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;


@WebServlet("/customerInsertServlet")
public class customerInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String dob = request.getParameter("DOB");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String gender = request.getParameter("gender");
		String faculty = request.getParameter("faculty");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean check;
		
		check = customerDBUtil.insertcustomer(name,dob,address,email,contact,gender,faculty,username,password);
		
		if( check == true) {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis1 = request.getRequestDispatcher("homepage.jsp");
			dis1.forward(request, response);
		}
		
	}

}
