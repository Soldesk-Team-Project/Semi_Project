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
		<table id="regTable">
			<tr>
				<td colspan="2" id="title">회원 정보 찾기</td>
			</tr>
			<tr>
				<td class="regTd1">ID찾기</td>
				<td class="regTd2">
					<button	onclick="location.href='ID_FindAccountC'" type="button">id</button>
				</td>
			</tr>
			<tr>
				<td class="regTd1">PW찾기</td>
				<td class="regTd2">
					<button>pw</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>