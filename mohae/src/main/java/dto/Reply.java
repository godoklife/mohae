package dto;

public class Reply {
	
	private long replyno;	// PK bigint unsigned
	private String replycontent;
	private String replydatetime;
	private long replycategory;
	private long boardno;	// FK
	@Override
	public String toString() {
		return "Reply [replyno=" + replyno + ", replycontent=" + replycontent + ", replydatetime=" + replydatetime
				+ ", replycategory=" + replycategory + ", boardno=" + boardno + "]";
	}
	
	public Reply() {}

	public Reply(long replyno, String replycontent, String replydatetime, long replycategory, long boardno) {
		super();
		this.replyno = replyno;
		this.replycontent = replycontent;
		this.replydatetime = replydatetime;
		this.replycategory = replycategory;
		this.boardno = boardno;
	}

	public long getReplyno() {
		return replyno;
	}

	public void setReplyno(long replyno) {
		this.replyno = replyno;
	}

	public String getReplycontent() {
		return replycontent;
	}

	public void setReplycontent(String replycontent) {
		this.replycontent = replycontent;
	}

	public String getReplydatetime() {
		return replydatetime;
	}

	public void setReplydatetime(String replydatetime) {
		this.replydatetime = replydatetime;
	}

	public long getReplycategory() {
		return replycategory;
	}

	public void setReplycategory(long replycategory) {
		this.replycategory = replycategory;
	}

	public long getBoardno() {
		return boardno;
	}

	public void setBoardno(long boardno) {
		this.boardno = boardno;
	}
	
	
}
