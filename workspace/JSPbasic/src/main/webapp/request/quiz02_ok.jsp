<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 	1. form태그를 이용해서 post형식으로 이름, 키와 몸무게를 입력받음
	2. quiz02_ok.jsp로 전송
	3. 해당 페이지 에서는 넘어간 값을 BMI지수를 처리
	4. BMI공식 = kg / (cm/100 * cm/100)  -> 문자열이기 때문에 형변환 진행(실수)
	화면에 이름, 키, 몸무게 BMI지수를 출력
	if을 통해 BMI지수가 25이상 과체중, 18 이하라면 저체중, 나머지는 정상으로 출력 -->
	
	<h3>결과 페이지</h3>
	
<%
	double heightIs =Double.parseDouble(height);
	int kg = Integer.parseInt(weight);
	double Dkg = Double.parseDouble(weight);
	
	double BMI = Dkg / (heightIs / 100 * heightIs/100);

	
	// 0이면 저체중, 1이면 정상, 2이면 과체중
	String statnow = "";
	if (BMI>=25){
		statnow = "과체중";
	}else if(BMI<=18){
		statnow = "저체중";
	}else{
		statnow = "정상";
	}
%>

이름 : <%=name %> <br>
신장 : <%=height %><br>
체중 : <%=weight %><br>
BMI지수 : <%=BMI %><br>
BMI지수 : <%= String.format("%.2f", BMI) %><br>
체중상태 : <%=statnow %>



</body>
</html>