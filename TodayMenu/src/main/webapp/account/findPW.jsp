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
		<table id="regTbl">
			<tr>
				<td colspan="2" id="title">pw 찾기</td>
			</tr>
			<tr>
				<td class="regTd1">ID</td>
				<td class="regTd2"><input name="id"></td>
			</tr>


			<tr>
				<td class="regTd1">질문</td>
				<td class="regTd2"><select name="qestion">
						<option value="q1">질문1</option>
						<option value="q2">질문2</option>
						<option value="q3">질문3</option>
						<option value="q4">질문4</option>
				</select></td>
			</tr>
			<tr>
				<td class="regTd1">답변</td>
				<td class="regTd2"><select name="answer">
						<option value="a1">답변1</option>
						<option value="a2">답변2</option>
						<option value="a3">답변3</option>
						<option value="a4">답변4</option>
				</select></td>
			</tr>

			<tr>
				<td><button id="regBtn">조회!</button></td>
				<td><button type="button" onclick="history.back()">취소</button></td>
			</tr>
		</table>
	</form>
</body>
</html>