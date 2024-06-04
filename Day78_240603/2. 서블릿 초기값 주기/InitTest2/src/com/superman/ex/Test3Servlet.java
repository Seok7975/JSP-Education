package com.superman.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/Test3Servlet")
public class Test3Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Test3Servlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletConfig config = this.getServletConfig();
		//ServletConfig 객체를 획득한다.
		//실제로는 HttpServlet이 ServletConfig를 구현했기 때문에
		//이렇게 객체를 획득할 필요 없이 this를 사용해도 무방하다.
		String start = config.getInitParameter("start");
		String end = this.getInitParameter("end");
		//config 객체를 통해서도 this를 통해서도 초기화 매개변수를 획득할 수 있다.
		
		int start_su = Integer.parseInt(start);
		int end_su = Integer.parseInt(end);
		//초기화 매개변수로 전달된 값은 문자열이므로 숫자로 변환한다.
		
		int hap = 0;
		for(int i = start_su; i <= end_su; ++i) 
			hap += i;
		//시작 수에서 끝 수까지의 총합을 구한다.
		
		response.setContentType("text/html;charset=UTF-8");
		//응답에 대한 MIME과 Encode를 설정한다.
		PrintWriter out = response.getWriter();
		//출력 객체를 생성한다.
		out.println("<html><body>");
		out.println(start_su + " ~ " + end_su + "사이의 합은 ");
		out.println(hap + "입니다.");
		out.println("</body></html>");
		//결과를 출력한다.
		out.close();
		//출력 객체를 종료한다.
	}
}