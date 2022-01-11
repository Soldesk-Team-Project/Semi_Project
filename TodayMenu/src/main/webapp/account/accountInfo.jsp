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
	<table id="myPageTable" border="1">
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
				<table class="content2Table">
					<tr style="height: 20%;">
						<td class="myPageContentTitle">가계부</td>
					</tr>
					<tr>
						<td id="accountBook">
							<table id="accountBookTable" border="1">
								<tr style="height: 30%;">
									<td colspan="2">
										<form action="AccountBookC" method="post">
											<table border="1" style="width: 100%;">
												<tr>
													<td class="accountBookInputLeft">사용 금액</td>
													<td class="accountBookInputRight"><input name="pay"></td>
												</tr>
												<tr>
													<td class="accountBookInputLeft">사용처</td>
													<td class="accountBookInputRight"><select name="where">
														<option value="1"> 식비
														<option value="2"> 카페/디저트
														<option value="3"> 쇼핑
														<option value="4"> 미용
													</select></td>
												</tr>
												<tr>
													<td colspan="2" style="width: 5%;">
														<button class="accountBookButton">등록</button>
														<button class="accountBookButton" type="button" onclick="location.href='AccountBookC'">리셋</button>											
													</td>
												</tr>
											</table>
										</form>
									</td>
								</tr>
								<tr style="height: 50%;">
									<td style="width: 40%; text-align: center;"><div id="piechart_3d" style="height: 100%;"></div></td>
									<td style="width: 60%; ">
										<table border="1" style="width:100%;">
											<tr>
												<td style="font-size: 13pt; ">${sessionScope.accountInfo.name }님의 가계부입니다.</td>
											</tr>
											<tr>
												<td>총 사용 금액은 ${sessionScope.accountInfo.pay }원입니다.</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>