package com.CollegeBusFacility.serviceimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Service;

import com.CollegeBusFacility.model.Bus;
import com.CollegeBusFacility.model.User;
import com.CollegeBusFacility.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	JdbcTemplate jt ;
	private Object name;
	
	
	
	public Object getName() {
		return name;
	}


	public void setName(Object name) {
		this.name = name;
	}


	// @Override
	// public String Choosebus(EnrollBusRoute enrollbusroute) {
	// 	String str= "Insert into enrollbusroute(id,name,busnum,routenum,destination,stoppings,fee) values(?,?,?,?,?,?,?)";
		   
	//     try
	// 	{
	//     	int  r= jt.update(str, new Object[] {enrollbusroute.getId(),enrollbusroute.getName(),enrollbusroute.getBusnum(), enrollbusroute.getRoutenum(), enrollbusroute.getDestination
	//     			(),enrollbusroute.getStopping(),enrollbusroute.getFee()});
	// 		if(r>=1)
	// 		{
	// 			return "Bus route  enrolled!";
	// 		}
	// 		else
	// 	       return "Bus route not enrolled!" ;
	// 	}
	// 	catch(Exception ex)
	// 	{
	// 		System.out.println(ex.getMessage());
	// 	}
	// 	return "Bus route not enrolled!";
		
	
	// }


	// @Override
	// public List<Bus> showbus() {
	// 	String sql = "Select * from busdetails;";
	// 	try {
	// 		// List<String>data=jt.queryForList(sql,String.class);
	// 		// System.out.println(data.get(0));
	// 		// List<Bus> Bususer = jt.query(sql, new BeanPropertyRowMapper(Bus.class));
	// 		System.out.println(Bususer.get(0).getFee());
	// 		return Bususer;
	// 	}
	// 	catch(Exception ex) {
	// 		System.out.println(ex.getMessage());
	// 	}
	// 	return null;
	// }
	
	

public List<Bus> getAllBusDetails(){
	return jt.query("select * from BusDetails",new ResultSetExtractor<List<Bus>>(){
		public List<Bus> extractData(ResultSet rs) throws SQLException,
		DataAccessException {
		List<Bus> list=new ArrayList<Bus>();
		while(rs.next()){
		Bus e=new Bus();
		e.setBusnum(rs.getString(1));
		e.setRoutenum(rs.getString(2));
		e.setDrivername(rs.getString(3));
		e.setDriverphonenum(rs.getString(4));
		e.setDestination(rs.getString(5));
		e.setStoppings(rs.getString(6));
		e.setFee(rs.getInt(7));
		list.add(e);
		}
		return list;
		}
	});
}

public List<User> getUserDetails(String name){
	return jt.query("Select * from userdetails where name = ?;", new Object[] {name},new ResultSetExtractor<List<User>>(){
		public List<User> extractData(ResultSet rs) throws SQLException,
		DataAccessException {
		List<User> list=new ArrayList<User>();
		while(rs.next()){
		User e=new User();
		e.setId(rs.getInt(1));
		e.setName(rs.getString(2));
		e.setDob(rs.getString(3));
		e.setDepartment(rs.getString(4));
		e.setPhonenum(rs.getString(5));
		e.setAddress(rs.getString(6));
		e.setPassword(rs.getString(7));
		e.setRole(rs.getString(8));
		e.setLogin(rs.getInt(9));
		e.setQtn1(rs.getString(10));
		e.setQtn2(rs.getString(11));
		e.setQtn3(rs.getString(12));
		e.setBusno(rs.getString(13));
		e.setStopping(rs.getString(14));
		e.setUserfees(rs.getInt(15));
		e.setPaystatus(rs.getInt(16));
		list.add(e);
		}
		return list;
		}
	});
}

@Override
public String updateValidation(User user) {
	String str= "update userdetails set department=? ,ph_no =?,address = ?,role = ? where name=?";
	try
	{
		System.out.println(user.getDepartment());
		System.out.println(user.getAddress());
		int  r= jt.update(str, new Object[] {user.getDepartment(),user.getPhonenum(),user.getAddress(),user.getRole(),user.getName()});
		if(r>=1)
		{
			return "User Details Updated!";
		}
		else
			return "User Details Not Updated!" ;
	}
	catch(Exception ex)
	{
		System.out.println(ex.getMessage());
	}
	return "User Details Not Updated!";
}

		
		
		
	
	
	// @Override
	// public User showuserprofile(String name) {
	// 	String sql = "Select * from userdetails where name=?;";
	// 	// try {
			
	// 		User uuser = (User) jt.query(sql,new Object[] {name}, new BeanPropertyRowMapper(User.class));
	// 		System.out.println("...............................................................................");
	// 		System.out.println(uuser.getAddress());
	// 		return uuser;
	// 	// }
	// 	// catch(Exception ex) {
	// 	// 	System.out.println(ex.getMessage());
	// 	// }
	// 	// return null;
	// }


	
	
	

}
