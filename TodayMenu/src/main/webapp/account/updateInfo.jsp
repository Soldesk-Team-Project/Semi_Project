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
		<table id="regTable2" border="1">
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
				<td class="regTd2"><input name="pw2" id="pw2"  value="${sessionScope.accountInfo.pw}">
				<!--   <input name="pw" id="pw" value="${sessionScope.accountInfo.pw}" type="hidden"> -->  
					</td>
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
					<input name="answer" id="answer" value="${sessionScope.accountInfo.answer}">
				</td>
			</tr>
			<tr>
				<td colspan="2" id="updateAccountButton">
					<button class="regBtn" value="${sessionScope.accountInfo.id}" name="id">수정저장</button>
					<button class="regBtn" type="button" onclick="history.back()">취소</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>