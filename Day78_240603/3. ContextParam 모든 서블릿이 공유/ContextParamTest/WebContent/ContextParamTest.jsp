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
<title>Insert title here</title>
</head>
<body>
<%
	String companyName = application.getInitParameter("companyName");
	String companyTel = application.getInitParameter("companyTel");
	String companyEmail = application.getInitParameter("companyEmail");
%>
회사이름 : <%= companyName %><br>
회사전화번호 : <%= companyTel %><br>
회사이메일 : <%= companyEmail %><br>
</body>
</html>