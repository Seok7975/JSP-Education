package com.superman.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Test3")
public class Test3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Test3() {
        super();
    }
	// get과 service는 되나 post는 안된다.
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");

		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>out Test</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<p>post 안녕하세요.</p>");
		out.println("</body>");
		out.println("</html>");
	}

}