package dto;

public class Review {
	
	private int reviewno;
	private boolean reviewlike;
	private String memberid;
	private int memberno;
	private int planno;
	
	public Review() {	}

	public Review(int reviewno, boolean reviewlike, String memberid, int memberno, int planno) {
		super();
		this.reviewno = reviewno;
		this.reviewlike = reviewlike;
		this.memberid = memberid;
		this.memberno = memberno;
		this.planno = planno;
	}

	public int getReviewno() {
		return reviewno;
	}

	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}

	public boolean isReviewlike() {
		return reviewlike;
	}

	public void setReviewlike(boolean reviewlike) {
		this.reviewlike = reviewlike;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public int getMemberno() {
		return memberno;
	}

	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}

	public int getPlanno() {
		return planno;
	}

	public void setPlanno(int planno) {
		this.planno = planno;
	}
	
}
