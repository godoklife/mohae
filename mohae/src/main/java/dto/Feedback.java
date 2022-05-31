package dto;

public class Feedback {
	
	private long feedbackno;	// PK, int unsigned
	private int feedbackpoint;	// tinyint
	private String feedbackcomment;
	private int memberno;		// FK
	
	
	
	@Override
	public String toString() {
		return "Feedback [feedbackno=" + feedbackno + ", feedbackpoint=" + feedbackpoint + ", feedbackcomment="
				+ feedbackcomment + ", memberno=" + memberno + "]";
	}

	public Feedback() {}

	public Feedback(long feedbackno, int feedbackpoint, String feedbackcomment, int memberno) {
		super();
		this.feedbackno = feedbackno;
		this.feedbackpoint = feedbackpoint;
		this.feedbackcomment = feedbackcomment;
		this.memberno = memberno;
	}

	public long getFeedbackno() {
		return feedbackno;
	}

	public void setFeedbackno(long feedbackno) {
		this.feedbackno = feedbackno;
	}

	public int getFeedbackpoint() {
		return feedbackpoint;
	}

	public void setFeedbackpoint(int feedbackpoint) {
		this.feedbackpoint = feedbackpoint;
	}

	public String getFeedbackcomment() {
		return feedbackcomment;
	}

	public void setFeedbackcomment(String feedbackcomment) {
		this.feedbackcomment = feedbackcomment;
	}

	public int getMemberno() {
		return memberno;
	}

	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	
	
	
}
