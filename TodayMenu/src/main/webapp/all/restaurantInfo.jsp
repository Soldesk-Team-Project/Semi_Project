<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="restaurantInfoTable" border="1">
		<tr>
			<td id="map"><img src="img/icon/고민하는얼굴.png">지도</td>
			<td id="detail">
				<table border="1">
					<tr>
						<td id="restaurantImg" colspan="2"><img src="${rests.img }"> 이미지</td>
					</tr>
					<tr>
						<td id="restaurantInfo">
							${rests.name } <br>
							${rests.place }
						</td>
						<td id="back"><span onclick="history.back()">돌아가기</span></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>