package com.hr.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.sql.DataSource; // DataSource 임포트 추가

public class DepartmentDAO {
	//DAO클래스는 여러개 만들필요 없이 객체가 한개만 생성되도록 싱글톤 클래스로 생성
	
	//1. 나자신의 객체 1개 생성
	
	private static DepartmentDAO instance = new DepartmentDAO();
	
	//2. 외부에서 생성자를 호출할 수 없도록 private으로 막음
	private DepartmentDAO() {
		
		try {
			InitialContext context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle"); // DateSource → DataSource, conetext → context 수정
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	//3. 외부에서 객체를 요구할때, instance를 반환함. // DAO타입 반환하는 getInstance라는 메서드. 나중에 DepartmentDAO.getInstance() 쓰기
	public static DepartmentDAO getInstance() {
		return instance;
	}
	
	// 커넥션 풀 사용할 데이터소스 클래스
	private DataSource dataSource;
	
	//메서드로 Database에 접근해서 값을 처리.
	//부서 아이디를 받아서, 부서정보를 반환하는 메서드
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String uid = "HR";
	private String upw = "HR";
	
	public DepartmentDTO getDepartmentInfo(String departmentId) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM DEPARTMENTS WHERE DEPARTMENT_ID = ?";
		
		DepartmentDTO dto = new DepartmentDTO();
		
		try {
//			// 1. 드라이버 클래스 로드
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//			// 2. 커넥션 넣어주기
//			conn = DriverManager.getConnection(url, uid, upw);
			
			conn = dataSource.getConnection(); // datasource → dataSource 수정, getConnenction → getConnection 수정
			// 3. pstmt 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, departmentId);
			
			// 4. 실행 
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				// 1행에 대한 처리
				String departmentName = rs.getString("department_name");
				int managerId = rs.getInt("manager_id");
				int locationId = rs.getInt("location_id");
				
				dto.setDepartmentId(Integer.parseInt(departmentId));
				dto.setDepartmentName(departmentName);
				dto.setManagerId(managerId);
				dto.setLocationId(locationId);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn!=null) conn.close();
				if(pstmt!=null) pstmt.close();
				if(rs!=null) rs.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
			
		}
		return dto;
	}
	
	
}
