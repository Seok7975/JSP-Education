<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="connInfo.jsp" %>
<%
	try{
		Class.forName(driver);
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로드 실패");
	}
%>