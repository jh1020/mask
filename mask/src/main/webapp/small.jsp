<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.SizeDAO"%>
<%@ page import="user.Size"%>
<%@ page import ="java.util.Vector"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소형</title>
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
	<h2 align="center">소형</h2>
	
	<table border="1" width="1000" height="50" align ="center">
		<th><a href="big.jsp">대형</a> </th>
		<th><a href="medium.jsp">중형</a> </th>
		<th><a href="small.jsp">소형</a> </th>
		
	</table>
	
	<table width="1000"height="100" align="center">
	<th>
	</th>
	</table>
<%
		SizeDAO sizeDAO = new SizeDAO();
				Vector<Size> vec = sizeDAO.getAllSize(3);
		%>
	
	<%
		for(int i=0; i<vec.size();i++){
			Size size = vec.get(i);
		%>
	
<table border="1" width="1000" height="200" align ="center">
	
			<tr>
			<td rowspan=2> <img width=30% height="100" src="<%=size.getImg()%>"></td>
			<td colspan=2> <%=size.getTitle()%></td>
			</tr>
			
			<tr>
			<td><%=size.getPrice() %></td>
			</tr>
			
			</table>	
			
	
	<%
	}
	%>
		
				
</body>
</html>