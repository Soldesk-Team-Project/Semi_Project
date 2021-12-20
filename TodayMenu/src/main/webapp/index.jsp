<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/login.css">
<title>Insert title here</title>
</head>
<body>
	<table border="1" id="wrapTable">
		<tr>
			<td id="loginBackground">
				<!-- login -->
				<table border="1" id="headerLogin">
					<tr>
						<td id="headerLogin"><jsp:include page="${loginPage }"></jsp:include></td>										
					</tr>
				</table>
				<!-- //login -->
			</td>
		</tr>
		<tr>
			<td>
				<!-- header -->
				<table border="1" id="header">
					<tr>
						<td id="headerLogo"><a href="HomeController"><img alt="Logo" src="img/icon/logo.png" width="150px"></a></td>
					</tr>
				</table>
				<!-- //header -->
			</td>
		</tr>
		<tr>
			<td>
				<!-- nav -->
				<div id="nav">
					<div class="navMenus"><a href="#">전체식당</a></div>
					<div class="navMenus"><a href="#">랜덤식당</a></div>
					<div class="navMenus"><a href="#">추천기사</a></div>
					<div class="navMenus"><a href="#">계산기</a></div>
					<hr style="border: dashed 1px gray;">
				</div>
				<!-- //nav -->
			</td>
		</tr>
		<tr>
			<td>
				<!-- content(slide) -->
				<table border="1" id="slideTable">
					<tr>
						<td colspan="3" class="slideArray">
							<table border="1" id="slide">
								<tr>
									<td id="slideImg"><jsp:include page="${slidePage }"></jsp:include></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<!-- //slide -->	
			</td>
		</tr>
		<tr>	
			<td>
				<table border="1" id="contentTitle">
					<tr>
						<td id="story"> 맛집 스토리 </td>
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
				</table>
				<!-- //content -->
			</td>
		</tr>
		<tr>
			<td id="footerBackground" >
				<!-- footer -->
				<table border="1" id="footer">
					<tr>
						<td>
							<table border="1" id="footerDetail">
								<tr>
									<td colspan="2">
										설명 ~~~~~~~~~~~~
									</td>
								</tr>
							</table>	
						</td>
						<td>
							<table class="team">
								<tr>
									<td class="teamImg">
										팀원 1
									</td>
								</tr>
								<tr>
									<td class="teamDetail">
										팀원 1
									</td>
								</tr>
							</table>	
						</td>
						<td>
							<table class="team">
								<tr>
									<td class="teamImg">
										팀원 2
									</td>
								</tr>
								<tr>
									<td class="teamDetail">
										팀원 2
									</td>
								</tr>
							</table>	
						</td>
						<td>
							<table class="team">
								<tr>
									<td class="teamImg">
										팀원 3
									</td>
								</tr>
								<tr>
									<td class="teamDetail">
										팀원 3
									</td>
								</tr>
							</table>	
						</td>
						<td>
							<table class="team">
								<tr>
									<td class="teamImg">
										팀원 4
									</td>
								</tr>
								<tr>
									<td class="teamDetail">
										팀원 4
									</td>
								</tr>
							</table>	
						</td>
					</tr>
				</table>
				<!-- //footer -->
			</td>
		</tr>
	</table>
</body>
</html>