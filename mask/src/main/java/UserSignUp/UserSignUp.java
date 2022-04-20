package UserSignUp;

public class UserSignUp {
	private String Id;
	private String Password;
	private String passwordCheck;
	private String PhoneNumber;
	private String Address;
	private String DetailAddress;
	
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getPasswordCheck() {
		return passwordCheck;
	}
	public void setPasswordCheck(String passwordCheck) {
		this.passwordCheck = passwordCheck;
	}
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getDetailAddress() {
		return DetailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		DetailAddress = detailAddress;
	} 
}
