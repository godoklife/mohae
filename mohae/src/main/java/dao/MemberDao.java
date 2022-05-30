package dao;

public class MemberDao extends Dao{
	
	public static MemberDao instance = new MemberDao();
	
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
	
	// 4. 닉네임 중복확인
	
	// 5. 연락처 중복확인
	
	// 6. reserved
	
}
