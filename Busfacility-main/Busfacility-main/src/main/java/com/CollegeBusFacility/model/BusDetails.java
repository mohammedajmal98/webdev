package com.CollegeBusFacility.model;

public class BusDetails {
	
	private String Busno;
	private String routeno;  
	private String drivername;  
	private String driverphn;  
	private String destination;  
	private String stoppings;
	private int routefees;
	
	public String getBusno() {
		return Busno;
	}
	public void setBusno(String busno) {
		Busno = busno;
	}
	public String getRouteno() {
		return routeno;
	}
	public void setRouteno(String routeno) {
		this.routeno = routeno;
	}
	public String getDrivername() {
		return drivername;
	}
	public void setDrivername(String drivername) {
		this.drivername = drivername;
	}
	public String getDriverphn() {
		return driverphn;
	}
	public void setDriverphn(String driverphn) {
		this.driverphn = driverphn;
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
	public int getRoutefees() {
		return routefees;
	}
	public void setRoutefees(int routefees) {
		this.routefees = routefees;
	}

	public BusDetails(){
		super();
	}

	public BusDetails(String busno, String routeno, String drivername, String driverphn, String destination,
			String stoppings, int routefees) {
		this.Busno = busno;
		this.routeno = routeno;
		this.drivername = drivername;
		this.driverphn = driverphn;
		this.destination = destination;
		this.stoppings = stoppings;
		this.routefees = routefees;
	}



}
