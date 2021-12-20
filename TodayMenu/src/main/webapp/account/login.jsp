<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="HomeController" method="get" id="loginForm">
		<!-- 컨셉 : 최소 3자 최대 12자 (박스 안에 들어갈 수 있도록) -->
		ID <input class="loginInput"> &nbsp;&nbsp;
		PW <input type="password" class="loginInput"> 
		<button id="loginButton">로그인</button> <br>
		<button type="button" class="indexButton" onclick="location.href='www.naver.com'">마이페이지 &nbsp;&nbsp;&nbsp;&nbsp;|</button>
		<button type="button" class="indexButton" onclick="location.href='www.naver.com'">회원가입</button>
	</form>
</body>
</html>