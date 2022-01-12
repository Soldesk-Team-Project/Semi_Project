<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<form action="RegAccountC" onsubmit="return validCheck2()" name="myForm" method="post">
		<table id="regTable2" border="1">
			<tr>
				<td colspan="2" id="title">회원 가입</td>
			</tr>
			<tr>
				<td class="regTd1">이름</td>
				<td class="regTd2"><input name="name" id="name" placeholder="2글자이상 5글자 미만" ></td>
			</tr>
			<tr>
				<td class="regTd1">ID</td>
				<td class="regTd2"><input  name="id" id="id" placeholder="영어 소문자 + 숫자">
				 <input type="button" value="ID중복확인" onclick="idCheck()">
				</td>
				
			</tr>
			<tr>
				<td class="regTd1">PW</td>
				<td class="regTd2"><input  name="pw" id="pw" type="password" placeholder="영어 대,소문자,숫자,특문 ! @"></td>
			</tr>
			<tr>
				<td class="regTd1">PW 확인</td>
				<td class="regTd2"><input name="pw2" id="pw2" type="password"></td>
			</tr>
			<tr>
				<td class="regTd1">생년월일</td>
				<td class="regTd2"><input name="birth" type="date"></td>
			</tr>
			<tr>
				<td class="regTd1">주소</td>
				<td class="regTd2"><select name="addr">
						<option value="seoul">서울</option>
						<option value="kyeonggi">경기</option>
						<option value="busan">부산</option>
						<option value="etc">기타</option>
				</select></td>
			</tr>

			<tr>
				<td class="regTd1">휴대폰 번호</td>
				<td class="regTd2"><input name="phone"  id="phone" placeholder="숫자 11자리">
				</td>
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
				<input name="answer" id="answer">
			</td>
			</tr>
			<tr>
				<td colspan="2"><button class="regBtn">가입!</button></td>
			</tr>
		</table>
	</form>
</body>
</html>