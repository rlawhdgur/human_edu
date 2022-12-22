<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignIn Page</title>
</head>
<body>
<h1>회원가입을 하세요!!</h1>
<form action="/viewUser" id=frmSignIn>
<table>
<tr>
	<td>로그인아이디</td><td><input type=text name=newId id=newId>
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
		<input type=submit value='회원가입' id=btnSignIn>
	</td>
</tr>
</table>
</form>
<a href='/'>홈으로</a>
&nbsp;&nbsp;
<a href='/login'>로그인하기</a>
</body>
<script src='https://code.jquery.com/jquery-3.4.1.js'></script>
<script>
$(document)
.on('click', '#btnSignIn', function(){
	if($('#newId').val()=='' || $('#name').val()=='' || $('#mobile').val()=='') {
		alert("빈칸을 확인해주세요.");
		return false;
	}
	if($('#newPasscode').val()==$('#newPasscode_').val()){
		 $('frmSignin').submit();
	}
	else {
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	}
})
</script>
</html>