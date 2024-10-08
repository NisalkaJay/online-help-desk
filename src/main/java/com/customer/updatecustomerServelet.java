package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updatecustomerServelet")
public class updatecustomerServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username  = request.getParameter("uname");
		String id  = request.getParameter("cusid");
		String name = request.getParameter("name");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String password = request.getParameter("password");
		String faculty = request.getParameter("faculty");
		
		boolean check;
		
		check = customerDBUtil.updatecustomer( username, id, name,  email, contact,  password,  faculty,  gender,  address,  dob);
		
		if( check == true) {
			RequestDispatcher dis = request.getRequestDispatcher("homepage.jsp");
			

			dis.forward(request, response);
		}else {
			RequestDispatcher dis1 = request.getRequestDispatcher("updateprofile.jsp");
			dis1.forward(request, response);
		}
	}

}
