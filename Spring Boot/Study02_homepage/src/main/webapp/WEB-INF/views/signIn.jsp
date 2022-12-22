<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignIn</title>
</head>
<body>
<form action="/viewUser" id=frmSignin>
<table>
<tr>
	<td>로그인아이디</td><td><input type=text name=newId>
</tr>
<tr>
	<td>비밀번호</td><td><input type=password name=newPasscode id=newPasscode>
</tr>
<tr>
	<td>비밀번호확인</td><td><input type=password name=newPasscode_ id=newPasscode_>
</tr>
<tr>
	<td>실명</td><td><input type=text name=name>
</tr>
<tr>
	<td>모바일</td><td><input type=text name=mobile>
</tr>
<tr>
	<td colspan=2 align=center>
		<input type=submit value='회원가입' id=btnSubmit>
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
/* .on('submit', '#frmSignin', function(){
	console.log('submit');
	if($('#newPasscode').val()==$('#newPasscode_').val()){
		return true;
	}
	else {
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	}
}) */
 .on('click', '#btnSubmit', function(){
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