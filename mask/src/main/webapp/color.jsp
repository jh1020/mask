<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.BrandDAO"%>
<%@ page import="user.Brand"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����ũ ����</title>
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
	<h2 align="center">����ũ ����</h2>
	
	<table border="1" width="1000" height="50" align ="center">
		<th><a href="white.jsp">���</a> </th>
		<th><a href="black.jsp">������</a> </th>
		<th><a href="gray.jsp">ȸ��</a> </th>
		<th><a href="pink.jsp">��ũ��</a> </th>
		<th><a href="colorful.jsp">������</a> </th>
		
	</table>
	
	<table width="1000" height="300">
	<th></th>
	</table>
	
	
	<table width="1000" height="500" align="center">
	<td><img src="images/mask_color.jpg" width="300" height="200" align="middle">
	<td> ����ũ ���� ���� ���� / �мǸ���ũ / ���ݰ����� ���� �Ѵ� å���� �� �ִ�
	</td>
	
	</table>
</body>
</html>