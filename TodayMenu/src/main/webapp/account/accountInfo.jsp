<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="js/account.js"></script>
<script type="text/javascript">
google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
var data = google.visualization.arrayToDataTable([
	
  ['종류', '소비금액'],
  ['식비', ${food }],
  ['카페/디저트', ${cafe }],
  ['쇼핑', ${shopping }],
  ['미용', ${beauty }]
]);

var options = {
  title: '소비 비율',
  width: 300,
  height: 400,
  fontSize: 15, 
  legend : 'none',
  backgroundColor: 'white',
  is3D: true
};

var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
	chart.draw(data, options);
}
</script>

<title>Insert title here</title>
</head>
<body>
	<table id="myPageTable" border="0">
		<tr>
			<td>
				<form action="">
					<table border="1" class="content1Table">
						<tr>
							<td class="myPageContentTitle">회원정보</td>
						</tr>
						<tr>
							<td>
								<table border="1" id="viewAccount">
									<tr>
										<td class="accountDataLeft">ID</td>
										<td class="accountDataRight">${sessionScope.accountInfo.id}</td>
									</tr>
									<tr>
										<td class="accountDataLeft">이름</td>
										<td class="accountDataRight">${sessionScope.accountInfo.name}</td>
									</tr>
									<tr>
										<td class="accountDataLeft">생년월일</td>
										<td class="accountDataRight">${sessionScope.accountInfo.birth}</td>
									</tr>
									<tr>
										<td class="accountDataLeft">주소</td>
										<td class="accountDataRight">${sessionScope.accountInfo.addr}</td>
									</tr>
									<tr>
										<td class="accountDataLeft">전화번호</td>
										<td class="accountDataRight">${sessionScope.accountInfo.phone}</td>
									</tr>
									<tr>
										<td class="accountDataLeft">질문</td>
										<td class="accountDataRight">${sessionScope.accountInfo.qestion}</td>
									</tr>
									<tr>
										<td class="accountDataLeft">해답</td>
										<td class="accountDataRight">${sessionScope.accountInfo.answer}</td>
									</tr>
									<tr>
										<td colspan="2" id="editAccount" >
											<button class="editAccountButton" type="button" onclick="location.href='UpdateAccountC'">수정하기</button>
											<button class="editAccountButton" type="button" onclick="deleteAccount('${sessionScope.accountInfo.id}')">탈퇴하기</button>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>