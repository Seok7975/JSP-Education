<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="HTML Study">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="Bruce">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시물 갯수 세기</title>
</head>
<body>
<%
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로드 실패");
	}
	String sql = "SELECT COUNT(*) FROM BOARD";
	int total = 0;
	
	try( Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?serverTimezone=UTC", "root", "1234");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql) )
	{
		if(rs.next()){
			total = rs.getInt(1);
			//total = rs.getInt("COUNT(*)");
			System.out.println("게시물 수 " + total);
		}			
	} catch(SQLException e){
		e.printStackTrace();
	}			
%>
게시물 수 <%=total %>
</body>
</html>