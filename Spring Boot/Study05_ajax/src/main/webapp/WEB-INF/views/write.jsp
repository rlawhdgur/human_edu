<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Write</title>
</head>
<body>
<h1 align=center>Write</h1>
<form id=frmInsert method=post action="/insert">
<table align=center>
<tr>
	<td>제목</td><td><input type=text name=title id=title></td>
</tr>
<tr>
	<td>내용</td>
	<td valign=top>
		<textarea name=content id=content rows=10 cols=80 required></textarea>
	</td>
</tr>
<tr>
	<td colspan=2 align=right>
		<input type=submit value='등록'>&nbsp;
		<input type=reset value='비우기'>
	</td>
</tr>
</table>
</form>
</body>
</html>