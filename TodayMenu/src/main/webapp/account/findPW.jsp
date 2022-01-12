<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="PW_FindAccountC" onsubmit="return check()" name="myForm"
		method="post">
		<table id="regTable">
			<tr>
				<td colspan="2" id="title">PW 찾기</td>
			</tr>
			<tr>
				<td class="regTd1">ID</td>
				<td class="regTd2"><input name="id"></td>
			</tr>


			<tr>
				<td class="regTd1">질문</td>
				<td class="regTd2"><select name="qestion">
						<option value="기억에 남는 추억의 장소는?">기억에 남는 추억의 장소는?</option>
						<option value="자신의 보물 제1호는?">자신의 보물 제1호는?</option>
						<option value="인상 깊게 읽은 책 이름은?">인상 깊게 읽은 책 이름은?</option>
						<option value="자신이 가장 존경하는 인물은?">자신이 가장 존경하는 인물은?</option>
				</select></td>
			</tr>
			<tr>
				<td class="regTd1">답변</td>
				<td class="regTd2">
					<input name="answer">
				</td>
			</tr>

			<tr>
				<td><button id="regBtn">조회!</button></td>
				<td><button type="button" onclick="history.back()">취소</button></td>
			</tr>
		</table>
	</form>
</body>
</html>