import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Round15_04_ServletContext_01 extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String intro = "안녕하세요! 우리 서버에 오신것을 환영합니다.";
		//서버에 접속하는 모든 이들을 위한 인사 메시지이다.
		
		ServletContext context = this.getServletContext();
		//ServletContext의 객체를 생성한다.
		context.setAttribute("intro", intro);
		//ServletContext 영역에 intro 객체를 저장한다.
		//이렇게 저장된 데이터는 이 서버에 접속된 사용자 누구나 볼수 있게 된다.
		//서버가 종료 되어야 비로소 사라지게 된다.		
		
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html><body>");
		out.println("ServletContext 데이터 생성 완료!");
		out.println("</body></html>");
	}
}
