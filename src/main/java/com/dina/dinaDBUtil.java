package com.dina;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class dinaDBUtil {
	
	
	private static Connection con = null;
	private static Statement stmt = null;
	
	

	public static boolean insertTicket(String ticketID, String firstName, String lastName, String email,
			String facultySchool, String contactNumber, String requestInquiryType, String inquirySubject,
			String message) {


			boolean isSuccess = false;


		
	    
			try {
	        con = DBConnect.getConnection(); // getting db connection
	        stmt = con.createStatement();
	        
	        String insertQuery = "INSERT INTO ticket_info (ticketID, firstName, lastName, email, facultySchool, contactNumber, requestInquiryType, inquirySubject, message) " +
	                "VALUES ('" + ticketID + "', '" + firstName + "', '" + lastName + "', '" + email + "', '" + facultySchool + "', '" + contactNumber + "', '" + requestInquiryType + "', '" + inquirySubject + "', '" + message + "')";   
	        int rs = stmt.executeUpdate(insertQuery);

	        
	        if (rs > 0) {
	        	
	        	isSuccess = true;
	        } else {
	        	
	        	isSuccess = false;
	        }
	        
	        
	    } catch (Exception e) {
	    	
	        e.printStackTrace();
	    }
		
		
		return isSuccess;
	}

public static List<ticket> getTicketDetails(String ticketIDv) { //to show details entered into db this function was created
    	
    	ArrayList<ticket> ticket = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from ticket_info where id='"+ticketIDv+"'";
    		ResultSet rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			String ticketID = rs.getString(2);
    			String firstName = rs.getString(3);
    			String lastName = rs.getString(4);
    			String email = rs.getString(5);
    			String facultySchool = rs.getString(6);
    			String contactNumber = rs.getString(7);
    			String requestInquiryType = rs.getString(8);
    			String inquirySubject = rs.getString(9);
    			String message = rs.getString(10);
    			
    			ticket t = new ticket(ticketID, firstName, lastName, email,
    					facultySchool, contactNumber, requestInquiryType, inquirySubject,
    					message);
    			ticket.add(t);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return ticket;	
    }

	public static boolean updateTicket( String ticketID, String firstName, String lastName, String email,
			String facultySchool, String contactNumber, String requestInquiryType, String inquirySubject,
			String message) {
		
		boolean isSuccess = false;

		try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String updateQuery = "UPDATE ticket_info SET "
                    + "firstName = '" + firstName + "', "
                    + "lastName = '" + lastName + "', "
                    + "email = '" + email + "', "
                    + "facultySchool = '" + facultySchool + "', "
                    + "contactNumber = '" + contactNumber + "', "
                    + "requestInquiryType = '" + requestInquiryType + "', "
                    + "inquirySubject = '" + inquirySubject + "', "
                    + "message = '" + message + "'"
                    + "WHERE ticketID ='"+ticketID+"'";

            int rowsUpdated = stmt.executeUpdate(updateQuery);

            if (rowsUpdated > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }

            
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
	}


 

	public static boolean deleteTicket(String ticketID) {
		
		boolean isSuccess = false;
//		int convId = Integer.parseInt(id);
		
		try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String deleteQuery = "delete from ticket_info WHERE ticketID ='"+ticketID+"'";
    		int rowsDelete = stmt.executeUpdate(deleteQuery);
    		
    		if (rowsDelete > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
		
		return isSuccess;
	}

	public static List<ticket> getYourData() { 
		// TODO Auto-generated method stub
		return null;
	}

	
} 

