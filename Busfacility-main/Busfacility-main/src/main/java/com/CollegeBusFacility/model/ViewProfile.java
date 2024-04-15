package com.CollegeBusFacility.model;

public class ViewProfile {

	
	private int id;
	private String name;
	private String dob;
	
	private String department;
	private String phonenum;
	private String role;
	private String address;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public ViewProfile(int id, String name, String dob, String department, String phonenum, String role,
			String address) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.department = department;
		this.phonenum = phonenum;
		this.role = role;
		this.address = address;
	}
	public ViewProfile() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}


