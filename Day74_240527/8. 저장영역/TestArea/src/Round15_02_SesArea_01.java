import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.util.*;//Calendar 클래스 사용을 위해...

public class Round15_02_SesArea_01 extends HttpServlet { // 서블릿을 상속받았으니 서블릿이다
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setAttribute("data1", "홍길동");
		//request scope에 data1이라는 이름으로 문자열 저장
		
		HttpSession session = request.getSession(true);
		//request 객체로 부터 session 객체 획득
		//매개변수 true는 새로운 Session을 생성하라는 의미
		session.setAttribute("data2", "자바");
		//session scope에 data2라는 이름으로 문자열 저장
		Calendar data3 = Calendar.getInstance();
		//오늘 날짜를 위한 Calendar 객체 생성
		session.setAttribute("data3", data3);
		//session scope에 data3이라는 이름으로 오늘 날짜의 Calendar 객체 저장
		
		ServletContext context = this.getServletContext();
		RequestDispatcher dispatcher = context.getRequestDispatcher("/Servlet02_02");
		dispatcher.forward(request, response);
		//Servlet02_02 이름으로 맵핑된 주소로 forward
	}
}
