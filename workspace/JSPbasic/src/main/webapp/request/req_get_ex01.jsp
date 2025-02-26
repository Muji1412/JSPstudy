<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>get방식 - form 쓸때</h3>
	
	<form action = "req_get_ex02.jsp"> <!-- 01에서 받아서 02로 넘김 -->
		날짜: <input type = "date" name = "date"><br>
		메시지: <br>
		<input rows = "5" cols="50" name = "msg"></textarea>
		<br>
		동의항목
		<br>
		<input type = "checkbox" name = "agreement" value= "조항1"> 어쩌구 <!-- value에 값 입력해두면 실제로 찍힘 -->
		<input type = "checkbox" name = "agreement" value= "조항2"> 저쩌구
		<input type = "checkbox" name = "agreement" value= "조항3"> 절씨구 
		<br>
		<input type = "submit" value = "get방식">
	</form>

</body>
</html>