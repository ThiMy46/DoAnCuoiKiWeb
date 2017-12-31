package DTO;

public class exam {

	private int ExamID;
	private String ExamName;
	private int Amount;
	private int Time;
	private int StateExam;
	private int SubjectID;
	public int getExamID() {
		return ExamID;
	}
	public void setExamID(int examID) {
		ExamID = examID;
	}
	public String getExamName() {
		return ExamName;
	}
	public void setExamName(String examName) {
		ExamName = examName;
	}
	public int getAmount() {
		return Amount;
	}
	public void setAmount(int amount) {
		Amount = amount;
	}
	public int getTime() {
		return Time;
	}
	public void setTime(int time) {
		Time = time;
	}
	public int getStateExam() {
		return StateExam;
	}
	public void setStateExam(int stateExam) {
		StateExam = stateExam;
	}
	public int getSubjectID() {
		return SubjectID;
	}
	public void setSubjectID(int subjectID) {
		SubjectID = subjectID;
	}
	public exam(int examID, String examName, int amount, int time, int stateExam, int subjectID) {
		super();
		ExamID = examID;
		ExamName = examName;
		Amount = amount;
		Time = time;
		StateExam = stateExam;
		SubjectID = subjectID;
	}
	public exam() {
		super();
	}

}
