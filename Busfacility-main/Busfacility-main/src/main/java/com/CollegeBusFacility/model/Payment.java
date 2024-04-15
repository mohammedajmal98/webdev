package com.CollegeBusFacility.model;

import org.springframework.boot.autoconfigure.domain.EntityScan;

public class Payment {
	private int id;
	private String name;
	private String dob;
	
	private String department;
	private String phonenum;
	private String address;
	private String role;
	private String password;
	private int busnum;
	private String routenum;
	private String destination;
	private String stoppings;
	private String fee;
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
	public int getBusnum() {
		return busnum;
	}
	public void setBusnum(int busnum) {
		this.busnum = busnum;
	}
	public String getRoutenum() {
		return routenum;
	}
	public void setRoutenum(String routenum) {
		this.routenum = routenum;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getStoppings() {
		return stoppings;
	}
	public void setStoppings(String stoppings) {
		this.stoppings = stoppings;
	}
	public String getFee() {
		return fee;
	}
	public void setFee(String fee) {
		this.fee = fee;
	}
	public Payment(int id, String name, String dob, String department, String phonenum, String address, String role,
			String password, int busnum, String routenum, String destination, String stoppings, String fee) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.department = department;
		this.phonenum = phonenum;
		this.address = address;
		this.role = role;
		this.password = password;
		this.busnum = busnum;
		this.routenum = routenum;
		this.destination = destination;
		this.stoppings = stoppings;
		this.fee = fee;
	}
	public Payment() {
		super();
	}
	
	

}
