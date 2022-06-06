package dto;

public class Member {
	private int memberno;
	private String memberid;
	private String memberpassword;
	private String membernickname;
	private String membername;
	private boolean membersex;	// 0 : male, 1 : female
	private String memberemail;
	private String memberphone;
	private String memberaddress;

	public String toString() {return super.toString();}
	
	public Member() {}

	public Member(int memberno, String memberid, String memberpassword, String membernickname, String membername,
			boolean membersex, String memberemail, String memberphone, String memberaddress) {
		super();
		this.memberno = memberno;
		this.memberid = memberid;
		this.memberpassword = memberpassword;
		this.membernickname = membernickname;
		this.membername = membername;
		this.membersex = membersex;
		this.memberemail = memberemail;
		this.memberphone = memberphone;
		this.memberaddress = memberaddress;
	}

	public int getMemberno() {
		return memberno;
	}

	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getMemberpassword() {
		return memberpassword;
	}

	public void setMemberpassword(String memberpassword) {
		this.memberpassword = memberpassword;
	}

	public String getMembernickname() {
		return membernickname;
	}

	public void setMembernickname(String membernickname) {
		this.membernickname = membernickname;
	}

	public String getMembername() {
		return membername;
	}

	public void setMembername(String membername) {
		this.membername = membername;
	}

	public boolean isMembersex() {
		return membersex;
	}

	public void setMembersex(boolean membersex) {
		this.membersex = membersex;
	}

	public String getMemberemail() {
		return memberemail;
	}

	public void setMemberemail(String memberemail) {
		this.memberemail = memberemail;
	}

	public String getMemberphone() {
		return memberphone;
	}

	public void setMemberphone(String memberphone) {
		this.memberphone = memberphone;
	}

	public String getMemberaddress() {
		return memberaddress;
	}

	public void setMemberaddress(String memberaddress) {
		this.memberaddress = memberaddress;
	}

}
