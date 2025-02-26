<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("username");
	String pw = request.getParameter("password");
	String[] inter = request.getParameterValues("inter");
	String birthday = request.getParameter("birthday");
	String gender = request.getParameter("gender");
	String region = request.getParameter("region");
	String hello = request.getParameter("hello");			
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=id%><br>
	<%=pw%><br>
	<%=birthday%><br>
	<%=Arrays.toString(inter)%><br>
	<%=gender%><br>
	<%=region%><br>
	<%=hello%><br>

</body>
</html>