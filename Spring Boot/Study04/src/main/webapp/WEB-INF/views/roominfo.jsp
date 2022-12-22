<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Room Information</title>
</head>
<body>
<h1>Room Information</h1>
<table border=1 id=tblRoomInfo>
<tr>
	<th>Num</th>
	<th>Name</th>
	<th>Type</th>
	<th>Howmany</th>
	<th>Howmuch</th>
</tr>
<c:forEach var="roominfo" items="${ri }">
<tr>
	<td>${roominfo.num }</td>
	<td>${roominfo.name }</td>
	<td>${roominfo.type }</td>
	<td>${roominfo.howmany }</td>
	<td>${roominfo.howmuch }</td>
</tr>
</c:forEach>
</table>
<br><br>
<form id="frmRoomInfo" action="/controlRoomInfo">
<input type=hidden name=optype id=optype value='insert'>
<table border=1>
	<tr>
		<td>Num</td><td><input type=text name=roomNum id=roomNum readonly></td>
	</tr>
	<tr>
		<td>Name</td><td><input type=text name=roomName id=roomName></td>
	</tr>
	<tr>
		<td>Type</td>
		<td>
			<select id=type name=type>
			<c:forEach var="rtype" items="${rt }">
				<option value="${rtype.typenum}">${rtype.typenum}, ${rtype.typename}</option>
			</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>Howmany</td>
		<td>
			<input type=number name=roomHowmany id=roomHowmany value="1" min="1" max="99">
		</td>
	</tr>
	<tr>
		<td>Howmuch</td>
		<td>
			<input type=text name=roomHowmuch id=roomHowmuch value="0">
		</td>
	</tr>
	<tr>
		<td colspan=2 align=center>
			<input type=button value='추가' id=btnAddNew>
			<input type=button value='삭제' id=btnDelete>
			<input type=button value='비우기' id=btnReset>
		</td>
	</tr>		
</table>
</form>		
</body>
<script src='https://code.jquery.com/jquery-3.4.1.js'></script>
<script>
$(document)
.on('click', '#tblRoomInfo tr', function(){
	let ndx = $(this).index();
	let roomnum = $(this).find('td:eq(0)').text();
	let roomname = $(this).find('td:eq(1)').text();
	let type = $(this).find('td:eq(2)').text();
	let roomHowmany = $(this).find('td:eq(3)').text();
	let roomHowmuch = $(this).find('td:eq(4)').text();
	$('#roomNum').val(roomnum);
	$('#roomName').val(roomname);
	$('#type').val(type);
	$('#roomHowmany').val(roomHowmany);
	$('#roomHowmuch').val(roomHowmuch);
	$('#optype').val('update');
	
/* 	$('#roomNum').val($(this).find('td:eq(0)').text(););
	$('#roomName').val($(this).find('td:eq(1)').text(););
	$('#type').val($(this).find('td:eq(2)').text(););
	$('#roomHowmany').val($(this).find('td:eq(3)').text(););
	$('#roomHowmuch').val($(this).find('td:eq(4)').text();); */
	return false;
})
.on('click', '#btnDelete', function(){
	if($('#roomNum').val()=='' || $('#roomName').val()==''	||
		$('#type').val()=='' || $('#roomHowmany').val()=='' || $('#roomHowmuch').val()=='')
		return false;
	$('#optype').val('delete');
	$('#frmRoomInfo').submit();
})
.on('click', '#btnAddNew', function(){
	if($('#roomName').val()=='' || $('#type').val()=='' || 
		$('#roomHowmany').val()=='' || $('#roomHowmuch').val()=='') 
		alert("빈칸을 확인해주세요.");
		return false;
 	$('#frmRoomInfo').submit();
})
.on('click', '#btnReset', function(){
	$('#roomNum, #roomName, #type, #roomHowmany, #roomHowmuch').val('')
	$('#opytpe').val('insert');
	return false;
})
</script>
</html>