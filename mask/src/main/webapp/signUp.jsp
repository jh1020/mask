<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <style>
        /* @import url('http://fonts.googleapis.com/earlyaccess/nanumgothic.css'); */
        @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 100;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.otf) format('opentype');}
        @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 300;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.otf) format('opentype');} @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 400;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.otf) format('opentype');} @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 500;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.otf) format('opentype');} @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 700;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.otf) format('opentype');} @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 900;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.otf) format('opentype');}

        body{
           margin:0 auto;
        }
        /* body, table, div, p ,span{font-family:'Nanum Gothic';} */
        body, table, div, p ,span{font-family:'Noto Sans KR';}
        
        a{
            text-decoration: none;
            color:#333;
        }
        #con{
            width:100%;
            height: 100vh;
            background-color:#f5f1ee;
            background-image:url("img/bg.jpg");
            background-position: center center;
            background-repeat: no-repeat;
            background-size:cover;
            padding:0;
        }
        #login{
            width:600px;
            height: 600px;
            margin:0 auto;
            /* position: relative; */
            /* background:#ddd; */
        }
        #login_form{
            /* text-align:center; */
            border-radius: 10px;
            padding:30px 50px;
            background: #fff;
            text-align: center;
            position: absolute;
            top:50%;
            left:50%;
            transform: translate(-50%, -50%);
        }
        .login{
            font-size:25px;
            font-weight: 900;
            color:#333;
        }

        .size{
            width:300px;
            height:30px;
            padding-left:10px;
            background-color: #f4f4f4;
            /* margin-left:10px; */
            border:none;
            border-radius: 5px;
        }

        .btn{
            width:310px;
            height: 40px;
            font-size:15px;
            background-color: #df3278;
            color:#fff;
            border:none;
            cursor: pointer;
            border-radius: 5px;
        }
        .btn:hover{
            background:#ca296a;
        }
        hr{
            margin-top:20px;
            background:#eee;
            
        }
        .find{
            color:#ddd;
            font-size:12px;
        }
        .find span{
            padding-left:10px;
        }
        .find span::before{
            content:'|';
            color:#333;
            padding-right: 10px;
        }
        .find span:nth-child(1):before{
            content:none;
        }
        
        .find span:nth-child(1){
            padding-left:0px;
        }
        
        .find a:hover{
            color:#707070;
        }
        .num1{
            width:60px;
            text-align: left;
        }
        .num2{
            width:235px;
        }
        
    </style>
<body>
    <div id="con">
    <div id="login">
    <div id="login_form"><!--로그인 폼-->
    <form name="SignUp" action="SignUpAction.jsp" method="post">
        <h3 class="login" style="letter-spacing:-1px;">Sign up to Web</h3>

        <!-- <p>
            <input type="submit" value="Sign in with Google" class="btn" style="background-color:#217Af0">
        </p> 구글로 로그인-->

        <hr>

        <!-- <span>ID</span> -->
        <p style="text-align: left; font-size:12px; color:#666">username</p>
        <input type="text" placeholder="아이디" class="size" name="Id">
        <p></p>
        </label><!--아이디-->

        <label>
        <!-- <span>PW</span> -->
        <p style="text-align: left; font-size:12px; color:#666">Password </p>
        <input type="password" placeholder="비밀번호" class="size" name="Password">
        </label><!--비밀번호-->

        <label>
            <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color:#666"> </p>
            <input type="password" placeholder="비밀번호 확인" class="size" name="PasswordCheck">
        </label><!--비밀번호 확인-->
        
        <label>
            <!-- <span>Name</span> -->
            <p style="text-align: left; font-size:12px; color:#666"> 이름</p>
            <input type="text" placeholder="이름" class="size" name="Name">
        </label><!--이름-->

        <label>
            <!-- <span>PW</span> -->
        <p style="text-align: left; font-size:12px; color:#666">Mobile Phone</p>
            <select class="size num1" name="teltype">
                <option value="1" selected>SKT</option>
                <option value="2" selected>KT</option>
                <option value="3" selected>LG</option>
                <option value="4" selected>알뜰폰</option>
            </select>
            <input placeholder="-빼고 숫자만 입력"  class="size num2" required name="Phone">
         </label> <!--전화번호-->


         <label>
                <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color:#666">E-mail</p>
                <input type="text" placeholder="이메일" class="size" name="Email">
        </label> <!--이메일-->  
        <label>
        	<!--<span>address</span> -->
        	<p style="text-align: left; font-size:12px; color:#666">address</p>
                <input type="text" placeholder="주소" class="size" name="Address">
        	
        </label>
        <label>
        	<!--<span>address</span> -->
        	<p style="text-align: left; font-size:12px; color:#666">Detail address</p>
                <input type="text" placeholder="상세주소" class="size" name="d_Address">
        	
        </label>


    <br>
        <p>
            <input type="submit" value="Create Acoout" class="btn" id="Create">
            
        </p>
    </form>

    <hr>
    <p class="find">
        <span><a href="login.jsp" >로그인 페이지로 이동</a></span>
    </p>
    </div>
    <div>
    </div><!--con-->

</body>
</html>