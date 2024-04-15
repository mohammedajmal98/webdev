package com.CollegeBusFacility.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.CollegeBusFacility.model.Bus;
import com.CollegeBusFacility.model.User;

@Service
public interface StudentService {

	public String updateValidation(User user);

	public List<Bus> getAllBusDetails();

	public List<User> getUserDetails(String name);


	// public User showuserprofile(String name);

    
	

}
