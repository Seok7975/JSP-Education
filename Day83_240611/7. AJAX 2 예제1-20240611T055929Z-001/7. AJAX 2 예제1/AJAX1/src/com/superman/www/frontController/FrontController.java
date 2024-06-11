package com.superman.www.frontController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.superman.www.command.Command;
import com.superman.www.command.MsgCommand;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FrontController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String commandName = request.getServletPath();
		Command command = null;
		PrintWriter out = null;
		System.out.println("name " + commandName);
		
		if(commandName.equals("/msg.do")) {
			command = new MsgCommand();
			command.excute(request, response);
			out = response.getWriter();
			System.out.println("출력 " + request.getAttribute("result"));
			out.write(request.getAttribute("result")+"");
		}
	}
}