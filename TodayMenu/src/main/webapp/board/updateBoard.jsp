<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="BoardUpdateC">
		<table id="boardWriteTable" border="1">
			<tr id="boardWriteTr1">
				<td colspan="2">게시글 등록</td>
			</tr>
			<tr id="boardWriteTr2">
				<td class="boardWriteTdleft">제목</td>
				<td class="boardWriteTdRight"><input type="text" placeholder="글 제목" name="title" maxlength="20" value="${board.title }"></td>
			</tr>
			<tr id="boardWriteTr3">
				<td class="boardWriteTdleft">작성자</td>
				<td class="boardWriteTdRight"><span>${sessionScope.accountInfo.id }</span></td>
			</tr>
			<tr id="boardWriteTr4">
				<td class="boardWriteTdleft">내용</td>
				<td class="boardWriteTdRight"><textarea placeholder="글 내용" name="content" maxlength="200">${board.content }</textarea></td>
			</tr>
		</table>
		<table id="boardWriteButtonTable">
			<tr>
				<td><button class="boardBtn" name="no" value="${param.no }">수정하기</button>
				<button class="boardBtn" type="button" onclick="history.back()">취소</button></td>
			</tr>
		</table>
	</form>
</body>
</html>