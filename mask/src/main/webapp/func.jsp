<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.BrandDAO"%>
<%@ page import="user.Brand"%>
<%@ page import ="java.util.Vector"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>마스크 기능</title>
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
	<h2 align="center">마스크 기능</h2>
	
	<table border="1" width="1000" height="50" align ="center">
		<th><a href="bogun.jsp">보건용</a> </th>
		<th><a href="bimal.jsp">비말 차단용</a> </th>
		<th><a href="soosul.jsp">수술용</a> </th>
		<th><a href="dental.jsp">덴털형</a> </th>
	
		
	</table>
	
	<table width="1000" height="300">
	<th></th>
	</table>
	
	<table width="1000" height="500" align="center">
	<td><img src="images/mask_func.jpg" width="300" height="200">
	<td>  보건용 마스크(KF94, KF80마스크)</p>
		'KF'는 식품의약품안전처의 인증을 받았다는 등급을 나타내며, 입자차단 성능을 나타내는 지수입니다.
		KF지수가 높을수록 입자가 작은 먼지 차단율이 높아지지만, 그만큼 호흡이 불편할 수 있습니다.</p>
		
		비말차단용 마스크(KF-AD)</p>
		더운 날씨에 일상생활에 편안함을 주도록 만들어진 마스크입니다.
		침방울을 차단하고, 숨 쉬기 편하도록 얇고 가볍게 만들어졌습니다. 차단성능은 KF기준 55~80% 수준이라고 합니다.</p>
		
		수술용 마스크</p>
		진료,치료,수술 시 감염을 예바하기 위한 마스크로 차단 성능은 KF기준 55%~80% 수준입니다. 주로 의료인이 사용하던 마스크로 보건용 마스크보다 미세입자 차단 기능은 떨어지지만 재질이 앏고 
		가벼워 상대적으로 숨쉬기 편합니다.</p>
		
		덴털형 마스크</p>
		수술용 마스크와 비슷하게 생겼지만 식약처 허가 대상이 아니기 때문에 '의약외품'이라는 표시가 없습니다.
		
		
	</td>
	
	</table>
</body>
</html>