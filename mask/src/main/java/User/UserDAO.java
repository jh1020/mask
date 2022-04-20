package User;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn; //?��바�? ?��?��?��베이?���? ?���?
	private PreparedStatement pstmt; //쿼리�? ??�? �? ?��?��
	private ResultSet rs; //결과�? 받아?���?
	
	//기본 ?��?��?��
	//UserDAO�? ?��?��?���? ?��?��?���? ?��?��?��?�� �?�?
	//메소?��마다 반복?��?�� 코드�? ?��곳에 ?��?���? 코드�? 간소?��?��?��
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
	//로그?�� ?��?��
	public int login(String userID, String userPassword) {
		String sql = "select userPassword from USER where userID = ?";
		try {
			pstmt = conn.prepareStatement(sql); //sql쿼리문을 ??�? ?��?��?��
			pstmt.setString(1, userID); //첫번�? '?'?�� 매개�??���? 받아?�� 'userID'�? ???��
			rs = pstmt.executeQuery(); //쿼리�? ?��?��?�� 결과�? rs?�� ???��
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1; //로그?�� ?���?
				}else
					return 0; //비�?번호 ??�?
			}
			return -1; //?��?��?�� ?��?��
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //?���?
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