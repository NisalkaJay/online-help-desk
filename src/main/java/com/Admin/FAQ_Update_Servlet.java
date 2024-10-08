package com.Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/FAQ_Update_Servlet")
public class FAQ_Update_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String question = request.getParameter("question");
		String answer = request.getParameter("answer");
		
		boolean isTrue;
		
		isTrue = DB_Connect_Utill.updateFAQ(question, answer);
		
		
		 request.setAttribute("question", question);
		 request.setAttribute("answer", answer);
		 
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("A_Success.jsp");
			dis.forward(request, response);
			
		}
		
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("A_Unsuccess.jsp");
			dis.forward(request, response);
		}
	}
	
}
