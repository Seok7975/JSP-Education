import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.util.*;//Calendar 클래스의 사용을 위해...
import java.text.*;//SimpleDateFormat 클래스의 사용을 위해...

public class Round15_02_SesArea_03 extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	//<a> 태그에 의한 호출이므로 doGet() 메서드 호출
		
		String data1 = (String)request.getAttribute("data1");
		//request scope에 data1이라는 이름으로 설정된 데이터 추출, Null
		HttpSession session = request.getSession();
		//request 객체로 부터 session 객체 획득,  세션 만료 : removeAttribute를 하거나 브라우저를 끄거나
		String data2 = (String)session.getAttribute("data2");
		//session scope에 data2라는 이름으로 설정된 데이터 추출
		Calendar data3 = (Calendar)session.getAttribute("data3");
		//session scope에 data3이라는 이름으로 설정된 데이터 추출
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//날짜 출력을 위한 format 클래스 객체 생성
		String data4 = format.format(data3.getTime());
		//날짜 출력을 위한 format 변환
		
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html><body>");
		
		out.println("data1 = " + data1 + "<br/>");
		//null 값 출력
		out.println("data2 = " + data2 + "<br/>");
		out.println("data3 = " + data4 + "<br/><br/>");
		//각 데이터 출력
		
		out.println("</body></html>");
	}
}
