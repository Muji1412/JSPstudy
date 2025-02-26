<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	//쿠키 찾아 쓰는법
	//쿠키는 매 요청마다 리퀘스트에 담겨서 넘어옴
	
	Cookie[] cookies = request.getCookies();

	//쿠키가 브라우저에 없으면 null이 됨
	
	if(cookies !=null){
		for(Cookie coo : cookies){
			
			String cooName = coo.getName();
			if(cooName.equals("user_id")){
				String cooValue= coo.getValue();
				out.println("user_id쿠키값:" + cooValue);
			}
		}
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