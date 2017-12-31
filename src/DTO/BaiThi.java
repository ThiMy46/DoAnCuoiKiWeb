package DTO;

public class BaiThi {
	private int QuestionID;
	public int getQuestionID() {
		return QuestionID;
	}
	public void setQuestionID(int questionID) {
		QuestionID = questionID;
	}
	private String TenBaiThi;
	public String getTenBaiThi() {
		return TenBaiThi;
	}
	public void setTenBaiThi(String tenBaiThi) {
		TenBaiThi = tenBaiThi;
	}
	private int Time;
	private int MaBaiThi;
	public int getMaBaiThi() {
		return MaBaiThi;
	}
	public void setMaBaiThi(int maBaiThi) {
		MaBaiThi = maBaiThi;
	}
	private String noiDung;
	private int DapAnDung;
	private String OptionA;
	private String OptionB;
	private String OptionC;
	private String OptionD;
	public int getTime() {
		return Time;
	}
	public void setTime(int time) {
		Time = time;
	}
	public String getNoiDung() {
		return noiDung;
	}
	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}
	public int getDapAnDung() {
		return DapAnDung;
	}
	public void setDapAnDung(int dapAnDung) {
		DapAnDung = dapAnDung;
	}


	public BaiThi(String tenBaiThi, int time, String noiDung, int dapAnDung, String optionA, String optionB,
			String optionC, String optionD,int MaBaiThi,int QuestionID) {
		super();
		TenBaiThi = tenBaiThi;
		Time = time;
		this.noiDung = noiDung;
		DapAnDung = dapAnDung;
		OptionA = optionA;
		OptionB = optionB;
		OptionC = optionC;
		OptionD = optionD;
		this.MaBaiThi=MaBaiThi;
		this.QuestionID=QuestionID;
	}
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
	public BaiThi() {
		super();
	}
	
}
