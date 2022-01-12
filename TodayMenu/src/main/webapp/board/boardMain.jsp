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
		<tr>
			<td colspan="3">
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
							<td>${b.title }</td>
							<td>${b.id }</td>
							<td>${b.date }</td>
						</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<button type="button" onclick="location.href='WriteC'"
					class="regBtn">글쓰기</button>
			</td>
		</tr>
	</table>
</body>
</html>