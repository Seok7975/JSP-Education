import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.util.*;//Vector 사용을 위해...

public class Round15_01_ReqArea_01 extends HttpServlet { // 서블릿을 상속받았으니 서블릿이다
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		//여기는 웹 페이지의 내용 작성 없이 바로 다음 페이지로 넘어 간다.
		
		String data1 = new String("java!");
		//문자열 데이터를 작성한다.
		Vector<String> data2 = new Vector<String>();
		//Vector 객체를 생성하고
		data2.add("c");		
		data2.add("c++");
		//두개의 문자열을 추가한다.
		
		request.setAttribute("data1", data1); // setAttribute -> 오브젝트 객체만 저장
		//request scope에 data1 이라는 이름으로 문자열 데이터를 저장한다.
		request.setAttribute("data2", data2);
		//request scope에 data2 라는 이름으로 Vector 데이터를 저장한다.
		
		ServletContext context = this.getServletContext();
		//ServletContext 객체를 생성한 후
		RequestDispatcher dispatcher = context.getRequestDispatcher("/Servlet01_02?data3=string&data4=ok");
		//forward를 위한 RequestDispatcher 객체를 생성한다. 
		//객체 생성시 주소줄에 Query String으로 data3=string&data4=ok 라는 문자열을 넣어 준다.(문자열만 가능하다.)
		dispatcher.forward(request, response);
		//Servlet01_02 라는 주소로 forward 이동한다.
		//forward 이동은 sendRedirect와는 다르게 저장된 모든 값을 가지고 이동한다.
	}
}
