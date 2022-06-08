package dao;

import dto.Plan;

public class ReviewDao extends Dao{
	
	public static ReviewDao Reviewdao = new ReviewDao();
	public static ReviewDao getReviewdao() { return Reviewdao;}
	
	// 리뷰 정보 불러오기
	public void getreview(Plan plan) {
		try {
			String sql = "select *from review reviewno = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, plan.getPlanno());
		} catch (Exception e) {
			
		}
	}
}
