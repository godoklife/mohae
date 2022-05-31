package dto;

public class Boardattachment {
	
	private long boardattachmentno;	// PK, bigint unsigned 
	private String boardattachmentname; 
	private long boardno;	// FK 
	
	public String toString() {return super.toString();}
	
	public Boardattachment() {}

	public Boardattachment(long boardattachmentno, String boardattachmentname, long boardno) {
		super();
		this.boardattachmentno = boardattachmentno;
		this.boardattachmentname = boardattachmentname;
		this.boardno = boardno;
	}

	public long getBoardattachmentno() {
		return boardattachmentno;
	}

	public void setBoardattachmentno(long boardattachmentno) {
		this.boardattachmentno = boardattachmentno;
	}

	public String getBoardattachmentname() {
		return boardattachmentname;
	}

	public void setBoardattachmentname(String boardattachmentname) {
		this.boardattachmentname = boardattachmentname;
	}

	public long getBoardno() {
		return boardno;
	}

	public void setBoardno(long boardno) {
		this.boardno = boardno;
	}
	
	
}
