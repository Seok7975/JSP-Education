<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%!
	private final String driver="com.mysql.cj.jdbc.Driver";
	private final String url="jdbc:mysql://localhost:3306/project?useSSL=false&serverTimezone=UCT";
	private final String user="root";
	private final String psword="1234";
%>

<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String sql = "insert into member (name, id, pw) values(?,?,?)";
	PreparedStatement pstmt = null;
	Connection conn = null;
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url,user,psword);
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, id);
		pstmt.setString(3, pw);
		int i = pstmt.executeUpdate();
		if(i > 0){
			System.out.println("insert success");
			response.sendRedirect("welcom.htm");
		} else {
			System.out.println("insert fail");
			response.sendRedirect("fail.htm");
		}		
	} catch(ClassNotFoundException e){
		out.write("mysql driver load fail!");
		e.printStackTrace();
	} catch (SQLException e) {
		out.write("mysql connect fail!");
		e.printStackTrace();
	} finally{
		try {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch (Exception e) {}	
	}
%>