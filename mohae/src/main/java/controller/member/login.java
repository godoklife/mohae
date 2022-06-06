package controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberid = request.getParameter("memberid");
		String memberpassword = request.getParameter("memberpassword");
		
		int result = MemberDao.getmemberDao().login(memberid,memberpassword);
		
		if(result == 1) { // 로그인 성공
			HttpSession session = request.getSession(); // http 내장 세션 호출
			session.setAttribute("login",memberid); // 세션에 값 저장
			response.sendRedirect("/mohae/main.jsp"); // 페이지 전환
			
		}else if(result == 2){ // 아이디 혹은 비밀번호 오류
			response.sendRedirect("/mohae/member/login.jsp?result=2");
		}else { // 에러
			response.sendRedirect("/mohae/error.jsp");
		}
	}

}
