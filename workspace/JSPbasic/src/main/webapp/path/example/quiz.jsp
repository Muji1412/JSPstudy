<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="../../request/req_get_ex01.jsp">상대경로</a>
	<img src ="../../html/img/a.jpg">
	<img src ="../../html/img/b.jpg">
	
	<img src ="http://localhost:8181/JSPbasic/html/img/a.jpg">
	<img src ="http://localhost:8181/JSPbasic/html/img/b.jpg">
	<a href="http://localhost:8181/JSPbasic/apple">서블렛 절대경로</a>
	<a href="/JSPbasic/apple">서블렛 상대경로
	
	</a>
	

</body>
</html>