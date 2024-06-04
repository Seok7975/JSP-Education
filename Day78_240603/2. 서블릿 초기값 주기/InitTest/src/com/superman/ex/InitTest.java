package com.superman.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/InitTest")
public class InitTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InitTest() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String startNumStr = getInitParameter("startNum");
		String endNumStr = getInitParameter("endNum");
		int startNum = Integer.parseInt(startNumStr);
		int endNum = Integer.parseInt(endNumStr);
		int sum = 0;
		
		for(int i=startNum;i<=endNum;i++){
			sum += i;
		}
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<body>");
		out.println("합은 : " + sum);		
		out.println("</body>");
		out.println("</html>");
	}
}