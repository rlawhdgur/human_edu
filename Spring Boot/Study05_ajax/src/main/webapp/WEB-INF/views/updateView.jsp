<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물보기</title>
</head>
<body>
<h1 align=center>Update Write</h1>
<form id=frmModify method=post action="/modify">
<table border=1 align=center>
<tr>
	<td>게시물번호</td><td><input type=text id=tetPost_id name=tetPost_id value=${getWriter.post_id} readonly></td>
</tr>
<tr>
	<td>제목</td>
	<td>
	<input type=text id=tetTitle name=tetTitle value=${getWriter.title }>
	</td>
</tr>
<tr>
	<td>내용</td>
	<td valign=top>
		<textarea name=content id=content rows=10 cols=80>${getWriter.content }</textarea>
	</td>
</tr>
<tr>
	<td>작성자</td>
	<td>
		<label id=lblWriter>${getWriter.writer }</label>
	</td>
</tr>
<tr>
	<td>작성시각</td>
	<td>
		<input type=text value=${getWriter.created } readonly>
	</td>
</tr>
<tr>
	<td>수정시각</td>
	<td>
		<input type=text value=${getWriter.updated } readonly>
	</td>
</tr>
<tr>
	<td colspan=2 align=right>
		<input type=submit value='수정'>&nbsp;
		<input type=reset value='비우기'>
	</td>	
</tr>
</table>
</form>
</body>
</html>