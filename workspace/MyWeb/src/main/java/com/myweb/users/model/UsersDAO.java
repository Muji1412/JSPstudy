package com.myweb.users.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.myweb.util.JdbcUtil;

public class UsersDAO {
	/*
	 * DAO는 클래스는 여러개 만들필요 없이, 객체가 한개만 생성되도록
	 * singleton클래스로 생성
	 */
	//1. 나자신의 객체를 1개 생성한다.
	private static UsersDAO instance = new UsersDAO();
	//2. 외부에서 생성자를 호출할수 없도록 private막는다
	private UsersDAO() {
		
		try {
			InitialContext context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//3. 외부에서 객체를 요구할 때, instance를 반환합니다.
	public static UsersDAO getInstance() {
		return instance;
	}
	////////////////////////////////////////////////////////////////////
	//커넥션풀을 사용할 dataSource클래스
	private DataSource dataSource;
	
	
	//아이디 중복 체크 메서드
	public int idDuplicationCheck(String email) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM USERS WHERE EMAIL = ?";
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			
			rs = pstmt.executeQuery(); //
			
			if(rs.next()) {
				result = 1; //중복의 의미
			} else {
				result = 0;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return result;
	}
	
	
	
	
	//회원가입 메서드
	public void join(UsersDTO dto) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "INSERT INTO USERS(EMAIL, NAME, PW, PHONE, GENDER, SNS_YN) "
				+ "VALUES(?, ?, ?, ?, ?, ?)";
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getEmail());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getPw());
			pstmt.setString(4, dto.getPhone());
			pstmt.setString(5, dto.getGender());
			pstmt.setString(6, dto.getSnsYn());
			
			pstmt.executeUpdate(); //insert, update, delete는 executeUpdate
			
		} catch (Exception e) {
			e.printStackTrace(); 
		} finally {
			//여기들어가는 코드는 똑같음
			JdbcUtil.close(conn, pstmt, null);
		}
		
		
	}
	
	//로그인기능
	public UsersDTO login(String email, String pw) {
		UsersDTO dto = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM USERS WHERE EMAIL = ? AND PW = ?";
		
		try {
			
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				String name = rs.getString("name");
				String phone = rs.getString("phone");
				String gender =rs.getString("gender");
				String snsYn = rs.getString("sns_yn");
				Timestamp regdate = rs.getTimestamp("regdate");
				
				dto = new UsersDTO(email, name, null, phone, gender, snsYn, regdate);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		
		
		return dto;
	}
	
	
	public int idCheck(String email) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM USERS WHERE EMAIL = ?";
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			
			rs = pstmt.executeQuery(); //
			
			if(rs.next()) {
				result = 1; //중복의 의미
			} else {
				result = 0;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return result;
	}
	// 변경기능
	
	// 성공시 1, 실패시 0 반
	public int modify(String email, UsersDTO dto) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		if (idCheck(email)==0) { // 아까는 중복의 의미였지만 지금은 그냥 실존한다는 뜻, 0인 경우에는 없는 데이터이므로 바꿀수 없음.
			return 1;			 // 1일때 뭔가 잘못됐다, 실패했다는 리턴값
		}
		
		String sql = "UPDATE users SET NAME = ?, PHONE = ?, GENDER = ?, SNS_YN = ? WHERE EMAIL = ?";
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getPhone());
			pstmt.setString(3, dto.getGender());
			pstmt.setString(4, dto.getSnsYn());
			pstmt.setString(5, dto.getEmail());
			
			int pCount = pstmt.executeUpdate(); //insert, update, delete는 executeUpdate
			
			String debugSql = "UPDATE users SET NAME = '" + dto.getName() + 
	                  "', PHONE = '" + dto.getPhone() + 
	                  "', GENDER = '" + dto.getGender() + 
	                  "', SNS_YN = '" + dto.getSnsYn() + 
	                  "' WHERE EMAIL = '" + dto.getEmail() + "'";
	System.out.println("실행될 쿼리: " + debugSql);

			System.out.println("변경성공");
			if(pCount>0) {
				return 0;
			}else {
				return 1;
			}
			
		} catch (Exception e) {
			e.printStackTrace(); 
			return 1;
		} finally {
			//여기들어가는 코드는 똑같음
			JdbcUtil.close(conn, pstmt, null);
		}
		
		
	}
		
	public int delete(String email) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "DELETE from USERS WHERE EMAIL = ?";
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			
			String debugSql = sql.replace("?", "'" + email + "'");
	        System.out.println("실행될 쿼리: " + debugSql);
			
			int result = pstmt.executeUpdate();
			
			
			if (result == 1) { // 삭제 성공 케이스
				return 1;
			}else {
				return 0; //삭제 실패 케이스
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, null);
		}
		return 2;
	}
		

	
}
