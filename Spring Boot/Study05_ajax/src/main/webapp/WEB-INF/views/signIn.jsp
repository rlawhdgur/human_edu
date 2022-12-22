<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignIn Page</title>
</head>
<body>
<h1 align=center>회원가입을 하세요!!</h1>
<!-- <form action="/viewUser" id=frmSignIn> -->
<table align=center>
<tr>
	<td>로그인아이디</td>
	<td>
		<input type=text name=newId id=newId>&nbsp;
		<input type=button id=btnDuplicate value='중복확인'>
		<input type=hidden id=bDuplicate>
	</td>	
</tr>
<tr>
	<td>비밀번호</td><td><input type=password name=newPasscode id=newPasscode>
</tr>
<tr>
	<td>비밀번호확인</td><td><input type=password name=newPasscode_ id=newPasscode_>
</tr>
<tr>
	<td>실명</td><td><input type=text name=name id=name>
</tr>
<tr>
	<td>모바일</td><td><input type=text name=mobile id=mobile>
</tr>
<tr>
	<td colspan=2 align=center>
		<input type=button value='회원가입' id=btnSignIn>
	</td>
</tr>
</table>
<!-- </form> -->
<a href='/'>홈으로</a>
&nbsp;&nbsp;
<a href='/login'>로그인하기</a>
</body>
<script src='https://code.jquery.com/jquery-3.4.1.js'></script>
<script>
$(document)
.on('click', '#btnDuplicate', function(){
	if($('#newId').val()=='')
		return false;
	$.post('/checkDup', {newId:$('#newId').val()}, function(data){
		if(data=='1') {
			alert("이미 사용중인 아이디입니다.");
		}
		else {
			alert("사용가능한 아이디입니다.");
			$('#bDuplicate').val('ok');
		}
	}, 'text');
	return false;
})
.on('click', '#btnSignIn', function(){
	if($('#newId').val()=='' || $('#name').val()=='' || $('#mobile').val()=='') {
		alert("빈칸을 확인해주세요.");
		return false;
	}
	if($('#bDuplicate').val()!="ok") {
		alert("중복확인하십시오.");
		return false;
	}
	if($('#newPasscode').val()!=$('#newPasscode_').val()){
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	}
	$.post('/viewUser', {newId:$('#newId').val(), newPasscode:$('#newPasscode').val(),
		name:$('#name').val(), mobile:$('#mobile').val()}, function(data){
			if(data=='ok') {
				alert("회원가입되었습니다.");
				document.location = '/login';
			}
			else {
				alert("회원가입 실패!!");
				$('#newId', '#newPasscode', '#newPasscode_', '#name',
						'#mobile', '#bDuplicate').val('');
			}
		}, 'text');
})
</script>
</html>