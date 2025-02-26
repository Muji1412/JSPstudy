<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//application은 세션과 사용방법 동일
	// 단, 생명주기가 프로젝트를 시작할때 1개 생성, 종료시 소멸
	// 그래서 application객체에는 프로그램 전역적으로 사용할 값을 저장할 수 있음
	int total = 0;
	

	//만약 app에 total이 있으면 값을 찾아와서 기존 값을 app의 total로 대체
	if(application.getAttribute("total_count") != null){
		total = (int)application.getAttribute("total_count");
	} // 애플리케이션은 브라우저 종료해도 서버에 값 남아있음


	application.setAttribute("menu", Arrays.asList("홈","등록","구매","관리"));
	application.setAttribute("total_count", ++total);
	
%>    
    
    
    
<!DOCTYPE html>
<html>	
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="app_home.jsp">다음페이지로</a>
	
	누적된 토탈값 : <%=total %>

</body>
</html>