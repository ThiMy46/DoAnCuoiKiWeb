package DTO;

public class test {

	private int QuestionID;
	private int ExamID;
	public int getQuestionID() {
		return QuestionID;
	}
	public void setQuestionID(int questionID) {
		QuestionID = questionID;
	}
	public int getExamID() {
		return ExamID;
	}
	public void setExamID(int examID) {
		ExamID = examID;
	}
	public test(int questionID, int examID) {
		super();
		QuestionID = questionID;
		ExamID = examID;
	}
	public test() {
		super();
	}
}
