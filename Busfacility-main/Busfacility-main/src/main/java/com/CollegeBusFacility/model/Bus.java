package com.CollegeBusFacility.model;

public class Bus {
	private String busnum;
	private String routenum;
	private String drivername;
	private String driverphonenum;
	private String destination;
	private String stoppings;
	private int fee;
	
	public String getBusnum() {
		return busnum;
	}
	public void setBusnum(String busnum) {
		this.busnum = busnum;
	}
	public String getRoutenum() {
		return routenum;
	}
	public void setRoutenum(String routenum) {
		this.routenum = routenum;
	}
	public String getDrivername() {
		return drivername;
	}
	public void setDrivername(String drivername) {
		this.drivername = drivername;
	}
	public String getDriverphonenum() {
		return driverphonenum;
	}
	public void setDriverphonenum(String driverphonenum) {
		this.driverphonenum = driverphonenum;
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
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
	public Bus() {
		super();
	}
	public Bus(String busnum, String routenum, String drivername, String driverphonenum, String destination,
			String stoppings, int fee) {
		this.busnum = busnum;
		this.routenum = routenum;
		this.drivername = drivername;
		this.driverphonenum = driverphonenum;
		this.destination = destination;
		this.stoppings = stoppings;
		this.fee = fee;
	}
	
	
}
