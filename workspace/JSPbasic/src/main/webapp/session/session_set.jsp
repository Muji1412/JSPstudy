<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//세션은 내장객체, 바로 호출해서 쓸수있음. setAttribute(키,값)
	//서버에서 생성, 서버가 관리
	//기본 30분 or 브라우저 종료까지 세션 유지됨
	
	//값 저장
	
	session.setAttribute("my_id", "abc123");
	session.setAttribute("my_name", "홍길자");
	
	//세션의 시간을 설정
	session.setMaxInactiveInterval(3600); // 기본은 30분, 이 세션은 1시간 유지
	
	


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href ="session_get.jsp">세션 확인하기</a>

</body>
</html>