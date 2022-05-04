package user;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.websocket.Session;

public class UserDAO {
	
	private Connection conn; //자바와 데이터베이스를 연결
	private PreparedStatement pstmt; //쿼리문 대기 및 설정
	private ResultSet rs; //결과값 받아오기
	
	//기본 생성자
	//UserDAO가 실행되면 자동으로 생성되는 부분
	//메소드마다 반복되는 코드를 이곳에 넣으면 코드가 간소화된다
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

	//로그인 영역
		public int login(String userId, String userPassword) {
			String sql = "select userPassword from USER where userId = ?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userId);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					if(rs.getString(1).equals(userPassword)) {
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
		//회원가입 영역
		public int join(User user) {
			  String sql = "INSERT INTO USER (userId, userPassword, userName, userPhoneNumber, "
			  		+ "userTelType, userAddress, userDetailAddress, userEmail) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
			  try {
			    pstmt = conn.prepareStatement(sql);
			    pstmt.setString(1, user.getUserId());
			    pstmt.setString(2, user.getUserPassword());
			    pstmt.setString(3, user.getUserName());
			    pstmt.setString(4, user.getUserPhoneNumber());
			    pstmt.setInt(5, user.getUserTelType());
			    pstmt.setString(6, user.getUserAddress());
			    pstmt.setString(7, user.getUserDetailAddress());
			    pstmt.setString(8, user.getUserEmail());
			    
			    
			   

			    return pstmt.executeUpdate();
			  }catch (Exception e) {
			 	e.printStackTrace();
			  }
			  return -1;
			}
		//마이 페이지
				public User getUser(String userId) {
					String sql = "select userName, userPhoneNumber, userTelType, userAddress, userDetailAddress, userEmail, userCancel, userExchange, userReturn, userOrder, userDeposit, userDelivery, userDeliveryRequest, userCoupon, userPoint from USER where userId = ?;";
					try {
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, userId);
						rs = pstmt.executeQuery();
						if(rs.next()) {
							User user = new User();
							user.setUserName(rs.getString(1));
							user.setUserPhoneNumber(rs.getString(2));
							user.setUserTelType(rs.getInt(3));
							user.setUserAddress(rs.getString(4));
							user.setUserDetailAddress(rs.getString(5));
							user.setUserEmail(rs.getString(6));
							user.setUserCancel(rs.getInt(7));
							user.setUserExchange(rs.getInt(8));
							user.setUserReturn(rs.getInt(9));
							user.setUserOrder(rs.getInt(10));
							user.setUserDeposit(rs.getInt(11));
							user.setUserDelivery(rs.getInt(12));
							user.setUserDeliveryRequest(rs.getString(13));
							user.setUserCoupon(rs.getInt(14));
							user.setUserPoint(rs.getInt(15));
							return user;
						}
					}catch (Exception e) {
						e.printStackTrace();
					}
					return null;
		}

	
}