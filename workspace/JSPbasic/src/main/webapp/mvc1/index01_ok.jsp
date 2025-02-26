<%@page import="com.hr.model.DepartmentDAO"%>
<%@page import="com.hr.model.DepartmentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% // vc 역할하는 페이지
	String departmentId = request.getParameter("departmentId");
	                                                                                                                                                                                                                                                                                                                              
	// model로 연결
	
	// 01에서 10번에 대한 정보를 받음, 근데 그대로면 1행의 값이 4개니까 못만듬, 그래서 DTO라는 클래스를 만들어서 
	// DepartmentDTO dao = DepartmentDAO.getInstance();
	// 올바른 코드
	DepartmentDAO dao = DepartmentDAO.getInstance();

	DepartmentDTO dto = dao.getDepartmentInfo(departmentId);
	
	request.setAttribute("dto", dto);
	
	request.getRequestDispatcher("index01_result.jsp").forward(request, response);
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