<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Departments</title>
</head>
<body>
<h1>My Departments List</h1>
<table border=1>
<tr>
	<th>부서번호</th>
	<th>부서이름</th>
	<th>부서장이름</th>
	<th>이름</th>
</tr>
<c:forEach var="departments" items="${dn }">
<tr>
	<td>${departments.department_id }</td>
	<td>${departments.department_name }</td>
	<td>${departments.parent_name }</td>
	<td>${departments.emp_name }</td>
</tr>
</c:forEach>	
</table>
</body>
</html>