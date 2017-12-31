package DTO;

public class subjects {
	private int SubjectID;
	private String SubjectName;
	private int MajorID;
	public int getSubjectID() {
		return SubjectID;
	}
	public void setSubjectID(int subjectID) {
		SubjectID = subjectID;
	}
	public String getSubjectName() {
		return SubjectName;
	}
	public void setSubjectName(String subjectName) {
		SubjectName = subjectName;
	}
	public int getMajorID() {
		return MajorID;
	}
	public void setMajorID(int majorID) {
		MajorID = majorID;
	}
	public subjects(int subjectID, String subjectName, int majorID) {
		super();
		SubjectID = subjectID;
		SubjectName = subjectName;
		MajorID = majorID;
	}
	public subjects() {
		super();
	}

}
