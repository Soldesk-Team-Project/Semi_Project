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
	<table border="0" id="wrapTable">
		<tr>
			<td>
				<!-- header -->
				<table border="0" id="header">
					<tr>
						<td id="headerLogo"><a href="HomeController"><img alt="Logo" src="img/icon/icon.jpg" width="50px"></a></td>
						<td colspan="2" id="headerTitle"><a href="HomeController">사이트 제목</a></td>
						<td id="headerLogin"><jsp:include page="${loginPage }"></jsp:include></td>
					</tr>
				</table>
				<!-- //header -->
			</td>
		</tr>
		<tr>
			<td>
				<!-- nav -->
				<div id="nav">
					<hr style="border: solid 1px black;">
					<div class="navMenus"><a href="#">전체식당</a></div>
					<div class="navMenus"><a href="#">랜덤식당</a></div>
					<div class="navMenus"><a href="#">추천기사</a></div>
					<img alt="" src="img/menu/카츠동.jfif">
					<div class="navMenus"><a href="#">계산기</a></div>
					<hr style="border: solid 1px black;">
				</div>
				<!-- //nav -->
			</td>
		</tr>
		<tr>
			<td>
				<!-- contents -->
				<table border="0" id="content">
					<tr>
						<td colspan="3" class="slideArray">
							<table border="1" id="slide">
								<tr>
									<td id="slideImg"><jsp:include page="${slidePage }"></jsp:include></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<!-- //content1 -->
						<td class="contentsArray">
							<table border="1" class="contents">
								<tr>
									<td class="contentTitle">content1 title</td>
									<td class="moveContent">+ 더보기</td>
								</tr>
								<tr>
									<td colspan="2" class="contentImg">content1 Img</td>
								</tr>
								<tr>
									<td colspan="2" class="contentDetail">content1 detail</td>
								</tr>
							</table>
						</td>
						<td class="contentsArray">
							<table border="1" class="contents">
								<tr>
									<td class="contentTitle">content1 title</td>
									<td class="moveContent">+ 더보기</td>
								</tr>
								<tr>
									<td colspan="2" class="contentImg">content2 Img</td>
								</tr>
								<tr>
									<td colspan="2" class="contentDetail">content2 detai135135135135135l</td>
								</tr>
							</table>
							<!-- //content2 -->
						</td>
						<td class="contentsArray">
							<table border="1" class="contents">
								<tr>
									<td class="contentTitle">content1 title</td>
									<td class="moveContent">+ 더보기</td>
								</tr>
								<tr>
									<td colspan="2" class="contentImg">content3 Img</td>
								</tr>
								<tr>
									<td colspan="2" class="contentDetail">content3 detail</td>
								</tr>
							</table>
							<!-- //content3 -->
						</td>
					</tr>
				</table>
				<!-- //content -->
			</td>
		</tr>
		<tr>
			<td id="footerBackground" >
				<!-- footer -->
				<table border="0" id="footer">
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