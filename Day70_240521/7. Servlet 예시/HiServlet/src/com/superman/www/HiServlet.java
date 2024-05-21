package com.superman.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(description = "Exercise", urlPatterns = { "/HiServlet" })
public class HiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HiServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print("<!doctype html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>반가워 Servlet</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h1>서블릿을 배워 봅시다.</h1>");
		out.print("<p><a href='HelloServlet'>HelloServlet</p>");
		out.print("</body>");
		out.print("</html>");
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
jsp파일은 UTF-8로 인코딩되어 있고,  웹브라우저가 받을때는 EUC-KR로 받아봄
*/