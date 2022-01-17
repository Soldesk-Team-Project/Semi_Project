<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Cal_divC" name="div" method="post" onsubmit="return check();">
		<table border="0" id="Cal_divTable">
			<tr>
				<td id="Cal_divTitle"><img src="img/cal/cal.png"></td>
			</tr>
			<tr>
				<td class="Cal_divPut">금액 : <input type="number" min="0" name="cost"> 원
				</td>
			</tr>
			<tr>
				<td class="Cal_divPut">인원 : <input type="number" min="0" max="10" name="people"> 명
				<br>
					(최대 10명까지)
				</td>
			</tr>
			<tr>
				<td>
					<button>계산하기</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>