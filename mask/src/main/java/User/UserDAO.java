package User;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn; //?ë°”ì? ?°?´?„°ë² ì´?Š¤ë¥? ?—°ê²?
	private PreparedStatement pstmt; //ì¿¼ë¦¬ë¬? ??ê¸? ë°? ?„¤? •
	private ResultSet rs; //ê²°ê³¼ê°? ë°›ì•„?˜¤ê¸?
	
	//ê¸°ë³¸ ?ƒ?„±?
	//UserDAOê°? ?‹¤?–‰?˜ë©? ??™?œ¼ë¡? ?ƒ?„±?˜?Š” ë¶?ë¶?
	//ë©”ì†Œ?“œë§ˆë‹¤ ë°˜ë³µ?˜?Š” ì½”ë“œë¥? ?´ê³³ì— ?„£?œ¼ë©? ì½”ë“œê°? ê°„ì†Œ?™”?œ?‹¤
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
	//ë¡œê·¸?¸ ?˜?—­
	public int login(String userID, String userPassword) {
		String sql = "select userPassword from USER where userID = ?";
		try {
			pstmt = conn.prepareStatement(sql); //sqlì¿¼ë¦¬ë¬¸ì„ ??ê¸? ?‹œ?‚¨?‹¤
			pstmt.setString(1, userID); //ì²«ë²ˆì§? '?'?— ë§¤ê°œë³??ˆ˜ë¡? ë°›ì•„?˜¨ 'userID'ë¥? ???…
			rs = pstmt.executeQuery(); //ì¿¼ë¦¬ë¥? ?‹¤?–‰?•œ ê²°ê³¼ë¥? rs?— ???¥
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1; //ë¡œê·¸?¸ ?„±ê³?
				}else
					return 0; //ë¹„ë?ë²ˆí˜¸ ??ë¦?
			}
			return -1; //?•„?´?”” ?—†?Œ
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //?˜¤ë¥?
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