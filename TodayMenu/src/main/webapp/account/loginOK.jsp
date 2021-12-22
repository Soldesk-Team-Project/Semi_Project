<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!-- 컨셉 : 최소 3자 최대 12자 (박스 안에 들어갈 수 있도록) -->
		<span class="loginForm"> ${sessionScope.accountInfo.name }님 안녕하세요! </span> <br>
		<button type="button" class="indexButton" onclick="location.href='AccountInfoC'" style="background-color:transparent; border: 0; outline: 0; padding-top: 4px; font-family: 'CookieRunBold';">마이페이지 &nbsp;</button>|
		<button type="button" class="indexButton" onclick="location.href='LoginController'" style="background-color:transparent; border: 0; outline: 0; padding-top: 4px; font-family: 'CookieRunBold'; ">로그아웃</button>
</body>
</html>