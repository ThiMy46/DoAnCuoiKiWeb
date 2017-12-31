package DTO;

public class mission {

	private int MissionID;
	private String MissionName;
	public int getMissionID() {
		return MissionID;
	}
	public void setMissionID(int missionID) {
		MissionID = missionID;
	}
	public String getMissionName() {
		return MissionName;
	}
	public void setMissionName(String missionName) {
		MissionName = missionName;
	}
	public mission(int missionID, String missionName) {
		super();
		MissionID = missionID;
		MissionName = missionName;
	}
	public mission() {
		super();
	}
}
