package dto;

public class Plan {

	private int planno;
	private String planlatitude;
	private String planlongitude;
	private String planpeoplenumber;
	private int boardno;
	
	public Plan() {	}

	public Plan(int planno, String planlatitude, String planlongitude, String planpeoplenumber, int boardno) {
		super();
		this.planno = planno;
		this.planlatitude = planlatitude;
		this.planlongitude = planlongitude;
		this.planpeoplenumber = planpeoplenumber;
		this.boardno = boardno;
	}

	public int getPlanno() {
		return planno;
	}

	public void setPlanno(int planno) {
		this.planno = planno;
	}

	public String getPlanlatitude() {
		return planlatitude;
	}

	public void setPlanlatitude(String planlatitude) {
		this.planlatitude = planlatitude;
	}

	public String getPlanlongitude() {
		return planlongitude;
	}

	public void setPlanlongitude(String planlongitude) {
		this.planlongitude = planlongitude;
	}

	public String getPlanpeoplenumber() {
		return planpeoplenumber;
	}

	public void setPlanpeoplenumber(String planpeoplenumber) {
		this.planpeoplenumber = planpeoplenumber;
	}

	public int getBoardno() {
		return boardno;
	}

	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}
	
}

