<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Information</title>
</head>
<body>
로그인아이디 : ${newUid }
<br>
<br>
비밀번호 : ${newPwc }
<br>
<br>
실명 : ${newName }
<br>
<br>
모바일 : ${newMobile }
<br>
<br>
<!-- <a>
	 <button onclick="location.href='/login'">확인</button>
</a> -->
	<button id=btnOk>확인</button>
</body>
<script src='https://code.jquery.com/jquery-3.4.1.js'></script>
<script>
alert("회원가입되었습니다.");

$(document)
.on ('click', '#btnOk', function(){
	document.location="/login";
})
</script>
</html>
