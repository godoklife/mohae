package dao;

import org.json.JSONArray;
import org.json.JSONObject;

public class BoardDao extends Dao{
	
	public static BoardDao instance = new BoardDao();
	public BoardDao() {super();}
	
	// 1. 글 쓰기 메서드
	
	// 2. 모든 글 불러오기
	
	// 3. 글 검색해서 불러오기
	public JSONArray getsearchlist(int memberno, int boardcategory) {
		String sql="select * from board where memberno=? and boardcategory=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, memberno);
			ps.setInt(2, boardcategory);
			rs = ps.executeQuery();
			JSONArray array = new JSONArray();
			while(rs.next()) {
				JSONObject object = new JSONObject();
				object.put("boardno", rs.getInt(1));
				object.put("boardtitle", rs.getString(2));
				object.put("boardcontenttype", rs.getString(3));
				object.put("boardcontent", rs.getString(4));
				object.put("boardviewcount", rs.getInt(5));
				object.put("boarddatetime", rs.getString(6));
				object.put("boardcategory", rs.getInt(7));
				object.put("memberno", rs.getInt(8));
				object.put("boardattachement", rs.getBoolean(9));	// 지우면 안됨
				array.put(object);
			}
			return array;
		} catch (Exception e) {System.out.println("BoardDao_getsearch()_exception : "+e);}
		return null;	
	}
	
}
