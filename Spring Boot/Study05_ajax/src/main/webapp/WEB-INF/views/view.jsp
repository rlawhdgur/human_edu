<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물보기</title>
</head>
<body>
<h1 align=center>게시물 목록</h1>
<table border=1 align=center>
<tr>
	<td>게시물번호</td><td><label id=lblPost_id>&nbsp;${getWriter.post_id }</label></td>
</tr>
<tr>
	<td>제목</td><td><label id=lblTitle>&nbsp;&lt;${getWriter.title }&gt;</label></td>
</tr>
<tr>
	<td>내용</td>
	<td valign=top>
		<textarea name=content id=content rows=10 cols=80 readonly>${getWriter.content }</textarea>
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
		<a href = '/'>목록보기</a>
	</td>	
</tr>
</table>
</body>
</html>