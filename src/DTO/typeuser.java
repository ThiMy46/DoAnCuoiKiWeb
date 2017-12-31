package DTO;

public class typeuser {

	private int TypeUserID;
	private String TypeUserName;
	public int getTypeUserID() {
		return TypeUserID;
	}
	public void setTypeUserID(int typeUserID) {
		TypeUserID = typeUserID;
	}
	public String getTypeUserName() {
		return TypeUserName;
	}
	public void setTypeUserName(String typeUserName) {
		TypeUserName = typeUserName;
	}
	public typeuser(int typeUserID, String typeUserName) {
		super();
		TypeUserID = typeUserID;
		TypeUserName = typeUserName;
	}
	public typeuser() {
		super();
	}
}
