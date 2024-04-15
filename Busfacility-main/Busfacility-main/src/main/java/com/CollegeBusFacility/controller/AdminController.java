package com.CollegeBusFacility.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.CollegeBusFacility.serviceimpl.AdminServiceImpl;
import com.CollegeBusFacility.model.Bus;
import com.CollegeBusFacility.model.BusDetails;
import com.CollegeBusFacility.model.Payment;
import com.CollegeBusFacility.model.User;
import com.CollegeBusFacility.service.StudentService;



@Controller

public class AdminController {

  @Autowired
  StudentService ss;
  @Autowired
  AdminServiceImpl ad;

  @GetMapping(value="viewallbus")
  public String showAllBus(Model m){
      List<Bus> flist = ss.getAllBusDetails();
      m.addAttribute("flist", flist);
      return "viewallbus";
    }
    
  @GetMapping("addbusroute")
  public String showaddbus(){
    return "addbus";
  }

  @PostMapping("addbusroute")
  public String addnewbus(@RequestParam String busnum,@RequestParam String routenum,@RequestParam String drivername,
          @RequestParam String driverphonenum,@RequestParam String destination,@RequestParam String stoppings,@RequestParam int fee,
          Model m) {
      Bus bus= new Bus(busnum,routenum,drivername,driverphonenum,destination,stoppings,fee);
      String res = ad.Addbus(bus);
      m.addAttribute("msg",res);
      return "addbus";
    }

  @GetMapping(value="addnewuser")
  public String showaddnewuser() {
    return "addnewuser";}

  @PostMapping("addnewuser")
  public String addnewuser(@RequestParam Integer id,@RequestParam String name,@RequestParam String dob,@RequestParam String department,
          @RequestParam String phonenum,@RequestParam String address,@RequestParam String password,@RequestParam String role,
          Model m) {
      User user= new User(id,name,dob,department,phonenum,address,password,role,0,"","","","","",0,0);
      String res = ad.Adduser(user);
      m.addAttribute("msg",res);
      return "addnewuser";
    }
    
  @GetMapping("viewuserdetails")
  public String showusers(Model m)
  {
    List<User> flist = ad.showuser();
    m.addAttribute("flist", flist);
    return "viewuser";

  }

  @GetMapping("editbus/{busnum}")
  public String editbus(@PathVariable("busnum") String busnum,Model m){
    List<BusDetails> BusDetails=ad.GetBusDetailsByBusno(busnum);
    m.addAttribute("busnum", BusDetails.get(0).getBusno());
    m.addAttribute("routenum", BusDetails.get(0).getRouteno());
    m.addAttribute("drivername", BusDetails.get(0).getDrivername());
    m.addAttribute("driverphonenum", BusDetails.get(0).getDriverphn());
    m.addAttribute("destination", BusDetails.get(0).getDestination());
    m.addAttribute("stoppings", BusDetails.get(0).getStoppings());
    m.addAttribute("fee", BusDetails.get(0).getRoutefees());    
    return "/editbus";
    }
    
  @PostMapping("editbus/{busnum}")
  public String editbuspost(
    @RequestParam String busnum,@RequestParam String routenum,@RequestParam String drivername,@RequestParam String driverphonenum,@RequestParam String stoppings,@RequestParam int fee,Model m){
      BusDetails busdetails = new BusDetails(busnum,routenum,drivername,driverphonenum,stoppings,stoppings, fee);
      String res = ad.EditBusDetail(busdetails);
      m.addAttribute("msg",res);
      return "/viewallbus";      
    }

  @GetMapping("deletebus/{busnum}")
  public String deletebus(@PathVariable("busnum") String busnum,Model m){
    String res=ad.DeleteBus(busnum);
    if(res=="Bus Route Deleted"){
      m.addAttribute("msg", res);
      return "/viewallbus";
    }else{
      m.addAttribute("msg", res);
      return "/viewallbus";
    }
  }

  @GetMapping("viewpayment")
  public String showpaymentPage(Model m) {
    List<Payment> flist = ad.showcomplete();
    m.addAttribute("flist", flist);
    return "viewpayment1";
  }
}
