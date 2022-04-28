<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.ProductinfoDAO"%>
<%@ page import="user.Productinfo"%>
<%@ page import ="java.util.Vector"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<%
	String info = request.getParameter("info");
	String info1 = request.getParameter("info1");

%>



<a href="main.jsp" data-rel="external" id="main">메인화면으로 가기</a>
	<h2 align="center">브랜드</h2>
	
	<table border="1" width="1000" height="50" align ="center">
		<th><a href="brandA.jsp">에어데이즈</a> </th>
		<th><a href="brandB.jsp">아에르</a> </th>
		<th><a href="brandC.jsp">참존</a> </th>
		<th><a href="brandD.jsp">시노텍스</a> </th>
		<th><a href="brandE.jsp">언더아머</a> </th>
	</table>
	
	<table width="1000" height="100">
	<th></th>
	</table>
	
	<%
	ProductinfoDAO productDAO= new ProductinfoDAO();
	Vector<Productinfo> vec = productDAO.getAllProductinfo(1);
	
	Productinfo productinfo = vec.get();
	%>
	
	

<table width="1000" height="500" align ="center">
<tr>
<td rowspan="5"><image src="images/mask.jpg" width ="500" height= 500""></image></td>
<td> 상품 이름</td>
<td></td>
</tr>
<tr>
<td>가격</td>
<td> <%=productinfo.getprice() %></td>
</tr>
<tr>
<td>기능</td>
<td></td>
<tr>
<td>색상</td>
<td></td>
<tr>
<td>브랜드</td>
<td></td>
</tr>


	<table width="1000" height="500">
	<th></th>
	</table>

</table>

<table width = "1000" height="300" align="center">
<image src="images/sample.jpg" width ="1000" height="200"></image>

</table>

</body>
</html>