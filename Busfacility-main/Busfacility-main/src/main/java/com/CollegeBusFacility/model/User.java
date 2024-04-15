package com.CollegeBusFacility.model;

public class User {
	private int id;
	private String name;
	private String dob;
	private String department;
	private String phonenum;
	private String address;
	private String password;
	private String role;
	private int login;
	private String qtn1;
	private String qtn2;
	private String qtn3;
	private String busno;
	private String stopping;
	private int userfees;
	private int paystatus;

	
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getLogin() {
		return login;
	}
	public void setLogin(int login) {
		this.login = login;
	}
	public String getQtn1() {
		return qtn1;
	}
	public void setQtn1(String qtn1) {
		this.qtn1 = qtn1;
	}
	public String getQtn2() {
		return qtn2;
	}
	public void setQtn2(String qtn2) {
		this.qtn2 = qtn2;
	}
	public String getQtn3() {
		return qtn3;
	}
	public void setQtn3(String qtn3) {
		this.qtn3 = qtn3;
	}
	public String getBusno() {
		return busno;
	}
	public void setBusno(String busno) {
		this.busno = busno;
	}
	public String getStopping() {
		return stopping;
	}
	public void setStopping(String stopping) {
		this.stopping = stopping;
	}
	public int getUserfees() {
		return userfees;
	}
	public void setUserfees(int userfees) {
		this.userfees = userfees;
	}
	public int getPaystatus() {
		return paystatus;
	}
	public void setPaystatus(int paystatus) {
		this.paystatus = paystatus;
	}
	public User() {
		super();
	}
	public User(int id, String name, String dob,  String department, String phonenum, String address, String password,
			String role, int login, String qtn1, String qtn2, String qtn3, String busno, String stopping,
			int userfees, int paystatus) {
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.phonenum = phonenum;
		this.department = department;
		this.address = address;
		this.password = password;
		this.role = role;
		this.login = login;
		this.qtn1 = qtn1;
		this.qtn2 = qtn2;
		this.qtn3 = qtn3;
		this.busno = busno;
		this.stopping = stopping;
		this.userfees = userfees;
		this.paystatus = paystatus;
	}
	public static Object getUserByName(String string) {
		return null;
	}

}
