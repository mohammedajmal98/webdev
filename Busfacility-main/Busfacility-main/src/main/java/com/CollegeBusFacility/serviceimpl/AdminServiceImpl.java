/* Todo:
Fix viewuserdetails in showuser()
*/

package com.CollegeBusFacility.serviceimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Service;
import com.CollegeBusFacility.service.AdminService;

import com.CollegeBusFacility.model.Bus;
import com.CollegeBusFacility.model.BusDetails;
import com.CollegeBusFacility.model.Payment;
import com.CollegeBusFacility.model.User;

@Service
public class AdminServiceImpl implements AdminService {
	
@Autowired
JdbcTemplate jt ;

@Override
public String Addbus(Bus bus) {
	
	String str= "Insert into busdetails(busno, routeno, drivername, driverphn, destination, stoppings, routefees) values(?,?,?,?,?,?,?)";
	
	try
	{
		int  r= jt.update(str, new Object[] {bus.getBusnum(), bus.getRoutenum(), bus.getDrivername(),bus.getDriverphonenum(),bus.getDestination(),bus.getStoppings(),bus.getFee()});
		if(r>=1)
		{
			return "Bus Route Added";
		}
		else
			return "Bus Route Not Added";
	}
	catch(Exception ex)
	{
		System.out.println(ex.getMessage());
	}
	
return "Bus Route Not Added";
}



@Override
public List<User> showuser() {
	try {
		return jt.query("select user_id,name,dob,department,ph_no,role,busno,stopping,userfees from userdetails",new ResultSetExtractor<List<User>>(){
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
			e.setRole(rs.getString(6));
			e.setBusno(rs.getString(7));
			e.setStopping(rs.getString(8));
			e.setUserfees(rs.getInt(9));
			list.add(e);
			}
			return list;
		}
		});
	}
	catch(Exception ex) {
		System.out.println(ex.getMessage());
	}
	return null;
}

	
@Override
public String Adduser(User user) {
	String str= "Insert into userdetails(user_id,name,dob,department,ph_no,address,password,role) values(?,?,?,?,?,?,?,?)";
		
	try
	{
		int  r= jt.update(str, new Object[] {user.getId(), user.getName(), user.getDob(),user.getDepartment(),user.getPhonenum(),user.getAddress(),user.getPassword(),user.getRole()});
		if(r>=1)
		{
			return "user added";
		}
		else
			return "user not added" ;
	}
	catch(Exception ex)
	{
		System.out.println(ex.getMessage());
	}
	return "user not added";
	

}

@Override
public String DeleteBus(String Busnum){
	String str= "delete from busdetails where busno=?";
	try
	{
		int  r= jt.update(str, new Object[] {Busnum});
		if(r>=1)
		{
			return "Bus Route Deleted";
		}
		else
		return "Bus Route Not Deleted!" ;
	}
	catch(Exception ex)
	{
		System.out.println(ex.getMessage());
	}
	return "Bus Route Not Deleted!";
}


@Override
public List<BusDetails> GetBusDetailsByBusno(String Busnum) {
	return jt.query("Select * from busdetails where busno = ?;", new Object[] {Busnum},new ResultSetExtractor<List<BusDetails>>(){
		public List<BusDetails> extractData(ResultSet rs) throws SQLException,
		DataAccessException {
		List<BusDetails> list=new ArrayList<BusDetails>();
		while(rs.next()){
		BusDetails e=new BusDetails();
		e.setBusno(rs.getString(1));
		e.setRouteno(rs.getString(2));
		e.setDrivername(rs.getString(3));
		e.setDriverphn(rs.getString(4));
		e.setDestination(rs.getString(5));
		e.setStoppings(rs.getString(6));
		e.setRoutefees(rs.getInt(7));
		list.add(e);
		}
		return list;
		}
	});
}

@Override
public String EditBusDetail(BusDetails busdetails){
	String str= "update busdetails set busno=? ,routeno =?,drivername = ?, driverphn = ?, destination=?, stoppings=?,routefees=? where busno=?";
	try
	{
		int  r= jt.update(str, new Object[] {busdetails.getBusno(),busdetails.getRouteno(),busdetails.getDrivername(),busdetails.getDriverphn(),busdetails.getDestination(),busdetails.getStoppings(),busdetails.getRoutefees(),busdetails.getBusno()});
		if(r>=1)
		{
			return "User Details Edited!";
		}
		else
			return "User Details Not Edited!" ;
	}
	catch(Exception ex)
	{
		System.out.println(ex.getMessage());
	}
	return "User Details Not Edited!";
}

@Override
public List<Payment> showcomplete() {

	String sql = "select v.id,v.NAME,v.DOB,v.department,v.phonenum,v.address,v.password,v.role,e.busnum,e.routenum,e.destination,e.stoppings,e.fee from userdetails as v inner join enrollbusroute as e on v.id=e.id;";
			try {
				List<Payment> Completepay= jt.query(sql, new BeanPropertyRowMapper(Payment.class));
				return Completepay;
			}
			catch(Exception ex) {
				System.out.println(ex.getMessage());
			}
			
	
	return null;
}






	
    
    

	

	
	
	
	

	

	
	
	
	/*@Override
	public List<Bus> showaddbus(Bus bs) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Bus> Showall(Bus bs) {
		// TODO Auto-generated method stub
		return null;
	}

	/*@Override
	public List<User> Showuser() {
		String str="Select * from userdetails";
		List<User> listAll=jt.query(str, new BeanPropertyRowMapper(User.class));
		return listAll;}

	@Override
	public String register(Register user) {
		String str= "Insert into userdetails(id, role, name, dob, department, phonenum , address,password) values(?,?,?,?,?,?,?,?)";
		int r= jt.update(str, new Object[] {user.getId(), user.getRole(), user.getName(),user.getDob(),user.getDepartment(),user.getPhonenum(),user.getAddress(),user.getPassword()});
		if(r>=1)
		   return "New User  Added";
		else
			return "Error ...";
	}*/

}
