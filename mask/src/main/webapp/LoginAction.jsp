<%@page import="java.sql.DriverManager"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="User.UserDAO"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인 처리 JSP</title>
</head>
<body>
	<%
        // 인코딩 처리
        request.setCharacterEncoding("euc-kr"); 
        
        // 로그인 화면에 입력된 아이디와 비밀번호를 가져온다
        String UserId= request.getParameter("id");
        String UserPassword = request.getParameter("pw");
        
     // 1.변수선언
    	String url = "jdbc:mariadb://58.229.253.250:3306/student05";
    	String uid = "student05";
    	String upw = "1234!!";
    	Connection conn = null;
    	PreparedStatement pstmt = null;
    	ResultSet rs;
        
    	String sql = "select UserPassword from USER where UserId = ?";
    	
    	try{
    		// 드라이버 호출
    		Class.forName("oracle.jdbc.driver.OracleDriver");
    		
    		// conn 생성
    		conn = DriverManager.getConnection(url, uid, upw);
    		
    		// pstmt 생성
    		pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, UserId);
    		pstmt.setString(2, UserPassword);
    		
    		// sql실행
    		rs = pstmt.executeQuery();
    		
    		if(rs.next()){ // 로그인 성공(인증의 수단 session)
    			UserId = rs.getString("id");
    			String name = rs.getString("name");
    		
    			session.setAttribute("user_id", UserId);
    			session.setAttribute("user_name", name);
    			
    			response.sendRedirect("main.jsp"); // 페이지이동
    			
    		} else{ // 로그인 실패
    			response.sendRedirect("login_fail.jsp"); // 실패 페이지
    		}
    	} catch(Exception e){
    		e.printStackTrace();
    		response.sendRedirect("login.jsp"); // 에러가 난 경우도 리다이렉트
    	} finally{
    		try{
    			if(conn != null) conn.close();
    			if(pstmt != null) pstmt.close();
    		} catch(Exception e){
    			e.printStackTrace();
    		}
    	}
    		
        
        %>
</body>
</html>