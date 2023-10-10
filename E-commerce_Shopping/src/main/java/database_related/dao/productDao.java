//package database_related.dao;
//
//import database_related.model.*;
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.List;
//
//public class productDao{
//	private Connection con;
//	private String query;
//	private PreparedStatement pstmt;
//	private ResultSet rs;
//	
//	
////	public productDao(Connection con, String query, PreparedStatement pstmt, ResultSet rs) {
////		this.con = con;
////		this.query = query;
////		this.pstmt = pstmt;
////		this.rs = rs;
////	}
//	
//	public productDao(Connection con) {
//		this.con = con;
//	}
//
//	public List<product> getAllProducts(){
//		List<product> prod = new ArrayList<product>();
//		
//		try {
//			query = "Select * from product";
//			pstmt=this.con.prepareStatement(query);
//			rs = pstmt.executeQuery();
//			
//			while(rs.next()) {
//				product row = new product();
//				row.setId(rs.getInt("id"));
//				row.setName(rs.getString("name"));
//				row.setCategory(rs.getString("category"));
//				row.setPrice(rs.getFloat("price"));
//				row.setImage(rs.getString("image"));
//				 
//				prod.add(row);
//				
//			//	System.out.println(row);
//			}	
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//		return prod;
//	}
//}
//
//
//
