package DTO;

public class typeuser_mission {

	private int MissionID;
	private int TypeUserID;
	public int getMissionID() {
		return MissionID;
	}
	public void setMissionID(int missionID) {
		MissionID = missionID;
	}
	public int getTypeUserID() {
		return TypeUserID;
	}
	public void setTypeUserID(int typeUserID) {
		TypeUserID = typeUserID;
	}
	public typeuser_mission(int missionID, int typeUserID) {
		super();
		MissionID = missionID;
		TypeUserID = typeUserID;
	}
	public typeuser_mission() {
		super();
	}
	
}
