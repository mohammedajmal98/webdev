package com.CollegeBusFacility.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.CollegeBusFacility.model.Bus;
import com.CollegeBusFacility.model.BusDetails;
import com.CollegeBusFacility.model.Payment;
import com.CollegeBusFacility.model.User;



@Service
public interface AdminService {
	
	
	
	public List<User> showuser();
	public String Addbus(Bus bus);
	public String Adduser(User user);
	public List<Payment> showcomplete();
	public List<BusDetails> GetBusDetailsByBusno(String Busnum);
	public String DeleteBus(String Busnum);
	public String EditBusDetail(BusDetails busdetails);
	
	

	

}
