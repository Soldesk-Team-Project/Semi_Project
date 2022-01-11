<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<form action="RegAccountC" onsubmit="return validCheck2()" name="myForm" method="post" > 
		<table id="regTable" border="1">
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
				 <input type="hidden" name="idDuplication" value="idUncheck" >
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
						<option value="q1">질문1</option>
						<option value="q2">질문2</option>
						<option value="q3">질문3</option>
						<option value="q4">질문4</option>
				</select></td>
			</tr>		
			<tr>
			<td class="regTd1">답변</td>
				<td class="regTd2">
			<input name="answer" id="answer">
	</td>
			</tr>
			
			<tr>
				<td colspan="2"><button id="regBtn">가입!</button></td>
			</tr>
		</table>
	</form>
</body>
</html>