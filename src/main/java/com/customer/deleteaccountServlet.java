package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteaccountServlet")
public class deleteaccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("cusid");
boolean check;
		
		check = customerDBUtil.deletecustomer(id);
		
		if( check == true) {
			 
			RequestDispatcher dis = request.getRequestDispatcher("homepage.jsp");
			request.setAttribute("deleteSuccess", true);//pop up message
			dis.forward(request, response);
		}else {
			RequestDispatcher dis1 = request.getRequestDispatcher("homepage.jsp");
			dis1.forward(request, response);
			 
		}
	}

	}


