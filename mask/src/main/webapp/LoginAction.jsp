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
<title>�α��� ó�� JSP</title>
</head>
<body>
	<%
        // ���ڵ� ó��
        request.setCharacterEncoding("euc-kr"); 
        
        // �α��� ȭ�鿡 �Էµ� ���̵�� ��й�ȣ�� �����´�
        String UserId= request.getParameter("id");
        String UserPassword = request.getParameter("pw");
        
     // 1.��������
    	String url = "jdbc:mariadb://58.229.253.250:3306/student05";
    	String uid = "student05";
    	String upw = "1234!!";
    	Connection conn = null;
    	PreparedStatement pstmt = null;
    	ResultSet rs;
        
    	String sql = "select UserPassword from USER where UserId = ?";
    	
    	try{
    		// ����̹� ȣ��
    		Class.forName("oracle.jdbc.driver.OracleDriver");
    		
    		// conn ����
    		conn = DriverManager.getConnection(url, uid, upw);
    		
    		// pstmt ����
    		pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, UserId);
    		pstmt.setString(2, UserPassword);
    		
    		// sql����
    		rs = pstmt.executeQuery();
    		
    		if(rs.next()){ // �α��� ����(������ ���� session)
    			UserId = rs.getString("id");
    			String name = rs.getString("name");
    		
    			session.setAttribute("user_id", UserId);
    			session.setAttribute("user_name", name);
    			
    			response.sendRedirect("main.jsp"); // �������̵�
    			
    		} else{ // �α��� ����
    			response.sendRedirect("login_fail.jsp"); // ���� ������
    		}
    	} catch(Exception e){
    		e.printStackTrace();
    		response.sendRedirect("login.jsp"); // ������ �� ��쵵 �����̷�Ʈ
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