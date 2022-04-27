<%@page import="java.io.PrintWriter"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userId" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userPhoneNumber" />
<jsp:setProperty name="user" property="userAddress" />
<jsp:setProperty name="user" property="userDetailAddress" />
<jsp:setProperty name="user" property="userTelType" />
<jsp:setProperty name="user" property="userEmail" />
<jsp:setProperty name="user" property="userCancel" />
<jsp:setProperty name="user" property="userExchange" />
<jsp:setProperty name="user" property="userReturn" />
<jsp:setProperty name="user" property="userOrder" />
<jsp:setProperty name="user" property="userDeposit" />
<jsp:setProperty name="user" property="userDelivery" />
<jsp:setProperty name="user" property="userDeliveryRequest" />
<jsp:setProperty name="user" property="userCoupon" />
<jsp:setProperty name="user" property="userPoint" />


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>
<%
  String userId = request.getParameter("userId");
  String userPassword = request.getParameter("userPassword");
%>



</body>
</html>