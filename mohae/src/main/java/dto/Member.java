package dto;

public class Member {
	private int memberno;		// FK, int unsigned이나 실질적으로 21억명을 넘겨서 가입할 일은 없으므로 int형으로 선언
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

	public Member(int memberno, String memberid, String memberpassword, String membernickname, String membername, boolean membersex,
			String memberemail, String memberphone, String memberaddress) {
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
	
	public Member(int memberno, String memberid, String membernickname) {	// 세션 생성에 사용할 생성자
		super();
		this.memberno = memberno;
		this.memberid = memberid;
		this.membernickname = membernickname;
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
