<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/myPage.css">
<script type="text/javascript" src="js/account.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
  google.charts.load("current", {packages:["corechart"]});
  google.charts.setOnLoadCallback(drawChart);
  function drawChart() {
    var data = google.visualization.arrayToDataTable([
      ['종류', '소비액'],
      ['식비', 550000],
      ['쇼핑', 435000],
      ['카페/디저트', 100500],
      ['미용', 250000]
    ]);

    var options = {
      title: '소비 비율',
      width: 300,
      height: 400,
      fontSize: 15, 
      legend : 'none',
      backgroundColor: '#ffccbc',
      is3D: true
    };

    var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
    chart.draw(data, options);
  }
</script>
<title>Insert title here</title>
</head>
<body>
	<table border="0" class="wrapTable">
		<tr>
			<td id="loginBackground">
				<!-- login -->
				<table border="0" id="headerLogin">
					<tr>
						<td id="headerLogin"><jsp:include page="${loginPage }"></jsp:include></td>
					</tr>
				</table> <!-- //login -->
			</td>
		</tr>
		<tr>
			<td>
				<!-- header -->
				<table border="0" id="header">
					<tr>
						<td id="headerLogo"><a href="HomeController"><img
								alt="Logo" src="img/icon/logo.png" width="150px"></a></td>
					</tr>
				</table> <!-- //header -->
			</td>
		</tr>
		<tr>
			<td>
				<!-- nav -->
				<div id="nav">
					<div class="navMenus">
						<a href="#">전체식당</a>
					</div>
					<div class="navMenus">
						<a href="#">랜덤식당</a>
					</div>
					<div class="navMenus">
						<a href="#">추천기사</a>
					</div>
					<div class="navMenus">
						<a href="#">계산기</a>
					</div>
					<hr style="border: dashed 1px gray;">
				</div> <!-- //nav -->
			</td>
		</tr>
		<tr>
			<td>
				<jsp:include page="${contentPage }"></jsp:include>
			</td>
		</tr>
		<tr>
			<td id="footerBackground">
				<!-- footer -->
				<table border="0" id="footer">
					<tr>
						<td>
							<table border="0" id="footerDetail">
								<tr>
									<td>설명 ~~~~~~~~~~~~</td>
								</tr>
								<tr>
									<td>설명 ~~~~~~~~~~~~</td>
								</tr>
								<tr>
									<td>설명 ~~~~~~~~~~~~</td>
								</tr>
							</table>
						</td>
						<td>
							<table class="team">
								<tr>
									<td class="teamImg">팀원 1</td>
								</tr>
								<tr>
									<td class="teamDetail">팀원 1</td>
								</tr>
							</table>
						</td>
						<td>
							<table class="team">
								<tr>
									<td class="teamImg">팀원 2</td>
								</tr>
								<tr>
									<td class="teamDetail">팀원 2</td>
								</tr>
							</table>
						</td>
						<td>
							<table class="team">
								<tr>
									<td class="teamImg">팀원 3</td>
								</tr>
								<tr>
									<td class="teamDetail">팀원 3</td>
								</tr>
							</table>
						</td>
						<td>
							<table class="team">
								<tr>
									<td class="teamImg">팀원 4</td>
								</tr>
								<tr>
									<td class="teamDetail">팀원 4</td>
								</tr>
							</table>
						</td>
					</tr>
				</table> <!-- //footer -->
			</td>
		</tr>
	</table>
</body>
</html>