/*insert servlet*/  

package fb_customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Customerinsert")
public class Customerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String Name = request.getParameter("name");
		String Email = request.getParameter("email");
		String Feedback = request.getParameter("feedback");
		
		boolean isTrue;
	
		isTrue = C_FeedbackDB_Util.insertcustomer(Name,Email,Feedback);
		
		request.setAttribute("Name",Name);
		request.setAttribute("Email",Email);
		request.setAttribute("Feedback",Feedback);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("C_success.jsp");
			dis.forward(request, response);
		}
		else{
			RequestDispatcher dis2 = request.getRequestDispatcher("C_unsuccess.jsp");
			dis2.forward(request, response);
		}
	
	
	}

}
