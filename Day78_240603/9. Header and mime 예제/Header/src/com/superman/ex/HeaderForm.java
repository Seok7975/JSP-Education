package com.superman.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HeaderForm")
public class HeaderForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HeaderForm() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//한글 인코드 설정
		String name = request.getParameter("name");
		//name 이라는 객체명으로 전송된 데이터를 획득
		String[] skils = request.getParameterValues("skil");
		//skil 이라는 객체명으로 전송된 데이터를 획득
		//단, 여러 개의 데이터가 같은 이름으로 전송될 수 있기 때문에
		//getParameterValues()를 이용해 배열로 획득
		
		Enumeration<String> enu = request.getHeaderNames();
		//헤더 정보의 이름 값들을 모두 획득
		Vector<String> names = new Vector();
		//헤더 정보의 이름을 모두 담기 위한 객체 선언
		Vector<String> values = new Vector();
		//헤더 정보의 이름에 대한 값들을 모두 담기 위한 객체 선언
		while(enu.hasMoreElements()) {
			String header_name = enu.nextElement();
			//헤더 이름들 중 하나를 추출해서
			String header_value = request.getHeader(header_name);
			//헤더 이름에 담겨있는 값을 추출.			
			
			names.add(header_name);
			values.add(header_value);
			//헤더의 이름과 값을 각각의 Vector 영역에 보관
		}
		
		response.setContentType("text/html;charset=euc-kr");
		//응답에 대한 MIME과 Encode를 설정
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		
		out.println("★ 전달받은 데이터들 ★<br/>");
		out.println("name : " + name + "<br/>");
		out.println("skil : ");
		for(int i = 0; i < skils.length; ++i) {
			out.println(skils[i] + "&nbsp;");
		}
		out.println("<br/><br/><br/><br/>");
		
		out.println("★ 전달받은 헤더 정보들 ★<br/>");
		for(int i = 0; i < names.size(); ++i) {
			String header_name = names.elementAt(i);			
			String header_value = values.elementAt(i);
			out.println(header_name + " : ");
			out.println(header_value + "<br/>");			
			
		}
		//헤더의 정보를 출력하는 코드
		
		out.println("</body></html>");
		out.close();
	}
}