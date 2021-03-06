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
	<form action="BoardController">
		<table border="0" id="boardSearchTable">
			<tr>
				<td class="boardSearchTd1"></td>
				<td class="boardSearchTd2"><select name="searchType">
					<option value="1">제목
					<option value="2">작성자
				</select></td>
				<td class="boardSearchTd3"><input name="searchContent">
				<button><img alt="" src="img/icon/돋보기.png" width="20px"></button></td>
			</tr>
		</table>
	</form>
	<table border="1" id="boardMainTable">
		<tr id="boardMainTitleTr">
			<td>번호</td>
			<td colspan="2">제목</td>
			<td>작성일</td>
			<td>작성자</td>
		</tr>
		<c:forEach var="b" items="${boards }">
			<tr id="boardContentTr">
				<td class="contentTd1">${b.no }</td>
				<td class="contentTd2" colspan="2" onclick="location.href='BoardDetailC?no=${b.no }'">${b.title }</td>
				<td class="contentTd3">${b.date }</td>
				<td class="contentTd4">${b.id }</td>
			</tr>
		</c:forEach>
	</table>
	<table id="boardPagingTable">
		<tr>
			<td><c:choose>
					<c:when test="${curPageNo == 1 }">[맨앞]</c:when>
					<c:otherwise>
						<a href="BoardPageController?p=1">[맨앞]</a>
					</c:otherwise>
				</c:choose></td>
			<td><c:choose>
					<c:when test="${curPageNo == 1 }">&lt;</c:when>
					<c:otherwise>
						<a href="BoardPageController?p=${curPageNo - 1}">&lt;</a>
					</c:otherwise>
				</c:choose></td>
			<td><c:forEach var="p" begin="1" end="${pageCount }">
					<a href="BoardPageController?p=${p }">[${p }]</a>
				</c:forEach></td>
			<td><c:choose>
					<c:when test="${curPageNo == pageCount }">&gt;</c:when>
					<c:otherwise>
						<a href="BoardPageController?p=${curPageNo + 1}">&gt;</a>
					</c:otherwise>
				</c:choose></td>
			<td><c:choose>
					<c:when test="${curPageNo == pageCount }">[맨뒤]</c:when>
					<c:otherwise>
						<a href="BoardPageController?p=${pageCount }">[맨뒤]</a>
					</c:otherwise>
				</c:choose></td>
		</tr>
	</table>
	<table id="boardBtnTable" border="0">
		<c:if test="${sessionScope.accountInfo.id != null }">
			<tr>
				<td colspan="5">
					<button type="button" onclick="location.href='WriteC'"
						class="boardBtn">글쓰기</button>
				</td>
			</tr>
		</c:if>
	</table>
</body>
</html>