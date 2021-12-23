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
					<table border="1">
						<tr>
							<td class="rmDetailLeft">음식 정보 및 식당 추천</td>
							<td class="rmDetailRight">디저트</td>
						</tr>
						<tr>
							<td class="rmDetailLeft">식당 추천</td>
							<td class="rmDetailRight">
								<img alt="추천결과" src="${dessert.img }" style="width: 100%; height: 100%;">
							</td>
						</tr>
						<tr>
							<td colspan="2" class="rmResult">${menu.name } 먹고  ${dessert.name } ㄱㄱ</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>