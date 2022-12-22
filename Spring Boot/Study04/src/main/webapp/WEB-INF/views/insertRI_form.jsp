<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Room Information</title>
</head>
<body>
<br><br><br><br><br><br>
<h1 align=center>방 정보를 입력하세요 !!!</h1>
<form id=frmInsertRI action="/insertRI">
<table border=1 align=center>
<tr>
	<td>객실명</td><td><input type=text name=name id=name></td>
</tr>
<tr>
	<td>객실타입</td><td><input type=text name=type id=type></td>
</tr>
<tr>
	<td>숙박가능인원수</td><td><input type=number name=howmany id=howmany></td>
</tr>
<tr>
	<td>1박요금</td><td><input type=number name=howmuch id=howmuch></td>
</tr>
<tr>
	<td colspan=2 align=center>
		<input type=submit value='등록'>
	</td>
</tr>
</table>
</form>
</body>
<!-- <script>
$(document)
.on('submit', 'frmInsertRI', function(){
		alert("등록이 완료되었습니다.");
})
</script> -->
</html>