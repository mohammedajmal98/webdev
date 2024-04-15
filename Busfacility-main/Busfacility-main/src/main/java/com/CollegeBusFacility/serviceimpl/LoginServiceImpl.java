package com.CollegeBusFacility.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.CollegeBusFacility.model.User;
import com.CollegeBusFacility.model.Admin;
import com.CollegeBusFacility.service.LoginService;
@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	JdbcTemplate jt ;

	@Override
	public boolean validateAdmin(String username, String password) {
		
	Admin adm=this.getAdminByName(username);
	if(adm == null) {
	return false;
	}
	else {
	if(adm.getPassword().equals(password)) {
	return true;
	}
	else {
	return false;
	}
	}
	}


	@Override
	public Admin getAdminByName(String name){
		String sql = "Select * from admin where user_id =?;";
		
		try {
			Admin usr = (Admin) jt.queryForObject(sql, new Object[] {name},new BeanPropertyRowMapper(Admin.class));
			return usr;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;


	}
	
	
	@Override
	public User getUserByName(String name) {
	String sql = "Select * from userdetails where name = ?;";
	try {
	User usr = (User) jt.queryForObject(sql, new Object[] {name},new BeanPropertyRowMapper(User.class));
	return usr;
	}
	catch(Exception ex) {
	System.out.println(ex.getMessage());
	}
	return null;

	// return jt.query("select * from BusDetails",new ResultSetExtractor<List<Bus>>(){
	// 	public List<Bus> extractData(ResultSet rs) throws SQLException,
	// 	DataAccessException {
	// 	List<Bus> list=new ArrayList<Bus>();
	// 	while(rs.next()){
	// 	Bus e=new Bus();
	// 	e.setBusnum(rs.getString(1));
	// 	e.setRoutenum(rs.getString(2));
	// 	e.setDrivername(rs.getString(3));
	// 	e.setDriverphonenum(rs.getString(4));
	// 	e.setDestination(rs.getString(5));
	// 	e.setStoppings(rs.getString(6));
	// 	e.setFee(rs.getInt(7));
	// 	list.add(e);
	// 	}
	// 	return list;
	// }
	// });
	}
	



	
	@Override
	public int validateUser(String name, String password) {
	// TODO Auto-generated method stub
	User cus=this.getUserByName(name);
	String  query = "select login from userdetails where name =?";
	int login= jt.queryForObject(query, new Object[] {name},Integer.class);

	if(cus == null) {
		return 0;
	}else {
	if((cus.getDob().equals(password))&&login==0) {
		return 1;
	}
	else if((cus.getPassword().equals(password))&&login==1){
		String str= "update userdetails set login=? where name=?";
		jt.update(str, new Object[] {2,name});
		return 2;
	}
	else if((cus.getPassword().equals(password))&&login==2){
		return 3;
	}else{
		return 0;
	}
	}
	}
	
	


	@Override
	public String Register(User user) {
		String str= "Insert into userdetails(user_id,name,dob,department,ph_no,address,password,role,qtn1,qtn2,qtn3) values(?,?,?,?,?,?,?,?,?,?,?)";
		try
		{
	    	int  r= jt.update(str, new Object[] {user.getId(), user.getName(), user.getDob(),user.getDepartment(),user.getPhonenum(),user.getAddress(),user.getPassword(),user.getRole(),user.getQtn1(),user.getQtn2(),user.getQtn3()});
			if(r>=1)
			{
				return "User Registered!/ Enter DOB(YYYY-MM-DD) for 1st Login";
			}
			else
		       return "User not Registered!" ;
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		return "User not Registered!";
	}

	
	
	@Override
	public boolean validateChangePassword(String username,String qtn1,String qtn2,String qtn3,String np,String c_np){
		User cus=this.getUserByName(username);
		String  query = "select login from userdetails where name =?";
		int login= jt.queryForObject(query, new Object[] {username},Integer.class);

		if(cus == null) {
			return false;
		}
		else {
			if((cus.getQtn1().equals(qtn1))&&(cus.getQtn2().equals(qtn2)&&(cus.getQtn3().equals(qtn3)))) {
				if(login==0){
					String str= "update userdetails set login=? where name=?";
					jt.update(str, new Object[] {1,username});
				}
			return true;
			}
			else {
				return false;
				}
		}
			
			
	}

	@Override
	public void changepassword(String np,String name){
		String str= "update userdetails set password=? where name = ?";
		jt.update(str,np,name);
			
		

	}


}

