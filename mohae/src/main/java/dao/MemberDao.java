package dao;

import dto.Member;

public class MemberDao extends Dao{

	public static MemberDao memberDao = new MemberDao();
	public static MemberDao getmemberDao() { return memberDao;}
	public MemberDao() {super();}
	String sql;
	// 1. 회원가입 메서드
	public boolean signup() {
		return false;
	}
	
	// 2. 아이디 중복확인
	public byte idCheck(String mid) {
		// 리턴값->> 0 : 예외 발생, 1: 중복값 없음, 2: 중복값 있음.
		sql="select memberid from member where memberid = ?";
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, mid);
			rs = ps.executeQuery();
			if(rs.next()) {
				return 2;
			}else{
				return 1;
			}
		} catch (Exception e) {System.out.println("MemberDao_idcheck_exception : "+e);}	
		return 0;
	}
	
	// 3. 이메일 중복확인
	public boolean emailcheck(String email) {
		String sql = "select *from member where memberemail ="+email;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (Exception e) {
			System.out.println("emailcheck 오류 : " +e);
		}return false;
	}
	// 4. 닉네임 중복확인
	
	// 5. 연락처 중복확인
	
	// 6. reserved
	
	// 회원가입
	public boolean signup(Member member) {
		String sql = "insert into mohaemohae(mid,mpassword,mnickname,mname,msex,memail,phone,maddress) "
				+ "value(?,?,?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, member.getMemberid());
			ps.setString(2, member.getMemberpassword());
			ps.setString(3, member.getMembernickname());
			ps.setString(4, member.getMembername());
			ps.setBoolean(5, member.isMembersex());
			ps.setString(6, member.getMemberemail());
			ps.setString(7, member.getMemberphone());
			ps.setString(8, member.getMemberaddress());
			ps.executeUpdate(); return true;
		} catch (Exception e) {
			System.out.println("signup 오류 " +e);
		}return false;
	}
	
	// 로그인
	public int login(String memberid, String memberpassword) {
		String sql = "select *from member where memberid=? and memberpassword=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, memberid);
			ps.setString(2, memberpassword);
			rs = ps.executeQuery();
			if(rs.next()) {
				return 1;
			}return 2;
		} catch (Exception e) {
			System.out.println("login 오류 " +e);
		}return 3;
	}
	
}
