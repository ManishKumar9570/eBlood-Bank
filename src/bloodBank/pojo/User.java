package bloodBank.pojo;

public class User {

	public User(String email_id, String name, Integer age, String gender,
			String blood_group, Float weight, String mobile_number,
			String city, String address) {
		super();
		this.email_id = email_id;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.blood_group = blood_group;
		this.weight = weight;
		this.mobile_number = mobile_number;
		this.city = city;
		this.address = address;
	}
	public User(String email_id, String password, String name, Integer age,
			String gender, String blood_group, Float weight,
			String mobile_number, String city, String address) {
		super();
		this.email_id = email_id;
		this.password = password;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.blood_group = blood_group;
		this.weight = weight;
		this.mobile_number = mobile_number;
		this.city = city;
		this.address = address;
	}
	public User() {
		
	}
	
	String 	email_id;
	String 	password;
	String 	name;
	Integer age;
	String	gender;
	String	blood_group;
	Float	weight;
	String 	mobile_number;
	String 	city;
	String 	address;
	
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBlood_group() {
		return blood_group;
	}
	public void setBlood_group(String blood_group) {
		this.blood_group = blood_group;
	}
	public Float getWeight() {
		return weight;
	}
	public void setWeight(Float weight) {
		this.weight = weight;
	}
	public String getMobile_number() {
		return mobile_number;
	}
	public void setMobile_number(String mobile_number) {
		this.mobile_number = mobile_number;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
