package User;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	public UserDAO() {
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
	
	public int login(String UserId, String UserPassword) {
		String sql = "select UserPassword from USER where UserId = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, UserId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(UserPassword)) {
					return 1;
				}else
					return 0;
			}
			return -1;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -2;
		}
	
	public int join(User user) {
		  String sql = "insert into USER values(?, ?, ?, ?, ?)";
		  try {
		    pstmt = conn.prepareStatement(sql);
		    pstmt.setString(1, user.getUserID());
		    pstmt.setString(2, user.getUserPassword());
		    pstmt.setString(3, user.getUserName());
		    pstmt.setString(4, user.getUserGender());
		    pstmt.setString(5, user.getUserEmail());
		    return pstmt.executeUpdate();
		  }catch (Exception e) {
		 	e.printStackTrace();
		  }
		  return -1;
		}
	
	
	
	
	
}