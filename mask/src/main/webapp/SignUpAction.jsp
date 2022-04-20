<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String Id = request.getParameter("Id");
	String Password = request.getParameter("Password");
	String Name = request.getParameter("Name");
	String Phone = request.getParameter("phone");
	String Address = request.getParameter("Address");
	String d_Address = request.getParameter("DtailAddress");	
	/*
	// 1.변수선언
	String url = "jdbc:mariadb://58.229.253.250:3306/student05";
	String uid = "student05";
	String upw = "1234!!";
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sql = "insert into USER values(?, ?, ?, ?, ?, ?)";
	
	try{
		// 1. 드라이버 로드
		Class.forName("org.mariadb.jdbc.Driver");
		
		// 2. conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
		
		// 3. pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, Id);
		pstmt.setString(2, Password);
		pstmt.setString(3, Name);
		pstmt.setString(4, Phone);
		pstmt.setString(5, Address);
		pstmt.setString(5, d_Address);
		

		
		// 4. sql문 실행
		int result = pstmt.executeUpdate();
		
		if(result == 1){ // 성공
			response.sendRedirect("main.jsp");
		} else{ // 실패
			response.sendRedirect("join_fail.jsp");
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


