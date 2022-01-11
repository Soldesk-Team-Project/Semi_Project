<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" id="Cal_divResultTable">
		<tr style="background: Deepskyblue; color: black; font-size: 25pt;">
			<td><h4>더치 페이 계산기</h4></td>
		</tr>
		<tr>
			<td>더치 페이 금액 : ${rr.r} 원
			</td>
		</tr>
		<tr>
			<td><button onclick="location.href='HomeController'">홈으로</button>
				<button onclick="location.href='Cal_divC'">다시하기</button>
			</td>
		</tr>
	</table>
</body>
</html>