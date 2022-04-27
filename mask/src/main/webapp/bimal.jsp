<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.BrandDAO"%>
<%@ page import="user.Brand"%>
<%@ page import ="java.util.Vector"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>비말 차단용</title>
</head>

<style>

table{
border-color :pink;
}

table,tr,td,th{
	border-collapse: collapse;
}

a{
text-decoration-line: none;
}

a:link{
color :pink;
}

a:visited{
color :pink;
}

a:hover {
color :red;
}

a:active {
color:green
}





</style>


<body>
<a href="main.jsp" data-rel="external" id="main">메인화면으로 가기</a>
	<h2 align="center">마스크 기능</h2>
	
	<table border="1" width="1000" height="50" align ="center">
		<th><a href="bogun.jsp">보건용</a> </th>
		<th><a href="bimal.jsp">비말 차단용</a> </th>
		<th><a href="soosul.jsp">수술용</a> </th>
		<th><a href="dental.jsp">덴털형</a> </th>
		
	</table>
	
	<table width="1000" height="300">
	<th></th>
	</table>