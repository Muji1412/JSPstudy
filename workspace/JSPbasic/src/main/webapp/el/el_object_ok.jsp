<%@page import="com.hr.model.DepartmentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 
	DepartmentDTO dto = (DepartmentDTO)request.getAttribute("dto");
	String name = (String)request.getAttribute("name"); 
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3> scope 키워드는 전부 생략이 가능</h3>
	<h3> 리퀘스트 - 세션 - 어플리케이션 순서로 출력</h3>
	${requestScope.dto}<br>
	${requestScope.dto.departmentId}<br>
	${requestScope.dto.departmentName}<br>
	${requestScope.dto.managerId}<br>
	${requestScope.dto.locationId}<br>
	
	${sessionScope.sessionId }<br>
	${applicationScope.appName }<br>
	<!-- 스코프는 생략 가능 -->
	
	${dto}<br>
	${dto.departmentId}<br>
	${dto.departmentName}<br>
	${dto.managerId}<br>
	${dto.locationId}<br>
	
	${sessionId }<br>
	${appName }<br>
	
	<!-- 생략은 가능하지만, 어디서 끌어온지를 모르니까 이 경우에는 스코프를 맞춰주는게 좋음 -->
	
	

</body>
</html>