package com.Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FAQ_Delete_Servlet")
public class FAQ_Delete_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String question = request.getParameter("question");
		
		boolean isTrue;
		
		isTrue = DB_Connect_Utill.deleteFAQ(question);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("Delete_Message_Popup.jsp");
			dis.forward(request, response);
			
		}
		
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("A_Unsuccess.jsp");
			dis.forward(request, response);
			
		}
	}

}
