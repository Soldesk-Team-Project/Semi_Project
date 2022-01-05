<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" id="allRestaurantTable" width="500px">
		<tr>
			<td>
				<form action="SearchRestaurantC">
					<table border="1" id="searchRestaurantInput">
						<tr>
							<td>
								<input name="search">
								<button><img alt="" src="img/icon/돋보기.png" width="20px"></button>
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
		<tr>
			<td>
				<table border="1">
					<tr>
					 	<c:forEach var="i" items="${rests }">
							<td>
								<table border="1" width="100%">
									<tr>
										<td id="allRestaurantImg">
											<img alt="" src="${i.img }">
										</td>
									</tr>
									<tr>
										<td id="allRestaurantDetail">
											${i.name } <br>
											${i.place }
										</td>
									</tr>
								</table>
							</td>
						</c:forEach> 
					</tr>
				</table> 
			</td>
		</tr>
		<tr>
			<td>
				
			</td>
		</tr>
	</table>
</body>
</html>