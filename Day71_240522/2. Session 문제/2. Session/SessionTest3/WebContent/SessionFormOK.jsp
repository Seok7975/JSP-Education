<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	session.setMaxInactiveInterval(10);
	// 세션 최대시간 설정 단위는 초 (서버 기본 설정은 30분)
	session.setAttribute("id", request.getParameter("id"));
	response.sendRedirect("SessionForm.jsp");
%>