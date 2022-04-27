package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class ColorDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public ColorDAO() {
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
	
	public Vector<Color> getAllColor(int gubun){
		Vector<Color> v = new Vector<>();
		
		String sql = "select title,price,gubun,gubun_title,img from color where gubun =?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,gubun);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				
				Color color = new Color();
				
				color.setTitle(rs.getString(1));
				color.setPrice(rs.getInt(2));
				color.setGubun(rs.getInt(3));
				color.setGubun_title(rs.getString(4));
				color.setImg(rs.getString(5));
				
				v.add(color);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return v;
	}

}
