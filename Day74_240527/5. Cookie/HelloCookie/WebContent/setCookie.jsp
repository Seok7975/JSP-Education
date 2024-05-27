<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie = new Cookie("id", "hong");
	cookie.setMaxAge(60*60);	// 초 단위, 한 시간 뒤에 소명
	response.addCookie(cookie); // 쿠키 추가
%>