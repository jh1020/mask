<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.ColorDAO"%>
<%@ page import="user.Color"%>
<%@ page import ="java.util.Vector"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������</title>
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
<a href="main.jsp" data-rel="external" id="main">����ȭ������ ����</a>
	<h2 align="center">����ũ ����</h2>
	
	<table border="1" width="1000" height="50" align ="center">
		<th><a href="white.jsp">���</a> </th>
		<th><a href="black.jsp">������</a> </th>
		<th><a href="gray.jsp">ȸ��</a> </th>
		<th><a href="pink.jsp">��ũ��</a> </th>
		<th><a href="colorful.jsp">������</a> </th>
		
	</table>
	
		
	</table>
	
	<table width="1000"height="100" align="center">
	<th>
	</th>
	</table>
	
	
	<%
	ColorDAO colorDAO = new ColorDAO();
	Vector<Color> vec = colorDAO.getAllColor(5);
	%>
	
	<% for(int i=0; i<vec.size();i++) {
		Color color = vec.get(i);
		%>
	
	<table border="1" width="1000" height="200" align ="center">
	
			<tr>
			<td rowspan=2> <img width=30% height="100" src="<%=color.getImg()%>"></td>
			<td colspan=2> <%=color.getTitle()%></td>
			</tr>
			
			<tr>
			<td><%=color.getPrice() %></td>
			</tr>
			
			</table>	
			
	
	
	<%} %>
	
	
	</body>
	</html>
	