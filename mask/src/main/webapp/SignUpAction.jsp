<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String UserId = request.getParameter("Id");
	String UserPassword = request.getParameter("Password");
	String UserName = request.getParameter("Name");
	String UserPhoneNumber = request.getParameter("Phone");
	String UserAddress = request.getParameter("Address");
	String UserDetailAddress = request.getParameter("d_Address");
	String UserTelType = request.getParameter("teltype");
	String UserEmail = request.getParameter("Email"); 
	
	// 1.변수선언
	String url = "jdbc:mariadb://58.229.253.250:3306/student05";
	String uid = "student05";
	String upw = "1234!!";
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sql = "INSERT INTO USER (UserId, UserPassword, UserName, UserPhoneNumber, UserTelType, UserAddress, UserDetailAddress, UserEmail) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
	
	try{
		// 1. 드라이버 로드
		Class.forName("org.mariadb.jdbc.Driver");
		
		// 2. conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
		
		// 3. pstmt 생성
		 pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, UserId); 
		pstmt.setString(2, UserPassword);
		pstmt.setString(3, UserName);
		pstmt.setString(4, UserPhoneNumber);
		pstmt.setString(5, UserAddress);
		pstmt.setString(6, UserDetailAddress);
		pstmt.setString(7, UserTelType);
		pstmt.setString(8, UserEmail); 

		
		

		
		// 4. sql문 실행
		int result = pstmt.executeUpdate();
		
		if(result == 1){ // 성공
			JOptionPane aa=new JOptionPane();
			aa.showMessageDialog(null, "회원가입 성공");
			response.sendRedirect("main.jsp");
		} else{ // 실패
			JOptionPane aa=new JOptionPane();
			aa.showMessageDialog(null, "회원가입 실패");
			response.sendRedirect("signUp.jsp");
		}
		
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
%>