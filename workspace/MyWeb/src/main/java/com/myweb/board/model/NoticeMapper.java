package com.myweb.board.model;

import java.util.ArrayList;

//public interface NoticeMapper {
//	//메서드 선언 -> 메서드명 xml 구현체가 동일한 이름으로 사용함
//	String getTime();
//	// 바이바티스의 매개변수는 기본이 1개(DTO, MAP) 타입을 사용함
//	int regist(BoardDTO dto);
//	
//	ArrayList<BoardDTO> getList();
//}


public interface NoticeMapper {
    String getTime();

    int regist(BoardDTO var1);

    ArrayList<BoardDTO> getList();
    
	BoardDTO getContent(String bno);
}


