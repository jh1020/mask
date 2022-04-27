package user;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn; //�ڹٿ� �����ͺ��̽��� ����
	private PreparedStatement pstmt; //������ ��� �� ����
	private ResultSet rs; //����� �޾ƿ���
	
	//�⺻ ������
	//UserDAO�� ����Ǹ� �ڵ����� �����Ǵ� �κ�
	//�޼ҵ帶�� �ݺ��Ǵ� �ڵ带 �̰��� ������ �ڵ尡 ����ȭ�ȴ�
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

	//�α��� ����
		public int login(String userId, String userPassword) {
			String sql = "select userPassword from USER where userId = ?";
			try {
				pstmt = conn.prepareStatement(sql); //sql�������� ��� ��Ų��
				pstmt.setString(1, userId); //ù��° '?'�� �Ű������� �޾ƿ� 'userID'�� ����
				rs = pstmt.executeQuery(); //������ ������ ����� rs�� ����
				if(rs.next()) {
					if(rs.getString(1).equals(userPassword)) {
						return 1; //�α��� ����
					}else
						return 0; //��й�ȣ Ʋ��
				}
				return -1; //���̵� ����
			}catch (Exception e) {
				e.printStackTrace();
			}
			return -2; //����
		}
		//ȸ������ ����
		public int join(User user) {
			  String sql = "INSERT INTO USER (userId, userPassword, userName, userPhoneNumber, userTelType, userAddress, userDetailAddress, userEmail) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
			  try {
			    pstmt = conn.prepareStatement(sql);
			    pstmt.setString(1, user.getUserId());
			    pstmt.setString(2, user.getUserPassword());
			    pstmt.setString(3, user.getUserName());
			    pstmt.setString(4, user.getUserPhoneNumber());
			    pstmt.setString(5, user.getUserEmail());
			    pstmt.setString(6, user.getUserAddress());
			    pstmt.setString(7, user.getUserDetailAddress());
			    pstmt.setString(8, user.getUserTelType());

			    return pstmt.executeUpdate();
			  }catch (Exception e) {
			 	e.printStackTrace();
			  }
			  return -1;
			}
		
	
}