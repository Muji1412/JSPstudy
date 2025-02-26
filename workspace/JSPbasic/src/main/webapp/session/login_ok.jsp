<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("qwer") && pw.equals("1234")){
		// 현재 로그인 된 사람 정보
		session.setAttribute("user_id", id);
		response.sendRedirect("login_welcome.jsp");
	} else { // 실패처리
		response.sendRedirect("login.jsp");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>