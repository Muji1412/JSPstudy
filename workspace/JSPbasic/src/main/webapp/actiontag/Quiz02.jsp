<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 앞에서 넘어온 국어, 수학점수 평균구함
	// 평균이 60점 이상이면 석세스페이지 이동
	
	// name님의 평균 xx점 합격입니다 출력
	
	// 60점 미만이면 fail페이지 이동해서
	// name님은 평균 xx점 불합격입니다 출력
	
	//조건 - 세션 사용 안함
	request.setCharacterEncoding("UTF-8");
	String name = (String)request.getParameter("name");
	
	String korean = (String)request.getParameter("korean");
	String math = (String)request.getParameter("math");
	int koreanScore = Integer.parseInt(korean);
	int mathScore = Integer.parseInt(math);
	
	int avg = ( koreanScore + mathScore ) / 2;
	
	request.setAttribute("name", name);
	request.setAttribute("avg", avg);
	
	RequestDispatcher dp;
%>
	<%if(avg>=60){
		dp = request.getRequestDispatcher("Quiz02_success.jsp");
} else {
		dp = request.getRequestDispatcher("Quiz02_fail.jsp");
} 
dp.forward(request, response);

%>


    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=korean %>
	<%=math %>
	<%=avg %>

</body>
</html>