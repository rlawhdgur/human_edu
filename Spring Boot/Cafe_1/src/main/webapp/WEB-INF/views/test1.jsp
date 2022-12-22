<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1</title>
</head>
<body>
<%
	out.print("Human class");
%>
<h1>${myName}</h1>
<h1>${others}</h1>

<h1>${menu}</h1>

<c:forEach var ="name" items ="${menu}">
	<h1>${name}</h1>
</c:forEach>
</body>
</html>