package DTO;

public class dotest {

	private int UserID;
	private int QuestionID;
	private int ExamID;
	private int AnswerChoose;
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
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
	public int getAnswerChoose() {
		return AnswerChoose;
	}
	public void setAnswerChoose(int answerChoose) {
		AnswerChoose = answerChoose;
	}
	public dotest(int userID, int questionID, int examID, int answerChoose) {
		super();
		UserID = userID;
		QuestionID = questionID;
		ExamID = examID;
		AnswerChoose = answerChoose;
	}
	public dotest() {
		super();
	}
	
}
