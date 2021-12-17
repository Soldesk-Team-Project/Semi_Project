<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="HomeController" method="get" id="loginForm">
		<!-- 컨셉 : 최소 3자 최대 12자 (박스 안에 들어갈 수 있도록) -->
		ID : <input class="loginInput">
		PW : <input type="password" class="loginInput"> <p>
		<button type="button" onclick="location.href='www.naver.com'">마이페이지</button>
		<button>로그인</button>
		<button type="button" onclick="location.href='www.naver.com'">회원가입</button>
	</form>
</body>
</html>