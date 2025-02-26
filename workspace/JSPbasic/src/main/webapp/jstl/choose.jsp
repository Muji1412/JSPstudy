<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="choose_when.jsp" method = "post">
		이름:<input type="text" name = "name">
		나이:<input type="text" name = "age">
		<input type = "submit" value = "확인">
	</form>
	
</body>
</html>