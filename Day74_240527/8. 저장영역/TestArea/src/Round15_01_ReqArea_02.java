import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.util.*;//Vector를 사용하기 위해..

public class Round15_01_ReqArea_02 extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	//forward 전송을 받기 위해서 doGet 메서드를 사용해야 한다.(Get 방식의 전송이다.). 어노테이션이 없으면 web.xml에서 처리
		
		String data1 = (String)request.getAttribute("data1");
		//request scope에 data1이라는 이름으로 저장된 문자열 데이터 추출
		Vector<String> data2 = (Vector<String>) request.getAttribute("data2");
		//request scope에 data2라는 이름으로 저장된 Vector 데이터 추출. set으로 보냈으니 -> get으로 받는다
		String data3 = request.getParameter("data3");
		//Query String으로 넘어온 data3이라는 이름의 문자열. parameter로 보냈으니 -> parameter로 받는다
		String data4 = request.getParameter("data4");
		//Query String으로 넘어온 data4라는 이름의 문자열
		
		response.setContentType("text/html;charset=utf-8");
		//출력 객체에 대한 Encoding 처리
		response.setCharacterEncoding("utf-8");		
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<body>");
		
		out.println("data1 = " + data1 + "<br/>");
		
		out.println("data2 = ");
		for(int i = 0; i < data2.size(); ++i) {
			out.println(data2.get(i) + "&nbsp;&nbsp;");
		}
		//Vector 속에 들어 있는 모든 데이터 출력...
		//Generic으로 인해 String 형변환 필요 없이 출력 가능...
		
		out.println("<br/>");
		out.println("data3 = " + data3 + "<br/>");
		out.println("data4 = " + data4 + "<br/>");
		
		out.println("</body>");
		out.println("</html>");
	}
}
