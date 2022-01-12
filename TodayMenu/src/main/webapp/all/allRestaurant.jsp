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
							<td class="searchButtonTd">
								<a href="allRestaurantWhat?what=1">한식</a>
							</td>
							<td class="searchButtonTd">
								<a href="allRestaurantWhat?what=2">중식</a>
							</td>
							<td class="searchButtonTd">
								<a href="allRestaurantWhat?what=3">일식</a>
							</td>
							<td class="searchButtonTd">
								<a href="allRestaurantWhat?what=4">양식</a>
							</td>
							<td class="searchButtonTd">
								<a href="allRestaurantWhat?what=5">아시안</a>
							</td>
							<td class="searchButtonTd">
								<a href="allRestaurantWhat?what=6">분식</a>
							</td>
							<td class="searchButtonTd">
								<a href="allRestaurantWhat?what=7">디저트</a>
							</td>
							<td class="searchTd">
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
					<div class="allRestaurantDetail"><a href="RestaurantInfo?no=${i.no }"><img src="${i.img }"><br><span><strong>${i.name }</strong> <br> ${i.place }</span></a></div>
				</c:forEach> 
			</td>
		</tr>
		<c:choose>
		<c:when test="${what == null }">
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
		</c:when>
		<c:otherwise>
			<tr>
				<td>
					<c:choose>
						<c:when test="${curPageNo == 1 }">[맨앞]</c:when>
						<c:otherwise>
							<a href="TypeRestaurantPageController?p=1&what=${what }">[맨앞]</a>
						</c:otherwise>
					</c:choose>
				</td>
				<td>
					<c:choose>
						<c:when test="${curPageNo == 1 }">&lt;</c:when>
						<c:otherwise>
							<a href="TypeRestaurantPageController?p=${curPageNo - 1}&what=${what }">&lt;</a>
						</c:otherwise>
					</c:choose>
				</td>
				<td>
					<c:forEach var="p" begin="1" end="${pageCount }">
						<!-- 페이지 카운터를 누르면 해당 페이지로 이동함 -->
						<a href="TypeRestaurantPageController?p=${p }&what=${what }">[${p }]</a>
					</c:forEach>
				</td>
				<td>
					<c:choose>
						<c:when test="${curPageNo == pageCount }">&gt;</c:when>
						<c:otherwise>
							<a href="TypeRestaurantPageController?p=${curPageNo + 1}&what=${what }">&gt;</a>
						</c:otherwise>
					</c:choose>
				</td>
				<td>
					<c:choose>
						<c:when test="${curPageNo == pageCount }">[맨뒤]</c:when>
						<c:otherwise>
							<a href="TypeRestaurantPageController?p=${pageCount }&what=${what }">[맨뒤]</a>
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
		</c:otherwise>
		</c:choose>
	</table>
</body>
</html>