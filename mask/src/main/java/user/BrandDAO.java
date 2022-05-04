package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;





public class BrandDAO {

	private Connection conn; //�ڹٿ� �����ͺ��̽��� ����
	private PreparedStatement pstmt; //������ ��� �� ����
	private ResultSet rs; //����� �޾ƿ���
	
	
	public BrandDAO(){
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
	
	public Vector<Brand> getAllBrand(int gubun){
		Vector<Brand> v = new Vector<>();
		
		String sql = "select title,price,gubun,gubun_title,img,productinfoid from brand where gubun = ?";
		try {
			pstmt = conn.prepareStatement(sql); //sql�������� ��� ��Ų��
			pstmt.setInt(1, gubun); //ù��° '?'�� �Ű������� �޾ƿ� 'userID'�� ����
			rs = pstmt.executeQuery(); //������ ������ ����� rs�� ����
			while(rs.next()) {
				
				Brand brand = new Brand();
				
				brand.setTitle(rs.getString(1));
				brand.setPrice(rs.getInt(2));
				brand.setGubun(rs.getInt(3));
				brand.setGubun_title(rs.getString(4));
				brand.setImg(rs.getString(5));
				brand.setProductinfoid(rs.getInt(6));
				
				v.add(brand);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return v;
		
	}
	
	
}
