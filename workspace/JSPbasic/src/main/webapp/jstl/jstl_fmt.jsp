<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>값을 형변환해서 출력할때 셋중에 하나를 선택하면 됨(db, java, 화면)</h3>
	
	<h3>parseDate = 문자를 날짜로 형변환</h3>
	
	<!-- var 없이 parseDate 해주면 바로 값 출력, 변수 지정해주면 a 찍어줘야 출력함 -->
	<fmt:parseDate var = "a" value = "2025/02/24" pattern = "yyyy/MM/dd"></fmt:parseDate>
	${a }
	
	<h3>formatDate = 날짜형을 문자형식으로 변경 </h3>
	
	<c:set var = "now"  value = "<%=new Date() %>"></c:set>
	
	<fmt:formatDate value="${now}" pattern = "yyyy년 MM월 dd일 HH:mm:ss"/>
	
	<h3>parseNumber = 문자를 숫자로 변환</h3>
	<fmt:parseNumber value = "$3.14" pattern="$0.00"></fmt:parseNumber> 
	<fmt:parseNumber value = "1.123abc" type="number"></fmt:parseNumber>
	
	<h3>formatNumber = 숫자를 문자열로 변환</h3>
	<fmt:formatNumber value = "2000" pattern = "0000.00"></fmt:formatNumber>
	
	<hr>
	
	<h3>아래 값을 2025년 02월 24일 형식으로 변경</h3>
	
	<c:set var = "timeA" value=" 2025-02-24"></c:set>
	<c:set var = "timeB" value = "<%=new Date() %>"> </c:set>
	
	<fmt:parseDate var = "timeAA" value = "${timeA }" pattern = "yyyy-MM-dd" />
	<fmt:formatDate value="${timeAA }" pattern = "yyyy년 MM월 dd일"/>
	<br>
	
	<fmt:formatDate value = "${timeB }" pattern = "yyyy년 MM월 dd일"/>
	

</body>
</html>