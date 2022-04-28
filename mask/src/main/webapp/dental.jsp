<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.FuncDAO"%>
<%@ page import="user.Func"%>
<%@ page import ="java.util.Vector"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>덴털형</title>
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
	<h2 align="center">마스크 기능</h2>
	
	<table border="1" width="1000" height="50" align ="center">
		<th><a href="bogun.jsp">보건용</a> </th>
		<th><a href="bimal.jsp">비말 차단용</a> </th>
		<th><a href="soosul.jsp">수술용</a> </th>
		<th><a href="dental.jsp">덴털형</a> </th>
	
		
	</table>
	
	<table width="1000" height="100">
	<th></th>
	</table>
	
	<%
	FuncDAO funcDAO = new FuncDAO();
	Vector<Func> vec = funcDAO.getAllFunc(4);

	%>
	
	<% 
			for(int i=0;i < vec.size();i++){
				Func func = vec.get(i);// 벡터에 저장되어있는 빈 클래스 하나씩 추출 
			%>
		<table border="1" width="1000" height="200" align ="center">
	
			<tr>
			<td rowspan=2> <img width=30% height="100" src="<%=func.getImg()%>"></td>
			<td colspan=2> <%=func.getTitle()%></td>
			</tr>
			
			<tr>
			<td><%=func.getPrice() %></td>
			</tr>
			
			</table>	
			
			<%
			} %>
			
		
				
</body>
</html>