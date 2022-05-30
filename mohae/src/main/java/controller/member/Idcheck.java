package controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;

@WebServlet("/member/Idcheck")
public class Idcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Idcheck() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("test");
		request.setCharacterEncoding("utf-8");
		String mid=request.getParameter("mid");
		byte result = MemberDao.instance.idCheck(mid);
		if(result==1) {
			response.getWriter().print(1);	// 중복아이디 없음. 생성 가능
		}else if(result==2) {
			response.getWriter().print(2);	// 중복아이디 있음.
		}else if(result==0) {
			response.getWriter().print(0);	// exception 발생
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
