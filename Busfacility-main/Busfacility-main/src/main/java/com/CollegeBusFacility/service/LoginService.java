package com.CollegeBusFacility.service;

import org.springframework.stereotype.Component;

import com.CollegeBusFacility.model.User;
import com.CollegeBusFacility.model.Admin;


@Component
public interface LoginService {
	public boolean validateAdmin(String userid,String password);
	public int validateUser(String username, String password);
	public User getUserByName(String name);
	public Admin getAdminByName(String name);
	public String Register(User user);
	public boolean validateChangePassword(String username,String qtn1,String qtn2,String qtn3,String np,String c_np);
	public void changepassword(String np,String name);
}
