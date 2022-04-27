<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.BrandDAO"%>
<%@ page import="user.Brand"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>브랜드</title>
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
	<h2 align="center">브랜드</h2>
	
	<table border="1" width="1000" height="50" align ="center">
		<th><a href="brandA.jsp">에어데이즈</a> </th>
		<th><a href="brandB.jsp">아에르</a> </th>
		<th><a href="brandC.jsp">참존</a> </th>
		<th><a href="brandD.jsp">시노텍스</a> </th>
		<th><a href="brandE.jsp">언더아머</a> </th>
	</table>
	
	<table width="1000" height="300">
	<th></th>
	</table>
	
	<table width="1000" height="500" align="center">
	<td><img src="images/mask.jpg" width="300" height="200">
	<td>마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개마스크 소개
	</td>
	
	</table>
</body>
</html>