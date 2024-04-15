package com.CollegeBusFacility.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.CollegeBusFacility.model.Bus;
import com.CollegeBusFacility.model.User;
import com.CollegeBusFacility.service.AdminService;
import com.CollegeBusFacility.service.LoginService;
import com.CollegeBusFacility.service.StudentService;

@Controller
public class StudentController {

	
	@Autowired
	StudentService ss;
	@Autowired
	AdminService as;
	@Autowired
	LoginService ls;
	
   

	@GetMapping("viewprofile")
	public String showprofile(HttpSession session,Model m){
	// User user = ss.showuserprofile((String) session.getAttribute("username"));
	// List<User> user = new ArrayList<>();
	// user.add(ls.getUserByName("dv"));
	// System.out.println("===============================================================================================================================");
	// System.out.println(user.get(0).getPhonenum()); //Debug line
	// m.addAttribute("flist",user);
	List<User> flist = ss.getUserDetails((String) session.getAttribute("username"));
	m.addAttribute("id", flist.get(0).getId());
	m.addAttribute("name", flist.get(0).getName());
	m.addAttribute("dob", flist.get(0).getDob());
	m.addAttribute("department", flist.get(0).getDepartment());
	m.addAttribute("phonenum", flist.get(0).getPhonenum());
	m.addAttribute("role", flist.get(0).getRole());
	m.addAttribute("address", flist.get(0).getAddress());
	
	return "viewprofile";
	}
	
	/*@GetMapping("viewprofile")
	public String showuserprofile(Model m) {
	List<User> CustomersAll = as.showuserprofile();
	m.addAttribute("flist", CustomersAll);
	return "viewprofile";
	}
	*/

	@GetMapping("validateprofile")
	public String Validate(HttpSession session,Model m){
	List<User> flist = ss.getUserDetails((String) session.getAttribute("username"));
	System.out.println((String) session.getAttribute("username"));
	m.addAttribute("id", flist.get(0).getId());
	m.addAttribute("name", flist.get(0).getName());
	m.addAttribute("dob", flist.get(0).getDob());
	m.addAttribute("department", flist.get(0).getDepartment());
	m.addAttribute("phonenum", flist.get(0).getPhonenum());
	m.addAttribute("role", flist.get(0).getRole());
	m.addAttribute("address", flist.get(0).getAddress());
	return "validateprofile";
	}

	@PostMapping("validateprofile")
	public String addregister(
		@RequestParam Integer id,@RequestParam String name,@RequestParam String dob,@RequestParam String department,
	    @RequestParam String phonenum,@RequestParam String address,@RequestParam String role,Model m) {
	    User user= new User(id,name,dob,department,phonenum,address,"",role,0,"","","","","",0,0);
	    String res = ss.updateValidation(user);
	    m.addAttribute("msg",res);
		if(res=="User Details Updated!"){
			return "studentfachome";
		}else{
	    	return "validateprofile";
		}
	}
	

	@GetMapping("enrollbusroute")
	public String showenrollbusPage(Model m) {
		List<Bus> flist = ss.getAllBusDetails();
		m.addAttribute("flist", flist);
		return "enrollbusroute";
		}
	
	
	// @PostMapping("enrollbusroute")
	// public String adddesiredbus(@RequestParam Integer id,@RequestParam String name,@RequestParam String busnum,@RequestParam String routenum,@RequestParam String destination,@RequestParam String stoppings,@RequestParam String fee,
	//         Model m) {
	//     EnrollBusRoute enroll = new EnrollBusRoute(id,name,busnum,routenum,destination,stoppings,fee);
	//      String res = ss.Choosebus(enroll);
	//     m.addAttribute("msg",res);
	//     return "enrollbusroute";
	// 	}
	
	
	@GetMapping("payfee")
	public String showpayfeesPage() {
		
	return "payfee";
	}
	
	@GetMapping("help")
	public String showhelp(){
	return "help";
	}
	
	
	
	@GetMapping("forgetpassword")
	public String showchangepasswordpage(){
	return "changepassword";
	}
	
	@GetMapping("update")
	public String showupdate(){
	return "changepassword";
	}
	
	@GetMapping("cancel")
	public String showcancel(){
	return "studentfachome";
	}
	
	
	
	
	/*@Override
	public boolean Updatepassword(String password) {
	// TODO Auto-generated method stub
	 cust = this.GetCustomerById();
	String sql = "Update Customers set custFName = ?, custLName = ?, emailid = ?, passwoord = ?, gender = ?, dob = ?, mobile = ?, address = ? where custId = ?;";
	try {
	int r = jt.update(sql, custFname, custLname, emailId, password, gender, dob, mobileNo, address, cust.getCustId());
	if(r>=1) {
	return true;
	}
	else {
	return false;
	}
	}
	catch(Exception ex) {
	System.out.println(ex.getMessage());
	}
	return false;
	
	


}*/
}
