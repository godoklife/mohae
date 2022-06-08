package controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import dto.Member;

/**
 * Servlet implementation class Join
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
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

		request.setCharacterEncoding("UTF-8");
		String mid = request.getParameter("memberid");
		String mpassword = request.getParameter("memberpassword");
		String mnickname = request.getParameter("membernickname");
		String mname = request.getParameter("mmbername");
		String mphone = request.getParameter("memberphone");
		String memail = request.getParameter("memberemail");
		String memailaddress = request.getParameter("memberemailaddress");
			String email = memail + "@" + memailaddress;
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String address3 = request.getParameter("address3");
		String address4 = request.getParameter("address4");
			String address = address1 + "_" + address2 + "_" + address3 + "_" + address4; 
		
		Member member = new Member(0, mid, mpassword, mnickname, mname, false, email, mphone, address);
		System.out.println(member.toString());
		
		boolean result = MemberDao.getmemberDao().signup(member);
		if(result) {
			response.sendRedirect("/jspweb/member/signupsuccess.jsp");
		}else {
			response.sendRedirect("/jspweb/error.jsp");
		}
				
			doGet(request, response);
	}

}