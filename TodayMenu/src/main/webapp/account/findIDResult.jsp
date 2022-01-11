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
<body>
	<table id="regTable">
		<tr>
			 <c:choose>
        <c:when test="${test eq '조회 실패'}">
            <td class="regTd1">${test }</td>
        </c:when>         
        <c:otherwise>
         <td class="regTd1">${find.name} 님의 아이디는 ${find.id } 입니다.</td>
         </c:otherwise>
    </c:choose>
		</tr>
	</table>
</body>
</html>	