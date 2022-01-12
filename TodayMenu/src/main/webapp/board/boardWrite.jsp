<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="WriteC">
		<table class="writeTable">
			<tr>
				<td>게시판 글쓰기 양식</td>
			</tr>
			<tr>
				<td><input type="text" placeholder="글 제목" name="title" maxlength="20"></td>
			</tr>
			<tr>
				<td><textarea placeholder="글 내용" name="content" maxlength="200"></textarea></td>
			</tr>
			<tr>
				<td><button class="regBtn" name="id" value="${sessionScope.accountInfo.id }">등록하기</button></td>
			</tr>
		</table>
	</form>
</body>
</html>