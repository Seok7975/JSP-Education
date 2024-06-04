package com.superman.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HeaderRe")
public class HeaderRe extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int cnt = 0;
       
    public HeaderRe() {
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setHeader("refresh", "3");
		//헤더 속성 중 페이지를 갱신하는 refresh라는 속성을
		//3초 라는 시간값을 주어 설정해 두면
		//3초에 한번씩 페이지를 갱신한다.
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("cnt = " + cnt++);
		//cnt의 값 변화를 통해 페이지가 reload되는 것을 확인한다.
		out.println("</body></html>");
		out.close();
	}

}