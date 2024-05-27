import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Round15_04_ServletContext_02 extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		ServletContext context = this.getServletContext();
		//ServletContext 객체를 생성한다.
		String intro = (String)context.getAttribute("intro");
		//ServletContext 영역에서 intro라는 key로 저장된 객체를 획득한다.
		
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
				
		out.println("<!DOCTYPE html>");
		out.println("<html><body>");
		out.println("서버의 인사말 = " + intro);
		//intro로 저장된 내용을 출력해 본다.
		//이 예제를 여러 대의 컴퓨터에서 실행해 보면 동일한 값을 출력한다는 사실을 알수 있을 것이다.
		out.println("</body></html>");
	}
}