<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- <%@ page errorPage = "error_view.jsp" %> <!-- 에러 발생시 던져줄 주소 --> --%>
<%
	String abc = (String)session.getAttribute("ABC");
	
	abc.substring(4); // 에러 발생용
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

	<!-- <a href="asdsadasd.jsp">없는페이지연결하기</a> -->

</html>