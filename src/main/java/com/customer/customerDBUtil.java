package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.Statement;


public class customerDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<Customer> validate(String username, String password)//static method because we can use class name itself to invoke 
	{
	
		ArrayList<Customer> cus  = new ArrayList<>();
		
		//validate method
		try {
			con = dbconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from customer where Username = '"+username+"' and Password = '"+password+"';";//validate entered password and username by the user with the databse
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String uname = rs.getString(5);
				String upass = rs.getString(6);
				String faculty = rs.getString(7);
				String gender = rs.getString(8);
				String address = rs.getString(9);
				String dob = rs.getString(10);
				
				Customer c = new Customer(id,name,email,phone,uname,upass,address,dob,faculty,gender);//pass details to customer object
				
				cus.add(c);//pass details to arraylist
				
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return cus;//arraylist is returned
		
	}
		public static boolean insertcustomer(String name,String dob,String address,String email,String contact,String gender,String faculty,String username, String password) {
			boolean isSuccess = false;

			
			try {
				con = dbconnection.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into customer (Name, DOB, Address, Email, Phone, Gender, Faculty, Username, Password) VALUES ('"+name+"','"+dob+"','"+address+"','"+email+"','"+contact+"','"+gender+"','"+faculty+"','"+username+"','"+password+"')";

				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			} 
			
			
			return isSuccess;
		}
		
		public static boolean updatecustomer(String username,String id,String name, String email,String contact, String password, String faculty, String gender, String address, String dob) {
			boolean isSuccess = false;

			
			try {
				con = dbconnection.getConnection();
				stmt = con.createStatement();
				
				String sql = "UPDATE customer SET Name = '" + name + "', Email = '" + email + "', Phone = '" + contact + "', Username = '" + username +
						"', Password = '" + password + "', Faculty = '" + faculty + "', Gender = '" + gender + "', Address = '" + address + "', DOB = '" + dob + "' WHERE ID = '"+ id +"'";
				

				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			} 
			
			
			return isSuccess;
		}
		
		public static boolean deletecustomer(String id) {
			boolean isSuccess = false;

				int convertedId = Integer.parseInt(id);
				
			try {
				con = dbconnection.getConnection();
				stmt = con.createStatement();
				
				String sql = "delete from customer where id='"+convertedId+"'";
				

				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			} 
			
			
			return isSuccess;
		}
		
		public static List<Customer> getCustomerDetailsByUsername(String username) {
	        List<Customer> customer = new ArrayList<>();
	     try {
	    	con = dbconnection.getConnection();
			stmt = con.createStatement();
			
	        String sql = "select * from customer where Username='"+username+"'";
	        rs = stmt.executeQuery(sql);
	        
	        while(rs.next()) {
	        	int id = rs.getInt(1);
	        	String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String uname = rs.getString(5);
				String upass = rs.getString(6);
				String faculty = rs.getString(7);
				String gender = rs.getString(8);
				String address = rs.getString(9);
				String dob = rs.getString(10);
				
				Customer cus = new Customer(id,name,email,phone,uname,upass,faculty,gender,address,dob);
				customer.add(cus);
	        }
	        
	     }catch(Exception e ) {
	    	 
	     }
		return customer;
	        
	        
		}
		
}
