package com.hr.model;

public class DepartmentDTO {
	
	// DTO 클래스 = 데이터베이스에 전달될, 전달할 데이터를 운반하는 클래스
	// 멤버변수 만들때, 테이블의 컬럼과 동일하게 생성
	// 1. 은닉 클래스로 생성해야함
	// 2. 생성자는 기본 생정자, 모든 멤버변수를 전달받는 생성자
	
	private int departmentId;
	private String departmentName;
	private int managerId;
	private int locationId;
	
	public DepartmentDTO() {
		
	}

	public DepartmentDTO(int departmentId, String departmentName, int managerId, int locationId) {
		super();
		this.departmentId = departmentId;
		this.departmentName = departmentName;
		this.managerId = managerId;
		this.locationId = locationId;
	}

	public int getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public int getManagerId() {
		return managerId;
	}

	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}

	public int getLocationId() {
		return locationId;
	}

	public void setLocationId(int locationId) {
		this.locationId = locationId;
	}

}
