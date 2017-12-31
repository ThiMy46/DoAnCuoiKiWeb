package DTO;

public class Major {
	private int MajorID;
	private String MajorName;
	public int getMajorID() {
		return MajorID;
	}
	public void setMajorID(int majorID) {
		MajorID = majorID;
	}
	public String getMajorName() {
		return MajorName;
	}
	public void setMajorName(String majorName) {
		MajorName = majorName;
	}

	public Major(int majorID, String majorName) {
		super();
		MajorID = majorID;
		MajorName = majorName;
	}
	public Major() {
		super();
	}
}
