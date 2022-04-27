<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.BrandDAO"%>
<%@ page import="user.Brand"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>마스크 사이즈</title>
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
	<h2 align="center">마스크 사이즈</h2>
	
	<table border="1" width="1000" height="50" align ="center">
		<th><a href="big.jsp">대형</a> </th>
		<th><a href="medium.jsp">중형</a> </th>
		<th><a href="small.jsp">소형</a> </th>
		
	</table>
	
	<table width="1000" height="300">
	<th></th>
	</table>
	
	<table width="1000" height="500" align="center">
	<td><img src="images/mask_size.jpg" width="300" height="200">
	<td> 마스크 크기에 대한 설명 / 마스크 사이즈별 효과/ 마스크 
	</td>
	
	</table>
</body>
</html>