<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="RandomMenuC">
		<table border="1" id="randomMenuTable">
			<tr id="randomMenuButton">
				<td>
					<div class="page">
					  <button class="fun-btn" name="rmbtn" value="1">랜덤추천</button>
					</div>
				</td>
			</tr>
			<tr id="randomMenuImg">
				<td>
					<img alt="추천결과" src="${menu.img } " style="width: 100%; height: 100%;">
				</td>
			</tr>
			<tr id="randomMenuDetail">
				<td>
					he
				</td>
			</tr>
		</table>
	</form>
</body>
</html>