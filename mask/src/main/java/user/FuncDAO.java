package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class FuncDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public FuncDAO() {
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
	
	public Vector<Func> getAllFunc(int gubun){
		Vector<Func> v = new Vector<>();
		
		String sql = "select title,price,gubun,gubun_title,img from func where gubun =?";
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,gubun);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				Func func = new Func();
				
				func.setTitle(rs.getString(1));
				func.setPrice(rs.getInt(2));
				func.setGubun(rs.getInt(3));
				func.setGubun_title(rs.getString(4));
				func.setImg(rs.getString(5));
				
				v.add(func);
				
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return v;
	}
	
}
