<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<form action="UpdateAccountC" onsubmit="return validCheck4()" method="post" >
		<table id="regTable" border="1">
			<tr>
				<td colspan="2" id="title">회원 수정</td>
			</tr>
			<tr>
				<td class="regTd1">이름</td>
				<td class="regTd2"><input name="name" id="name"
					value="${sessionScope.accountInfo.name}"></td>
			</tr>
			<tr>
				<td class="regTd1">ID</td>
				<td class="regTd2">${sessionScope.accountInfo.id}
				<input name="id" id="id"
					value="${sessionScope.accountInfo.id}" type="hidden">
				</td>
			</tr>
			<tr>
				<td class="regTd1">PW</td>
				<td class="regTd2"><input name="pw2" id="pw2"> <input name="pw"
					value="${sessionScope.accountInfo.pw}" type="hidden"></td>
			</tr>

			<tr>
				<td class="regTd1">생년월일</td>
				<td class="regTd2">${sessionScope.accountInfo.birth}</td>
			</tr>
			<tr>
				<td class="regTd1">주소</td>
				<td class="regTd2"><select name="addr" id="addr">
						<option value="seoul">서울</option>
						<option value="kyeonggi">경기</option>
						<option value="busan">부산</option>
						<option value="etc">기타</option>
				</select></td>
			</tr>
			<tr>
				<td class="regTd1">휴대폰 번호</td>

				<td class="regTd2"><input name="phone" id="phone"
					value="${sessionScope.accountInfo.phone}"></td>

			</tr>
			<tr>
				<td class="regTd1">질문</td>
				<td class="regTd2"><select name="qestion" id="qestion">
						<option value="q1">질문1</option>
						<option value="q2">질문2</option>
						<option value="q3">질문3</option>
						<option value="q4">질문4</option>
				</select></td>
			</tr>
			<tr>
				<td class="regTd1">답변</td>
				<td class="regTd2">	
				<input name="answer" id="answer" value="${sessionScope.accountInfo.answer}">
				<tr>
				<td colspan="2" id="updateAccountButton">
					<button class="updateButton" value="${sessionScope.accountInfo.id}" name="id">수정저장</button>
					<button class="updateButton" type="button" onclick="history.back()">취소</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>