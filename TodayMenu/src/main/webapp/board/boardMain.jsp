<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<c:if test="${sessionScope.accountInfo.id != null }">
			<tr>
				<td>
					<button type="button" onclick="location.href='WriteC'"
						class="regBtn">글쓰기</button>
				</td>
			</tr>
		</c:if>
		<tr>
			<td>
				<table border="1" id="boardTable">
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>작성자</td>
						<td>작성일</td>
					</tr>
					<c:forEach var="b" items="${boards }">
						<tr>
							<td>${b.no }</td>
							<td onclick="location.href='BoardDetailC?no=${b.no }'">${b.title }</td>
							<td>${b.id }</td>
							<td>${b.date }</td>
						</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
			<tr>
				<td>
					<c:choose>
						<c:when test="${curPageNo == 1 }">[맨앞]</c:when>
						<c:otherwise>
							<a href="BoardPageController?p=1">[맨앞]</a>
						</c:otherwise>
					</c:choose>
				</td>
				<td>
					<c:choose>
						<c:when test="${curPageNo == 1 }">&lt;</c:when>
						<c:otherwise>
							<a href="BoardPageController?p=${curPageNo - 1}">&lt;</a>
						</c:otherwise>
					</c:choose>
				</td>
				<td>
					<c:forEach var="p" begin="1" end="${pageCount }">
						<a href="BoardPageController?p=${p }">[${p }]</a>
					</c:forEach>
				</td>
				<td>
					<c:choose>
						<c:when test="${curPageNo == pageCount }">&gt;</c:when>
						<c:otherwise>
							<a href="BoardPageController?p=${curPageNo + 1}">&gt;</a>
						</c:otherwise>
					</c:choose>
				</td>
				<td>
					<c:choose>
						<c:when test="${curPageNo == pageCount }">[맨뒤]</c:when>
						<c:otherwise>
							<a href="BoardPageController?p=${pageCount }">[맨뒤]</a>
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
	</table>
</body>
</html>