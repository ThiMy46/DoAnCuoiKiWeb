package DTO;

public class result {

	private int ResultID;
	private int ExamID;
	private int UserID;
	private int Mark;
	private String ExamName;
	private String SubjectName;
	public int getResultID() {
		return ResultID;
	}
	public void setResultID(int resultID) {
		ResultID = resultID;
	}
	public int getExamID() {
		return ExamID;
	}
	public void setExamID(int examID) {
		ExamID = examID;
	}
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	public int getMark() {
		return Mark;
	}
	public void setMark(int mark) {
		Mark = mark;
	}
	
	public result(int resultID, int examID, int userID, int mark, String examName, String subjectName) {
		super();
		ResultID = resultID;
		ExamID = examID;
		UserID = userID;
		Mark = mark;
		ExamName = examName;
		SubjectName = subjectName;
	}
	public String getExamName() {
		return ExamName;
	}
	public void setExamName(String examName) {
		ExamName = examName;
	}
	public String getSubjectName() {
		return SubjectName;
	}
	public void setSubjectName(String subjectName) {
		SubjectName = subjectName;
	}
	public result() {
		super();
	}
}
