<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.BrandDAO"%>
<%@ page import="user.Brand"%>
<%@ page import ="java.util.Vector"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>참존</title>
</head>

<style>
	
	table{
	margin-left:auto;
	margin-right:auto;
	border-color :pink;
	}
	
	table,tr,td,th{
	border-collapse: collapse;
}
th,td{
	text-align:center;
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
	<h2 align="center">참존</h2>
	
	<table border="1" width="1000" height="50" align ="center">
		<th><a href="brandA.jsp">에어데이즈</a> </th>
		<th><a href="brandB.jsp">아에르</a> </th>
		<th><a href="brandC.jsp">참존</a> </th>
		<th><a href="brandD.jsp">시노텍스</a> </th>
		<th><a href="brandE.jsp">언더아머</a> </th>
	</table>
	
	<table width="1000"height="100" align="center">
	<th>
	</th>
	
	<%
	BrandDAO brandDAO = new BrandDAO();
	Vector<Brand> vec = brandDAO.getAllBrand(3);
	%>
	
	<%	for(int i=0; i<vec.size();i++){
		Brand brand = vec.get(i);
	
	%>
<table border="1" width="1000" height="200" align ="center">
	
			<tr>
			<td rowspan=2> <img width=30% height="100" src="<%=brand.getImg()%>"></td>
			<td colspan=2> <%=brand.getTitle()%></td>
			</tr>
			
			<tr>
			<td><%=brand.getPrice() %></td>
			</tr>
			
			</table>	
		
	<% }%>
</body>
</html>