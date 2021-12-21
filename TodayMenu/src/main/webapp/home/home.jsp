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
	<table class="wrapTable">
		<tr>
			<td>
				<!-- content(slide) -->
				<table border="1" id="slideTable">
					<tr>
						<td colspan="3" class="slideArray">
							<table border="1" id="slide">
								<tr>
									<td id="slideImg">slide</td>
								</tr>
							</table>
						</td>
					</tr>
				</table> <!-- //slide -->
			</td>
		</tr>
		<tr>
			<td>
				<table border="1" id="contentTitle">
					<tr>
						<td id="story">맛집 스토리</td>
						<td id="plus"><a href="#">+ 더보기</a></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<!-- content(article) -->
				<table border="1" id="content">
					<c:forEach begin="1" end="2">
						<tr>
							<!-- //content1 -->
							<c:forEach begin="1" end="3">
								<td class="contentsArray">
									<table border="1" class="contents">
										<tr>
											<td class="contentsImg">content img</td>
										</tr>
										<tr>
											<td class="contentsTitle">content title</td>
										</tr>
										<tr>
											<td class="contentsDetail">content detail</td>
										</tr>
									</table>
								</td>
							</c:forEach>
						</tr>
					</c:forEach>
				</table> <!-- //content -->
			</td>
		</tr>
	</table>
</body>
</html>