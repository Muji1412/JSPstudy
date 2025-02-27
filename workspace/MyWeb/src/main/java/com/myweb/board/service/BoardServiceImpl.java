package com.myweb.board.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.myweb.board.model.BoardDTO;
import com.myweb.board.model.NoticeMapper;
import com.myweb.util.mybatis.MybatisUtil;

public class BoardServiceImpl implements BoardService{
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	@Override
	public void regeist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("실행");
		String regdate = request.getParameter("regdate");
		String email = request.getParameter("email");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
//		System.out.println(regdate);
//		System.out.println(email);
//		System.out.println(title);
//		System.out.println(content);
		
		// 마이바티스 영역 - DTO 대신해서 작동
		SqlSession sql = sqlSessionFactory.openSession(true);
		
		NoticeMapper board = (NoticeMapper)sql.getMapper(NoticeMapper.class);
		// 현재 BoardDTO 클래스의 생성자와 일치하도록 매개변수를 확인
		BoardDTO dto = new BoardDTO(0, email, title, content, regdate);
        int result = board.regist(dto);
		
		System.out.println("성공실패 : " + result);
		
		response.sendRedirect("list.board");
	}
	
	@Override
	public void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		NoticeMapper board = sql.getMapper(NoticeMapper.class);
		
		ArrayList<BoardDTO> list = board.getList();
		
		//리퀘스트 객체에 담음
		
		request.setAttribute("list", list);
		
		
	}
	@Override
	public void getContent(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		// bno 값 받음
		// mapper에서는 bno 기준으로 데이터 조회, dto 반환
		// dto를 request에 저장, 화면으로 이동해서 데이터를 출력
		
		String bno = request.getParameter("bno");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		NoticeMapper board = sql.getMapper(NoticeMapper.class);
		
		BoardDTO dto = board.getContent(bno);
		request.setAttribute("dto", dto);
		
		
	}

}
