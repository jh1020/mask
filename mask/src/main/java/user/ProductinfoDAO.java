package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class ProductinfoDAO {
	
		private Connection conn;
		private PreparedStatement pstmt;
		private ResultSet rs;
		
		public ProductinfoDAO() {
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
		
		public Vector<Productinfo> getAllProductinfo(int id){
			Vector<Productinfo> v = new Vector<>();
			
			String sql = "select id,title,price,img,size,brand,func,color from productinfo where id =?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,id);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					
					Productinfo productinfo = new Productinfo();
					
					productinfo.setId(rs.getInt(1));
					productinfo.setPrice(rs.getInt(2));
					productinfo.setImg(rs.getString(3));
					productinfo.setSize(rs.getString(4));
					productinfo.setBrand(rs.getNString(5));
					productinfo.setFunc(rs.getNString(6));
					productinfo.setColor(rs.getString(7));
					
					v.add(productinfo);
					
				}
		}catch(Exception e) {
			e.printStackTrace();
		}
			return v;
		}
}
