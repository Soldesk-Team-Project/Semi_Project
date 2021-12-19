<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/login.css">
<title>Insert title here</title>
</head>
<body>
	<table border="1" id="wrapTable">
		<tr>
			<td>
				<!-- header -->
				<table border="1" id="header">
					<tr>
						<td id="headerLogo"><a href="HomeController"><img alt="Logo" src="img/icon/icon.jpg" width="50px"></a></td>
						<td colspan="2" id="headerTitle"><a href="HomeController">����Ʈ ����</a></td>
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
					<div class="navMenus"><a href="#">��ü�Ĵ�</a></div>
					<div class="navMenus"><a href="#">�����Ĵ�</a></div>
					<div class="navMenus"><a href="#">��õ���</a></div>
					<div class="navMenus"><a href="#">����</a></div>
					<hr style="border: solid 1px black;">
				</div>
				<!-- //nav -->
			</td>
		</tr>
		<tr>
			<td>
				<!-- contents -->
				<table border="1" id="content">
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
						<td class="contentsArray">
							<table border="1" class="contents">
								<tr>
									<td class="contentTitle">content1 title</td>
									<td class="moveContent">+ ������</td>
								</tr>
								<tr>
									<td colspan="2" class="contentImg">content1 Img</td>
								</tr>
								<tr>
									<td colspan="2" class="contentDetail">content1 detail</td>
								</tr>
							</table>
							<!-- //content1 -->
						</td>
						<td class="contentsArray">
							<table border="1" class="contents">
								<tr>
									<td class="contentTitle">content1 title</td>
									<td class="moveContent">+ ������</td>
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
									<td class="moveContent">+ ������</td>
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
				<table border="1" id="footer">
					<tr>
						<td>
							<table border="1" id="footerDetail">
								<tr>
									<td colspan="2">
										���� ~~~~~~~~~~~~
									</td>
								</tr>
							</table>	
						</td>
						<td>
							<table class="team">
								<tr>
									<td class="teamImg">
										���� 1
									</td>
								</tr>
								<tr>
									<td class="teamDetail">
										���� 1
									</td>
								</tr>
							</table>	
						</td>
						<td>
							<table class="team">
								<tr>
									<td class="teamImg">
										���� 2
									</td>
								</tr>
								<tr>
									<td class="teamDetail">
										���� 2
									</td>
								</tr>
							</table>	
						</td>
						<td>
							<table class="team">
								<tr>
									<td class="teamImg">
										���� 3
									</td>
								</tr>
								<tr>
									<td class="teamDetail">
										���� 3
									</td>
								</tr>
							</table>	
						</td>
						<td>
							<table class="team">
								<tr>
									<td class="teamImg">
										���� 4
									</td>
								</tr>
								<tr>
									<td class="teamDetail">
										���� 4
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