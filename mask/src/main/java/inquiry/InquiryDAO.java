package inquiry;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import review.Review;

public class InquiryDAO {
	
	private Connection conn;
	private ResultSet rs;
	
	//기본 생성자
	public InquiryDAO() {
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

	//작성일자 메소드
	public String getDate() {
		String sql = "select now()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return ""; //데이터베이스 오류
	}
	
	//게시글 번호 부여 메소드
	public int getNext() {
		//현재 게시글을 내림차순으로 조회하여 가장 마지막 글의 번호를 구한다
		String sql = "select bbsID from Inquiry order by bbsID desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; //첫 번째 게시물인 경우
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	//글쓰기 메소드
	public int write(String bbsTitle, String userId, String bbsContent) {
		String sql = "insert into Inquiry values(?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, bbsTitle);
			pstmt.setString(3, userId);
			pstmt.setString(4, getDate());
			pstmt.setString(5, bbsContent);
			pstmt.setInt(6, 1); //글의 유효번호
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	//게시글 리스트 메소드
	public ArrayList<Inquiry> getList(int pageNumber){
		String sql = "select * from Inquiry where bbsID < ? and bbsAvailable = 1 order by bbsID desc limit 10";
		ArrayList<Inquiry> list = new ArrayList<Inquiry>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Inquiry bbs = new Inquiry();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserId(rs.getString(3));
				bbs.setBbsdate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getString(6));
				list.add(bbs);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//페이징 처리 메소드
	public boolean nextPage(int pageNumber) {
		String sql = "select * from Inquiry where bbsID < ? and bbsAvailable = 1";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	//하나의 게시글을 보는 메소드
	public Inquiry getBbs(int bbsID) {
		String sql = "select * from Inquiry where bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bbsID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Inquiry bbs = new Inquiry();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserId(rs.getString(3));
				bbs.setBbsdate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getString(6));
				return bbs;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//게시글 수정 메소드
	public int update(int bbsID, String bbsTitle, String bbsContent) {
		String sql = "update Inquiry set bbsTitle = ?, bbsContent = ? where bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bbsTitle);
			pstmt.setString(2, bbsContent);
			pstmt.setInt(3, bbsID);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	//게시글 삭제 메소드
	public int delete(int bbsID) {
		//실제 데이터를 삭제하는 것이 아니라 게시글 유효숫자를 '0'으로 수정한다
		String sql = "update Inquiry set bbsAvailable = 0 where bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bbsID);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류 
	}

}
