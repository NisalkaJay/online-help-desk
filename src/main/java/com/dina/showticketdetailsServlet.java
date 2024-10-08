package com.dina;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/showticketdetailsServlet")
public class showticketdetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String ticketID = (String) session.getAttribute("ticketID");

        if (ticketID != null) {
            try {
                List<ticket> ticketDetails = dinaDBUtil.getTicketDetails(ticketID); //creating  a list object and getting parameter ticketID from DBUtil file

                request.setAttribute("ticketDetails", ticketDetails); // setting attribute to HttpServletRequest object to pass values like user input and collecting data from request
                request.getRequestDispatcher("viewTicket.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
                
            }
        } else {
            response.sendRedirect("success.jsp");
        }
    }
    
    
}
