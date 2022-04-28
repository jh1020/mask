<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.BrandDAO"%>
<%@ page import="user.Brand"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>마스크 색상</title>
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
	<h2 align="center">마스크 색상</h2>
	
	<table border="1" width="1000" height="50" align ="center">
		<th><a href="white.jsp">흰색</a> </th>
		<th><a href="black.jsp">검정색</a> </th>
		<th><a href="gray.jsp">회색</a> </th>
		<th><a href="pink.jsp">핑크색</a> </th>
		<th><a href="colorful.jsp">형광색</a> </th>
		
	</table>
	
	<table width="1000" height="300">
	<th></th>
	</table>
	
	
	<table width="1000" height="500" align="center">
	<td><img src="images/mask_color.jpg" width="300" height="200" align="middle">
	<td> 마스크 색상 대한 설명 / 패션마스크 / 예쁨과멋짐 안전 둘다 책임질 수 있다
	</td>
	
	</table>
</body>
</html>