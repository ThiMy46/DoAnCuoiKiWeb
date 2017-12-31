package DTO;

public class question {

	private int QuestionID;
	private String QuestionContent;
	private int SubjectID;
	private String OptionA;
	private String OptionB;
	private String OptionC;
	private String OptionD;
	public String getOptionA() {
		return OptionA;
	}
	public void setOptionA(String optionA) {
		OptionA = optionA;
	}
	public String getOptionB() {
		return OptionB;
	}
	public void setOptionB(String optionB) {
		OptionB = optionB;
	}
	public String getOptionC() {
		return OptionC;
	}
	public void setOptionC(String optionC) {
		OptionC = optionC;
	}
	public String getOptionD() {
		return OptionD;
	}
	public void setOptionD(String optionD) {
		OptionD = optionD;
	}
	public int getAnswer() {
		return Answer;
	}
	public void setAnswer(int answer) {
		Answer = answer;
	}
	private int Answer;
	public int getQuestionID() {
		return QuestionID;
	}
	public void setQuestionID(int questionID) {
		QuestionID = questionID;
	}
	public String getQuestionContent() {
		return QuestionContent;
	}
	public void setQuestionContent(String questionContent) {
		QuestionContent = questionContent;
	}
	public int getSubjectID() {
		return SubjectID;
	}
	public void setSubjectID(int subjectID) {
		SubjectID = subjectID;
	}
	
	public question(int questionID, String questionContent, int subjectID, String optionA, String optionB,
			String optionC, String optionD, int answer) {
		super();
		QuestionID = questionID;
		QuestionContent = questionContent;
		SubjectID = subjectID;
		OptionA = optionA;
		OptionB = optionB;
		OptionC = optionC;
		OptionD = optionD;
		Answer = answer;
	}
	public question() {
		super();
	}
}
