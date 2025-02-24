<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {}
	.wrap{
		height: 100vh;
		display: flex; 
		justify-content: center;
		align-items:center;
		
	}
	
	.box{
		box-shadow: 0 1px 3px rgba(0,0,0,0.3);
		padding:20px 20px;
		background-color: yellow;
	}
	.form-control{
		width:100%;
		box-sizing:border-box;
		
	}
</style>
</head>
<body>
	<!-- 
	css를 적용할때는, class or id 속성을 자주 사용한다.
	내부 스타일 시트 방법으로 선택자를 이용해서 디자인
	 -->
	 
	<div class="wrap">
	
	
		<form action="quiz01_result.jsp" method="post" class="box">
			<h3>리다이렉트 짭 로그인 연습</h3>
			<input type = "text" name= "id" placeholder="아이디" class="form-control"><br>
			<input type = "text" name= "pw" placeholder = "비밀번호" class="form-control"><br> 
			<input type = "submit" value= "제출" class = "form-control">
		</form>
	</div>

</body>
</html>