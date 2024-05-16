<!-- 
Input.html에서 이름, 아이디, 비밀번호를 입력받아서 InputOK.jsp에서 db에 저장을 하시오. 
저장이 성공적으로 이루어 졌으면 welcome.html로 이동하고 실패했으면 fail.html로 이동하시오. 
-->


<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%!
	private final String driver="com.mysql.cj.jdbc.Driver";
	private final String url="jdbc:mysql://localhost:3306/project?serverTimezone=UCT";
	private final String user="root";
	private final String psword="1234";
%>

<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String sql = "insert into member (name, id, pw) values(?,?,?)";
	try{		
		Class.forName(driver);
	} catch(ClassNotFoundException e){
		out.write("mysql driver load fail!");
		e.printStackTrace();
		response.sendRedirect("fail.html");
		return;
	}
	try(Connection conn = DriverManager.getConnection(url,user,psword);
			PreparedStatement pstmt = conn.prepareStatement(sql)) {
		pstmt.setString(1, name);
		pstmt.setString(2, id);
		pstmt.setString(3, pw);
		int i = pstmt.executeUpdate();
		if(i > 0){
			System.out.println("insert success");
			response.sendRedirect("welcom.html");
		} else {
			System.out.println("insert fail");
			response.sendRedirect("fail.html");
		}		
	}  catch (SQLException e) {
		out.write("mysql connect fail!");
		e.printStackTrace();
		response.sendRedirect("fail.html");
	}
%>