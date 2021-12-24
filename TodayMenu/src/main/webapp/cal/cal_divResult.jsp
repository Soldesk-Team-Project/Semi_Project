<%@page import="com.soldesk.semi.cal.Remain"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
Remain r = (Remain) request.getAttribute("rr");
%>
</head>
<body>
	<table border="1" id="Cal_divResultTable">
		<tr style="background: Deepskyblue; color: black; font-size: 25pt;">
			<td><h4>더치폐이 계산기</h4></td>
		</tr>
		<tr>
			<td>더치 페이 금액 : <%=r.getR()%> 원
			</td>
		</tr>
	</table>
</body>
</html>