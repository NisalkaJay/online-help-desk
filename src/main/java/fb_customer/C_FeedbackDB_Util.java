package fb_customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class C_FeedbackDB_Util{
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertcustomer(String name,String email,String feedback) {
			
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "insert into cfb values(0,'"+name+"','"+email+"','"+feedback+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
				
			}
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		return isSuccess;

	}
	
	public static boolean updatecustomer(String Name,String Email,String Feedback) {
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update cfb set name='"+Name+"',email='"+Email+"',cfb_feedback='"+Feedback+"'"
					+"where name='"+Name+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				
				isSuccess = true;
				
			}else{
				isSuccess = false;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Customer> getCustomerFeedback(){
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from cfb";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return cus;
	}
	
	public static boolean deleteCustomer(String Name) {
		

		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from cfb where name ='"+Name+"'";
			int rs = stmt.executeUpdate(sql);
			
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		return isSuccess;
		
	}
	

}
