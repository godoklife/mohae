package controller.board.cs;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/board/cs/SummernoteImgUpload")
public class SummernoteImgUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SummernoteImgUpload() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		
		// 이클립스 프로젝트에 이미지 저장
		//String uploadPath = request.getSession().getServletContext().getRealPath("/img/board");
		String tmpPath = request.getSession().getServletContext().getRealPath("/img/tmp");
		MultipartRequest mr = new MultipartRequest(request, tmpPath, 20971520, "utf-8", new DefaultFileRenamePolicy());
																		// 20MB
		
		String json=mr.getParameter("file");
		try {
			JSONArray ja = new JSONArray(json);
			System.out.println(ja.toString());
			System.out.println(1);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		String imgName = mr.getFilesystemName("file");
		File tmpSaveImg = new File(tmpPath+"\\"+imgName);
		BufferedInputStream bif = new BufferedInputStream(new FileInputStream(tmpSaveImg));
		byte[] bytes=new byte[(int)tmpSaveImg.length()];
		bif.read(bytes);
		bif.close();
		try {
			jsonObject.put("url", "/mohae/img/tmp/"+imgName);
			jsonObject.put("responseCode", "success");
		} catch (Exception e) {System.out.println("SummernoteImgUpload JSONException : "+e);}
		jsonArray.put(jsonObject);
		response.getWriter().print(jsonArray);
	}

}
