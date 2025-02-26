<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 
	JSP액션태그
	-> JSP에서 사용하는 동작을 의미하는 태그들
	전부 기억할 필요는 없음
	
	
	<jsp : 기능>
	추가적으로 종속되는 태그가 없으면 반드시 /> 태그로 닫아줌
	 -->
	 
	 <%-- <jsp:forward page="forward_ex02.jsp"/> 오타주의 --%> 
	 <jsp:forward page="forward_ex02.jsp" /> 
	 <!-- 포워드는 주소 자체를 옮기지 않고, 이 창을 실행하면 ex02번을 띄워주지만 ex01에 머무름 -->
	 

</body>
</html>