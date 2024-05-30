<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="HTML Study">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="Bruce">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>include_param</title>
</head>
<body>
	<%!
		String id, pw;
	%>

	<%
		id = request.getParameter("id");
		pw = request.getParameter("pw");
	%>
	
	<h1>include_param.jsp 입니다.</h1>
	아이디 : <%= id %><br />
	비밀번호 : <%= pw %>
</body>
</html>