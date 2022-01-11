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
		<table border="1" id="Cal_divTable">
			<tr	style="background-color: deepskyblue; color: black; font-size: 25pt">
				<td>더치폐이 계산기</td>
			</tr>
			<tr>
				<td>금액 : <input type="text" name="cost"> 원
				</td>
			</tr>
			<tr>
				<td>인원 : <input type="number" min="0" max="10" name="people"> 명
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