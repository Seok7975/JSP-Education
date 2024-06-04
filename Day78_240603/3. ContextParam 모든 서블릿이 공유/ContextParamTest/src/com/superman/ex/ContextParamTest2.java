package com.superman.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContextParamTest2")
public class ContextParamTest2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ContextParamTest2() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		ServletContext context = getServletContext();
		String companyName = context.getInitParameter("companyName");
		String companyTel = context.getInitParameter("companyTel");
		String companyEmail = context.getInitParameter("companyEmail");
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='UTF-8'>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>" + companyName + "</h2>");
		out.println("<h2>" + companyTel + "</h2>");
		out.println("<h2>" + companyEmail + "</h2>");
		out.println("</body>");
		out.println("</html>");
	}

}
