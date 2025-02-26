<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(id.equals("aaa123") && pw.equals("1234")){
		response.sendRedirect("quiz01_welcom.jsp");
	}else{
		response.sendRedirect("quiz01_fail.jsp");
	}
		
	%>

</body>
</html>