<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.BrandDAO"%>
<%@ page import="user.Brand"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����ũ ������</title>
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
<a href="main.jsp" data-rel="external" id="main">����ȭ������ ����</a>
	<h2 align="center">����ũ ������</h2>
	
	<table border="1" width="1000" height="50" align ="center">
		<th><a href="big.jsp">����</a> </th>
		<th><a href="medium.jsp">����</a> </th>
		<th><a href="small.jsp">����</a> </th>
		
	</table>
	
	<table width="1000" height="300">
	<th></th>
	</table>
	
	<table width="1000" height="500" align="center">
	<td><img src="images/mask_size.jpg" width="300" height="200">
	<td> ����ũ ũ�⿡ ���� ���� / ����ũ ����� ȿ��/ ����ũ 
	</td>
	
	</table>
</body>
</html>