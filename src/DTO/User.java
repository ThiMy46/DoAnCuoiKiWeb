package DTO;
import java.io.Serializable;
import java.sql.Date;
public class User implements Serializable{	 	
	private int UserID;
	private String UserPass;
	private String UserName;
	private Date DateOfBirth;
	private int Gender;
	private String PhoneNumber;
	private int StateUser;
private int MaQuyen;
	
	public int getMaQuyen() {
		return MaQuyen;
	}

	public void setMaQuyen(int maQuyen) {
		MaQuyen = maQuyen;
	}
	public User(int userID, String userPass, String userName, Date dateOfBirth, int gender, String phoneNumber,
			int stateUser,int maQuyen) {
		super();
		UserID = userID;
		UserPass = userPass;
		UserName = userName;
		DateOfBirth = dateOfBirth;
		Gender = gender;
		PhoneNumber = phoneNumber;
		StateUser = stateUser;
		MaQuyen= maQuyen;
	}
	
	public User() {
		super();
	}

	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	public String getUserPass() {
		return UserPass;
	}
	public void setUserPass(String userPass) {
		UserPass = userPass;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public Date getDateOfBirth() {
		return DateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		DateOfBirth = dateOfBirth;
	}
	public int getGender() {
		return Gender;
	}
	public void setGender(int gender) {
		Gender = gender;
	}
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public int getStateUser() {
		return StateUser;
	}
	public void setStateUser(int stateUser) {
		StateUser = stateUser;
	}	
}
