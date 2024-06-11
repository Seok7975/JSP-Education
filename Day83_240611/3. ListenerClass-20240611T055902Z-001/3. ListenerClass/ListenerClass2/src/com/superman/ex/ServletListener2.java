package com.superman.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ServletListener2")
public class ServletListener2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html><body>");
		out.println("<form method='post'>");
		out.println("<input type='submit' value='Session 및 Request 속성 처리 하기'/>");
		out.println("</form></body></html>");
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setAttribute("my_name", "홍길동"); 	// request 속성 새로 추가
		request.setAttribute("my_name", "길동"); 		// request 속성 값 변경
		request.removeAttribute("my_name"); 		// request 속성 삭제
		
		HttpSession session = request.getSession(true); // session 객체 생성
		session.setAttribute("my_name", "홍길동"); 		// session 속성 새로 추가
		session.setAttribute("my_name", "길동"); 			// session 속성 값 변경
		session.removeAttribute("my_name"); 			// session 속성 삭제		
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html><body>");
		out.println("Session 및 Request 속성 추가, 삭제, 변경 성공!");
		out.println("</body></html>");
	}
}