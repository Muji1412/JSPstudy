package com.example.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



// 1. URL mapping을 확장자 패턴으로 변경
//@WebServlet("/MyController")

@WebServlet("*.example") // 앞에 뭐가 오던간에 .exmaple 이라고 끝날시 요청을 매핑
public class MyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MyController() {
        super();
        
    }
    
    //2. get, post 요청을 action 하나로 묶음


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//3. 요청을 분기화
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = uri.substring(contextPath.length());
		
//		System.out.println(uri);
//		System.out.println(contextPath);
		System.out.println(command);
		
		if (command.equals("/controller/join.example")) {
			System.out.println("회원가입 작업");
		}else if (command.equals("/controller/login.example")) {
			System.out.println("로그인 작업");
		}else if (command.equals("/controller/example/modify.example")) {
			System.out.println("회원정보 작업");
		}
	}

}
