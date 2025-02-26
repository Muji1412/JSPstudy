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
	<!-- 변수 선언 -->
	<c:set var="a" value = "홍길동" />
	
	<!-- 출력 -->
	<c:out value="${a }"></c:out>
	
	
	<!-- if문인데, 아래는 태그로 쓰는것 -->
	<c:if test="true">
		<b>무조건 실행되는 문장</b>
	</c:if>
	<br>
	${param.name}
	
	<c:if test = "${param.name eq '홍길동' }">
		참 입니다
	</c:if>
	
	<c:if test="${param.age >= 20 }">
		성인입니다
	</c:if>

</body>
</html>