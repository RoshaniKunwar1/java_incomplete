package database_related.connection;

import java.sql.*;

public class DB {
	private static Connection con = null;
	
	public static Connection getConnection() {
		if(con==null) {
			try {
				
			  //  System.out.println("Database connection is null. Check your database configuration.");
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3305/ecommerce","Roshani","1235");
			//	System.out.println("CONNECTED"+con);
				
				
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return con;
	}
}


