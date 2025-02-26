<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = request.getParameter("name");

	// int 로 받지말고 String으로 받아서 문제없게 만들기
	String age = request.getParameter("age"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=name %>님의 나이는 <%=age %> 입니다

</body>
</html>