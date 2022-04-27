<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>마스크 메인</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>

<style>

.brand_images_size {
	position: absolute;
	bottom: 0px;
	display: flex;
	width: auto;
	margin-left: 5%;
	margin-right: 5%;
}

.wrap {
	background-color: #696969;
}


.brand_images {
	width: 400px;
	display: block;
	float: left;
	margin-left: 10px;
	margin-right: 10px;
}

.centered {
	display: table;
	margin-left: auto;
	margin-right: auto;
}

.nav_link {
	position: absolute;
	align-content: center;
	align-items: center;
	transform: translateX(-100%);
	margin-left: 55%;
	margin-top: 10px;
}

.carousel_position {
	position: absolute;
	margin-top: 0px;
	padding-bottom: 0px;
	padding-left: 25%;
	padding-right: 25%;
}

.carousel_inner>.carousel-item>img {
	width: 650px;
	height: 940px;
}

.carousel_button_left {
	position: absolute;
	left: 0px;
	top: 0px;
	transform: translateX(-0%);
}

a {
	list-style: none;
}

.innerd {
	display: flex;
	position: absolute;
	top: 10%;
	margin-left: 50%;
	transform: translateX(-100%);
}

.loginBtn {
	position: absolute;
	top: 20%;
	left: 95%;
	transform: translateX(-100%);
}



</style>

<body>
	



<table id="wrap" role="main">
	<nav class="navbar  navbar-expand-sm container_navbar">
		<a class="navbar-brand" href="main.jsp">마스크</a>
		<div class="navbar nav_link">
			<ul style="display: flex; list-style: none;">
				<li class="nav-item"><a class="nav-link" href="size.jsp">사이즈</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="color.jsp">색상</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="func.jsp">기능</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="brand1.jsp">브랜드</a>
				</li>
			</ul>
		</div>
		<%
		if(session.getAttribute("userId")==null) {
			%>
			<div class="loginBtn navbar-nav ">
			<input type="button" value="로그인" id="login"
				onclick="location.href='login.jsp'" /> <input type="button"
				value="회원가입" id="signUp" onclick="location.href='signUp.jsp'" />
		</div>
		<%
		}else {
			%>
			<div class="loginBtn navbar-nav ">
			
			<input type="button" value="마이페이지" id="myPageBtn"
				onclick="location.href='myPage.jsp'" /> <input type="button"
				value="장바구니" id="goBasketBtn" onclick="location.href='basket.jsp'" />
		</div>
		<%
		}
		
	
	
	
	%>
		
	</nav>
<div>
	<div class="carousel_position">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
			integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
			integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
			crossorigin="anonymous"></script>
		<script> $('.carousel').carousel({ interval: 2000 //기본 5초 }) </script>
		<div class="container"></div>
		<div id="demo" class="carousel slide" data-ride="carousel"
			align="center">
			<div class="carousel-inner">
				<!-- 슬라이드 쇼 -->
				<div class="carousel-item active">
					<!--가로-->
					<img class="d-block w-100"
						src="https://images.pexels.com/photos/213399/pexels-photo-213399.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"
						alt="First slide">
					<div class="carousel-caption d-none d-md-block">
						<h5>TEST</h5>
						<p>testtesttest</p>
					</div>
				</div>
				<div class="carousel-item">
					<img class="d-block w-100"
						src="https://images.pexels.com/photos/2355519/pexels-photo-2355519.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=650&w=940"
						alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100"
						src="https://images.pexels.com/photos/2544554/pexels-photo-2544554.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"
						alt="Third slide">
				</div>
				<!-- / 슬라이드 쇼 끝 -->
				<!-- 왼쪽 오른쪽 화살표 버튼 -->
				<a class="carousel-control-prev carousel_button_left" href="#demo"
					data-slide="prev"> <span class="carousel-control-prev-icon"
					aria-hidden="true"></span> <!-- <span>Previous</span> -->
				</a> <a class="carousel-control-next" href="#demo" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<!-- <span>Next</span> -->
				</a>
				<!-- / 화살표 버튼 끝 -->
				<!-- 인디케이터 -->
				<ul class="carousel-indicators">
					<li data-target="#demo" data-slide-to="0" class="active"></li>
					<!--0번부터시작-->
					<li data-target="#demo" data-slide-to="1"></li>
					<li data-target="#demo" data-slide-to="2"></li>
				</ul>
				<!-- 인디케이터 끝 -->
			</div>
		</div>
	</div>
	

		<div class="brand_images_size" >
			<a href="brandA.jsp" class="brand_images"> <img
				src="images/airdays.jpg" height="200px" width="300px" alt="brand1">
			</a> <a href="brandB.jsp" class="brand_images"> <img
				src="images/aer.jpg" height="200px" width="300px" alt="brand2">
			</a> <a href="brandC.jsp" class="brand_images"> <img
				src="images/charmzone.jpg" height="200px" width="300px" alt="brand3">
			</a> <a href="brandD.jsp" class="brand_images"> <img
				src="images/sinotex.png" height="200px" width="300px" alt="brand4">
			</a>
	 		<a href="brandE.jsp" class="brand_images"> <img
				src="images/under.jpg" height="200px" width="300px" alt="brand5">
			</a>
		</div>
		
</table>

</body>
</html>