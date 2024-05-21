package com.superman.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HelloOK")
public class HelloOK extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public HelloOK() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hello</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("이름 : " + request.getParameter("name") +"<br>");
		out.println("아이디 : " + request.getParameter("id") +"<br>");
		out.println("비밀번호 : " + request.getParameter("password") +"<br>");
		out.println("취미 : [");
		String[] hobby = request.getParameterValues("hobby");
		for(int i=0;i<hobby.length;i++) {
			out.println(hobby[i]);
			if(i!=hobby.length-1)out.println(", ");
		}
		out.println("]<br>");
		out.println("전공 : " + request.getParameter("major") +"<br>");
		out.println("프로토콜 : " + request.getParameter("protocol") +"<br>");
		out.println("</body>");
		out.println("</html>");
	}
}

/*
JSP파일에 위쪽에 보면 아래와 같이 설정을 합니다.
<%@ page contentType="text/html; charset=XXX" pageEncoding="XXX" %>
이때, 
pageEncoding : 
JSP소스코드의 캐릭터셋 - jsp페이지 자체의 캐릭터셋을 의미함

contentType내의 charset : 
HTTP 응답 캐릭터셋 - 웹브라우저(HTTP client)가 받아볼 페이지의 캐릭터셋을 의미
HTTP의 헤더에 그대로 이 내용이 들어가게 됩니다
 
예 제.
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8" %> 
jsp파일은 UTF-8로 인코딩도어 있고,  웹브라우저가 받을때는 EUC-KR로 받아봄
*/