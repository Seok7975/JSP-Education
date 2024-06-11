package com.superman.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FileUploadResult")
public class FileUploadResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//multipart의 전송을 수용하기 위해 post 메서드를 정의한다.
		request.setCharacterEncoding("UTF-8");
		//전송된 내용의 한글 처리를 위해 지정한다.
		ServletInputStream p_in = request.getInputStream();
		//전송되어 온 내용을 Stream으로 읽기 위한 객체를 선언한다.		
		
		response.setContentType("text/html;charset=UTF-8");
		//출력 MIME을 지정한다.
		ServletOutputStream p_out = response.getOutputStream();
		//전송되어 온 내용을 그대로 사용자에게 출력하기 위한 객체를 선언한다.
		
		p_out.write("Start!!!<br/>".getBytes());
		while(true) {
		//전송된 모든 내용을 출력할 때까지 반복 수행한다.
			int x = p_in.read();
			if(x == -1) break;
			//전송이 끝나면 탈출한다.
			p_out.write((char)x);
			//전송되어 온 내용을 문자로 변환 후 출력한다.
		}
		p_out.write("<br/>End!!!".getBytes());
		
		p_in.close();
		p_out.close();
	}
}