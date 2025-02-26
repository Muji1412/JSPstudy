<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.name == '홍길동' }">
			홍길동님 환영
		</c:when>
		
		<c:when test="${param.name == '이순신' }">
			이순신님 환영
		</c:when>
		<c:otherwise>
			else문장을 대신함
		</c:otherwise>
	</c:choose>
	<!-- 20세 이상, 20 미만을 choose로 구현 -->

	<c:choose>
		<c:when test="${param.age >= 20 }">
			20세 이상입니다.
		</c:when>
		<c:when test="${param.age < 20 }">
			20세 미만입니다
		</c:when>
	</c:choose>
</body>
</html>