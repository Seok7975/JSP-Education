package com.superman.ex;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/IMGServlet")
public class IMGServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private File image;
	//이미지 파일의 객체를 선언한다.
	
	public void init() {
	//초기화 메서드를 통해 이미지 파일을 연결한다.
		ServletContext context = this.getServletContext();		
		String path = context.getRealPath("/images");
		//실제 이미지가 있는 위치를 지정한다.
		//WebContent 폴더에 images 폴더를 생성한 후 원하는 그림 파일을 미리 저장해 두어야 한다.
		image = new File(path, "wonder.jpg");
		//저장해 둔 경로의 해당 파일을 지정한다.
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	//일반적으로 이미지를 읽을 때에는 GET 방식 호출이 대부분이므로 doGet 메서드를 작성한다.
		
		response.setContentType("image/jpg");
		//현재 Servlet의 MIME을 image/jpg로 지정하여 파일의 확장자 명과 동일하게 만든다.
		//실제 gif나 jpg 등 이미지 관련 데이터들은 정확한 MIME을 지정하지 않고 
		//같은 image 계열의 MIME을 지정해도 정상 출력이 이루어 진다.
		//그러나 실행 조건이나 속도 등에서 차이가 있기 때문에 정확한 MIME 지정을 습관화 하자.
		
		DataInputStream in = new DataInputStream(new BufferedInputStream(new FileInputStream(image)));
		//지정된 파일로 부터 데이터를 읽을 객체를 선언한다.
		ServletOutputStream out = response.getOutputStream();
		//읽은 데이터를 출력할 Servlet의 출력 객체를 Stream 객체로 지정한다.
		//일반적으로는 PrintWriter를 사용하지만 image나 application과 같은 데이터의 경우에는
		//각 byte에 더 중요한 의미가 있고 깨질 우려가 있기 때문에 Stream 출력객체를 사용해야 한다.
		
		byte[] data = new byte[512];
		//한번에 읽을 수 있는 byte 수를 512byte로 제한 한다.
		while(true) {
			int x = in.read(data, 0, data.length);
			//최대 512byte 씩 데이터를 읽는다. 
			//x에는 읽은 개수가 저장된다.
			if(x == -1) break;
			//더이상 읽을 데이터가 없으면 빠져 나간다.
			out.write(data, 0, x);
			//읽은 개수 만큼 출력한다.			
			out.flush();
			//클라이언트로 전송한다.
			//flush()는 현재 버퍼에 있는 내용을 상대측으로 비워 내는 역할을 하는 메서드이다.
		}
		in.close();
		out.close();		
		//모든 입출력 스트림을 종료한다.
	}
}
