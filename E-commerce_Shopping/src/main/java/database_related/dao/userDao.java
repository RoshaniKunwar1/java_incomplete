package database_related.dao;

import java.sql.*;

import database_related.model.user;

public class userDao {
	private Connection conn;
	private String query;
	private ResultSet rs;
	private PreparedStatement pstmt;
	
	public userDao(Connection conn) {
		this.conn = conn;
	}
	
	public user userlogin(String email, String password) {
		user user1 = null;
		try {
			query = "Select * from users where email=? and password=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				user1 = new user();
				user1.setId(rs.getInt(0));
				user1.setName(rs.getString(1));
				user1.setEmail(rs.getString(2));
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return user1;
	}
}
