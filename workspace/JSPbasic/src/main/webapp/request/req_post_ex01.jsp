<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>post방식</h3>
	<!-- post방식은 반드시 form태그 필요 -->
	
	<form action="req_post_ex02.jsp" method ="post">
		아이디 : <input type="text" name = "id">
		비밀번호: <input type="text" name = "pw">
		이름 : <input type="text" name = "name">
		<input type="submit" value = "확인">
	</form>

</body>
</html>