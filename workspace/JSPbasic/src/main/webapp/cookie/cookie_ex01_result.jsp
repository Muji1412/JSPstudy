<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String save = request.getParameter("idsave");
	
	
	
	
	if(id.equals(pw)){
		
		Cookie cookie = new Cookie("userId", id); // 쿠키이름, 밸류임
		cookie.setMaxAge(1800);
		response.addCookie(cookie);
		
		
		// 만약 쿠키 삭제하고 싶을때는 setMaxAge 0으로 설정해서 만나는 경우에 없애버릴수 있음
		if(save != null){	
			// request.getParameter("idsave"); 이게 체크를 안해주면 null 던짐, if문으로 처리
			// value에 적어놓은 값 던져주는데, && save.equals("yes") 더해줘도 같은 결과임
			Cookie cookieSave = new Cookie ("saveId", id);
			cookieSave.setMaxAge(1800);
			response.addCookie(cookieSave);		//
		
		}
		
		response.sendRedirect("cookie_ex01_welcome.jsp"); // 쿠키를 다 추가해놓고 마지막에 추가해야지 모든 쿠키가 옮겨짐
		
		
		//쿠키 생성
	}else{
		response.sendRedirect("cookie_ex01.jsp");
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