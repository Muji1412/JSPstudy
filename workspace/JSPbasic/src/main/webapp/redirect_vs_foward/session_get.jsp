<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에 저장된 값 확인
	 
	String myid =(String)session.getAttribute("my_id"); //찾을 이름
	String myName=(String)session.getAttribute("my_name");
	// 시간
	int time = session.getMaxInactiveInterval();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=myid %><br>
	<%=myName %><br>
	<%=time %>
	<a href="session_remove.jsp">세션삭제</a>

</body>
</html>