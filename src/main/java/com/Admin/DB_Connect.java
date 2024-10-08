package com.Admin;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Connect {
		
		private static String url = "jdbc:mysql://localhost:3306/my_db";
		private static String userName = "root";
		private static String password= "chavidu3361";
		private static Connection con;
	
		public static Connection getConnection() {
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url,userName,password);//connection statement
	
			}catch(Exception e) {
				System.out.println("Database connection is not success");
			}
			return con;
		}
		
}
