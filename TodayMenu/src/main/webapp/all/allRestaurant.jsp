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
	<table border="1" id="allRestaurantTable">
		<tr>
			<td colspan="5">
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
			<td colspan="5">
				<c:forEach var="i" items="${rests }">
					<div class="allRestaurantDetail"><img src="${i.img }"><br><span>${i.name } <br> ${i.place }</span></div>
				</c:forEach> 
			</td>
		</tr>
		<tr>
			<td>
				<c:choose>
					<c:when test="${curPageNo == 1 }">[맨앞]</c:when>
					<c:otherwise>
						<a href="RestaurantPageController?p=1">[맨앞]</a>
					</c:otherwise>
				</c:choose>
			</td>
			<td>
				<c:choose>
					<c:when test="${curPageNo == 1 }">&lt;</c:when>
					<c:otherwise>
						<a href="RestaurantPageController?p=${curPageNo - 1}">&lt;</a>
					</c:otherwise>
				</c:choose>
			</td>
			<td>
				<c:forEach var="p" begin="1" end="${pageCount }">
					<!-- 페이지 카운터를 누르면 해당 페이지로 이동함 -->
					<a href="RestaurantPageController?p=${p }">[${p }]</a>
				</c:forEach>
			</td>
			<td>
				<c:choose>
					<c:when test="${curPageNo == pageCount }">&gt;</c:when>
					<c:otherwise>
						<a href="RestaurantPageController?p=${curPageNo + 1}">&gt;</a>
					</c:otherwise>
				</c:choose>
			</td>
			<td>
				<c:choose>
					<c:when test="${curPageNo == pageCount }">[맨뒤]</c:when>
					<c:otherwise>
						<a href="RestaurantPageController?p=${pageCount }">[맨뒤]</a>
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
	</table>
</body>
</html>