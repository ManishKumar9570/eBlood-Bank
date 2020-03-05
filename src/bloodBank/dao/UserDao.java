	package bloodBank.dao;

import java.util.List;

import bloodBank.pojo.User;

public interface UserDao {
	
	public boolean isUserExists(User user);
	public boolean addUser(User user);
	public User getUser(User user);
	public List<User> getAllUsers(String blood_group,String city);
	public boolean updateUserDetails(User user);
	public boolean loginValidation(User user);
}
