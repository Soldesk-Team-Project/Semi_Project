<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="FindAccountC" method="post">
		<table id="regTable" border="0">
			<tr>
				<td colspan="2" id="title">회원 정보 찾기</td>
			</tr>
			<tr>
				<td class="regTd1">ID찾기</td>
				<td class="regTd2">
					<button	onclick="location.href='ID_FindAccountC'" type="button" class="findBtn">id</button>
				</td>
			</tr>
			<tr>
				<td class="regTd1">PW찾기</td>
				<td class="regTd2">
					<button class="findBtn">pw</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>