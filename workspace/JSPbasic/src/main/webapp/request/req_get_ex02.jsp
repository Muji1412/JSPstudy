<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	String date = request.getParameter("date"); // 들어온값 받기
	String msg = request.getParameter("msg");
	String[] agreement = request.getParameterValues("agreement");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	날짜 <%=date %><br>
	메세지: <%=msg %><br>
	동의항목 : <%=Arrays.toString(agreement) %>

</body>
</html>