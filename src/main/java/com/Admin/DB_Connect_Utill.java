package com.Admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DB_Connect_Utill {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

	public static boolean insertFAQ(String id, String question, String answer) {
		
		boolean isSuccess = false;
		
		try {
			con = DB_Connect.getConnection();
			stmt = con.createStatement();
		
			String sql = "INSERT INTO faq VALUES (0,'"+question+"', '"+answer+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
			
		}
		
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
	
	
	
	public static boolean updateFAQ(String question, String answer) {
			
			try {
				
				con = DB_Connect.getConnection();
				stmt = con.createStatement();
				
				String sql = "UPDATE faq SET answer = '"+answer+"' WHERE question = '"+question+"'";
				
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0 ) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
				
			}
			
			catch(Exception e) {
				
				e.printStackTrace();
				
			}
			
			return isSuccess;
	}
	
	
	
	public static boolean deleteFAQ(String question) {
		
		
		try {
			
			con = DB_Connect.getConnection();
			stmt = con.createStatement();
			
			String sql = "DELETE FROM faq WHERE question = '"+question+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			
			else {
				
			}
		}
		
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	


	
}
