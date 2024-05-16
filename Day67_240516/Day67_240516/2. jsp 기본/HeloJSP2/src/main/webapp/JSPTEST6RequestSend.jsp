<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>
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
	request.setCharacterEncoding("UTF-8");	
	String name = request.getParameter("name");
	String ageStr = request.getParameter("age");
	int age = Integer.parseInt(ageStr);
	String encodedName = URLEncoder.encode(name, "UTF-8");

	if(age>=20)
		response.sendRedirect("JSPTEST6Pass.jsp?name=" + encodedName + "&age="+ageStr);
	else
		response.sendRedirect("JSPTEST6PassJspNg.jsp?name=" + encodedName + "&age="+ageStr);
%>
</body>
</html>