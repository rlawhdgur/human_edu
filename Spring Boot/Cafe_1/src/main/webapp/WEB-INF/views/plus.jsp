<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>더하기</title>
</head>
<body>
<form method="get" action="/doplus">
<table>
<tr>
	<td>A</td><td><input type=text name=aText></td>
</tr>
<tr>
	<td>B</td><td><input type=text name=bText></td>
</tr>
<tr>
	<td colspan=2 align=center>
		<input type=submit value='더하기'>
	</td>
</tr>		
</table>
</form>
</body>
</html>