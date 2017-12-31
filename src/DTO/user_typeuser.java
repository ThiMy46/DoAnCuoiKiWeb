package DTO;

public class user_typeuser {

	private int UserID;
	private int TypeUserID;
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	public int getTypeUserID() {
		return TypeUserID;
	}
	public void setTypeUserID(int typeUserID) {
		TypeUserID = typeUserID;
	}
	public user_typeuser(int userID, int typeUserID) {
		super();
		UserID = userID;
		TypeUserID = typeUserID;
	}
	public user_typeuser() {
		super();
	}
	
	
}
