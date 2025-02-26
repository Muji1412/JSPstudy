<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	
	// set어튜리븃 - > 겟엍릣븃
	Date date = (Date)request.getAttribute("date");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=id %><br>
	<%=name %>

</body>
</html>