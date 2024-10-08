package fb_customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/C_deleteservlet")
public class C_deleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String Name = request.getParameter("name");
		boolean isTrue;
		
		isTrue = C_FeedbackDB_Util.deleteCustomer(Name);
		
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("C_success.jsp");
			dispatcher.forward(request, response);
			
		}
		else {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("C_unsuccess.jsp");
			dispatcher.forward(request, response);
		
		}
	}

}
