<%@page import="ch.qos.logback.core.recovery.ResilientSyslogOutputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Home</title>
</head>
<body>
<%-- <c:if test="${empty userid}">
<a href='/login'>로그인</a>
&nbsp;&nbsp;
<a href='/signIn'>회원가입</a>
</c:if>
<c:if test="${not empty userid}">
<lable>${userid}</lable>
&nbsp;&nbsp;
<a href='/signout'>로그아웃</a>
</c:if> --%>
<% 
	if(session.getAttribute("gUserid")==null) {
		out.print("<a href='/login'>로그인</a>&nbsp;&nbsp;<a href='/signIn'>회원가입</a>");
	}
	else {
		out.print("<lable>"+session.getAttribute("gUserid")+"</lable>&nbsp;&nbsp;<a href='/signOut'>로그아웃</a>");
	}
%>
<br>
<br>
<br>
<h1>Welcome to my Home~~</h1>
</body>
</html>