<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="content2Table" border="1">
		<tr>
			<td><img src="img/icon/deco3.png" class="infoDeco"></td>
		</tr>
		<tr style="height: 20%;">
			<td class="myPageContentTitle">가계부</td>
		</tr>
		<tr>
			<td><img src="img/icon/deco3.png" class="infoDeco"></td>
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
												<option value="1">식비
												<option value="2">카페/디저트
												<option value="3">쇼핑
												<option value="4">미용
										</select></td>
									</tr>
									<tr>
										<td colspan="2" style="width: 5%;">
											<button class="accountBookButton">등록</button>
											<button class="accountBookButton" type="button"
												onclick="location.href='AccountBookC'">리셋</button>
										</td>
									</tr>
								</table>
							</form>
						</td>
					</tr>
					<tr style="height: 50%;">
						<td style="width: 40%; text-align: center;"><div
								id="piechart_3d" style="height: 100%;"></div></td>
						<td style="width: 60%;">
							<table border="1" style="width: 100%;">
								<tr>
									<td style="font-size: 13pt;">${sessionScope.accountInfo.name }님의
										가계부입니다.</td>
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
</body>
</html>