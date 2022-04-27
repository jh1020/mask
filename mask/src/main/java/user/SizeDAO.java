package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class SizeDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public SizeDAO() {
		try {
			String dbURL = "jdbc:mariadb://58.229.253.250:3306/student05";
			String dbID = "student05";
			String dbPassword = "1234!!";
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public Vector<Size> getAllSize(int gubun){
		Vector<Size> v = new Vector<>();
		
		String sql = "select title,price,gubun,gubun_title,img from size where gubun =?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,gubun);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				
				Size size = new Size();
				
				size.setTitle(rs.getString(1));
				size.setPrice(rs.getInt(2));
				size.setGubun(rs.getInt(3));
				size.setGubun_title(rs.getString(4));
				size.setImg(rs.getString(5));
				
				v.add(size);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return v;
	}

}
