<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	// 만약 세션이 없는 경우에 진입했다면 로그인페이지로 리다이렉트
	if(session.getAttribute("user_id") == null){
		response.sendRedirect("login.jsp");
	}

	//세션 받기
	String userId = (String)session.getAttribute("user_id");
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=userId %>님이 로그인 중입니다
	
	[<a href="logout.jsp">로그아웃</a>]

</body>
</html>