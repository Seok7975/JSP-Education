package com.superman.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ServletLifeCycle")
public class ServletLifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ServletLifeCycle() {
        super();
        System.out.println("ServletLifeCycle() Constructor");
    }
    
	@PostConstruct
	private void initPostConstruct() {
		System.out.println("@PostConstruct initPostConstruct");
	}

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		System.out.println("init");
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>service</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("service");
		out.println("</body>");
		out.println("</html>");
	}
	
	public void destroy() {
		System.out.println("destroy");
	}
	
	@PreDestroy
	private void destoryPreDestory() {
		System.out.println("@PreDestroy destoryPreDestory");
	}
}