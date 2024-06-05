package com.superman.ex.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.superman.ex.command.Command;
import com.superman.ex.command.board.DeleteCommand;
import com.superman.ex.command.board.ListCommand;
import com.superman.ex.command.board.ModifyOKCommand;
import com.superman.ex.command.board.ReplyCommand;
import com.superman.ex.command.board.ReplyOKCommand;
import com.superman.ex.command.board.SearchCommand;
import com.superman.ex.command.board.ViewCommand;
import com.superman.ex.command.board.WriteOKCommand;
import com.superman.ex.command.member.LoginCommand;
import com.superman.ex.command.member.LogoutCommand;
import com.superman.ex.command.member.MemberModifyOKCommand;
import com.superman.ex.command.member.MemberRegisterOKCommand;

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
	
	public void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String requestURI = request.getRequestURI();
		System.out.println("requestURI " + requestURI);
		String commandName = request.getServletPath();
		System.out.println("servletPath " +  commandName);
//		String contextPath = request.getContextPath();
//		System.out.println("contextPath " + contextPath);
//		int idx = servletPath.lastIndexOf("/");
//		String commandName = servletPath.substring(idx);
//		System.out.println("commandName " + commandName);
		String viewPage = null;
		Command command = null;
		int flag = 0;
		
		if(commandName.equals("/Board/list.do")) {
			command = new ListCommand();
			command.excute(request, response);
			viewPage = "list.jsp";
			flag = 1;
		} else if(commandName.equals("/Board/write.do")) {
			viewPage = "write.jsp";
		} else if(commandName.equals("/Board/writeOK.do")) {
			command = new WriteOKCommand();
			command.excute(request, response);
			viewPage = "list.do";
		} else if(commandName.equals("/Board/view.do")) {
			command = new ViewCommand();
			command.excute(request, response);
			viewPage = "view.jsp";
			flag = 1;
		} else if(commandName.equals("/Board/modifyOK.do")) {
			command = new ModifyOKCommand();
			command.excute(request, response);
			viewPage = "list.do";
		} else if(commandName.equals("/Board/reply.do")) {
			command = new ReplyCommand();
			command.excute(request, response);
			viewPage = "reply.jsp";
			flag = 1;
		} else if(commandName.equals("/Board/replyOK.do")) {
			command = new ReplyOKCommand();
			command.excute(request, response);
			viewPage = "list.do";
		} else if(commandName.equals("/Board/delete.do")) {
			command = new DeleteCommand();
			command.excute(request, response);
			viewPage = "list.do";
			
			////////////////////////////////////////////////////////////////////////
			
		} else if(commandName.equals("/index.do")) {
			viewPage = "index.jsp";
		} else if(commandName.equals("/login.do")) {
			command = new LoginCommand();
			command.excute(request, response);			
			viewPage = "index.jsp";
		} else if(commandName.equals("/Member/memberRegister.do")) {
			viewPage = "memberRegister.jsp";
		} else if(commandName.equals("/Member/memberRegisterOK.do")) {
			command = new MemberRegisterOKCommand();
			command.excute(request, response);
			viewPage = "../index.jsp";
		} else if(commandName.equals("/Member/memberModify.do")) {
			viewPage = "memberModify.jsp";
		} else if(commandName.equals("/Member/memberModifyOK.do")) {
			command = new MemberModifyOKCommand();
			command.excute(request, response);
			viewPage = "../index.jsp";
		} else if(commandName.equals("/Board/search.do")) {
			command = new SearchCommand();
			command.excute(request, response);
			viewPage = "searchList.jsp";
			flag = 1;
		} else if(commandName.equals("/logout.do")) {
			command = new LogoutCommand();
			command.excute(request, response);			
			viewPage = "index.jsp";
		}
		
		if(flag==0) {
			response.sendRedirect(viewPage);
		} else if(flag==1) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);			
		}		
	}
}