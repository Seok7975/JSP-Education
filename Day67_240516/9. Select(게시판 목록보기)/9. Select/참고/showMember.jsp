<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	private final String driver="com.mysql.cj.jdbc.Driver";
	private final String url="jdbc:mysql://localhost:3306/project?useSSL=false&serverTimezone=UCT";
	private final String user="root";
	private final String psword="1234";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="HTML Study">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="Bruce">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
<%
	String query = "select * from member";
	Statement stmt = null;
	Connection conn = null;
	ResultSet resultSet = null;
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url,user,psword);
		stmt = conn.createStatement();
		resultSet = stmt.executeQuery(query);
		while(resultSet.next()){
			int num = resultSet.getInt("num");
			String id = resultSet.getString("id");
			String pw = resultSet.getString("pw");
			String name = resultSet.getString("name");
			
			out.println("번호 : "  + num +  ", 이름 : " + name +" , 아이디 : " + id + " , 비밀번호 : "  + pw + "<br>");
		}		
	} catch(ClassNotFoundException e){
		out.write("mysql driver load fail!");
		e.printStackTrace();
	} catch (SQLException e) {
		out.write("mysql connect fail!");
		e.printStackTrace();
	} finally{
		try {
			if(resultSet != null) resultSet.close();
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		} catch (Exception e) {}	
	}
%>	
</body>
</html>