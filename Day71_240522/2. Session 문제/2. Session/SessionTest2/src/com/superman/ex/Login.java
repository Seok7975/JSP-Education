package com.superman.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='UTF-8'>");
		out.println("<meta name='description' content='HTML Study'>");
		out.println("<meta name='keywords' content='HTML,CSS,XML,JavaScript'>");
		out.println("<meta name='author' content='Bruce'>");
		out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
		out.println("<title>Insert title here</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<form method='post' action='LoginChk'>");
		String id = (String)session.getAttribute("id");
		if(id == null)
		{
			out.println("아이디 : <input type='text' name='id'>");
			out.println("비밀번호 : <input type='password' name='password'>");
			out.println("<input type='submit' value='로그인'>");
			out.println("<a href='memberRegister.jsp'>회원가입</a>");
		}
		else{
			out.println(id + "님 환영합니다.<br>");
			out.println("<a href='Logout'>로그아웃</a>&nbsp;<a href='memberModify.jsp'>회원정보수정</a>");
		}
		out.println("</form>");
		out.println("</body>");
		out.println("</html>");		
	}
}