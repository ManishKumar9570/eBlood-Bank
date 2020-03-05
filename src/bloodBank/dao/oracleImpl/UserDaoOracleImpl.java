package bloodBank.dao.oracleImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Savepoint;
import java.util.ArrayList;
import java.util.List;

import bloodBank.dao.UserDao;
import bloodBank.pojo.User;
import bloodBank.util.DbUtil;

public class UserDaoOracleImpl implements UserDao{

	public UserDaoOracleImpl() {
		
	}
	
	public boolean isUserExists(User user){
		boolean result=false;
		
		Connection con=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			con = DbUtil.getConnection();
			
			String sql="select * from Blood_Donation_user_table where email_id=?";
		
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, user.getEmail_id());
			
			rs=pstmt.executeQuery();
			if(rs.next()){
				System.out.println("user exists");
				result=true;
			}else{
				System.out.println("user does not exists");
			}
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		return result;
	}
	
	public boolean addUser(User user){
		boolean result=false;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			con =DbUtil.getConnection();
			
			String sql="insert into Blood_Donation_user_table(email_id,password)values(?,?)";
		
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, user.getEmail_id());
			pstmt.setString(2, user.getPassword());
			
			con.setAutoCommit(false);
			Savepoint s1=con.setSavepoint();
			
			int r=pstmt.executeUpdate();
			if(r==1){
				
				sql="insert into Blood_Donation_detail_table(email_id,name,gender,mobile_number,weight,age,blood_group,city,address)values(?,?,?,?,?,?,?,?,?)";
			
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, user.getEmail_id());
				pstmt.setString(2, user.getName());
				pstmt.setString(3, user.getGender());
				pstmt.setString(4, user.getMobile_number());
				pstmt.setFloat(5, user.getWeight());
				pstmt.setInt(6, user.getAge());
				pstmt.setString(7, user.getBlood_group());
				pstmt.setString(8, user.getCity());
				pstmt.setString(9, user.getAddress());
				
				r=pstmt.executeUpdate();
				if(r==1){
					result=true;
					sql="commit";
					pstmt=con.prepareStatement(sql);
					pstmt.executeUpdate();
				}else{
					con.rollback(s1);
					System.out.println("error in adding into detail table");
				}
			}else{
				System.out.println("error in adding into user table");
			}
		}catch(Exception e){
			
			e.printStackTrace();
		}
	
		return result;
	}
	
	public User getUser(User user){
		User newUser=null;
		
		Connection con=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			con = DbUtil.getConnection();
			
			String sql="select * from Blood_Donation_detail_table where email_id=?";
		
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, user.getEmail_id());
			System.out.println(user.getEmail_id());
			
			rs=pstmt.executeQuery();
			if(rs.next()){
				String name=rs.getString("name");
				Integer age=Integer.parseInt(rs.getString("age"));
				String gender=rs.getString("gender");
				String blood_group=rs.getString("blood_group");
				Float weight=Float.parseFloat(rs.getString("weight"));
				String mobile_number=rs.getString("mobile_number");
				String city=rs.getString("city");
				String address=rs.getString("address");
				
				newUser=new User(user.getEmail_id(),name,age,gender,blood_group,weight,mobile_number,city,address);
			}else{
				System.out.println("user details not exists in detail table");
			}
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		return newUser;
	}
	
	public List<User> getAllUsers(String blood_group,String city){
		
		List<User> list = new ArrayList<User>();
		
		Connection con=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			con = DbUtil.getConnection();
			
			String sql="select * from Blood_Donation_detail_table where blood_group=? and city=?";
		
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, blood_group);
			pstmt.setString(2, city);
			
			rs=pstmt.executeQuery();
			
			User fetchedUser=null;
			
			while(rs.next()){
				
				String email_id=rs.getString("email_id");
				String name=rs.getString("name");			
				String blood_group2=rs.getString("blood_group");
				String mobile_number=rs.getString("mobile_number");
				String city2=rs.getString("city");
				String address=rs.getString("address");
				
				fetchedUser=new User();
				fetchedUser.setEmail_id(email_id);
				fetchedUser.setName(name);
				fetchedUser.setBlood_group(blood_group2);
				fetchedUser.setMobile_number(mobile_number);
				fetchedUser.setCity(city2);
				fetchedUser.setAddress(address);
				
				list.add(fetchedUser);
			}
		}catch(Exception e){
			
			e.printStackTrace();
		}
	
		return list;
	}
	
	public boolean updateUserDetails(User user){
		boolean result=false;
		
		Connection con=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			con = DbUtil.getConnection();
			
			String sql="update blood_donation_user_table set password=? where email_id=?";
		
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, user.getPassword());
			System.out.println(user.getPassword());
			pstmt.setString(2, user.getEmail_id());
			
			int r=pstmt.executeUpdate();
			
			if(r==1){
	
				sql="update blood_donation_detail_table set name=?,gender=?,mobile_number=?,weight=?,age=?,blood_group=?,city=?,address=? where email_id=?";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, user.getName());
				pstmt.setString(2,user.getGender());
				pstmt.setString(3, user.getMobile_number());
				pstmt.setFloat(4, user.getWeight());
				pstmt.setInt(5, user.getAge());
				pstmt.setString(6,user.getBlood_group());
				pstmt.setString(7, user.getCity());
				pstmt.setString(8,user.getAddress());
				pstmt.setString(9, user.getEmail_id());
				
				r=pstmt.executeUpdate();
				
				if(r==1){
					result=true;
				}else{
					System.out.println("details update problem");
				}
				
			}else{
				System.out.println("password reset problem");
			}
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		return result;
	}
	public boolean loginValidation(User user){
		boolean result=false;
		
		Connection con=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			con = DbUtil.getConnection();
			
			String sql="select * from Blood_Donation_user_table where email_id=? and password=?";
		
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, user.getEmail_id());
			pstmt.setString(2, user.getPassword());
			
			rs=pstmt.executeQuery();
			if(rs.next()){
				System.out.println("user exists");
				result=true;
			}else{
				System.out.println("user does not exists");
			}
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		return result;
	}
}
