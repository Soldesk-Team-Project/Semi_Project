<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="BoardUpdateC">
		<table border="1">
			<tr>
				<td>글 번호</td>
				<td>${board.no }</td>
			</tr>
			<tr>
				<td>글 제목</td>
				<td>${board.title }</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>${board.content }</td>
			</tr>
			<tr>
				<td>등록일</td>
				<td><fmt:formatDate value="${board.date }" type="both"
						dateStyle="short" timeStyle="short" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<button onclick="history.back()">목록으로</button> <c:if
						test="${sessionScope.accountInfo.id != null }">
						<button class="boardBtn" name="no" value="${board.no }">수정</button>
						<button type="button" onclick="deleteBoard(${board.no })">삭제</button>
					</c:if>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>