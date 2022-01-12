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
		<table border="1" id="boardDetailTable">
			<tr id="boardDetailTr1">
				<td class="boardDetailTd1">${board.no }</td>
				<td class="boardDetailTd2">${board.id }</td>
				<td class="boardDetailTd3">${board.title }</td>
				<td class="boardDetailTd4"><fmt:formatDate value="${board.date }" type="both"
						dateStyle="short" timeStyle="short" /></td>
			</tr>
			<tr id="boardDetailTr2">
				<td colspan="4">${board.content }</td>
			</tr>
		</table>
		<table id="boardDetailButtonTable">
			<tr>
				<td colspan="2">
					<c:if test="${sessionScope.accountInfo.id != null }">
						<button class="boardBtn" name="no" value="${board.no }">수정</button>
						<button class="boardBtn" type="button" onclick="deleteBoard(${board.no })">삭제</button>
					</c:if>
					<button class="boardBtn" type="button" onclick="history.back()">목록으로</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>